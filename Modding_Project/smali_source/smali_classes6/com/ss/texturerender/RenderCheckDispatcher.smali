.class public Lcom/ss/texturerender/RenderCheckDispatcher;
.super Ljava/lang/Object;
.source "RenderCheckDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RenderCheckDispatcher"


# instance fields
.field private checkerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/ss/texturerender/VideoSurfaceTexture;",
            "Lcom/ss/texturerender/FrameRenderChecker;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isEnabled:Z

.field private mTexType:I

.field private final msgHandler:Landroid/os/Handler;

.field private volatile startCount:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->mTexType:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->msgHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->checkerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    iput p2, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->mTexType:I

    .line 17
    .line 18
    return-void
.end method

.method private doStart()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->mTexType:I

    .line 2
    .line 3
    const-string v1, "RenderCheckDispatcher"

    .line 4
    .line 5
    const-string v2, "doStart"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->msgHandler:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x26

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private doStop()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->mTexType:I

    .line 2
    .line 3
    const-string v1, "RenderCheckDispatcher"

    .line 4
    .line 5
    const-string v2, "doStop"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->msgHandler:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x27

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public checkSurfaceTextureCallbackTime()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->isEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->checkerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/ss/texturerender/FrameRenderChecker;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/ss/texturerender/FrameRenderChecker;->checkSurfaceTextureCallbackTime()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    return-void
.end method

.method public decrease(Lcom/ss/texturerender/VideoSurfaceTexture;Lcom/ss/texturerender/FrameRenderChecker;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->texType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "decrease, VideoSurfaceTexture "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "RenderCheckDispatcher"

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    if-eqz p1, :cond_3

    .line 30
    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->checkerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget p1, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->startCount:I

    .line 40
    .line 41
    if-gtz p1, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget p1, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->startCount:I

    .line 45
    .line 46
    add-int/lit8 p1, p1, -0x1

    .line 47
    .line 48
    iput p1, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->startCount:I

    .line 49
    .line 50
    iget p1, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->startCount:I

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/ss/texturerender/RenderCheckDispatcher;->doStop()V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    return-void
.end method

.method public increase(Lcom/ss/texturerender/VideoSurfaceTexture;Lcom/ss/texturerender/FrameRenderChecker;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->texType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "increase, VideoSurfaceTexture "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "RenderCheckDispatcher"

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    if-eqz p1, :cond_3

    .line 30
    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->checkerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget p1, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->startCount:I

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/ss/texturerender/RenderCheckDispatcher;->doStart()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget p1, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->startCount:I

    .line 47
    .line 48
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    iput p1, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->startCount:I

    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->isEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->startCount:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public onDrawSucceed(Lcom/ss/texturerender/VideoSurfaceTexture;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->isEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->checkerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/ss/texturerender/FrameRenderChecker;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/ss/texturerender/FrameRenderChecker;->onDrawSucceed()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public onFrameCome(Lcom/ss/texturerender/VideoSurfaceTexture;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->isEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->checkerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/ss/texturerender/FrameRenderChecker;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/ss/texturerender/FrameRenderChecker;->onFrameCome()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public onSurfaceTextureCallbackCalled(Lcom/ss/texturerender/VideoSurfaceTexture;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->isEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->checkerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/ss/texturerender/FrameRenderChecker;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/ss/texturerender/FrameRenderChecker;->onSurfaceTextureCallbackCalled()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->mTexType:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "setEnabled, "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "RenderCheckDispatcher"

    .line 22
    .line 23
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/ss/texturerender/RenderCheckDispatcher;->isEnabled:Z

    .line 27
    .line 28
    return-void
.end method
