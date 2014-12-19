module.exports = (robot) ->
    robot.respond /test(.*)/i, (msg) ->
        console.log msg.message.user.name
        console.log msg.message.data

    #許さん
    robot.hear /(.*)しんなー(.*)/i, (msg) ->
        console.log msg.message.user.name

    #デブ
    robot.respond /nibo(.*)/i, (msg) ->
        console.log msg.message.user.name

    #許さん
    robot.respond /進捗どうですか(.*)/i, (msg) ->
        console.log msg.message.user.name
