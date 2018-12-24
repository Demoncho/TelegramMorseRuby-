require 'telegram/bot'
require 'rubygems'
require 'active_record'
require 'pg'

TOKEN = 'Bot_Token'

Telegram::Bot::Client.run(TOKEN, logger: Logger.new($stderr)) do |bot|
  bot.listen do |message|
    case message.text
    when '/start', '/start start'
      bot.api.send_message(chat_id: message.chat.id, text: "Привет, #{message.from.first_name}")
    when 'А', '.-'
      bot.api.send_message(chat_id: message.chat.id, text: 'А = .-')
    when 'Б', '-...'
      bot.api.send_message(chat_id: message.chat.id, text: 'Б = -...')
    when 'В', '.--'
      bot.api.send_message(chat_id: message.chat.id, text: 'В = .--')
    when 'Г', '--.'
      bot.api.send_message(chat_id: message.chat.id, text: 'Г = --.')
    when 'Д', '-..'
      bot.api.send_message(chat_id: message.chat.id, text: 'Д = -..')
    when 'Е', '.'
      bot.api.send_message(chat_id: message.chat.id, text: 'Е = .')
    when 'Ж', '...-'
      bot.api.send_message(chat_id: message.chat.id, text: 'Ж = ...-')
    when 'З', '--.. '
      bot.api.send_message(chat_id: message.chat.id, text: 'З = --..')
    when 'И', '..'
      bot.api.send_message(chat_id: message.chat.id, text: 'И = ..')
    when 'Й', '.---'
      bot.api.send_message(chat_id: message.chat.id, text: 'Й = .---')
    when 'К', '-.-'
      bot.api.send_message(chat_id: message.chat.id, text: 'К = -.-')
    when 'Л', '.-..'
      bot.api.send_message(chat_id: message.chat.id, text: 'Л = .-..')
    when 'М', '--'
      bot.api.send_message(chat_id: message.chat.id, text: 'М = --')
    when 'Н', '-.'
      bot.api.send_message(chat_id: message.chat.id, text: 'Н = -.')
    when 'О', '---'
      bot.api.send_message(chat_id: message.chat.id, text: 'О = ---')
    when 'П', '.--.'
      bot.api.send_message(chat_id: message.chat.id, text: 'П = .--.')
    when 'Р', '.-.'
      bot.api.send_message(chat_id: message.chat.id, text: 'Р = .-.')
    when 'С', '...'
      bot.api.send_message(chat_id: message.chat.id, text: 'С = ...')
    when 'Т', '-'
      bot.api.send_message(chat_id: message.chat.id, text: 'Т = -')
    when 'У', '..-'
      bot.api.send_message(chat_id: message.chat.id, text: 'У = ..-')
    when 'Ф', '..-.'
      bot.api.send_message(chat_id: message.chat.id, text: 'Ф = ..-.')
    when 'Х', '....'
      bot.api.send_message(chat_id: message.chat.id, text: 'Х = ....')
    when 'Ц', '-.-.'
      bot.api.send_message(chat_id: message.chat.id, text: 'Ц = -.-.')
    when 'Ч', '---.'
      bot.api.send_message(chat_id: message.chat.id, text: 'Ч = ---.')
    when 'Ш', '----'
      bot.api.send_message(chat_id: message.chat.id, text: 'Ш = ----')
    when 'Щ', '--.-'
      bot.api.send_message(chat_id: message.chat.id, text: 'Щ = --.-')
    when 'Ь', '-..-'
      bot.api.send_message(chat_id: message.chat.id, text: 'Ь = -..-')
    when 'Ы', '-.--'
      bot.api.send_message(chat_id: message.chat.id, text: 'Ы = -.--')
    when 'Э', '..-..'
      bot.api.send_message(chat_id: message.chat.id, text: 'Э = ..-..')
    when 'Ю', '..--'
      bot.api.send_message(chat_id: message.chat.id, text: 'Ю = ..--')
    when 'Я', '.-.-'
      bot.api.send_message(chat_id: message.chat.id, text: 'Я = .-.-')
    when '1', '.----'
      bot.api.send_message(chat_id: message.chat.id, text: '1 = .----')
    when '2', '..---'
      bot.api.send_message(chat_id: message.chat.id, text: '2 = ..---')
    when '3', '...--'
      bot.api.send_message(chat_id: message.chat.id, text: '3 = ...--')
    when '4', '....-'
      bot.api.send_message(chat_id: message.chat.id, text: '4 = ....-')
    when '5', '.....'
      bot.api.send_message(chat_id: message.chat.id, text: '5 = .....')
    when '6', '-....'
      bot.api.send_message(chat_id: message.chat.id, text: '6 = -....')
    when '7', '--...'
      bot.api.send_message(chat_id: message.chat.id, text: '7 = --...')
    when '8', '---..'
      bot.api.send_message(chat_id: message.chat.id, text: '8 = ---..')
    when '9', '----.'
      bot.api.send_message(chat_id: message.chat.id, text: '9 = ----.')
    when '0', '-----'
      bot.api.send_message(chat_id: message.chat.id, text: '0 = -----')
    else
      bot.api.send_message(chat_id: message.chat.id, text: 'Неверная команда')
    end
  end
end