require 'sinatra/base'

module Mathbot
  class Web < Sinatra::Base
    get '/' do
      'Math is good for you.'
    end
  end
end
