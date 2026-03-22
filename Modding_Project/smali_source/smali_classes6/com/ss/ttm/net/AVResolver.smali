.class public Lcom/ss/ttm/net/AVResolver;
.super Ljava/lang/Object;
.source "AVResolver.java"


# annotations
.annotation build Lcom/ss/ttm/player/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttm/net/AVResolver$ParserHost;,
        Lcom/ss/ttm/net/AVResolver$HostInfo;
    }
.end annotation


# static fields
.field public static HOST_MAX_CACHE_TIME:I = 0x927c0

.field private static final MAX_CACHED:I = 0x80

.field private static final TAG:Ljava/lang/String; = "AVResolver"

.field private static final mCacheHosts:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/ss/ttm/net/AVResolver$HostInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mError:Ljava/lang/String;

.field private mHostInfo:Lcom/ss/ttm/net/AVResolver$HostInfo;

.field private mHostName:Ljava/lang/String;

.field private mIPStr:[Ljava/lang/String;

.field private mRet:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttm/net/AVResolver;->mCacheHosts:Ljava/util/Hashtable;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ss/ttm/net/AVResolver;->mRet:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/ss/ttm/net/AVResolver;->mThread:Ljava/lang/Thread;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttm/net/AVResolver;->mError:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic access$002(Lcom/ss/ttm/net/AVResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/net/AVResolver;->mError:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$102(Lcom/ss/ttm/net/AVResolver;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttm/net/AVResolver;->mRet:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/ss/ttm/net/AVResolver;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttm/net/AVResolver;->mIPStr:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lcom/ss/ttm/net/AVResolver;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/net/AVResolver;->mIPStr:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static final isIP(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0xf

    .line 13
    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "([1-9]|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/16 v2, 0x5b

    .line 38
    .line 39
    if-ne v1, v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x1

    .line 46
    sub-int/2addr v1, v2

    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    const/16 v1, 0x5d

    .line 52
    .line 53
    if-ne p0, v1, :cond_2

    .line 54
    .line 55
    return v2

    .line 56
    :cond_2
    return v0
.end method

.method static declared-synchronized putHostInfo(Ljava/lang/String;Lcom/ss/ttm/net/AVResolver$HostInfo;)V
    .locals 10

    .line 1
    const-class v0, Lcom/ss/ttm/net/AVResolver;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    sget-object v3, Lcom/ss/ttm/net/AVResolver;->mCacheHosts:Ljava/util/Hashtable;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/16 v5, 0x80

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-le v4, v5, :cond_2

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    move-object v4, v6

    .line 28
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    move-object v6, v5

    .line 45
    check-cast v6, Lcom/ss/ttm/net/AVResolver$HostInfo;

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Ljava/util/Map$Entry;

    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    iget-wide v7, v6, Lcom/ss/ttm/net/AVResolver$HostInfo;->time:J

    .line 62
    .line 63
    cmp-long v9, v7, v1

    .line 64
    .line 65
    if-gez v9, :cond_0

    .line 66
    .line 67
    move-object v4, v6

    .line 68
    move-wide v1, v7

    .line 69
    :cond_0
    move-object v6, v5

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_4

    .line 73
    :catch_0
    move-exception v1

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    move-object v1, v6

    .line 76
    move-object v6, v4

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move-object v1, v6

    .line 79
    :goto_1
    if-eqz v6, :cond_3

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    const-string v2, "AVResolver"

    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v4, "putHostInfo remove host cache"

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v4, v6, Lcom/ss/ttm/net/AVResolver$HostInfo;->ip:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v2, v3}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object v2, Lcom/ss/ttm/net/AVResolver;->mCacheHosts:Ljava/util/Hashtable;

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    const-string v1, "AVResolver"

    .line 117
    .line 118
    const-string v2, "putHostInfo remove host cache error"

    .line 119
    .line 120
    invoke-static {v1, v2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    :goto_3
    sget-object v1, Lcom/ss/ttm/net/AVResolver;->mCacheHosts:Ljava/util/Hashtable;

    .line 124
    .line 125
    invoke-virtual {v1, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 130
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    throw p0
.end method


# virtual methods
.method public freeAddress()V
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-string v0, "free address ctx start"

    .line 2
    .line 3
    const-string v1, "AVResolver"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttm/net/AVResolver;->mThread:Ljava/lang/Thread;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "mthread not null"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/net/AVResolver;->mThread:Ljava/lang/Thread;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttm/net/AVResolver;->mRet:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttm/net/AVResolver;->mIPStr:[Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget-object v0, v0, v1

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "getAddress return ip:"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/ss/ttm/net/AVResolver;->mIPStr:[Ljava/lang/String;

    .line 25
    .line 26
    aget-object v2, v2, v1

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "AVResolver"

    .line 36
    .line 37
    invoke-static {v2, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/ss/ttm/net/AVResolver;->mIPStr:[Ljava/lang/String;

    .line 41
    .line 42
    aget-object v0, v0, v1

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v1, "parser host name: "

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/ss/ttm/net/AVResolver;->mHostName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, " error.err msg:"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/ss/ttm/net/AVResolver;->mError:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public getAddressInfo(Ljava/lang/String;)V
    .locals 9
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/net/AVResolver;->mHostName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const-string v2, "AVResolver"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p1, "getAddressInfo start.hostname is null:"

    .line 13
    .line 14
    invoke-static {v2, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/ss/ttm/net/AVResolver;->mRet:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "getAddressInfo start.hostname:"

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v2, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/ss/ttm/net/AVResolver;->mHostName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/ss/ttm/net/AVResolver;->isIP(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v3, 0x0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v4, "getAddressInfo is ip.ip:"

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v2, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-array p1, v1, [Ljava/lang/String;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/ss/ttm/net/AVResolver;->mIPStr:[Ljava/lang/String;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/ss/ttm/net/AVResolver;->mHostName:Ljava/lang/String;

    .line 74
    .line 75
    aput-object v0, p1, v3

    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/ss/ttm/net/AVResolver;->mRet:Z

    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    sget-object v0, Lcom/ss/ttm/net/AVResolver;->mCacheHosts:Ljava/util/Hashtable;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lcom/ss/ttm/net/AVResolver$HostInfo;

    .line 87
    .line 88
    iput-object v4, p0, Lcom/ss/ttm/net/AVResolver;->mHostInfo:Lcom/ss/ttm/net/AVResolver$HostInfo;

    .line 89
    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v5, "getAddressInfo first find in cache.hostname:"

    .line 98
    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v2, v4}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v4, p0, Lcom/ss/ttm/net/AVResolver;->mHostInfo:Lcom/ss/ttm/net/AVResolver$HostInfo;

    .line 113
    .line 114
    iget-object v4, v4, Lcom/ss/ttm/net/AVResolver$HostInfo;->ip:Ljava/lang/String;

    .line 115
    .line 116
    if-eqz v4, :cond_2

    .line 117
    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 119
    .line 120
    .line 121
    move-result-wide v4

    .line 122
    iget-object v6, p0, Lcom/ss/ttm/net/AVResolver;->mHostInfo:Lcom/ss/ttm/net/AVResolver$HostInfo;

    .line 123
    .line 124
    iget-wide v7, v6, Lcom/ss/ttm/net/AVResolver$HostInfo;->time:J

    .line 125
    .line 126
    sub-long/2addr v4, v7

    .line 127
    sget v7, Lcom/ss/ttm/net/AVResolver;->HOST_MAX_CACHE_TIME:I

    .line 128
    .line 129
    int-to-long v7, v7

    .line 130
    cmp-long v4, v4, v7

    .line 131
    .line 132
    if-gez v4, :cond_2

    .line 133
    .line 134
    new-array p1, v1, [Ljava/lang/String;

    .line 135
    .line 136
    iput-object p1, p0, Lcom/ss/ttm/net/AVResolver;->mIPStr:[Ljava/lang/String;

    .line 137
    .line 138
    iget-object v0, v6, Lcom/ss/ttm/net/AVResolver$HostInfo;->ip:Ljava/lang/String;

    .line 139
    .line 140
    aput-object v0, p1, v3

    .line 141
    .line 142
    iput-boolean v1, p0, Lcom/ss/ttm/net/AVResolver;->mRet:Z

    .line 143
    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v0, "getAddressInfo hit cached:ip:"

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/ss/ttm/net/AVResolver;->mHostInfo:Lcom/ss/ttm/net/AVResolver$HostInfo;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/ss/ttm/net/AVResolver$HostInfo;->ip:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, ",time:"

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/ss/ttm/net/AVResolver;->mHostInfo:Lcom/ss/ttm/net/AVResolver$HostInfo;

    .line 167
    .line 168
    iget-wide v0, v0, Lcom/ss/ttm/net/AVResolver$HostInfo;->time:J

    .line 169
    .line 170
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {v2, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v4, "getAddressInfo cache is to long.hostname:"

    .line 187
    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-static {v2, v3}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Lcom/ss/ttm/net/AVResolver;->mHostInfo:Lcom/ss/ttm/net/AVResolver$HostInfo;

    .line 206
    .line 207
    :cond_3
    :try_start_0
    new-instance p1, Lcom/ss/ttm/net/AVResolver$ParserHost;

    .line 208
    .line 209
    iget-object v0, p0, Lcom/ss/ttm/net/AVResolver;->mHostName:Ljava/lang/String;

    .line 210
    .line 211
    invoke-direct {p1, p0, v0}, Lcom/ss/ttm/net/AVResolver$ParserHost;-><init>(Lcom/ss/ttm/net/AVResolver;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-static {p1}, Lcom/ss/ttm/player/AVThreadPool;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :catch_0
    move-exception p1

    .line 219
    iput-boolean v1, p0, Lcom/ss/ttm/net/AVResolver;->mRet:Z

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iput-object p1, p0, Lcom/ss/ttm/net/AVResolver;->mError:Ljava/lang/String;

    .line 226
    .line 227
    :goto_0
    return-void
.end method

.method public isSuccess()I
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttm/net/AVResolver;->mRet:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttm/net/AVResolver;->mIPStr:[Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    aget-object v0, v0, v1

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, -0x1

    .line 17
    return v0

    .line 18
    :cond_1
    return v1
.end method
