
history
=====================
* 2014-08-09:初期作成
* 2014-08-22:微修正
* 2014-08-25:インフラ部分追記

実装完了部分(アプリケーション)
=====================
#[管理側]
* 日別のスクレイピング処理完了
* スクレイピングデータを加工完了
* 加工データをDBに保存処理完了
* CSVアップロード機能型実装完了
 
現在施工中(インフラ)
=====================
* [yum install詳細](http://qiita.com/pollseed/items/6e87c2e4e96d16717c28)
* (旧)[apache設定](https://github.com/pollseed/chef-common/tree/master/site-cookbooks/apache)
* (新)nginxに移行中(Monomix)[admin](https://github.com/pollseed/chef-common/blob/master/site-cookbooks/dstat/recipes/nginx_admin), [default](https://github.com/pollseed/chef-common/blob/master/site-cookbooks/dstat/recipes/nginx_default)→構築完了、インフラコード実装完了
* [Unicorn環境](https://github.com/pollseed/chef-common/blob/master/site-cookbooks/dstat/recipes/unicorn.rb)構築中→仮で完了
* Capistrano構築→実装中（※ライブラリの依存が激しすぎてこけまくるので、この辺整備したいなぁ）
* VM wareにインフラを構築、SSHアクセスでデプロイ可能状態まで持っていくこと
* ステージング環境構築(CentOS 6.5)→まずは、デプロイ環境を構築します
* ruby 安定版

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

