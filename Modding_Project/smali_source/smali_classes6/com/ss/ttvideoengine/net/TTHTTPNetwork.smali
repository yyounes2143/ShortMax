.class public Lcom/ss/ttvideoengine/net/TTHTTPNetwork;
.super Lcom/ss/ttvideoengine/net/TTVNetClient;
.source "TTHTTPNetwork.java"


# static fields
.field private static final HTTP_MAX_RETRY_TIME_OUT:I = 0xa

.field private static final HTTP_TIME_OUT:I = 0xa

.field public static final JSON:Lokhttp3/MediaType;

.field private static final STATUS_CANCEL:I = 0x3

.field private static final STATUS_FINISHED:I = 0x2

.field private static final STATUS_RUNNING:I = 0x1

.field private static final STATUS_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TTHTTPNetwork"

.field private static mClient:Lokhttp3/OkHttpClient;

.field private static mClientParamsChanged:Z

.field private static mIsRetryWhenFail:Z

.field private static mMaxRetryTimeOut:I

.field private static mTLSv1_2:Z


# instance fields
.field private mCall:Lokhttp3/Call;

.field private mStartTime:J

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "application/json"

    .line 2
    .line 3
    invoke-static {v0}, Lokhttp3/MediaType;->g(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->JSON:Lokhttp3/MediaType;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mIsRetryWhenFail:Z

    .line 11
    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    sput v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mMaxRetryTimeOut:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mTLSv1_2:Z

    .line 18
    .line 19
    sput-boolean v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mClientParamsChanged:Z

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/net/TTVNetClient;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mStatus:I

    .line 6
    .line 7
    sget-object v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mClient:Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-boolean v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mClientParamsChanged:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-class v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->setupClient()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    :cond_1
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method private _receivedError(Lokhttp3/Call;Ljava/io/IOException;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mIsRetryWhenFail:Z

    .line 2
    .line 3
    const/16 v1, -0x270a

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, v2, v1, p2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, v3, p1}, Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    iget-wide v6, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mStartTime:J

    .line 32
    .line 33
    sub-long/2addr v4, v6

    .line 34
    sget v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mMaxRetryTimeOut:I

    .line 35
    .line 36
    mul-int/lit16 v0, v0, 0x3e8

    .line 37
    .line 38
    add-int/lit16 v0, v0, -0x1f4

    .line 39
    .line 40
    int-to-long v6, v0

    .line 41
    cmp-long v0, v4, v6

    .line 42
    .line 43
    if-gez v0, :cond_1

    .line 44
    .line 45
    const-wide/16 v0, 0x3e8

    .line 46
    .line 47
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p2

    .line 52
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->_startTask(Lokhttp3/Request;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-direct {p1, v2, v1, p2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p3, v3, p1}, Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void
.end method

.method private _startTask(Lokhttp3/Request;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V
    .locals 3

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mStatus:I

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput v2, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mStatus:I

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    sget-object v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mClient:Lokhttp3/OkHttpClient;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mCall:Lokhttp3/Call;

    .line 23
    .line 24
    new-instance v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$2;

    .line 25
    .line 26
    invoke-direct {v0, p0, p2}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$2;-><init>(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Lokhttp3/Call;->o0(Lokhttp3/Callback;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    :try_start_1
    const-string p1, "TTHTTPNetwork"

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "_startTask status error, return. "

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mStatus:I

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p1
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mStatus:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mStatus:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;Lokhttp3/Call;Ljava/io/IOException;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->_receivedError(Lokhttp3/Call;Ljava/io/IOException;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static enableTLSv1_2(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mTLSv1_2:Z

    .line 2
    .line 3
    if-eq v0, p0, :cond_0

    .line 4
    .line 5
    sput-boolean p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mTLSv1_2:Z

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    sput-boolean p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mClientParamsChanged:Z

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static isRetryWhenFail(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isRetryWhenFail:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "TTHTTPNetwork"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-ltz p0, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    if-le p0, v0, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    if-ne p0, v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    sput-boolean v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mIsRetryWhenFail:Z

    .line 34
    .line 35
    :cond_2
    :goto_1
    return-void
.end method

.method public static setMaxRetryTimeOut(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "setMaxRetryTimeOut:"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "TTHTTPNetwork"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-ltz p0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x3c

    .line 27
    .line 28
    if-le p0, v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sput p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mMaxRetryTimeOut:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/16 p0, 0xa

    .line 35
    .line 36
    sput p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mMaxRetryTimeOut:I

    .line 37
    .line 38
    :goto_1
    return-void
.end method

.method private setupClient()V
    .locals 7

    .line 1
    const-string v0, "TTHTTPNetwork"

    .line 2
    .line 3
    sget-boolean v1, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mClientParamsChanged:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sput-object v2, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mClient:Lokhttp3/OkHttpClient;

    .line 9
    .line 10
    :cond_0
    sget-object v1, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mClient:Lokhttp3/OkHttpClient;

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    .line 15
    .line 16
    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    const-wide/16 v4, 0xa

    .line 22
    .line 23
    invoke-virtual {v1, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->f(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->Y(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->V(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-boolean v3, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mTLSv1_2:Z

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    :try_start_0
    const-string v3, "TLS"

    .line 41
    .line 42
    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3, v2, v2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    aget-object v2, v2, v4

    .line 65
    .line 66
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 67
    .line 68
    new-instance v5, Lokhttp3/ConnectionSpec$Builder;

    .line 69
    .line 70
    sget-object v6, Lokhttp3/ConnectionSpec;->i:Lokhttp3/ConnectionSpec;

    .line 71
    .line 72
    invoke-direct {v5, v6}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Lokhttp3/ConnectionSpec$Builder;->a()Lokhttp3/ConnectionSpec;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    new-instance v6, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    sget-object v5, Lokhttp3/ConnectionSpec;->j:Lokhttp3/ConnectionSpec;

    .line 88
    .line 89
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    sget-object v5, Lokhttp3/ConnectionSpec;->k:Lokhttp3/ConnectionSpec;

    .line 93
    .line 94
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v6}, Lokhttp3/OkHttpClient$Builder;->h(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 98
    .line 99
    .line 100
    new-instance v5, Lcom/ss/ttvideoengine/net/TLSSocketFactory;

    .line 101
    .line 102
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-direct {v5, v3}, Lcom/ss/ttvideoengine/net/TLSSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v5, v2}, Lokhttp3/OkHttpClient$Builder;->X(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 110
    .line 111
    .line 112
    const-string/jumbo v2, "tls1.2 enabled"

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_0
    const-string v2, "enable tls1.2 error"

    .line 120
    .line 121
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->c()Lokhttp3/OkHttpClient;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sput-object v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mClient:Lokhttp3/OkHttpClient;

    .line 129
    .line 130
    sput-boolean v4, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mClientParamsChanged:Z

    .line 131
    .line 132
    :cond_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mCall:Lokhttp3/Call;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mCall:Lokhttp3/Call;

    .line 12
    .line 13
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public startTask(Ljava/lang/String;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V
    .locals 1

    .line 22
    const-class v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    monitor-enter v0

    .line 23
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->setupClient()V

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->k(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    move-result-object p1

    .line 27
    sget-object v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mCall:Lokhttp3/Call;

    .line 28
    new-instance v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$1;

    invoke-direct {v0, p0, p2}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$1;-><init>(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->o0(Lokhttp3/Callback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startTask(Ljava/lang/String;Ljava/util/Map;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->setupClient()V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->k(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->_startTask(Lokhttp3/Request;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "I",
            "Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 10
    const-class v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->setupClient()V

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->k(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 14
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 15
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p4, p2, :cond_2

    .line 18
    sget-object p2, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->JSON:Lokhttp3/MediaType;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->h(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 20
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->_startTask(Lokhttp3/Request;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "I",
            "Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;",
            ")V"
        }
    .end annotation

    .line 30
    const-class v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    monitor-enter v0

    .line 31
    :try_start_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->setupClient()V

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->k(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 34
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 35
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p4, p2, :cond_2

    .line 38
    sget-object p2, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->JSON:Lokhttp3/MediaType;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->h(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 40
    :cond_2
    sget-object p2, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->mCall:Lokhttp3/Call;

    .line 41
    new-instance p2, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$3;

    invoke-direct {p2, p0, p5}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$3;-><init>(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->o0(Lokhttp3/Callback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
