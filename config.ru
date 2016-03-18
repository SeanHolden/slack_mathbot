$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'slack_mathbot'
require 'mathbot/web'

Thread.abort_on_exception = true

Thread.new do
  begin
    Mathbot::Bot.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run Mathbot::Web
