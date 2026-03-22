.class Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;-><init>(Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->access$100(Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;)Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->access$100(Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;)Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;->onStatePowerConnected()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->access$100(Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;)Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryBroadcastReceiver;->this$0:Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;->access$100(Lcom/ss/ttvideoengine/playermetrcis/BatteryListener;)Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Lcom/ss/ttvideoengine/playermetrcis/BatteryListener$BatteryStateListener;->onStatePowerDisconnected()V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    return-void
.end method
