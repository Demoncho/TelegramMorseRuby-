require 'telegram/bot'

TOKEN = 'BOT_TOKKEN_ID'

Telegram::Bot::Client.run(TOKEN, logger: Logger.new($stderr)) do |bot|
  bot.listen do |message|
    case message.text
    when '/start', '/start start'
      bot.api.send_message(chat_id: message.chat.id, text: "Привет, #{message.from.first_name}")
    else
      bot.api.send_message(chat_id: message.chat.id, text: 'Пока не работаю')
    end
  end
end