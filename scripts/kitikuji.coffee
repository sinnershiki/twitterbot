# Description:
#   kitiな籤を引ける
#
# Commands:
#   kitikuji + ユーザ名で煽りを1/2の確率で吐く
#   特定のユーザが使うと、問答無用で煽りを1/2で吐く。多分。

module.exports = (robot) ->
    robot.respond /kitikuji(.*)/i, (msg) ->
        name = msg.match[1]
        omikuji = ["大kiti","中kiti","kiti","末kiti","凶","大凶"]

        results = {
            'KHryuzen' : 'ハゲ'
            'sinner_real' : '進捗どうですか'
            'sa_son_' : 'ゴーレム（レア！）'
            'Akashi_K' : '鹿お断り'
            'gitchaaan' : 'お祈り'
            'umr00' : '10月'
            'urarin' : '面白いこと言って'
            '_1t_' : '早くイカ買って'
        }


        if Math.round(Math.random())
            result = results[msg.message.user.name]

        if !(result)
            result = results[name]

        if !(result)
            console.log result = omikuji[ Math.floor(Math.random() * 6) ]

        msg.reply "#{result}です．"
