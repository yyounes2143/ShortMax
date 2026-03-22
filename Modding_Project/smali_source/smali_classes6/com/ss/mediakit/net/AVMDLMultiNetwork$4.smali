.class final Lcom/ss/mediakit/net/AVMDLMultiNetwork$4;
.super Landroid/os/Handler;
.source "AVMDLMultiNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/mediakit/net/AVMDLMultiNetwork;->initHandler(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Landroid/net/Network;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 10
    .line 11
    iget v2, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "----receive msg what:%d info:%s"

    .line 22
    .line 23
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "AVMDLMultiNetwork"

    .line 28
    .line 29
    invoke-static {v3, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v2, p1, Landroid/os/Message;->what:I

    .line 33
    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    if-eq v2, v4, :cond_3

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    const/4 v4, 0x3

    .line 43
    if-eq v2, v4, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->refreshIpReachable()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->access$300()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->access$200()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    invoke-static {v0}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->access$100(Landroid/net/Network;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v0, "****end proc msg what:%d info:%s"

    .line 72
    .line 73
    invoke-static {v1, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v3, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
