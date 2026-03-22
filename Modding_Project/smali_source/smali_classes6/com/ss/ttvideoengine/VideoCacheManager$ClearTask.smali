.class Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;
.super Ljava/lang/Object;
.source "VideoCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/VideoCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearTask"
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
    const-string v1, "clearCacheThread"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;->mHandlerThread:Landroid/os/HandlerThread;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask$1;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;->mHandlerThread:Landroid/os/HandlerThread;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, p0, v1}, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask$1;-><init>(Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;->mHandlerThread:Landroid/os/HandlerThread;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;->mHandlerThread:Landroid/os/HandlerThread;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method public postMessage(Lcom/ss/ttvideoengine/VideoCacheManager;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;->mHandlerThread:Landroid/os/HandlerThread;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/os/Message;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 12
    .line 13
    .line 14
    iput p2, v0, Landroid/os/Message;->what:I

    .line 15
    .line 16
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
