set :rvm_type, :user
set :rvm_ruby_version, 'ruby-2.2.0'


role :app, %w{deploy@118.193.128.152}
role :web, %w{deploy@118.193.128.152}
role :db,  %w{deploy@118.193.128.152}

set :branch, "master"

server '118.193.128.152', user: 'deploy', roles: %w{app web}, my_property: :my_value

set :puma_rackup, -> { File.join(current_path, 'config.ru') }
set :puma_state, "#{shared_path}/tmp/pids/puma.state"
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
set :puma_bind, "unix://#{shared_path}/tmp/sockets/puma.sock"    #accept array for multi-bind
set :puma_conf, "#{shared_path}/puma.rb"
set :puma_access_log, "#{shared_path}/log/puma_error.log"
set :puma_error_log, "#{shared_path}/log/puma_access.log"
set :puma_role, :app
set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
set :puma_threads, [0, 120]
set :puma_workers, 0
set :puma_worker_timeout, nil
set :puma_init_active_record, false
set :puma_preload_app, true