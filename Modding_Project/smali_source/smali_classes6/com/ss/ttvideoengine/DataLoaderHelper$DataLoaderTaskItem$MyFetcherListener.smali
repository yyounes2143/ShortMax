.class Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MyFetcherListener;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"

# interfaces
.implements Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFetcherListener"
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

.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MyFetcherListener;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MyFetcherListener;->mTaskItemRef:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MyFetcherListener;->mTaskItemRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 13
    .line 14
    iput-object p2, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseError:Lcom/ss/ttvideoengine/utils/Error;

    .line 15
    .line 16
    iget-object p1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mListener:Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;->taskFinished(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public onLog(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRetry(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStatusException(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MyFetcherListener;->mTaskItemRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/16 v0, 0xa

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 19
    .line 20
    const-string v0, "kTTVideoErrorDomainFetchingInfo"

    .line 21
    .line 22
    const/16 v1, -0x1f3c

    .line 23
    .line 24
    invoke-direct {p1, v0, v1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseError:Lcom/ss/ttvideoengine/utils/Error;

    .line 28
    .line 29
    :cond_1
    iget-object p1, p2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mListener:Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;->taskFinished(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method
