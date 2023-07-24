require 'dotenv/load'
raise "The SN environment variable should be set. Edit .env file or export it from parent process.\ne.g. in .env: SN='GTS'" unless ENV['SN']
raise "The PUMA_BIND environment variable must be set. Edit .env file or export it from parent process.\ncf. https://github.com/puma/puma#binding-tcp--sockets" unless ENV['PUMA_BIND']
bind ENV['PUMA_BIND']
