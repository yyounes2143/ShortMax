.class public Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;
.super Ljava/lang/Object;
.source "AVMDLHttpExcutor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AVMDLHttpExcutor"

.field private static okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static buildRangeHeader(JJ)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;->formRangeStrBySize(JJ)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p2, "bytes="

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    return-object p0
.end method

.method public static excute(Lcom/ss/mediakit/downloader/AVMDLRequest;I)Lcom/ss/mediakit/downloader/AVMDLResponse;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "AVMDLHttpExcutor"

    .line 2
    .line 3
    new-instance v1, Lokhttp3/Request$Builder;

    .line 4
    .line 5
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/ss/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    .line 9
    .line 10
    aget-object v2, v2, p1

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->k(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 13
    .line 14
    .line 15
    const-string v2, "GET"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->g(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;->toOkHttpHeaders(Lcom/ss/mediakit/downloader/AVMDLRequest;)Lokhttp3/Headers;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->f(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;->getOkHttpClient()Lokhttp3/OkHttpClient;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    iput p1, p0, Lcom/ss/mediakit/downloader/AVMDLRequest;->mCurlUrlIndex:I

    .line 53
    .line 54
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 55
    .line 56
    const-string v8, "http open cost time:%d url:%s"

    .line 57
    .line 58
    sub-long/2addr v5, v2

    .line 59
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/ss/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    .line 64
    .line 65
    aget-object p1, v3, p1

    .line 66
    .line 67
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v7, v8, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Lcom/ss/mediakit/downloader/AVMDLResponse;

    .line 79
    .line 80
    invoke-direct {p1, p0, v4, v1}, Lcom/ss/mediakit/downloader/AVMDLResponse;-><init>(Lcom/ss/mediakit/downloader/AVMDLRequest;Lokhttp3/Response;Lokhttp3/Call;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    return-object p1

    .line 84
    :catch_0
    move-exception p0

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v1, "request exception is "

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0
.end method

.method public static formRangeStrByPos(JJ)Ljava/lang/String;
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    const-string v3, "-"

    .line 6
    .line 7
    if-ltz v2, :cond_0

    .line 8
    .line 9
    cmp-long v4, p2, v0

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    if-ltz v2, :cond_1

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_1
    if-gez v2, :cond_2

    .line 51
    .line 52
    cmp-long p0, p2, v0

    .line 53
    .line 54
    if-lez p0, :cond_2

    .line 55
    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_2
    const-string p0, ""

    .line 73
    .line 74
    return-object p0
.end method

.method public static formRangeStrBySize(JJ)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    add-long/2addr p2, p0

    .line 8
    const-wide/16 v0, 0x1

    .line 9
    .line 10
    sub-long/2addr p2, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 p2, -0x1

    .line 13
    .line 14
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;->formRangeStrByPos(JJ)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static declared-synchronized getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 10

    .line 1
    const-class v0, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 5
    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getConfig()Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-wide/16 v2, 0x2710

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget v4, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mOpenTimeOut:I

    .line 21
    .line 22
    if-lez v4, :cond_0

    .line 23
    .line 24
    mul-int/lit16 v4, v4, 0x3e8

    .line 25
    .line 26
    int-to-long v4, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-wide v4, v2

    .line 29
    :goto_0
    iget v1, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mRWTimeOut:I

    .line 30
    .line 31
    if-lez v1, :cond_1

    .line 32
    .line 33
    mul-int/lit16 v1, v1, 0x3e8

    .line 34
    .line 35
    int-to-long v2, v1

    .line 36
    :cond_1
    move-wide v8, v2

    .line 37
    move-wide v2, v4

    .line 38
    move-wide v4, v8

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-wide v4, v2

    .line 43
    :goto_1
    const-string v1, "AVMDLHttpExcutor"

    .line 44
    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v7, "connect timeout:"

    .line 51
    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v7, " rwtimeout:"

    .line 59
    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {v1, v6}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 74
    .line 75
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 76
    .line 77
    .line 78
    sget-object v6, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 79
    .line 80
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v1, v6}, Lokhttp3/OkHttpClient$Builder;->T(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 85
    .line 86
    .line 87
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 88
    .line 89
    invoke-virtual {v1, v2, v3, v6}, Lokhttp3/OkHttpClient$Builder;->f(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->V(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->Y(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->c()Lokhttp3/OkHttpClient;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sput-object v1, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 105
    .line 106
    :cond_3
    sget-object v1, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;->okHttpClient:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    monitor-exit v0

    .line 109
    return-object v1

    .line 110
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw v1
.end method

.method public static declared-synchronized setOkHttpClient(Lokhttp3/OkHttpClient;)V
    .locals 4

    .line 1
    const-class v0, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sput-object p0, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 9
    .line 10
    const-string v1, "AVMDLHttpExcutor"

    .line 11
    .line 12
    const-string v2, "cur client null allow set"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    const-string v1, "AVMDLHttpExcutor"

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "set custom client:"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v1, p0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p0
.end method

.method private static toOkHttpHeaders(Lcom/ss/mediakit/downloader/AVMDLRequest;)Lokhttp3/Headers;
    .locals 7

    .line 1
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/mediakit/downloader/AVMDLRequest;->headers:Ljava/util/HashMap;

    .line 7
    .line 8
    const-string v2, "AVMDLHttpExcutor"

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/util/Map$Entry;

    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v5, "custom header key:"

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, "  value:"

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v2, v4}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v4, v3}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-wide v3, p0, Lcom/ss/mediakit/downloader/AVMDLRequest;->reqOff:J

    .line 89
    .line 90
    iget-wide v5, p0, Lcom/ss/mediakit/downloader/AVMDLRequest;->size:J

    .line 91
    .line 92
    invoke-static {v3, v4, v5, v6}, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;->buildRangeHeader(JJ)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_1

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v3, "range str: "

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v1, "Range"

    .line 123
    .line 124
    invoke-virtual {v0, v1, p0}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 125
    .line 126
    .line 127
    :cond_1
    const-string p0, "Accept-Encoding"

    .line 128
    .line 129
    const-string v1, "identity"

    .line 130
    .line 131
    invoke-virtual {v0, p0, v1}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->f()Lokhttp3/Headers;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0
.end method
