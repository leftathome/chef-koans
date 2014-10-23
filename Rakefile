require 'foodcritic'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

desc 'Run RuboCop style and lint checks'
RuboCop::RakeTask.new(:rubocop)

desc 'Run Foodcritic lint checks'
FoodCritic::Rake::LintTask.new(:foodcritic) do |t|
  t.options = {
    :fail_tags => ['any'],
    :tags => []
  }
end

desc 'Run ChefSpec examples'
RSpec::Core::RakeTask.new(:spec)

desc 'Run all tests'
task :test => [:rubocop, :foodcritic, :spec]
task :default => :test
task :lint => :foodcritic

desc 'Scrub solution lines and files from working directory'
task :prep do
  sh "grep -lr '# SOLUTION START' --exclude Rakefile . | xargs -tI % sed -i '' -e '/# SOLUTION START/,/# SOLUTION END/d' %"
end

# currently we don't run Kitchen in hosted CI.
# maybe we'll fix that later?
#
unless ENV['CI']
  begin
    require 'kitchen/rake_tasks'
    Kitchen::RakeTasks.new

    desc 'Alias for kitchen:all'
    task :integration => 'kitchen:all'
    task :test_all => [:test, :integration]
  rescue LoadError
    puts '>>>>> Kitchen gem not loaded, omitting tasks'
  end
end
