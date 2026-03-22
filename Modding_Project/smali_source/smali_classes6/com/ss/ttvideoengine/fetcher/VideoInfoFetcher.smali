.class public Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;
.super Ljava/lang/Object;
.source "VideoInfoFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;,
        Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$MyHandler;
    }
.end annotation


# static fields
.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_LOGID:Ljava/lang/String; = "tttrace_id"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final MSG_IS_ERROR:I = 0x1

.field private static final MSG_IS_EXCEPTION:I = 0x3

.field private static final MSG_IS_RETRY:I = 0x0

.field private static final MSG_IS_SUCCESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoInfoFetcher"

.field private static errorMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private EnvParamsStrs:[Ljava/lang/String;

.field private ParamsStrs:[Ljava/lang/String;

.field private isExternNetClient:Z

.field private mApiString:Ljava/lang/String;

.field private mAuth:Ljava/lang/String;

.field private mCancelled:Z

.field private mContext:Landroid/content/Context;

.field private mEnvParams:Lorg/json/JSONObject;

.field private mErrorCode:I

.field private mFuture:Ljava/util/concurrent/Future;

.field private mGetMethodEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mHost:Ljava/lang/String;

.field private mKeyseed:Ljava/lang/String;

.field private mListener:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;

.field private mMaxRetryCount:I

.field private mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

.field private mParams:Lorg/json/JSONObject;

.field private mPlayVersion:I

.field private mProjectTag:Ljava/lang/String;

.field private mResolutionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryIndex:I

.field private mStartFetchT:J

.field private mTriedHost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private mURLWithoutParams:Ljava/lang/String;

.field private mUseFallbakApi:Z

.field private mUseVideoModelCache:Z

.field private mUseVideoModelCacheForce:Z

.field private mVID:Ljava/lang/String;

.field public mVideoModel:Lcom/ss/ttvideoengine/model/VideoModel;

.field private queryMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/ttvideoengine/net/TTVNetClient;)V
    .locals 20

    move-object/from16 v0, p0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mCancelled:Z

    .line 28
    iput v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mRetryIndex:I

    .line 29
    iput v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mType:I

    .line 30
    const-string v2, ""

    iput-object v2, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    const/4 v3, 0x0

    .line 31
    iput-object v3, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mResolutionMap:Ljava/util/HashMap;

    .line 32
    iput-object v3, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mFuture:Ljava/util/concurrent/Future;

    const-wide/16 v3, 0x0

    .line 33
    iput-wide v3, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mStartFetchT:J

    .line 34
    iput-boolean v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mUseVideoModelCache:Z

    .line 35
    iput-boolean v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mUseVideoModelCacheForce:Z

    const/4 v3, 0x1

    .line 36
    iput-boolean v3, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mGetMethodEnable:Z

    const/4 v4, -0x1

    .line 37
    iput v4, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mErrorCode:I

    .line 38
    iput v3, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mMaxRetryCount:I

    .line 39
    const-string v18, "player_version"

    const-string v19, "barragemask"

    const-string v5, "device_type"

    const-string v6, "device_id"

    const-string v7, "ac"

    const-string v8, "aid"

    const-string v9, "device_platform"

    const-string v10, "ab_version"

    const-string v11, "app_name"

    const-string/jumbo v12, "version_code"

    const-string v13, "os_version"

    const-string v14, "menifest_version_code"

    const-string/jumbo v15, "update_version_code"

    const-string/jumbo v16, "user_id"

    const-string/jumbo v17, "web_id"

    filled-new-array/range {v5 .. v19}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->EnvParamsStrs:[Ljava/lang/String;

    .line 40
    const-string v13, "preload"

    const-string v14, "cdn_type"

    const-string v5, "Action"

    const-string v6, "Version"

    const-string/jumbo v7, "video_id"

    const-string v8, "codec_type"

    const-string v9, "base64"

    const-string/jumbo v10, "url_type"

    const-string v11, "format_type"

    const-string v12, "ptoken"

    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->ParamsStrs:[Ljava/lang/String;

    move-object/from16 v4, p1

    .line 41
    iput-object v4, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mContext:Landroid/content/Context;

    .line 42
    new-instance v4, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$MyHandler;

    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTHelper;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$MyHandler;-><init>(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    .line 43
    sget-object v4, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->gNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    if-nez v4, :cond_1

    .line 44
    iput-boolean v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->isExternNetClient:Z

    .line 45
    new-instance v1, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    invoke-direct {v1}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;-><init>()V

    iput-object v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    goto :goto_1

    .line 46
    :cond_1
    iput-boolean v3, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->isExternNetClient:Z

    .line 47
    iput-object v4, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 48
    :goto_1
    iput-object v2, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mProjectTag:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getApiRetryCount()I

    move-result v1

    iput v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mMaxRetryCount:I

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mTriedHost:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ss/ttvideoengine/net/TTVNetClient;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mCancelled:Z

    .line 3
    iput v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mRetryIndex:I

    .line 4
    iput v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mType:I

    .line 5
    const-string v2, ""

    iput-object v2, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mResolutionMap:Ljava/util/HashMap;

    .line 7
    iput-object v2, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mFuture:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mStartFetchT:J

    .line 9
    iput-boolean v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mUseVideoModelCache:Z

    .line 10
    iput-boolean v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mUseVideoModelCacheForce:Z

    const/4 v2, 0x1

    .line 11
    iput-boolean v2, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mGetMethodEnable:Z

    const/4 v3, -0x1

    .line 12
    iput v3, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mErrorCode:I

    .line 13
    iput v2, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mMaxRetryCount:I

    .line 14
    const-string v17, "player_version"

    const-string v18, "barragemask"

    const-string v4, "device_type"

    const-string v5, "device_id"

    const-string v6, "ac"

    const-string v7, "aid"

    const-string v8, "device_platform"

    const-string v9, "ab_version"

    const-string v10, "app_name"

    const-string/jumbo v11, "version_code"

    const-string v12, "os_version"

    const-string v13, "menifest_version_code"

    const-string/jumbo v14, "update_version_code"

    const-string/jumbo v15, "user_id"

    const-string/jumbo v16, "web_id"

    filled-new-array/range {v4 .. v18}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->EnvParamsStrs:[Ljava/lang/String;

    .line 15
    const-string v12, "preload"

    const-string v13, "cdn_type"

    const-string v4, "Action"

    const-string v5, "Version"

    const-string/jumbo v6, "video_id"

    const-string v7, "codec_type"

    const-string v8, "base64"

    const-string/jumbo v9, "url_type"

    const-string v10, "format_type"

    const-string v11, "ptoken"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->ParamsStrs:[Ljava/lang/String;

    move-object/from16 v3, p1

    .line 16
    iput-object v3, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mContext:Landroid/content/Context;

    .line 17
    new-instance v3, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$MyHandler;

    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTHelper;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$MyHandler;-><init>(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    .line 18
    sget-object v3, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->gNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    if-nez v3, :cond_1

    .line 19
    iput-boolean v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->isExternNetClient:Z

    .line 20
    new-instance v1, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    invoke-direct {v1}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;-><init>()V

    iput-object v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    :goto_1
    move-object/from16 v1, p3

    goto :goto_2

    .line 21
    :cond_1
    iput-boolean v2, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->isExternNetClient:Z

    .line 22
    iput-object v3, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    goto :goto_1

    .line 23
    :goto_2
    iput-object v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mProjectTag:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getApiRetryCount()I

    move-result v1

    iput v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mMaxRetryCount:I

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mTriedHost:Ljava/util/ArrayList;

    return-void
.end method

.method private _beginToFetch(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "_beginToFetch url "

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, "VideoInfoFetcher"

    .line 19
    .line 20
    invoke-static {v0, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mStartFetchT:J

    .line 28
    .line 29
    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mAuth:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    new-instance p2, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v0, "Authorization"

    .line 43
    .line 44
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mAuth:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    :goto_0
    move-object v2, p2

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const/4 p2, 0x0

    .line 52
    goto :goto_0

    .line 53
    :goto_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    array-length v0, p2

    .line 66
    if-lez v0, :cond_2

    .line 67
    .line 68
    array-length v0, p2

    .line 69
    const/4 v1, 0x0

    .line 70
    :goto_2
    if-ge v1, v0, :cond_2

    .line 71
    .line 72
    aget-object v3, p2, v1

    .line 73
    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    if-eqz v4, :cond_1

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string/jumbo v5, "startTask"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_1

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    array-length v3, v3

    .line 100
    const/4 v4, 0x5

    .line 101
    if-ne v3, v4, :cond_1

    .line 102
    .line 103
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 104
    .line 105
    new-instance v5, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$2;

    .line 106
    .line 107
    invoke-direct {v5, p0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$2;-><init>(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;)V

    .line 108
    .line 109
    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v4, 0x0

    .line 112
    move-object v1, p1

    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/net/TTVNetClient;->startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 121
    .line 122
    new-instance v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$3;

    .line 123
    .line 124
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$3;-><init>(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p1, v2, v0}, Lcom/ss/ttvideoengine/net/TTVNetClient;->startTask(Ljava/lang/String;Ljava/util/Map;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    .line 128
    .line 129
    .line 130
    :goto_3
    return-void
.end method

.method private _fetchInfoInternal()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mUseVideoModelCache:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/ss/ttvideoengine/net/NetUtils;->isNetAvailable(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mUseVideoModelCacheForce:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    const-string v0, "VideoInfoFetcher"

    .line 26
    .line 27
    const-string v1, "get videomodel from DB"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$1;-><init>(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 50
    .line 51
    const/16 v1, -0x270f

    .line 52
    .line 53
    const-string v2, "apistring empty"

    .line 54
    .line 55
    const-string v3, "kTTVideoErrorDomainFetchingInfo"

    .line 56
    .line 57
    invoke-direct {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mTriedHost:Ljava/util/ArrayList;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHost:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mTriedHost:Ljava/util/ArrayList;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHost:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_beginToFetch(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private _getInfoSuccess(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/database/VideoModelDBManager$CacheInfo;)V
    .locals 5

    .line 1
    const-string v0, "VideoInfoFetcher"

    .line 2
    .line 3
    const-string v1, "_getInfoSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    invoke-static {}, Lcom/ss/ttvideoengine/net/ChannelSelect;->getInstance()Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mPlayVersion:I

    .line 14
    .line 15
    iget-object v2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHost:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/net/ChannelSelect;->setChannelSelected(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mCancelled:Z

    .line 21
    .line 22
    if-nez v0, :cond_b

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/model/VideoModel;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/ss/ttvideoengine/model/VideoModel;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "ResponseMetadata"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    const-string v1, "Result"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_8

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_1
    :goto_0
    const-string v1, "ResponseMetadata"

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    const-string p1, "VideoInfoFetcher"

    .line 62
    .line 63
    const-string p2, "_getInfoSuccess metadata is null"

    .line 64
    .line 65
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :cond_2
    const-string v2, "Error"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const/4 v3, 0x2

    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p2, " RequestId:"

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p2, "RequestId"

    .line 97
    .line 98
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget p2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mPlayVersion:I

    .line 110
    .line 111
    if-ne p2, v3, :cond_3

    .line 112
    .line 113
    invoke-direct {p0, v2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->parseErrorCode(Lorg/json/JSONObject;)I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    iget p2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mErrorCode:I

    .line 119
    .line 120
    :goto_1
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 121
    .line 122
    const-string v2, "kTTVideoErrorDomainFetchingInfo"

    .line 123
    .line 124
    const/16 v3, -0x26f1

    .line 125
    .line 126
    invoke-direct {v0, v2, v3, p2, p1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, v0, Lcom/ss/ttvideoengine/utils/Error;->parameters:Ljava/util/Map;

    .line 130
    .line 131
    const-string p2, "log_id"

    .line 132
    .line 133
    const-string v2, "RequestId"

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_retryIfNeeded(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 143
    .line 144
    .line 145
    monitor-exit p0

    .line 146
    return-void

    .line 147
    :cond_4
    const-string v1, "Result"

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const/16 v2, -0x270d

    .line 154
    .line 155
    if-nez v1, :cond_5

    .line 156
    .line 157
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 158
    .line 159
    const-string p2, "kTTVideoErrorDomainFetchingInfo"

    .line 160
    .line 161
    const-string v0, "fetched info Result is empty"

    .line 162
    .line 163
    invoke-direct {p1, p2, v2, v0}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_retryIfNeeded(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 167
    .line 168
    .line 169
    monitor-exit p0

    .line 170
    return-void

    .line 171
    :cond_5
    iget v4, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mPlayVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .line 173
    if-ne v4, v3, :cond_6

    .line 174
    .line 175
    :try_start_1
    const-string v3, "Data"

    .line 176
    .line 177
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 178
    .line 179
    .line 180
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    goto :goto_2

    .line 182
    :catchall_1
    move-exception p1

    .line 183
    :try_start_2
    new-instance p2, Lcom/ss/ttvideoengine/utils/Error;

    .line 184
    .line 185
    const-string v0, "kTTVideoErrorDomainFetchingInfo"

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const/16 v1, -0x26f9

    .line 192
    .line 193
    invoke-direct {p2, v0, v1, p1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, p2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_retryIfNeeded(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 197
    .line 198
    .line 199
    monitor-exit p0

    .line 200
    return-void

    .line 201
    :cond_6
    :goto_2
    if-nez v1, :cond_7

    .line 202
    .line 203
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 204
    .line 205
    const-string p2, "kTTVideoErrorDomainFetchingInfo"

    .line 206
    .line 207
    const-string v0, "fetched info Result is empty after decrypt"

    .line 208
    .line 209
    invoke-direct {p1, p2, v2, v0}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_retryIfNeeded(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 213
    .line 214
    .line 215
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    return-void

    .line 217
    :cond_7
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoModel;->extractFields(Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 218
    .line 219
    .line 220
    :try_start_4
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoModel;->hasData()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_8

    .line 225
    .line 226
    const/4 v1, 0x4

    .line 227
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefInt(I)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    const/16 v3, 0xa

    .line 232
    .line 233
    if-eq v2, v3, :cond_8

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefInt(I)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_8

    .line 240
    .line 241
    iget v2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mType:I

    .line 242
    .line 243
    if-nez v2, :cond_8

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefInt(I)I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    const-string/jumbo p2, "ver2 server side error,hh"

    .line 250
    .line 251
    .line 252
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_notifyException(ILjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    monitor-exit p0

    .line 256
    return-void

    .line 257
    :cond_8
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mResolutionMap:Ljava/util/HashMap;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoModel;->setUpResolution(Ljava/util/HashMap;)V

    .line 260
    .line 261
    .line 262
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_notifySuccess(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 263
    .line 264
    .line 265
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mUseVideoModelCache:Z

    .line 266
    .line 267
    if-eqz v1, :cond_a

    .line 268
    .line 269
    if-nez p2, :cond_9

    .line 270
    .line 271
    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mVID:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/database/VideoModelDBManager;->insert(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-static {}, Lcom/ss/ttvideoengine/VideoModelCache;->getInstance()Lcom/ss/ttvideoengine/VideoModelCache;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mVID:Ljava/lang/String;

    .line 285
    .line 286
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {p1, p2, v1, v0}, Lcom/ss/ttvideoengine/VideoModelCache;->put(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_9
    new-instance p1, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;

    .line 293
    .line 294
    invoke-direct {p1}, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;-><init>()V

    .line 295
    .line 296
    .line 297
    iput-object v0, p1, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->model:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 298
    .line 299
    iget-wide v0, p2, Lcom/ss/ttvideoengine/database/VideoModelDBManager$CacheInfo;->time:J

    .line 300
    .line 301
    iput-wide v0, p1, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->modelGotTime:J

    .line 302
    .line 303
    invoke-static {}, Lcom/ss/ttvideoengine/VideoModelCache;->getInstance()Lcom/ss/ttvideoengine/VideoModelCache;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mVID:Ljava/lang/String;

    .line 308
    .line 309
    const/4 v1, 0x0

    .line 310
    invoke-virtual {p2, v0, v1, p1}, Lcom/ss/ttvideoengine/VideoModelCache;->put(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;)V

    .line 311
    .line 312
    .line 313
    :cond_a
    :goto_3
    monitor-exit p0

    .line 314
    return-void

    .line 315
    :catchall_2
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 316
    .line 317
    const-string p2, "kTTVideoErrorDomainFetchingInfo"

    .line 318
    .line 319
    const-string v0, "fetched info Result is empty after decrypt"

    .line 320
    .line 321
    const/16 v1, -0x26f8

    .line 322
    .line 323
    invoke-direct {p1, p2, v1, v0}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_retryIfNeeded(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 327
    .line 328
    .line 329
    monitor-exit p0

    .line 330
    return-void

    .line 331
    :cond_b
    :goto_4
    const-string p2, "VideoInfoFetcher"

    .line 332
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v1, "_getInfoSuccess mCancelled "

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mCancelled:Z

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v1, " or jsonObject is null "

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    monitor-exit p0

    .line 364
    return-void

    .line 365
    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 366
    throw p1
.end method

.method private _isTriedAllHost()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mTriedHost:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/net/ChannelSelect;->getInstance()Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mPlayVersion:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/net/ChannelSelect;->groupByApiVersionLocked(I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mTriedHost:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_1
    return v1
.end method

.method private _notifyError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "_notifyError "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "VideoInfoFetcher"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private _notifyException(ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "_notifyException "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", excMessage "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "VideoInfoFetcher"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private _notifyShouldRetry(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private _notifySuccess(Lcom/ss/ttvideoengine/model/VideoModel;)V
    .locals 2

    .line 1
    const-string v0, "VideoInfoFetcher"

    .line 2
    .line 3
    const-string v1, "_notifySuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private _parseAPIString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "_parseAPIString:apistring is empty"

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    const-string v0, "[?]"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    array-length v0, p1

    .line 28
    const/4 v1, 0x2

    .line 29
    if-ge v0, v1, :cond_1

    .line 30
    .line 31
    const-string p1, "_parseAPIString:apistring param is empty"

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_1
    const/4 v0, 0x1

    .line 35
    aget-object v2, p1, v0

    .line 36
    .line 37
    const-string v3, "&"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    aget-object p1, p1, v5

    .line 50
    .line 51
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, "?"

    .line 55
    .line 56
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mURLWithoutParams:Ljava/lang/String;

    .line 64
    .line 65
    new-instance p1, Lorg/json/JSONObject;

    .line 66
    .line 67
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mEnvParams:Lorg/json/JSONObject;

    .line 71
    .line 72
    new-instance p1, Lorg/json/JSONObject;

    .line 73
    .line 74
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mParams:Lorg/json/JSONObject;

    .line 78
    .line 79
    new-instance p1, Ljava/util/TreeMap;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->queryMap:Ljava/util/TreeMap;

    .line 85
    .line 86
    move p1, v5

    .line 87
    :goto_0
    array-length v4, v2

    .line 88
    if-ge p1, v4, :cond_a

    .line 89
    .line 90
    iget-boolean v4, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mGetMethodEnable:Z

    .line 91
    .line 92
    const-string v6, "="

    .line 93
    .line 94
    if-eqz v4, :cond_2

    .line 95
    .line 96
    aget-object v4, v2, p1

    .line 97
    .line 98
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v6, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->queryMap:Ljava/util/TreeMap;

    .line 103
    .line 104
    aget-object v7, v4, v5

    .line 105
    .line 106
    aget-object v4, v4, v0

    .line 107
    .line 108
    invoke-virtual {v6, v7, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto/16 :goto_5

    .line 112
    .line 113
    :cond_2
    aget-object v4, v2, p1

    .line 114
    .line 115
    const-string v7, "Action"

    .line 116
    .line 117
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_8

    .line 122
    .line 123
    aget-object v4, v2, p1

    .line 124
    .line 125
    const-string v7, "Version"

    .line 126
    .line 127
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-nez v4, :cond_3

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_3
    aget-object v4, v2, p1

    .line 135
    .line 136
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    array-length v7, v4

    .line 141
    if-lt v7, v1, :cond_9

    .line 142
    .line 143
    aget-object v7, v4, v5

    .line 144
    .line 145
    aget-object v8, v4, v0

    .line 146
    .line 147
    move v9, v1

    .line 148
    :goto_1
    array-length v10, v4

    .line 149
    if-ge v9, v10, :cond_4

    .line 150
    .line 151
    new-instance v10, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    aget-object v8, v4, v9

    .line 163
    .line 164
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    add-int/lit8 v9, v9, 0x1

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_4
    move v4, v5

    .line 175
    :goto_2
    :try_start_1
    iget-object v6, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->EnvParamsStrs:[Ljava/lang/String;

    .line 176
    .line 177
    array-length v9, v6

    .line 178
    if-ge v4, v9, :cond_6

    .line 179
    .line 180
    aget-object v6, v6, v4

    .line 181
    .line 182
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-eqz v6, :cond_5

    .line 187
    .line 188
    iget-object v6, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mEnvParams:Lorg/json/JSONObject;

    .line 189
    .line 190
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_6
    move v4, v5

    .line 197
    :goto_3
    iget-object v6, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->ParamsStrs:[Ljava/lang/String;

    .line 198
    .line 199
    array-length v9, v6

    .line 200
    if-ge v4, v9, :cond_9

    .line 201
    .line 202
    aget-object v6, v6, v4

    .line 203
    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-eqz v6, :cond_7

    .line 209
    .line 210
    iget-object v6, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mParams:Lorg/json/JSONObject;

    .line 211
    .line 212
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    .line 214
    .line 215
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :catch_0
    const-string p1, "_parseAPIString:put params error"

    .line 219
    .line 220
    return-object p1

    .line 221
    :cond_8
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    iget-object v7, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mURLWithoutParams:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    aget-object v7, v2, p1

    .line 232
    .line 233
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    iput-object v4, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mURLWithoutParams:Ljava/lang/String;

    .line 241
    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    iget-object v7, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mURLWithoutParams:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    iput-object v4, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mURLWithoutParams:Ljava/lang/String;

    .line 260
    .line 261
    aget-object v4, v2, p1

    .line 262
    .line 263
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    iget-object v6, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->queryMap:Ljava/util/TreeMap;

    .line 268
    .line 269
    aget-object v7, v4, v5

    .line 270
    .line 271
    aget-object v4, v4, v0

    .line 272
    .line 273
    invoke-virtual {v6, v7, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    :cond_9
    :goto_5
    add-int/lit8 p1, p1, 0x1

    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_a
    iget-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mURLWithoutParams:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    sub-int/2addr v1, v0

    .line 287
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mURLWithoutParams:Ljava/lang/String;

    .line 292
    .line 293
    const/4 p1, 0x0

    .line 294
    return-object p1

    .line 295
    :catchall_0
    const-string p1, "_parseAPIString:apistring to URL error"

    .line 296
    .line 297
    return-object p1
.end method

.method private _retryIfNeeded(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 5

    .line 1
    const-string v0, "VideoInfoFetcher"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "_retryIfNeeded error "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mCancelled:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_0
    const/16 v0, -0x270a

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object v1, p1, Lcom/ss/ttvideoengine/utils/Error;->domain:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget v1, p1, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 46
    .line 47
    const/16 v2, -0x26fb

    .line 48
    .line 49
    if-ne v1, v2, :cond_1

    .line 50
    .line 51
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    .line 52
    .line 53
    const-string v2, "kTTVideoErrorDomainFetchingInfo"

    .line 54
    .line 55
    iget v3, p1, Lcom/ss/ttvideoengine/utils/Error;->internalCode:I

    .line 56
    .line 57
    iget-object p1, p1, Lcom/ss/ttvideoengine/utils/Error;->description:Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {v1, v2, v0, v3, p1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    move-object p1, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v1, p1, Lcom/ss/ttvideoengine/utils/Error;->domain:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    .line 73
    .line 74
    const-string v2, "kTTVideoErrorDomainFetchingInfo"

    .line 75
    .line 76
    iget v3, p1, Lcom/ss/ttvideoengine/utils/Error;->internalCode:I

    .line 77
    .line 78
    iget-object p1, p1, Lcom/ss/ttvideoengine/utils/Error;->description:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v1, v2, v0, v3, p1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 85
    .line 86
    const-string v1, "kTTVideoErrorDomainFetchingInfo"

    .line 87
    .line 88
    invoke-direct {p1, v1, v0}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_1
    iget v0, p1, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 92
    .line 93
    const/16 v1, -0x26f1

    .line 94
    .line 95
    if-ne v0, v1, :cond_6

    .line 96
    .line 97
    iget v0, p1, Lcom/ss/ttvideoengine/utils/Error;->internalCode:I

    .line 98
    .line 99
    div-int/lit16 v1, v0, 0x2710

    .line 100
    .line 101
    const/16 v2, 0xa

    .line 102
    .line 103
    if-eq v1, v2, :cond_5

    .line 104
    .line 105
    const/16 v1, -0x26f2

    .line 106
    .line 107
    if-ne v0, v1, :cond_4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    const/16 v0, -0x2706

    .line 111
    .line 112
    iput v0, p1, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 113
    .line 114
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v1, "<apiStr:"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, ">"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v2, p1, Lcom/ss/ttvideoengine/utils/Error;->description:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p1, Lcom/ss/ttvideoengine/utils/Error;->description:Ljava/lang/String;

    .line 156
    .line 157
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 158
    .line 159
    .line 160
    monitor-exit p0

    .line 161
    return-void

    .line 162
    :cond_6
    iget v0, p1, Lcom/ss/ttvideoengine/utils/Error;->internalCode:I

    .line 163
    .line 164
    const/16 v1, 0x1f6

    .line 165
    .line 166
    if-ne v0, v1, :cond_7

    .line 167
    .line 168
    iget v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mRetryIndex:I

    .line 169
    .line 170
    iget v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mMaxRetryCount:I

    .line 171
    .line 172
    if-lt v0, v1, :cond_7

    .line 173
    .line 174
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    .line 175
    .line 176
    if-eqz v0, :cond_7

    .line 177
    .line 178
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHost:Ljava/lang/String;

    .line 179
    .line 180
    if-eqz v1, :cond_7

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    .line 187
    .line 188
    iget-object v2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHost:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    add-int/2addr v2, v0

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-direct {p0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_isTriedAllHost()Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-nez v2, :cond_7

    .line 204
    .line 205
    invoke-static {}, Lcom/ss/ttvideoengine/net/ChannelSelect;->getInstance()Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iget v3, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mPlayVersion:I

    .line 210
    .line 211
    iget-object v4, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHost:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v2, v3, v4}, Lcom/ss/ttvideoengine/net/ChannelSelect;->selectNext(ILjava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    iget-object v3, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    .line 218
    .line 219
    const/4 v4, 0x0

    .line 220
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iput-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    .line 243
    .line 244
    iput-object v2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHost:Ljava/lang/String;

    .line 245
    .line 246
    const/4 v0, -0x1

    .line 247
    iput v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mRetryIndex:I

    .line 248
    .line 249
    :cond_7
    iget v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mRetryIndex:I

    .line 250
    .line 251
    iget v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mMaxRetryCount:I

    .line 252
    .line 253
    if-ge v0, v1, :cond_8

    .line 254
    .line 255
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_notifyShouldRetry(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 256
    .line 257
    .line 258
    iget p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mRetryIndex:I

    .line 259
    .line 260
    add-int/lit8 p1, p1, 0x1

    .line 261
    .line 262
    iput p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mRetryIndex:I

    .line 263
    .line 264
    invoke-direct {p0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_fetchInfoInternal()V

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    const-string v1, "<apiStr:"

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v1, ">"

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    iget-object v2, p1, Lcom/ss/ttvideoengine/utils/Error;->description:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iput-object v0, p1, Lcom/ss/ttvideoengine/utils/Error;->description:Ljava/lang/String;

    .line 310
    .line 311
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 312
    .line 313
    .line 314
    :goto_3
    monitor-exit p0

    .line 315
    return-void

    .line 316
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    throw p1
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;)Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mListener:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mCancelled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mVID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;Lorg/json/JSONObject;Lcom/ss/ttvideoengine/database/VideoModelDBManager$CacheInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_getInfoSuccess(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/database/VideoModelDBManager$CacheInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_beginToFetch(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$702(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mErrorCode:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_retryIfNeeded(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private parseErrorCode(Lorg/json/JSONObject;)I
    .locals 4

    .line 1
    const-string v0, "CodeN"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    const-string v0, "Code"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, -0x1

    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    const-string v0, "."

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-lez v0, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_2
    sget-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    new-instance v0, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 58
    .line 59
    const v1, 0x186a9

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v3, "InvalidClientTokenId"

    .line 67
    .line 68
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    sget-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 72
    .line 73
    const v1, 0x186aa

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v3, "SignatureDoesNotMatch"

    .line 81
    .line 82
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 86
    .line 87
    const v1, 0x186a5

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v3, "MissingSignature"

    .line 95
    .line 96
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    sget-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 100
    .line 101
    const v1, 0x186a6

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v3, "InvalidTimestamp"

    .line 109
    .line 110
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    sget-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 114
    .line 115
    const v1, 0x186ac

    .line 116
    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const-string v3, "LackProjectPolicy"

    .line 123
    .line 124
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    sget-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 128
    .line 129
    const v1, 0x186ad

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v3, "AccessDenied"

    .line 137
    .line 138
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    sget-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 142
    .line 143
    const v1, 0x186ae

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string v3, "InternalServiceError"

    .line 151
    .line 152
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    sget-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 156
    .line 157
    const v1, 0x186b0

    .line 158
    .line 159
    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const-string v3, "InternalServiceTimeout"

    .line 165
    .line 166
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    sget-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 170
    .line 171
    const v1, 0x186b2

    .line 172
    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const-string v3, "FlowLimitExceeded"

    .line 179
    .line 180
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    sget-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 184
    .line 185
    const v1, 0x186b3

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const-string v3, "ServiceUnavailableTemp"

    .line 193
    .line 194
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    sget-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 198
    .line 199
    const v1, 0x186b4

    .line 200
    .line 201
    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const-string v3, "MethodNotAllowed"

    .line 207
    .line 208
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    :cond_3
    sget-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 212
    .line 213
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_4

    .line 218
    .line 219
    :try_start_0
    sget-object v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->errorMapping:Ljava/util/HashMap;

    .line 220
    .line 221
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    check-cast p1, Ljava/lang/Integer;

    .line 226
    .line 227
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_0

    .line 232
    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 234
    .line 235
    .line 236
    :cond_4
    move p1, v2

    .line 237
    :goto_0
    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mListener:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "fetcher cancelled"

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;->onLog(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mCancelled:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mCancelled:Z

    .line 29
    .line 30
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mFuture:Ljava/util/concurrent/Future;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/net/TTVNetClient;->cancel()V

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0
.end method

.method public fetchInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mAuth:Ljava/lang/String;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mRetryIndex:I

    .line 15
    invoke-direct {p0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_fetchInfoInternal()V

    return-void
.end method

.method public fetchInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->fetchInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public fetchInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchInfo apiString "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", auth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playversion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyseed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoInfoFetcher"

    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mApiString:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mAuth:Ljava/lang/String;

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mRetryIndex:I

    .line 5
    iput p3, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mPlayVersion:I

    .line 6
    iput-object p4, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mKeyseed:Ljava/lang/String;

    .line 7
    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :goto_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_fetchInfoInternal()V

    return-void
.end method

.method public setListener(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mListener:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mType:I

    .line 2
    .line 3
    return-void
.end method

.method public setResolutionMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/Resolution;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mResolutionMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public setUseFallbakApi(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mUseFallbakApi:Z

    .line 6
    .line 7
    return-void
.end method

.method public setUseVideoModelCache(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mUseVideoModelCache:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/ss/ttvideoengine/database/VideoModelDBManager;->getInstance(Landroid/content/Context;)Lcom/ss/ttvideoengine/database/VideoModelDBManager;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setUseVideoModelCacheForce(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mUseVideoModelCacheForce:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVideoID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mVID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
