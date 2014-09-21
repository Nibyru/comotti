set :application, 'comotti'
set :deploy_user, 'root'

# setup repo details
set :scm, :git
set :repo_url, 'git@github.com:Nibyru/comotti.git'
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :normalize_asset_timestamps, %{public/images public/javascripts public/stylesheets}

namespace :deploy do

  after 'deploy:symlink:shared', 'deploy:compile_assets_locally'
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end