.class Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$MyHandler;
.super Landroid/os/Handler;
.source "VideoInfoFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final mFetcherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$MyHandler;->mFetcherRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$MyHandler;->mFetcherRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->access$000(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;)Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->access$100(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    const-string p1, "fetcher is cancelled"

    .line 26
    .line 27
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;->onLog(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    .line 32
    .line 33
    if-eqz v2, :cond_6

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eq v2, v3, :cond_5

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    if-eq v2, v3, :cond_4

    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    if-eq v2, v0, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 47
    .line 48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v1, v0, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;->onStatusException(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lcom/ss/ttvideoengine/model/VideoModel;

    .line 59
    .line 60
    iput-object p1, v0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->mVideoModel:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 61
    .line 62
    invoke-interface {v1, p1, v4}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;->onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 69
    .line 70
    invoke-interface {v1, v4, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;->onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 77
    .line 78
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;->onRetry(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method
