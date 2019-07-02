# Requre gems and Ruby libraries
require "active_record"
require "rake"
require "sqlite3"
require "pathname"


# Identify the root directory for the application
# so that we can later reference files from APP_ROOT
path_to_root_directory = File.expand_path('../../', __FILE__)
APP_ROOT = Pathname.new(path_to_root_directory)


# Identify the name of the exercise
APP_NAME = APP_ROOT.basename.to_s


# Load the files in APP_ROOT/app/models/
model_files = Dir[APP_ROOT.join('app', 'models', '*.rb')]

model_files.each do |model_file|
  filename = File.basename(model_file, ".*")
  autoload ActiveSupport::Inflector.camelize(filename), model_file
end


# Set up ActiveRecord::Base to log its activity depending upon the value of ENV['AR_ENV']
ActiveRecord::Base.logger = nil


# Configure the database depending upon the value of ENV['AR_ENV']
database_config = YAML::load(File.open('db/config.yml'))
ActiveRecord::Base.establish_connection(database_config["development"])


# Establish connection between models and tables
ActiveRecord::Base.connection


# Require files in app/views and app/controllers
Dir[APP_ROOT.join('app', 'views', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }
