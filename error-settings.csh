/home/admin/bastion/config/unicorn.rb:4:in `reload': undefined method `worker_directory' for #<Unicorn::Configurator:0x34fe414> (NoMethodError)
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/configurator.rb:75:in `instance_eval'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/configurator.rb:75:in `reload'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/configurator.rb:68:in `initialize'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:100:in `new'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:100:in `initialize'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:209:in `new'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:209:in `<top (required)>'
        from /usr/local/bin/unicorn_rails:23:in `load'
        from /usr/local/bin/unicorn_rails:23:in `<main>'
master failed to start, check stderr log for details

bugfix)
worker_directory => working_directory


/usr/local/lib/ruby/2.1.0/fileutils.rb:250:in `mkdir': Permission denied @ dir_s_mkdir - tmp (Errno::EACCES)
        from /usr/local/lib/ruby/2.1.0/fileutils.rb:250:in `fu_mkdir'
        from /usr/local/lib/ruby/2.1.0/fileutils.rb:224:in `block (2 levels) in mkdir_p'
        from /usr/local/lib/ruby/2.1.0/fileutils.rb:222:in `reverse_each'
        from /usr/local/lib/ruby/2.1.0/fileutils.rb:222:in `block in mkdir_p'
        from /usr/local/lib/ruby/2.1.0/fileutils.rb:208:in `each'
        from /usr/local/lib/ruby/2.1.0/fileutils.rb:208:in `mkdir_p'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:202:in `block in <top (required)>'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/configurator.rb:83:in `call'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/configurator.rb:83:in `reload'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/configurator.rb:68:in `initialize'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:100:in `new'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:100:in `initialize'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:209:in `new'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:209:in `<top (required)>'
        from /usr/local/bin/unicorn_rails:23:in `load'
        from /usr/local/bin/unicorn_rails:23:in `<main>'
master failed to start, check stderr log for details

bugfix)
chmod 777 /home/admin/bastion


/usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/configurator.rb:91:in `block in reload': directory for stderr_path=/home/admin/bastion/log/unicorn.stderr.log not writable (ArgumentError)
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/configurator.rb:87:in `each'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/configurator.rb:87:in `reload'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/configurator.rb:68:in `initialize'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:100:in `new'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:100:in `initialize'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:209:in `new'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:209:in `<top (required)>'
        from /usr/local/bin/unicorn_rails:23:in `load'
        from /usr/local/bin/unicorn_rails:23:in `<main>'
master failed to start, check stderr log for details

bugfix)
chmod 777 /home/admin/bastion/log


->unicorn.stderr.log
/usr/local/lib/ruby/gems/2.1.0/gems/execjs-2.2.1/lib/execjs/runtimes.rb:51:in `autodetect': Could not find a JavaScript runtime. See https://github.com/sstephenson/execjs for a list of available runtimes. (ExecJS::RuntimeUnavailable)
        from /usr/local/lib/ruby/gems/2.1.0/gems/execjs-2.2.1/lib/execjs.rb:5:in `<module:ExecJS>'
        from /usr/local/lib/ruby/gems/2.1.0/gems/execjs-2.2.1/lib/execjs.rb:4:in `<top (required)>'
        from /usr/local/lib/ruby/gems/2.1.0/gems/uglifier-2.5.3/lib/uglifier.rb:3:in `require'
        from /usr/local/lib/ruby/gems/2.1.0/gems/uglifier-2.5.3/lib/uglifier.rb:3:in `<top (required)>'
        from /usr/local/lib/ruby/gems/2.1.0/gems/bundler-1.7.2/lib/bundler/runtime.rb:76:in `require'
        from /usr/local/lib/ruby/gems/2.1.0/gems/bundler-1.7.2/lib/bundler/runtime.rb:76:in `block (2 levels) in require'
        from /usr/local/lib/ruby/gems/2.1.0/gems/bundler-1.7.2/lib/bundler/runtime.rb:72:in `each'
        from /usr/local/lib/ruby/gems/2.1.0/gems/bundler-1.7.2/lib/bundler/runtime.rb:72:in `block in require'
        from /usr/local/lib/ruby/gems/2.1.0/gems/bundler-1.7.2/lib/bundler/runtime.rb:61:in `each'
        from /usr/local/lib/ruby/gems/2.1.0/gems/bundler-1.7.2/lib/bundler/runtime.rb:61:in `require'
        from /usr/local/lib/ruby/gems/2.1.0/gems/bundler-1.7.2/lib/bundler.rb:133:in `require'
        from /home/admin/bastion/config/application.rb:15:in `<top (required)>'
        from /home/admin/bastion/config/environment.rb:2:in `require'
        from /home/admin/bastion/config/environment.rb:2:in `<top (required)>'
        from config.ru:4:in `require'
        from config.ru:4:in `block in <main>'
        from /usr/local/lib/ruby/gems/2.1.0/gems/rack-1.5.2/lib/rack/builder.rb:55:in `instance_eval'
        from /usr/local/lib/ruby/gems/2.1.0/gems/rack-1.5.2/lib/rack/builder.rb:55:in `initialize'
        from config.ru:1:in `new'
        from config.ru:1:in `<main>'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn.rb:48:in `eval'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn.rb:48:in `block in builder'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:139:in `call'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:139:in `block in rails_builder'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:764:in `call'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:764:in `build_app!'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:137:in `start'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:209:in `<top (required)>'
        from /usr/local/bin/unicorn_rails:23:in `load'
        from /usr/local/bin/unicorn_rails:23:in `<main>'

bugfix)
$ gem install libv8 -v '3.3.10.4' -- --with-system-v8
$ gem install therubyracer -v '0.10.2' -- --with-v8-dir


There was an error while trying to write to Gemfile.lock. It is likely that
you need to allow write permissions for the file at path:
/home/admin/bastion/Gemfile.lock

bugfix)
chmod 777 Gemfile.lock


I, [2014-08-26T15:19:49.903693 #2580]  INFO -- : Refreshing Gem list
/home/admin/bastion/app/models/test.rb:2:in `<class:Test>': uninitialized constant Test::Mongoid (NameError)
        from /home/admin/bastion/app/models/test.rb:1:in `<top (required)>'
        from /usr/local/lib/ruby/gems/2.1.0/gems/railties-4.1.2/lib/rails/engine.rb:468:in `block (2 levels) in eager_load!'
        from /usr/local/lib/ruby/gems/2.1.0/gems/railties-4.1.2/lib/rails/engine.rb:467:in `each'
        from /usr/local/lib/ruby/gems/2.1.0/gems/railties-4.1.2/lib/rails/engine.rb:467:in `block in eager_load!'
        from /usr/local/lib/ruby/gems/2.1.0/gems/railties-4.1.2/lib/rails/engine.rb:465:in `each'
        from /usr/local/lib/ruby/gems/2.1.0/gems/railties-4.1.2/lib/rails/engine.rb:465:in `eager_load!'
        from /usr/local/lib/ruby/gems/2.1.0/gems/railties-4.1.2/lib/rails/engine.rb:346:in `eager_load!'
        from /usr/local/lib/ruby/gems/2.1.0/gems/railties-4.1.2/lib/rails/application/finisher.rb:58:in `each'
        from /usr/local/lib/ruby/gems/2.1.0/gems/railties-4.1.2/lib/rails/application/finisher.rb:58:in `block in <module:Finisher>'
        from /usr/local/lib/ruby/gems/2.1.0/gems/railties-4.1.2/lib/rails/initializable.rb:30:in `instance_exec'
        from /usr/local/lib/ruby/gems/2.1.0/gems/railties-4.1.2/lib/rails/initializable.rb:30:in `run'
        from /usr/local/lib/ruby/gems/2.1.0/gems/railties-4.1.2/lib/rails/initializable.rb:55:in `block in run_initializers'
        from /usr/local/lib/ruby/2.1.0/tsort.rb:226:in `block in tsort_each'
        from /usr/local/lib/ruby/2.1.0/tsort.rb:348:in `block (2 levels) in each_strongly_connected_component'
        from /usr/local/lib/ruby/2.1.0/tsort.rb:427:in `each_strongly_connected_component_from'
        from /usr/local/lib/ruby/2.1.0/tsort.rb:347:in `block in each_strongly_connected_component'
        from /usr/local/lib/ruby/2.1.0/tsort.rb:345:in `each'
        from /usr/local/lib/ruby/2.1.0/tsort.rb:345:in `call'
        from /usr/local/lib/ruby/2.1.0/tsort.rb:345:in `each_strongly_connected_component'
        from /usr/local/lib/ruby/2.1.0/tsort.rb:224:in `tsort_each'
        from /usr/local/lib/ruby/2.1.0/tsort.rb:205:in `tsort_each'
        from /usr/local/lib/ruby/gems/2.1.0/gems/railties-4.1.2/lib/rails/initializable.rb:54:in `run_initializers'
        from /usr/local/lib/ruby/gems/2.1.0/gems/railties-4.1.2/lib/rails/application.rb:300:in `initialize!'
        from /home/admin/bastion/config/environment.rb:5:in `<top (required)>'
        from config.ru:4:in `require'
        from config.ru:4:in `block in <main>'
        from /usr/local/lib/ruby/gems/2.1.0/gems/rack-1.5.2/lib/rack/builder.rb:55:in `instance_eval'
        from /usr/local/lib/ruby/gems/2.1.0/gems/rack-1.5.2/lib/rack/builder.rb:55:in `initialize'
        from config.ru:1:in `new'
        from config.ru:1:in `<main>'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn.rb:48:in `eval'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn.rb:48:in `block in builder'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:139:in `call'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:139:in `block in rails_builder'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:764:in `call'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:764:in `build_app!'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:137:in `start'
        from /usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:209:in `<top (required)>'
        from /usr/local/bin/unicorn_rails:23:in `load'
        from /usr/local/bin/unicorn_rails:23:in `<main>'

bugfix)
rm -f /home/admin/bastion/app/models/test.rb


I, [2014-08-26T15:21:58.588119 #2636]  INFO -- : Refreshing Gem list
I, [2014-08-26T15:22:02.003173 #2636]  INFO -- : listening on addr=/tmp/admin.sock fd=11
E, [2014-08-26T15:22:02.013789 #2636] ERROR -- : Unknown database 'bastion_prod'Run `$ bin/rake db:create db:migrate` to create your database (ActiveRecord::NoDatabaseError)
/usr/local/lib/ruby/gems/2.1.0/gems/activerecord-4.1.2/lib/active_record/connection_adapters/mysql2_adapter.rb:23:in `rescue in mysql2_connection'
/usr/local/lib/ruby/gems/2.1.0/gems/activerecord-4.1.2/lib/active_record/connection_adapters/mysql2_adapter.rb:10:in `mysql2_connection'
/usr/local/lib/ruby/gems/2.1.0/gems/activerecord-4.1.2/lib/active_record/connection_adapters/abstract/connection_pool.rb:435:in `new_connection'
/usr/local/lib/ruby/gems/2.1.0/gems/activerecord-4.1.2/lib/active_record/connection_adapters/abstract/connection_pool.rb:445:in `checkout_new_connection'
/usr/local/lib/ruby/gems/2.1.0/gems/activerecord-4.1.2/lib/active_record/connection_adapters/abstract/connection_pool.rb:416:in `acquire_connection'
/usr/local/lib/ruby/gems/2.1.0/gems/activerecord-4.1.2/lib/active_record/connection_adapters/abstract/connection_pool.rb:351:in `block in checkout'
/usr/local/lib/ruby/2.1.0/monitor.rb:211:in `mon_synchronize'
/usr/local/lib/ruby/gems/2.1.0/gems/activerecord-4.1.2/lib/active_record/connection_adapters/abstract/connection_pool.rb:350:in `checkout'
/usr/local/lib/ruby/gems/2.1.0/gems/activerecord-4.1.2/lib/active_record/connection_adapters/abstract/connection_pool.rb:265:in `block in connection'
/usr/local/lib/ruby/2.1.0/monitor.rb:211:in `mon_synchronize'
/usr/local/lib/ruby/gems/2.1.0/gems/activerecord-4.1.2/lib/active_record/connection_adapters/abstract/connection_pool.rb:264:in `connection'
/usr/local/lib/ruby/gems/2.1.0/gems/activerecord-4.1.2/lib/active_record/connection_adapters/abstract/connection_pool.rb:541:in `retrieve_connection'
/usr/local/lib/ruby/gems/2.1.0/gems/activerecord-4.1.2/lib/active_record/connection_handling.rb:113:in `retrieve_connection'
/usr/local/lib/ruby/gems/2.1.0/gems/activerecord-4.1.2/lib/active_record/connection_handling.rb:87:in `connection'
/home/admin/bastion/config/unicorn.rb:13:in `block in reload'
/usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:519:in `call'
/usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:519:in `spawn_missing_workers'
/usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:140:in `start'
/usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:209:in `<top (required)>'
/usr/local/bin/unicorn_rails:23:in `load'
/usr/local/bin/unicorn_rails:23:in `<main>'

bugfix)
bastion_prodを作った


I, [2014-08-26T15:28:46.963447 #2731]  INFO -- : Refreshing Gem list
I, [2014-08-26T15:28:50.538026 #2731]  INFO -- : unlinking existing socket=/tmp/admin.sock
I, [2014-08-26T15:28:50.538537 #2731]  INFO -- : listening on addr=/tmp/admin.sock fd=11
E, [2014-08-26T15:28:50.551613 #2731] ERROR -- : undefined method `worker_processed' for #<Unicorn::HttpServer:0x2dd6c18> (NoMethodError)
/home/admin/bastion/config/unicorn.rb:17:in `block in reload'
/usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:519:in `call'
/usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:519:in `spawn_missing_workers'
/usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:140:in `start'
/usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:209:in `<top (required)>'
/usr/local/bin/unicorn_rails:23:in `load'
/usr/local/bin/unicorn_rails:23:in `<main>'

bugfix)
worker_processed=>worker_processes


I, [2014-08-26T15:30:56.538205 #2759]  INFO -- : Refreshing Gem list
I, [2014-08-26T15:30:59.908745 #2759]  INFO -- : unlinking existing socket=/tmp/admin.sock
I, [2014-08-26T15:30:59.909002 #2759]  INFO -- : listening on addr=/tmp/admin.sock fd=11
E, [2014-08-26T15:30:59.916260 #2759] ERROR -- : undefined method `Fileread' for #<Unicorn::Configurator:0x2f42a98> (NoMethodError)
/home/admin/bastion/config/unicorn.rb:18:in `block in reload'
/usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:519:in `call'
/usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:519:in `spawn_missing_workers'
/usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/lib/unicorn/http_server.rb:140:in `start'
/usr/local/lib/ruby/gems/2.1.0/gems/unicorn-4.8.3/bin/unicorn_rails:209:in `<top (required)>'
/usr/local/bin/unicorn_rails:23:in `load'
/usr/local/bin/unicorn_rails:23:in `<main>'

bugfix)
Fileread=>File.read

****成功した！！！！！


[root@pollseed bastion]# chkconfig admin on
サービス admin は、chkconfig をサポートしていません。

bugfix)
/etc/rc.d/init.d/adminに追記
#!/bin/sh
#
# admin                 Startup script for admin (a rails app)
#
# chkconfig: - 85 15
# description: admin -- a rails app
