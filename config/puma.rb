require 'dotenv/load'
raise "The SN environment variable should be set. Edit .env file or export it from parent process." unless ENV['SN']
bind "tcp://localhost:9292"
