.class public Ldq/a;
.super Lbq/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldq/a$d;,
        Ldq/a$c;,
        Ldq/a$e;,
        Ldq/a$b;,
        Ldq/a$a;
    }
.end annotation


# instance fields
.field private final l:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final m:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final n:Lio/bidmachine/rendering/internal/adform/video/player/media/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private o:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lbq/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Ldq/a;->o:F

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Ldq/a;->l:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v0, Landroid/media/MediaPlayer;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Ldq/a$d;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Ldq/a$d;-><init>(Ldq/a;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Ldq/a$c;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Ldq/a$c;-><init>(Ldq/a;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Ldq/a$e;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Ldq/a$e;-><init>(Ldq/a;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Ldq/a$b;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Ldq/a$b;-><init>(Ldq/a;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    .line 80
    .line 81
    invoke-direct {v1, p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Ldq/a;->n:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    .line 85
    .line 86
    new-instance p1, Ldq/a$a;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Ldq/a$a;-><init>(Ldq/a;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->setListener(Ldq/b;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method static synthetic n0(Ldq/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbq/a;->g0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o0(Ldq/a;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbq/a;->I(Ljava/lang/Long;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p0(Ldq/a;Lrq/t;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbq/a;->B(Lrq/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q0(Ldq/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lbq/a;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r0(Ldq/a;Lrq/t;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbq/a;->K(Lrq/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected E()J
    .locals 2

    .line 1
    iget-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0
.end method

.method protected H(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 7
    .line 8
    iget-object v1, p0, Ldq/a;->l:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected L()J
    .locals 2

    .line 1
    iget-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0
.end method

.method protected M(F)V
    .locals 0

    .line 1
    iput p1, p0, Ldq/a;->o:F

    .line 2
    .line 3
    invoke-super {p0, p1}, Lbq/a;->M(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lbq/a;->F(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public R()F
    .locals 1

    .line 1
    iget v0, p0, Ldq/a;->o:F

    .line 2
    .line 3
    return v0
.end method

.method protected V()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

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
    iget-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected Y()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected Z()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public a()V
    .locals 1

    .line 1
    invoke-super {p0}, Lbq/a;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ldq/a;->n:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    .line 5
    .line 6
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->c()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected a0()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected c()V
    .locals 0

    .line 1
    invoke-super {p0}, Lbq/a;->c()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lbq/a;->f0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected m0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lbq/a;->m0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lbq/a;->e0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public n()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ldq/a;->n:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    .line 2
    .line 3
    return-object v0
.end method

.method protected x(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected y(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldq/a;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    long-to-int p1, p1

    .line 4
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
