# https://coderwall.com/p/ttrhow

# Load DSL and Setup Up Stages
require 'capistrano/setup'

# Includes default deployment tasks
require 'capistrano/deploy'

# Includes tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails
#
require 'capistrano/rvm'
require 'capistrano/rails'
require 'capistrano/nginx'
require 'capistrano/puma'
require 'capistrano/puma/monit'
require 'capistrano/delayed_job'
require 'whenever/capistrano'
require 'airbrake/capistrano'
require 'capistrano/bundle_audit'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
