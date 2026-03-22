.class public final Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SphericalGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$a;,
        Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;
    }
.end annotation


# static fields
.field public static final synthetic m:I


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/hardware/SensorManager;

.field private final c:Landroid/hardware/Sensor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lio/bidmachine/media3/exoplayer/video/spherical/b;

.field private final e:Landroid/os/Handler;

.field private final f:Lio/bidmachine/media3/exoplayer/video/spherical/h;

.field private final g:Lio/bidmachine/media3/exoplayer/video/spherical/g;

.field private h:Landroid/graphics/SurfaceTexture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->e:Landroid/os/Handler;

    .line 5
    const-string p2, "sensor"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->b:Landroid/hardware/SensorManager;

    const/16 v2, 0xf

    .line 7
    invoke-virtual {p2, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v2, 0xb

    .line 8
    invoke-virtual {p2, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 9
    :cond_0
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->c:Landroid/hardware/Sensor;

    .line 10
    new-instance p2, Lio/bidmachine/media3/exoplayer/video/spherical/g;

    invoke-direct {p2}, Lio/bidmachine/media3/exoplayer/video/spherical/g;-><init>()V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->g:Lio/bidmachine/media3/exoplayer/video/spherical/g;

    .line 11
    new-instance v2, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$a;

    invoke-direct {v2, p0, p2}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$a;-><init>(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Lio/bidmachine/media3/exoplayer/video/spherical/g;)V

    .line 12
    new-instance p2, Lio/bidmachine/media3/exoplayer/video/spherical/h;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-direct {p2, p1, v2, v3}, Lio/bidmachine/media3/exoplayer/video/spherical/h;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/video/spherical/h$a;F)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->f:Lio/bidmachine/media3/exoplayer/video/spherical/h;

    .line 13
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 14
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 15
    new-instance v3, Lio/bidmachine/media3/exoplayer/video/spherical/b;

    new-array v4, v1, [Lio/bidmachine/media3/exoplayer/video/spherical/b$a;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    aput-object v2, v4, v0

    invoke-direct {v3, p1, v4}, Lio/bidmachine/media3/exoplayer/video/spherical/b;-><init>(Landroid/view/Display;[Lio/bidmachine/media3/exoplayer/video/spherical/b$a;)V

    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->d:Lio/bidmachine/media3/exoplayer/video/spherical/b;

    .line 16
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->j:Z

    .line 17
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 18
    invoke-virtual {p0, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 19
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->f(Landroid/graphics/SurfaceTexture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->g(Landroid/graphics/SurfaceTexture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->i:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;

    .line 22
    .line 23
    invoke-interface {v2, v0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;->t(Landroid/view/Surface;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->h:Landroid/graphics/SurfaceTexture;

    .line 28
    .line 29
    invoke-static {v1, v0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->h(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->h:Landroid/graphics/SurfaceTexture;

    .line 34
    .line 35
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->i:Landroid/view/Surface;

    .line 36
    .line 37
    return-void
.end method

.method private synthetic f(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->h:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->i:Landroid/view/Surface;

    .line 4
    .line 5
    new-instance v2, Landroid/view/Surface;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->h:Landroid/graphics/SurfaceTexture;

    .line 11
    .line 12
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->i:Landroid/view/Surface;

    .line 13
    .line 14
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;

    .line 31
    .line 32
    invoke-interface {v3, v2}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;->w(Landroid/view/Surface;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->h(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private g(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->e:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lzn/d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lzn/d;-><init>(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static h(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V
    .locals 0
    .param p0    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 4
    .line 5
    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 9
    .line 10
    .line 11
    :cond_1
    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->j:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->k:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->c:Landroid/hardware/Sensor;

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->l:Z

    .line 18
    .line 19
    if-ne v0, v3, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->b:Landroid/hardware/SensorManager;

    .line 25
    .line 26
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->d:Lio/bidmachine/media3/exoplayer/video/spherical/b;

    .line 27
    .line 28
    invoke-virtual {v3, v4, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->b:Landroid/hardware/SensorManager;

    .line 33
    .line 34
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->d:Lio/bidmachine/media3/exoplayer/video/spherical/b;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->l:Z

    .line 40
    .line 41
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public d(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCameraMotionListener()Lzn/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->g:Lio/bidmachine/media3/exoplayer/video/spherical/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoFrameMetadataListener()Lyn/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->g:Lio/bidmachine/media3/exoplayer/video/spherical/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->i:Landroid/view/Surface;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->e:Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v1, Lzn/c;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lzn/c;-><init>(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->k:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->j()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->k:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->j()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->g:Lio/bidmachine/media3/exoplayer/video/spherical/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/spherical/g;->h(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->j:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
