.class Lcom/ss/ttm/net/AVResolver$ParserHost;
.super Ljava/lang/Object;
.source "AVResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttm/net/AVResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParserHost"
.end annotation


# instance fields
.field mHostName:Ljava/lang/String;

.field mResolver:Lcom/ss/ttm/net/AVResolver;


# direct methods
.method public constructor <init>(Lcom/ss/ttm/net/AVResolver;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttm/net/AVResolver$ParserHost;->mResolver:Lcom/ss/ttm/net/AVResolver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttm/net/AVResolver$ParserHost;->mHostName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const-string/jumbo v0, "start ParserHost task"

    .line 2
    .line 3
    .line 4
    const-string v1, "AVResolver"

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    const-string v2, "getAddressInfo thread start"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/ss/ttm/net/AVResolver$ParserHost;->mHostName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 18
    .line 19
    .line 20
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v3, "getAddressInfo thread ok"

    .line 26
    .line 27
    invoke-static {v1, v3}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception v3

    .line 32
    move-object v5, v2

    .line 33
    move-object v2, v0

    .line 34
    move-object v0, v5

    .line 35
    goto :goto_0

    .line 36
    :catchall_1
    move-exception v3

    .line 37
    move-object v2, v0

    .line 38
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/ss/ttm/net/AVResolver$ParserHost;->mResolver:Lcom/ss/ttm/net/AVResolver;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v4, v3}, Lcom/ss/ttm/net/AVResolver;->access$002(Lcom/ss/ttm/net/AVResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    const-string v3, "getAddressInfo thread error"

    .line 51
    .line 52
    invoke-static {v1, v3}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    move-object v5, v2

    .line 56
    move-object v2, v0

    .line 57
    move-object v0, v5

    .line 58
    :goto_1
    iget-object v1, p0, Lcom/ss/ttm/net/AVResolver$ParserHost;->mResolver:Lcom/ss/ttm/net/AVResolver;

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-static {v1, v3}, Lcom/ss/ttm/net/AVResolver;->access$102(Lcom/ss/ttm/net/AVResolver;Z)Z

    .line 62
    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    if-nez v0, :cond_0

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/ss/ttm/net/AVResolver$ParserHost;->mResolver:Lcom/ss/ttm/net/AVResolver;

    .line 70
    .line 71
    new-array v2, v3, [Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v1, v2}, Lcom/ss/ttm/net/AVResolver;->access$202(Lcom/ss/ttm/net/AVResolver;[Ljava/lang/String;)[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/ss/ttm/net/AVResolver$ParserHost;->mResolver:Lcom/ss/ttm/net/AVResolver;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/ss/ttm/net/AVResolver;->access$200(Lcom/ss/ttm/net/AVResolver;)[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const/4 v2, 0x0

    .line 83
    aput-object v0, v1, v2

    .line 84
    .line 85
    new-instance v1, Lcom/ss/ttm/net/AVResolver$HostInfo;

    .line 86
    .line 87
    invoke-direct {v1}, Lcom/ss/ttm/net/AVResolver$HostInfo;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    iput-wide v2, v1, Lcom/ss/ttm/net/AVResolver$HostInfo;->time:J

    .line 95
    .line 96
    iput-object v0, v1, Lcom/ss/ttm/net/AVResolver$HostInfo;->ip:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/ss/ttm/net/AVResolver$ParserHost;->mHostName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/ss/ttm/net/AVResolver;->putHostInfo(Ljava/lang/String;Lcom/ss/ttm/net/AVResolver$HostInfo;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    iput-wide v2, v1, Lcom/ss/ttm/net/AVResolver$HostInfo;->time:J

    .line 108
    .line 109
    :cond_1
    :goto_2
    return-void
.end method
