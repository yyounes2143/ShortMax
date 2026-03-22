.class public Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;
.super Ljava/lang/Object;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;,
        Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mBatteryStateListener:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;

.field private mContext:Landroid/content/Context;

.field private mInitialState:Z

.field private receiver:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;-><init>(Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$1;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->receiver:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;)Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->mBatteryStateListener:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getInitialCharging()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->mInitialState:Z

    .line 2
    .line 3
    return v0
.end method

.method public register(Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->mBatteryStateListener:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->receiver:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    new-instance p1, Landroid/content/IntentFilter;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->receiver:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const-string v0, "plugged"

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "BatteryListener state: "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "BatteryListener"

    .line 61
    .line 62
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x2

    .line 66
    if-ne p1, v0, :cond_0

    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const/4 p1, 0x0

    .line 71
    :goto_0
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->mInitialState:Z

    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->receiver:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
