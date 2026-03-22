.class public Lcom/ss/texturerender/FrameRenderChecker;
.super Ljava/lang/Object;
.source "FrameRenderChecker.java"


# static fields
.field public static final NO_RENDER_REASON_CALLBACK:I = 0x0

.field public static final NO_RENDER_REASON_DRAW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FrameRenderChecker"

.field private static final THRESHOLD_NO_RENDER_FRAME:I = 0x1e

.field private static final THRESHOLD_NO_RENDER_TIME:I = 0x3e8


# instance fields
.field private checkDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

.field private continuousNoCallbackCount:J

.field private continuousNoDrawCount:J

.field private volatile failedCallback:Z

.field private volatile failedRender:Z

.field private isStarted:Z

.field private lastCallbackTime:J

.field private listener:Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;

.field private videoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;


# direct methods
.method public constructor <init>(Lcom/ss/texturerender/RenderCheckDispatcher;Lcom/ss/texturerender/VideoSurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/texturerender/FrameRenderChecker;->checkDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/texturerender/FrameRenderChecker;->videoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 7
    .line 8
    return-void
.end method

.method private reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->failedCallback:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->failedRender:Z

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->continuousNoCallbackCount:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->continuousNoDrawCount:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public checkSurfaceTextureCallbackTime()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->isStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->failedCallback:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/ss/texturerender/FrameRenderChecker;->lastCallbackTime:J

    .line 16
    .line 17
    sub-long/2addr v0, v2

    .line 18
    const-wide/16 v2, 0x3e8

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-ltz v0, :cond_2

    .line 23
    .line 24
    iget-wide v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->continuousNoCallbackCount:J

    .line 25
    .line 26
    const-wide/16 v2, 0x1

    .line 27
    .line 28
    add-long/2addr v0, v2

    .line 29
    iput-wide v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->continuousNoCallbackCount:J

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-wide/16 v0, 0x0

    .line 33
    .line 34
    iput-wide v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->continuousNoCallbackCount:J

    .line 35
    .line 36
    :goto_0
    iget-wide v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->continuousNoCallbackCount:J

    .line 37
    .line 38
    const-wide/16 v2, 0x2

    .line 39
    .line 40
    cmp-long v0, v0, v2

    .line 41
    .line 42
    if-ltz v0, :cond_3

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->failedCallback:Z

    .line 46
    .line 47
    iget-object v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->listener:Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-interface {v0, v1}, Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;->onNoRenderStart(I)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method public onDrawSucceed()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->continuousNoDrawCount:J

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->failedRender:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->failedRender:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->listener:Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->failedCallback:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->listener:Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-interface {v0, v1}, Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;->onNoRenderEnd(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onFrameCome()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->continuousNoDrawCount:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->continuousNoDrawCount:J

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->failedRender:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->continuousNoDrawCount:J

    .line 13
    .line 14
    const-wide/16 v2, 0x1e

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->failedRender:Z

    .line 22
    .line 23
    iget-object v1, p0, Lcom/ss/texturerender/FrameRenderChecker;->listener:Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v1, v0}, Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;->onNoRenderStart(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onSurfaceTextureCallbackCalled()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->isStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->lastCallbackTime:J

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->failedCallback:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->failedCallback:Z

    .line 18
    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    iput-wide v1, p0, Lcom/ss/texturerender/FrameRenderChecker;->continuousNoCallbackCount:J

    .line 22
    .line 23
    iget-object v1, p0, Lcom/ss/texturerender/FrameRenderChecker;->listener:Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/ss/texturerender/FrameRenderChecker;->failedRender:Z

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/ss/texturerender/FrameRenderChecker;->listener:Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;

    .line 32
    .line 33
    invoke-interface {v1, v0}, Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;->onNoRenderEnd(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public setCheckDispatcher(Lcom/ss/texturerender/RenderCheckDispatcher;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/FrameRenderChecker;->checkDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->isStarted:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->videoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 10
    .line 11
    invoke-virtual {p1, v0, p0}, Lcom/ss/texturerender/RenderCheckDispatcher;->increase(Lcom/ss/texturerender/VideoSurfaceTexture;Lcom/ss/texturerender/FrameRenderChecker;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setListener(Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/FrameRenderChecker;->listener:Lcom/ss/texturerender/VideoSurface$OnNoRenderListener;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->videoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->texType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v2, "start, isStarted: "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/ss/texturerender/FrameRenderChecker;->isStarted:Z

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "FrameRenderChecker"

    .line 30
    .line 31
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->isStarted:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->isStarted:Z

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/ss/texturerender/FrameRenderChecker;->reset()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->checkDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lcom/ss/texturerender/FrameRenderChecker;->videoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 50
    .line 51
    invoke-virtual {v0, v1, p0}, Lcom/ss/texturerender/RenderCheckDispatcher;->increase(Lcom/ss/texturerender/VideoSurfaceTexture;Lcom/ss/texturerender/FrameRenderChecker;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->videoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->texType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo v2, "stop, isStarted: "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/ss/texturerender/FrameRenderChecker;->isStarted:Z

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "FrameRenderChecker"

    .line 30
    .line 31
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->isStarted:Z

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->isStarted:Z

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/ss/texturerender/FrameRenderChecker;->reset()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/ss/texturerender/FrameRenderChecker;->checkDispatcher:Lcom/ss/texturerender/RenderCheckDispatcher;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lcom/ss/texturerender/FrameRenderChecker;->videoSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 50
    .line 51
    invoke-virtual {v0, v1, p0}, Lcom/ss/texturerender/RenderCheckDispatcher;->decrease(Lcom/ss/texturerender/VideoSurfaceTexture;Lcom/ss/texturerender/FrameRenderChecker;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method
