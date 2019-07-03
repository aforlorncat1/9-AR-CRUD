require 'standalone_migrations'

module Rails
  class Engine < Railtie
    def load_seed
      seed_file = paths["db/seeds.rb"].existent.first
      return unless seed_file
        load(seed_file)
    end
  end
end

StandaloneMigrations::Tasks.load_tasks

desc 'Start IRB with application environment loaded'
task "console" do
  exec "irb -r ./config/environment"
end