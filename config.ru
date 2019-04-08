$: << File.dirname(__FILE__) + '/lib'
require 'dotenv/load'
require 'app'
require 'paint'

DEV = ENV['RACK_ENV'] == 'development'

if DEV
  require 'logger'
  LOG = ::Logger.new STDOUT
  LOG.info Paint["#{App::SN} Running in development mode", :yellow]
else
  # Need to setup syslog.conf first. In the following lines **REPLACE App::SN**
  # with the App short name and add them to /etc/syslog.conf:
  # !App::SN
  # *.*                           /var/log/App::SN.log
  #raise "YOU MUST SET RSYSLOG UP"
  LOG = ::Logger.new STDOUT# Syslog::Logger.new App::SN, Syslog::LOG_LOCAL1
  LOG.info Paint["#{App::SN} Starting", :green]
end

run App.freeze.app
