# Description:
#   おみくじ
#
# Commands:
#   omikuji
#   おみくじ
#
module.exports = (robot) ->
  robot.respond /omikuji|おみくじ/i, (msg) ->
    omikuji = ["大吉","中吉","吉","末吉","凶","大凶"]
    result = omikuji[Math.floor(Math.random() * omikuji.length)]
    console.log "#{msg.message.user.name}:#{result}"
    msg.reply "#{result}です．"
