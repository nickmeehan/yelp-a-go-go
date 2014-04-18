require 'rake'
require 'rspec/core/rake_task'
require_relative 'db/migrate/config'
require_relative 'lib/seed'
require_relative 'app/models/cuisine'
require_relative 'app/models/restaurant'
require_relative 'app/models/restaurant_cuisine'

desc "create the database"
task "db:create" do
  touch 'db/yelp_a_go_go.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/yelp_a_go_go.sqlite3'
end

desc "migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)."
task "db:migrate" do
  ActiveRecord::Migrator.migrations_paths << File.dirname(__FILE__) + 'db/migrate'
  ActiveRecord::Migration.verbose = ENV["VERBOSE"] ? ENV["VERBOSE"] == "true" : true
  ActiveRecord::Migrator.migrate(ActiveRecord::Migrator.migrations_paths, ENV["VERSION"] ? ENV["VERSION"].to_i : nil) do |migration|
    ENV["SCOPE"].blank? || (ENV["SCOPE"] == migration.scope)
  end
end

desc "populate the students_teachers table with data"
task "db:populate" do
  Seed.populate
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end

# desc 'Start IRB with application environment loaded'
# task "db:console" do
#   exec "irb -r db/migrate/config/"
# end


desc "Run the specs"
RSpec::Core::RakeTask.new(:specs)

task :default  => :specs
