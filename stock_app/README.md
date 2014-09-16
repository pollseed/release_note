
history
=====================
* 2014-08-09:初期作成
* 2014-08-22:微修正
* 2014-08-25:インフラ部分追記
* 2014-09-05:リリース手順書追記

実装完了部分(アプリケーション)
=====================
#[管理側]
* 日別のスクレイピング処理完了
* スクレイピングデータを加工完了
* 加工データをDBに保存処理完了
* CSVアップロード機能型実装完了
* AWS環境構築完了→現在STOP状態。容量、IPのみ確保
 
現在施工中(インフラ)
=====================
* [yum install詳細](http://qiita.com/pollseed/items/6e87c2e4e96d16717c28)
* (旧)[apache設定](https://github.com/pollseed/chef-common/tree/master/site-cookbooks/apache)
* (新)nginxに移行中(Monomix)[admin](https://github.com/pollseed/chef-common/blob/master/site-cookbooks/dstat/recipes/nginx_admin), [default](https://github.com/pollseed/chef-common/blob/master/site-cookbooks/dstat/recipes/nginx_default)→構築完了、インフラコード実装完了
* [Unicorn環境](https://github.com/pollseed/chef-common/blob/master/site-cookbooks/dstat/recipes/unicorn.rb)構築中→仮で完了
* Capistrano構築→実装中（※ライブラリの依存が激しすぎてこけまくるので、この辺整備したいなぁ→完了したが、自動スクリプトに未組込）
* 1. cap deploy:setup 
* 2. cap deploy:update
* 3. cap deploy:restart
* VM wareにインフラを構築、SSHアクセスでデプロイ可能状態まで持っていくこと→完了
* ステージング環境構築(CentOS 6.5)→まずは、デプロイ環境を構築します→完了
* ruby 安定版
* nginxに乗せて稼働→production用（IP制限かけること）
* 

* AWSに載せる。→これは本番稼働の場合はそうしたい→理由はやはり安定しているから、自宅サーバは危険すぎるのでSTGのみ→一旦構築完了、アプリは未搭載(まだ、ユーザ側の機能と管理側の機能を分断していないため)

次実装予定
=====================
#[管理側]

##バグ
* 日別のスクレイピングで、休日処理を実装する
* CSVアップロードを修正し、終値と始値の部分を一致させたい

##追加機能:必須
* JSで簡易計算用のページを作成する

##追加機能:余裕があれば
* 日別の各会社情報等スクレイピング

#[ユーザ側]
* 未定


リリース手順書
=====================
### 背景
Capistrano+Unicorn+nginxを使用しています。
それというのも、RubyOnRailsでアプリケーションを開発しているからです。
相性がいいということ、多少先駆者がいて、参考資料が多いことがあげられます。

1. ローカルマシンで作業します。共有リポジトリの全ソースがコミットされた状態にします
```
# masterであるかどうか
$ git branch -a
# Mステータスのファイルがないかどうか
$ git status -s
```
2. リリース開始します。まずは、リモートサーバのアプリケーションをアップデートします
```
$ cap deploy:update
```
ごちゃごちゃログが吐かれて最終的に以下のログが出ればOK
```
 ** [out :: example.com] 
    command finished in 12572ms
  * executing "ls -1 /home/root/production/shared/assets/manifest* | wc -l"
    servers: ["example.com"]
    [example.com] executing command
    command finished in 156ms
  * executing "ls /home/root/production/shared/assets/manifest*"
    servers: ["example.com"]
    [example.com] executing command
    command finished in 153ms
  * executing "[ -e /home/root/production/shared/assets/manifest-b2529e94d38e1f80904507866e45d873.json ] || mv -- /home/root/production/shared/assets/manifest* /home/root/production/shared/assets/manifest-b2529e94d38e1f80904507866e45d873.json"
    servers: ["example.com"]
    [example.com] executing command
    command finished in 161ms
  * executing "ls -x /home/root/production/releases"
    servers: ["example.com"]
    [example.com] executing command
    command finished in 189ms
  * executing "cp -- /home/root/production/shared/assets/manifest-b2529e94d38e1f80904507866e45d873.json /home/root/production/releases/20140905001428/assets_manifest.json"
    servers: ["example.com"]
    [example.com] executing command
    command finished in 160ms
  * 2014-09-05 09:14:43 executing `deploy:create_symlink'
  * executing "rm -f /home/root/production/current &&  ln -s /home/root/production/releases/20140905001428 /home/root/production/current"
    servers: ["example.com"]
    [example.com] executing command
    command finished in 164ms
 ** transaction: commit
    triggering after callbacks for `deploy:update'
  * executing "/bin/cp /home/root/production/shared/config/database.yml /home/root/production/releases/20140905001428/config/"
    servers: ["example.com"]
    [example.com] executing command
    command finished in 181ms
  * executing "/bin/cp /home/root/production/shared/config/unicorn.rb /home/root/production/releases/20140905001428/config/"
    servers: ["example.com"]
    [example.com] executing command
    command finished in 168ms
```
次はリモートサーバにログインします。SSHで鍵を設定してグループに追加したユーザでやること。
```
$ ssh XXX
$ cd /home/root/production/releases
$ ll
```
こんな感じでちゃんと存在していればOK
```
drwxrwxr-x. 15 root root 4096  8月 30 08:08 2014 20140904110824
drwxrwxr-x. 15 root root 4096  8月 30 11:02 2014 20140905001428
```
→ちなみにこれ削除用のバッチも用意してあるので、時間あるときに適用すること。
大体keep_releaseは10ぐらいでOK

3. finishedが見えたら、次は、再起動します。
```
$ cap deploy:restart
```
以下のログが吐かれれば無事成功です
```
* 2014-09-05 09:22:41 executing `deploy:restart'
```

なお、１度でもこの順序が理解出来ていれば以下のコマンドで代用できます。が、エラー時に理解するためにも順番は把握しておきたい。
```
$ cap deploy
```

### 緊急時
```
$ cap deploy:rollback
```
