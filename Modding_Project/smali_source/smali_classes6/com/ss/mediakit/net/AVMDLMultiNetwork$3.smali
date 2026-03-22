.class final Lcom/ss/mediakit/net/AVMDLMultiNetwork$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AVMDLMultiNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/mediakit/net/AVMDLMultiNetwork;->alwayUpCellular(Landroid/content/Context;)Z
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
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, v0, Landroid/os/Message;->what:I

    .line 10
    .line 11
    sget-object p1, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    const-string p1, "AVMDLMultiNetwork"

    .line 17
    .line 18
    const-string v0, "send msg of onavailable "

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
