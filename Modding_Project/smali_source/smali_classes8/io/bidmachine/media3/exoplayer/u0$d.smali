.class final Lio/bidmachine/media3/exoplayer/u0$d;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lyn/f;
.implements Lzn/a;
.implements Lio/bidmachine/media3/exoplayer/f2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private a:Lyn/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lzn/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lyn/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lzn/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/u0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/u0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0$d;->d:Lzn/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lzn/a;->a(J[F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0$d;->b:Lzn/a;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3}, Lzn/a;->a(J[F)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0$d;->d:Lzn/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lzn/a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0$d;->b:Lzn/a;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lzn/a;->b()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public c(JJLio/bidmachine/media3/common/a;Landroid/media/MediaFormat;)V
    .locals 8
    .param p6    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/u0$d;->c:Lyn/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-wide v1, p1

    .line 6
    move-wide v3, p3

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-interface/range {v0 .. v6}, Lyn/f;->c(JJLio/bidmachine/media3/common/a;Landroid/media/MediaFormat;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/u0$d;->a:Lyn/f;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-wide v2, p1

    .line 17
    move-wide v4, p3

    .line 18
    move-object v6, p5

    .line 19
    move-object v7, p6

    .line 20
    invoke-interface/range {v1 .. v7}, Lyn/f;->c(JJLio/bidmachine/media3/common/a;Landroid/media/MediaFormat;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x7

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    const/16 v0, 0x2710

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast p2, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0$d;->c:Lyn/f;

    .line 19
    .line 20
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0$d;->d:Lzn/a;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getVideoFrameMetadataListener()Lyn/f;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0$d;->c:Lyn/f;

    .line 28
    .line 29
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getCameraMotionListener()Lzn/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/u0$d;->d:Lzn/a;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    check-cast p2, Lzn/a;

    .line 37
    .line 38
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/u0$d;->b:Lzn/a;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    check-cast p2, Lyn/f;

    .line 42
    .line 43
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/u0$d;->a:Lyn/f;

    .line 44
    .line 45
    :goto_0
    return-void
.end method
