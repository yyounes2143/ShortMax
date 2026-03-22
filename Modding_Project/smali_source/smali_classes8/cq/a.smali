.class public Lcq/a;
.super Lbq/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcq/a$a;
    }
.end annotation


# instance fields
.field private final l:Lio/bidmachine/media3/exoplayer/ExoPlayer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final m:Lio/bidmachine/media3/ui/PlayerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lbq/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->e()Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcq/a;->l:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 14
    .line 15
    new-instance v1, Lcq/a$a;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcq/a$a;-><init>(Lcq/a;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lzm/w;->C(Lzm/w$d;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lio/bidmachine/media3/ui/PlayerView;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Lio/bidmachine/media3/ui/PlayerView;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcq/a;->m:Lio/bidmachine/media3/ui/PlayerView;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/ui/PlayerView;->setPlayer(Lzm/w;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-virtual {v1, p1}, Lio/bidmachine/media3/ui/PlayerView;->setUseController(Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method static synthetic n0(Lcq/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbq/a;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o0(Lcq/a;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbq/a;->F(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p0(Lcq/a;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbq/a;->I(Ljava/lang/Long;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q0(Lcq/a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbq/a;->A(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r0(Lcq/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbq/a;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s0(Lcq/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbq/a;->f0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t0(Lcq/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbq/a;->e0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected E()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcq/a;->l:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lzm/w;->getCurrentPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method protected H(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lzm/q$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lzm/q$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lzm/q$c;->f(Landroid/net/Uri;)Lzm/q$c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lzm/q$c;->a()Lzm/q;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcq/a;->l:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lzm/w;->F(Lzm/q;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected L()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcq/a;->l:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lzm/w;->getDuration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public R()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcq/a;->l:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lzm/w;->getVolume()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected V()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcq/a;->l:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lzm/w;->isPlaying()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected W()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected X()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcq/a;->l:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lzm/w;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected Y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcq/a;->l:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lzm/w;->play()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected Z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcq/a;->l:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lzm/w;->prepare()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lbq/a;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcq/a;->l:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 5
    .line 6
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayer;->release()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcq/a;->m:Lio/bidmachine/media3/ui/PlayerView;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/ui/PlayerView;->setPlayer(Lzm/w;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected a0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcq/a;->l:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Lzm/w;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcq/a;->m:Lio/bidmachine/media3/ui/PlayerView;

    .line 2
    .line 3
    return-object v0
.end method

.method protected x(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcq/a;->l:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lzm/w;->setVolume(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected y(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcq/a;->l:Lio/bidmachine/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lzm/w;->seekTo(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
