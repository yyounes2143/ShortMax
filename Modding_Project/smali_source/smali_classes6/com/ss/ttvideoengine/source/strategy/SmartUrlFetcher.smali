.class public Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;
.super Ljava/lang/Object;
.source "SmartUrlFetcher.java"

# interfaces
.implements Lcom/ss/ttvideoengine/utils/WeakHandler$IHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache;,
        Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;,
        Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;,
        Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;
    }
.end annotation


# static fields
.field public static final CACHE_TYPE_HINT_CACHE:I = 0x1

.field public static final CACHE_TYPE_NONE:I = 0x0

.field private static final MSG_COMPLETE:I = 0x1

.field private static final MSG_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CodecStrategy_SmartUrlFetcher"


# instance fields
.field private final mCallback:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;

.field private volatile mCanceled:Z

.field private final mH:Landroid/os/Handler;

.field private final mHttpClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

.field private mRequestParams:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mCallback:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;

    .line 5
    .line 6
    sget-object p1, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->gNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mHttpClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mHttpClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 19
    .line 20
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_1
    new-instance v0, Lcom/ss/ttvideoengine/utils/WeakHandler;

    .line 36
    .line 37
    invoke-direct {v0, p1, p0}, Lcom/ss/ttvideoengine/utils/WeakHandler;-><init>(Landroid/os/Looper;Lcom/ss/ttvideoengine/utils/WeakHandler$IHandler;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mH:Landroid/os/Handler;

    .line 41
    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mCanceled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->notifyError(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;ILcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->notifyComplete(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;ILcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static buildRequestUrl(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;->playUrl:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "PlayUrl"

    .line 9
    .line 10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "Codec"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;->codec:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v1, "Definition"

    .line 21
    .line 22
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;->definition:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;->getApiHost()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const-string v2, "http"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    const-string v2, "https://"

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, "/api/general/getSmartStrategyLitePlayInfo20220101"

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, "?"

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->buildUrlEncodedQuery(Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method private fetch(Ljava/lang/String;Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;)V
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->buildRequestUrl(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mHttpClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 6
    .line 7
    new-instance v2, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;

    .line 8
    .line 9
    invoke-direct {v2, p0, p2, p1}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$1;-><init>(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/ss/ttvideoengine/net/TTVNetClient;->startTask(Ljava/lang/String;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "fetch "

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p2, ", requestUrl = "

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "CodecStrategy_SmartUrlFetcher"

    .line 47
    .line 48
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method private notifyComplete(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;ILcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mH:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v0, v1, :cond_4

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mCanceled:Z

    .line 14
    .line 15
    const-string v1, "CodecStrategy_SmartUrlFetcher"

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string p1, "notifyComplete canceled"

    .line 26
    .line 27
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mCallback:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "notifyComplete "

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, " "

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mCallback:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;

    .line 77
    .line 78
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;->onComplete(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;ILcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mH:Landroid/os/Handler;

    .line 83
    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const/4 p2, 0x1

    .line 93
    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method private notifyError(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 3

    .line 1
    const-string v0, "kTTVideoErrorDomainFetchingSmartUrlInfo"

    .line 2
    .line 3
    iput-object v0, p2, Lcom/ss/ttvideoengine/utils/Error;->domain:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mH:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-ne v0, v1, :cond_4

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mCanceled:Z

    .line 18
    .line 19
    const-string v1, "CodecStrategy_SmartUrlFetcher"

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-string p1, "notifyError canceled"

    .line 30
    .line 31
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mCallback:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "notifyError "

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " "

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mCallback:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;

    .line 75
    .line 76
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;->onError(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mH:Landroid/os/Handler;

    .line 81
    .line 82
    const/4 v1, 0x2

    .line 83
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mCanceled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mCanceled:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mHttpClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/net/TTVNetClient;->cancel()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mH:Landroid/os/Handler;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "cancel "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mRequestParams:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "CodecStrategy_SmartUrlFetcher"

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v3, :cond_1

    .line 7
    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, [Ljava/lang/Object;

    .line 14
    .line 15
    aget-object v0, p1, v1

    .line 16
    .line 17
    check-cast v0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;

    .line 18
    .line 19
    aget-object p1, p1, v3

    .line 20
    .line 21
    check-cast p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 22
    .line 23
    invoke-direct {p0, v0, p1}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->notifyError(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, [Ljava/lang/Object;

    .line 30
    .line 31
    aget-object v0, p1, v1

    .line 32
    .line 33
    check-cast v0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;

    .line 34
    .line 35
    aget-object v1, p1, v3

    .line 36
    .line 37
    check-cast v1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    aget-object p1, p1, v2

    .line 44
    .line 45
    check-cast p1, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;

    .line 46
    .line 47
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->notifyComplete(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;ILcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mCanceled:Z

    .line 2
    .line 3
    return v0
.end method

.method public setRequestParams(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mRequestParams:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "start "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mRequestParams:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "CodecStrategy_SmartUrlFetcher"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->mRequestParams:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache;->key(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache;->get(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, v0, v1, v2}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->notifyComplete(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;ILcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->fetch(Ljava/lang/String;Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method
