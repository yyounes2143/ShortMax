.class Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask$1;
.super Landroid/os/Handler;
.source "VideoCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask$1;->this$0:Lcom/ss/ttvideoengine/VideoCacheManager$ClearTask;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/ss/ttvideoengine/VideoCacheManager;

    .line 4
    .line 5
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/VideoCacheManager;->cleanIfNecessary()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/VideoCacheManager;->clear()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/VideoCacheManager;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :catchall_0
    :goto_0
    return-void
.end method
