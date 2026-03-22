.class public Lio/bidmachine/rendering/internal/adform/video/player/media/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/adform/video/player/media/b$c;,
        Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/rendering/internal/view/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Ldq/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/rendering/internal/view/a;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lio/bidmachine/rendering/internal/view/a;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->a:Lio/bidmachine/rendering/internal/view/a;

    .line 10
    .line 11
    new-instance p1, Lio/bidmachine/rendering/internal/adform/video/player/media/b$c;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {p1, p0, v1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b$c;-><init>(Lio/bidmachine/rendering/internal/adform/video/player/media/b;Lio/bidmachine/rendering/internal/adform/video/player/media/b$a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    const/16 v2, 0x11

    .line 24
    .line 25
    invoke-direct {p1, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method static synthetic a(Lio/bidmachine/rendering/internal/adform/video/player/media/b;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->d:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lio/bidmachine/rendering/internal/adform/video/player/media/b;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->d:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lio/bidmachine/rendering/internal/adform/video/player/media/b;)Ldq/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->b:Ldq/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->d:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->d:Landroid/view/Surface;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic f(Lio/bidmachine/rendering/internal/adform/video/player/media/b;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->setMediaPlayerSurface(Landroid/view/Surface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setMediaPlayerSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->c:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->setMediaPlayerSurface(Landroid/view/Surface;)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->e()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->c:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    iget-object v1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->a:Lio/bidmachine/rendering/internal/view/a;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setListener(Ldq/b;)V
    .locals 0
    .param p1    # Ldq/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->b:Ldq/b;

    .line 2
    .line 3
    return-void
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1    # Landroid/media/MediaPlayer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->c:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    div-float/2addr v0, v1

    .line 16
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->setVideoAspectRatio(F)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, p0, v1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b$b;-><init>(Lio/bidmachine/rendering/internal/adform/video/player/media/b;Lio/bidmachine/rendering/internal/adform/video/player/media/b$a;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public setVideoAspectRatio(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->a:Lio/bidmachine/rendering/internal/view/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/view/a;->setVideoAspectRatio(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
