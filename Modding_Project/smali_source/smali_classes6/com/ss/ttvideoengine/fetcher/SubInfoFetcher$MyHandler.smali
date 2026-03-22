.class Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$MyHandler;
.super Landroid/os/Handler;
.source "SubInfoFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;
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
            "Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;Landroid/os/Looper;)V
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
    iput-object p2, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$MyHandler;->mFetcherRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$MyHandler;->mFetcherRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->access$000(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;)Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$FetcherListener;

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
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->access$100(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-string p1, "fetcher is cancelled"

    .line 26
    .line 27
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$FetcherListener;->onLog(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eq v0, v2, :cond_4

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    if-eq v0, v2, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v1, p1, v3}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$FetcherListener;->onCompletion(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 52
    .line 53
    invoke-interface {v1, v3, p1}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$FetcherListener;->onCompletion(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method
