# frozen_string_literal: true

require 'roda'
require 'app/log_pyramid'

# The main application class
class App < Roda
  SN = ENV['SN']
  include LogPyramid

  plugin :public
  plugin :render

  route do |req|
    req.public

    req.root do
      req.redirect '/hello'
    end

    # /hello branch
    req.on 'hello' do
      logEnv req
      "Bonjour, welcome to #{ENV['SN']}"
    end
  end
end
