.class public Lcom/ss/ttvideoengine/TTVideoEngineSurfaceCallback;
.super Ljava/lang/Object;
.source "TTVideoEngineSurfaceCallback.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "TTVideoEngineSurfaceCallback"


# instance fields
.field private mEngine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngine;)V
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
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineSurfaceCallback;->mEngine:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "new surface callback:"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "TTVideoEngineSurfaceCallback"

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineSurfaceCallback;->mEngine:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "surfaceChanged, "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p1, ", i:"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ",i1:"

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ", i2:"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "TTVideoEngineSurfaceCallback"

    .line 44
    .line 45
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineSurfaceCallback;->mEngine:Ljava/lang/ref/WeakReference;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 55
    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getTextureSurface()Lcom/ss/texturerender/VideoSurface;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    invoke-virtual {p1, p3, p4}, Lcom/ss/texturerender/VideoSurface;->setSurfaceDimensions(II)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "surfaceCreated, "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "TTVideoEngineSurfaceCallback"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineSurfaceCallback;->mEngine:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string/jumbo v3, "surface created"

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setSurfaceSourceType(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getTextureSurface()Lcom/ss/texturerender/VideoSurface;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    const/16 v0, 0x9

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    invoke-virtual {v2, v0, v3}, Lcom/ss/texturerender/VideoSurface;->setIntOption(II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Lcom/ss/texturerender/VideoSurface;->updateRenderSurface(Landroid/view/Surface;)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    invoke-virtual {v2, v0, p1}, Lcom/ss/texturerender/VideoSurface;->setIntOption(II)V

    .line 65
    .line 66
    .line 67
    const/16 p1, 0x19

    .line 68
    .line 69
    invoke-virtual {v2, p1, v3}, Lcom/ss/texturerender/VideoSurface;->setIntOption(II)V

    .line 70
    .line 71
    .line 72
    const-string p1, "set texturerender force draw"

    .line 73
    .line 74
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    sget-wide v1, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->setSurfaceTimeoutForCreated:J

    .line 79
    .line 80
    const-wide/high16 v3, -0x8000000000000000L

    .line 81
    .line 82
    cmp-long v3, v1, v3

    .line 83
    .line 84
    if-nez v3, :cond_1

    .line 85
    .line 86
    const/16 v1, 0x3b6

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLongOption(I)J

    .line 89
    .line 90
    .line 91
    move-result-wide v1

    .line 92
    :cond_1
    invoke-virtual {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setSurfaceSync(Landroid/view/Surface;J)V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "surfaceDestroyed, "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "TTVideoEngineSurfaceCallback"

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineSurfaceCallback;->mEngine:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string/jumbo v1, "surface destroyed"

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setSurfaceSourceType(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getTextureSurface()Lcom/ss/texturerender/VideoSurface;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    const/16 v2, 0x9

    .line 53
    .line 54
    invoke-virtual {v0, v2, p1}, Lcom/ss/texturerender/VideoSurface;->setIntOption(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurface;->updateRenderSurface(Landroid/view/Surface;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-virtual {v0, v2, p1}, Lcom/ss/texturerender/VideoSurface;->setIntOption(II)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    sget-wide v2, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->setSurfaceTimeoutForDestroy:J

    .line 66
    .line 67
    const-wide/high16 v4, -0x8000000000000000L

    .line 68
    .line 69
    cmp-long v0, v2, v4

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    const/16 v0, 0x3b6

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLongOption(I)J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    :cond_1
    invoke-virtual {p1, v1, v2, v3}, Lcom/ss/ttvideoengine/TTVideoEngine;->setSurfaceSync(Landroid/view/Surface;J)V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    return-void
.end method
