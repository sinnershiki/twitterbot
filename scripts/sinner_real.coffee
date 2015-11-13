# Description:
#   TL監視
#
# Commands:
#   進捗どうですか - 進捗ダメですリプライが返る
#
Twit = require 'twit'
client = new Twit({
  consumer_key: process.env.HUBOT_TWITTER_KEY
  consumer_secret: process.env.HUBOT_TWITTER_SECRET
  access_token: process.env.HUBOT_TWITTER_TOKEN
  access_token_secret: process.env.HUBOT_TWITTER_TOKEN_SECRET
})

module.exports = (robot) ->
  robot.hear /(.*)しんなー(.*)/i, (msg) ->
    client.post 'favorites/create', {id: msg.message.id}, (err, data, response) =>
      console.log err if err?

  robot.respond /進捗どうですか(.*)/i, (msg) ->
    client.post 'favorites/create', {id: msg.message.id}, (err, data, response) =>
      console.log err if err?
    msg.reply "進捗ダメです https://twitter.com/sinner_real/status/574034954046177280/photo/1"

  robot.respond /^(おそ|カラ|チョロ|一|十四|トド)$/i, (msg) ->
    msg.reply "松"
