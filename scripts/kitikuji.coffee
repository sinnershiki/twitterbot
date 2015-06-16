# Description:
#   kitiな籤を引ける
#
# Commands:
#   kitikuji + ユーザ名で煽りを1/2の確率で吐く
#   特定のユーザが使うと、問答無用で煽りを1/2で吐く。多分。

module.exports = (robot) ->
<<<<<<< HEAD:scripts/kitikuji.coffee
    robot.respond /kitikuji/i, (msg) ->
=======
    robot.respond /kitikuji(.*)/i, (msg) ->
>>>>>>> 67927b68aeb8e091b9f4192085cc3ccd69457b07:scripts/kitikuji

        name = msg.match[1]
        omikuji = ["大kiti","中kiti","kiti","末kiti","凶","大凶"]

        results = {
            'KHryuzen' : 'ハゲ'
            'sinner_rits' : '進捗どうですか'
            'sa_son_' : 'ゴーレム（レア！）'
            'Akashi_K' : '鹿お断り'
            'gitchaaan' : 'お祈り'
            'umr00' : '10月'
        }

<<<<<<< HEAD:scripts/kitikuji.coffee
	console.log flag = Math.floor( Math.random() * 2 )
	if flag
=======
        if Math.round(Math.random())
>>>>>>> 67927b68aeb8e091b9f4192085cc3ccd69457b07:scripts/kitikuji
            result = results[msg.message.user.name]
            
        if !(result)
            result = results[name]

        if !(result)
            console.log result = omikuji[ Math.floor(Math.random() * 6) ]

        msg.reply "#{result}です．"
