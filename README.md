# bus.coffee

## 機能
### 次の南草津駅行きバスを5件問い合わせるリプライ

    @sinner_real bus  
    @sinner_real bus <時間>  
    @sinner_real bus <経由地>  
    @sinner_real bus <時間> <経由地>  
<時間> - 何分後以降のバスが知りたいか  
　：デフォルトでは10分後のバスを表示  
<経由地> - どこ経由のバスが知りたいか  
　：直，P，か，笠，西  

    @sinner_real bus 20 P  
今から20分以降のパナ東経由のバス  
