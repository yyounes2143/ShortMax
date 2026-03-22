.class public abstract Lzm/e;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Lzm/w;


# instance fields
.field protected final a:Lzm/a0$c;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzm/a0$c;

    .line 5
    .line 6
    invoke-direct {v0}, Lzm/a0$c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lzm/e;->a:Lzm/a0$c;

    .line 10
    .line 11
    return-void
.end method

.method private I()I
    .locals 2

    .line 1
    invoke-interface {p0}, Lzm/w;->getRepeatMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :cond_0
    return v0
.end method

.method private J(I)V
    .locals 6

    .line 1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v1, -0x1

    .line 8
    move-object v0, p0

    .line 9
    move v4, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Lzm/e;->L(IJIZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private K(I)V
    .locals 6

    .line 1
    invoke-interface {p0}, Lzm/w;->x()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    move-object v0, p0

    .line 12
    move v4, p1

    .line 13
    invoke-virtual/range {v0 .. v5}, Lzm/e;->L(IJIZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private M(JI)V
    .locals 6

    .line 1
    invoke-interface {p0}, Lzm/w;->x()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-wide v2, p1

    .line 8
    move v4, p3

    .line 9
    invoke-virtual/range {v0 .. v5}, Lzm/e;->L(IJIZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private N(II)V
    .locals 6

    .line 1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move v4, p2

    .line 10
    invoke-virtual/range {v0 .. v5}, Lzm/e;->L(IJIZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private O(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lzm/e;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lzm/e;->J(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-interface {p0}, Lzm/w;->x()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lzm/e;->K(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-direct {p0, v0, p1}, Lzm/e;->N(II)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method private P(JI)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lzm/w;->getCurrentPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p1

    .line 6
    invoke-interface {p0}, Lzm/w;->getDuration()J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v2, p1, v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    :cond_0
    const-wide/16 p1, 0x0

    .line 24
    .line 25
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lzm/e;->M(JI)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private Q(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lzm/e;->H()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lzm/e;->J(I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-interface {p0}, Lzm/w;->x()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lzm/e;->K(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-direct {p0, v0, p1}, Lzm/e;->N(II)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method


# virtual methods
.method public final D()J
    .locals 3

    .line 1
    invoke-interface {p0}, Lzm/w;->getCurrentTimeline()Lzm/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p0}, Lzm/w;->x()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lzm/e;->a:Lzm/a0$c;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lzm/a0$c;->d()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    :goto_0
    return-wide v0
.end method

.method public final F(Lzm/q;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lzm/e;->R(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final G()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lzm/w;->getCurrentTimeline()Lzm/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p0}, Lzm/w;->x()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {p0}, Lzm/e;->I()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-interface {p0}, Lzm/w;->getShuffleModeEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lzm/a0;->e(IIZ)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    return v0
.end method

.method public final H()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lzm/w;->getCurrentTimeline()Lzm/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p0}, Lzm/w;->x()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {p0}, Lzm/e;->I()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-interface {p0}, Lzm/w;->getShuffleModeEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lzm/a0;->l(IIZ)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    return v0
.end method

.method protected abstract L(IJIZ)V
.end method

.method public final R(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzm/q;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, p1, v0}, Lzm/w;->c(Ljava/util/List;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final f()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lzm/e;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final g(I)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lzm/w;->u()Lzm/w$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lzm/w$b;->b(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final isPlaying()Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lzm/w;->getPlaybackState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lzm/w;->getPlayWhenReady()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, Lzm/w;->r()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public final k()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lzm/w;->getCurrentTimeline()Lzm/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lzm/w;->x()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lzm/e;->a:Lzm/a0$c;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-boolean v0, v0, Lzm/a0$c;->h:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public final m()V
    .locals 3

    .line 1
    invoke-interface {p0}, Lzm/w;->j()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    invoke-direct {p0, v0, v1, v2}, Lzm/e;->P(JI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final n()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lzm/w;->getCurrentTimeline()Lzm/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lzm/w;->x()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lzm/e;->a:Lzm/a0$c;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lzm/a0$c;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method

.method public final o()V
    .locals 6

    .line 1
    invoke-interface {p0}, Lzm/w;->getCurrentTimeline()Lzm/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x7

    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    invoke-interface {p0}, Lzm/w;->isPlayingAd()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Lzm/e;->w()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0}, Lzm/e;->n()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lzm/e;->k()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-direct {p0, v1}, Lzm/e;->Q(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-direct {p0, v1}, Lzm/e;->J(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-interface {p0}, Lzm/w;->getCurrentPosition()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-interface {p0}, Lzm/w;->i()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    cmp-long v0, v2, v4

    .line 56
    .line 57
    if-gtz v0, :cond_3

    .line 58
    .line 59
    invoke-direct {p0, v1}, Lzm/e;->Q(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const-wide/16 v2, 0x0

    .line 64
    .line 65
    invoke-direct {p0, v2, v3, v1}, Lzm/e;->M(JI)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void

    .line 69
    :cond_4
    :goto_1
    invoke-direct {p0, v1}, Lzm/e;->J(I)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final pause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lzm/w;->setPlayWhenReady(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final play()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, v0}, Lzm/w;->setPlayWhenReady(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final q()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lzm/w;->getCurrentTimeline()Lzm/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lzm/w;->x()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lzm/e;->a:Lzm/a0$c;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-boolean v0, v0, Lzm/a0$c;->i:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public final seekTo(IJ)V
    .locals 6

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 2
    invoke-virtual/range {v0 .. v5}, Lzm/e;->L(IJIZ)V

    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lzm/e;->M(JI)V

    return-void
.end method

.method public final seekToDefaultPosition()V
    .locals 2

    .line 1
    invoke-interface {p0}, Lzm/w;->x()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-direct {p0, v0, v1}, Lzm/e;->N(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    invoke-interface {p0}, Lzm/w;->getCurrentTimeline()Lzm/a0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    invoke-interface {p0}, Lzm/w;->isPlayingAd()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lzm/e;->f()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, v1}, Lzm/e;->O(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lzm/e;->n()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lzm/e;->q()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {p0}, Lzm/w;->x()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-direct {p0, v0, v1}, Lzm/e;->N(II)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-direct {p0, v1}, Lzm/e;->J(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lzm/e;->J(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final w()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lzm/e;->H()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final y()V
    .locals 3

    .line 1
    invoke-interface {p0}, Lzm/w;->A()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    neg-long v0, v0

    .line 6
    const/16 v2, 0xb

    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2}, Lzm/e;->P(JI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
