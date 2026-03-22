.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$SmartUrlInfoCallback;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmartUrlInfoCallback"
.end annotation


# instance fields
.field private mEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngineImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFetcherListener;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$SmartUrlInfoCallback;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFetcherListener;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFetcherListener;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$SmartUrlInfoCallback;->mListener:Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFetcherListener;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onComplete(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;ILcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;)V
    .locals 3
    .param p1    # Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$SmartUrlInfoCallback;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "fetchSmartUrlInfo success "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-ne p2, v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 45
    :goto_0
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setIsVideoModelCache(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->isEncodeStream()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$SmartUrlInfoCallback;->mListener:Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFetcherListener;

    .line 55
    .line 56
    iget-object p2, p3, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 57
    .line 58
    check-cast p2, Lcom/ss/ttvideoengine/model/VideoModel;

    .line 59
    .line 60
    const/4 p3, 0x0

    .line 61
    invoke-virtual {p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyFetcherListener;->onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->fallbackToDirectUrl()Z

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_1
    return-void
.end method

.method public onError(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 3
    .param p1    # Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/utils/Error;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$SmartUrlInfoCallback;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/utils/Error;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "fetchSmartUrlInfo failed:%s"

    .line 25
    .line 26
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p2, Lcom/ss/ttvideoengine/utils/Error;->parameters:Ljava/util/Map;

    .line 34
    .line 35
    const-string v1, "log_id"

    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p2, Lcom/ss/ttvideoengine/utils/Error;->parameters:Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/String;

    .line 54
    .line 55
    const/16 v2, 0xf

    .line 56
    .line 57
    invoke-interface {v0, v2, v1}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setStringOption(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->fallbackToDirectUrl()Z

    .line 68
    .line 69
    .line 70
    return-void
.end method
