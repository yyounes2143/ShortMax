.class Lcom/ss/ttvideoengine/download/Downloader$TaskThread;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/download/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    .line 5
    .line 6
    const-string/jumbo v1, "vcloud.engine.download.tasks"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader$TaskThread;->mHandlerThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/ss/ttvideoengine/download/Downloader$TaskThread$1;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/Downloader$TaskThread;->mHandlerThread:Landroid/os/HandlerThread;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/ss/ttvideoengine/download/Downloader$TaskThread$1;-><init>(Lcom/ss/ttvideoengine/download/Downloader$TaskThread;Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader$TaskThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader$TaskThread;->mHandlerThread:Landroid/os/HandlerThread;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader$TaskThread;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method public postMessage(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader$TaskThread;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/Downloader$TaskThread;->mHandlerThread:Landroid/os/HandlerThread;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput p2, v0, Landroid/os/Message;->what:I

    .line 14
    .line 15
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader$TaskThread;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
