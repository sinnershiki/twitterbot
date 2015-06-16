module.exports = (robot) ->
    robot.respond /omikuji/i, (msg) ->
        omikuji = ["大吉","中吉","吉","末吉","凶","大凶"]
        console.log result = omikuji[Math.floor(Math.random()*omikuji.length)]
        msg.reply "#{result}です．"
