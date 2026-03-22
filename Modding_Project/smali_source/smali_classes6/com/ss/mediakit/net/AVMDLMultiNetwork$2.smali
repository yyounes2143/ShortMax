.class final Lcom/ss/mediakit/net/AVMDLMultiNetwork$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AVMDLMultiNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/mediakit/net/AVMDLMultiNetwork;->registerNetworkChangeCallback(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    const-string p2, "AVMDLMultiNetwork"

    .line 2
    .line 3
    const-string v0, "send msg of onLinkPropertiesChanged"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->access$000()Landroid/net/ConnectivityManager;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p2, Landroid/os/Message;

    .line 18
    .line 19
    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 p1, 0x3

    .line 25
    iput p1, p2, Landroid/os/Message;->what:I

    .line 26
    .line 27
    sget-object p1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 1
    const-string v0, "AVMDLMultiNetwork"

    .line 2
    .line 3
    const-string v1, "send msg of onLost "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->access$000()Landroid/net/ConnectivityManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Landroid/os/Message;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 p1, 0x3

    .line 25
    iput p1, v0, Landroid/os/Message;->what:I

    .line 26
    .line 27
    sget-object p1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    const-wide/16 v1, 0xc8

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
