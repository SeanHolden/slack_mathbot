module Mathbot
  module Commands
    class Calculate < SlackRubyBot::Commands::Base
      # client -> the slackbot object
      # data   -> channel=C0CQBMELU, team=T0CQHTQ57, text=<@U0TP3CQ79> calculate hi, ts=1458314461.000015, type=message, user=U0CQJ2EP4
      # _match -> the exact string typed to the bot
      command 'calculate' do |client, data, _match|
        client.say(channel: data.channel, text: '4')
      end
    end
  end
end
