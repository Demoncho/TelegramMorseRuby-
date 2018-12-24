require 'telegram/bot'

TOKEN = '655322117:AAEp8y0bF7Hc3IUgwI9kn5LkqyiTDmWAkCw'

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