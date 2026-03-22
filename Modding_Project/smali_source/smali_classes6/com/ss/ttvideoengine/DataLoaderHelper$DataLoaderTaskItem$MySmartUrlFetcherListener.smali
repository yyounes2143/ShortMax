.class Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MySmartUrlFetcherListener;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"

# interfaces
.implements Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MySmartUrlFetcherListener"
.end annotation


# instance fields
.field private final mTaskItemRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V
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
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MySmartUrlFetcherListener;->mTaskItemRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onComplete(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;ILcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;)V
    .locals 1
    .param p1    # Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MySmartUrlFetcherListener;->mTaskItemRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "fetchSmartUrlInfo success "

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v0, "DataLoaderHelper"

    .line 30
    .line 31
    invoke-static {v0, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p3, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 35
    .line 36
    iput-object p2, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 37
    .line 38
    iget-object p2, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mListener:Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    invoke-interface {p2, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;->taskFinished(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public onError(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 1
    .param p1    # Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/utils/Error;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MySmartUrlFetcherListener;->mTaskItemRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, v0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mAdapter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iput-object p2, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseError:Lcom/ss/ttvideoengine/utils/Error;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->fallbackToDirectUrl()Z

    .line 25
    .line 26
    .line 27
    iget-object p2, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mListener:Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;

    .line 28
    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    invoke-interface {p2, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;->taskFinished(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void
.end method
