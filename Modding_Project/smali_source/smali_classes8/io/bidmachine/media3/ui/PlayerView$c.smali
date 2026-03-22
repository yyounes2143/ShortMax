.class final Lio/bidmachine/media3/ui/PlayerView$c;
.super Ljava/lang/Object;
.source "PlayerView.java"

# interfaces
.implements Lzm/w$d;
.implements Landroid/view/View$OnClickListener;
.implements Lio/bidmachine/media3/ui/PlayerControlView$m;
.implements Lio/bidmachine/media3/ui/PlayerControlView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Lzm/a0$b;

.field private b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic c:Lio/bidmachine/media3/ui/PlayerView;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/ui/PlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lzm/a0$b;

    .line 7
    .line 8
    invoke-direct {p1}, Lzm/a0$b;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->a:Lzm/a0$b;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->g(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 7
    .line 8
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->h(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 12
    .line 13
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->i(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public C(Lbn/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->c(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/SubtitleView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->c(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/SubtitleView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object p1, p1, Lbn/b;->a:Lcom/google/common/collect/ImmutableList;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public D(II)V
    .locals 3

    .line 1
    sget p1, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 p2, 0x22

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 8
    .line 9
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->r(Lio/bidmachine/media3/ui/PlayerView;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of p1, p1, Landroid/view/SurfaceView;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 18
    .line 19
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->s(Lio/bidmachine/media3/ui/PlayerView;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 26
    .line 27
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->u(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/PlayerView$f;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lio/bidmachine/media3/ui/PlayerView$f;

    .line 36
    .line 37
    iget-object p2, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 38
    .line 39
    invoke-static {p2}, Lio/bidmachine/media3/ui/PlayerView;->t(Lio/bidmachine/media3/ui/PlayerView;)Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 44
    .line 45
    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->r(Lio/bidmachine/media3/ui/PlayerView;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/view/SurfaceView;

    .line 50
    .line 51
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 52
    .line 53
    new-instance v2, Lio/bidmachine/media3/ui/h0;

    .line 54
    .line 55
    invoke-direct {v2, v1}, Lio/bidmachine/media3/ui/h0;-><init>(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2, v0, v2}, Lio/bidmachine/media3/ui/PlayerView$f;->f(Landroid/os/Handler;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public P(Lzm/w$e;Lzm/w$e;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->j(Lio/bidmachine/media3/ui/PlayerView;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->k(Lio/bidmachine/media3/ui/PlayerView;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 18
    .line 19
    invoke-virtual {p1}, Lio/bidmachine/media3/ui/PlayerView;->G()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public T(Lzm/e0;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->n(Lio/bidmachine/media3/ui/PlayerView;)Lzm/w;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lzm/w;

    .line 12
    .line 13
    const/16 v0, 0x11

    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzm/w;->g(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Lzm/w;->getCurrentTimeline()Lzm/a0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lzm/a0;->a:Lzm/a0;

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0}, Lzm/a0;->q()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iput-object v2, p0, Lio/bidmachine/media3/ui/PlayerView$c;->b:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v1, 0x1e

    .line 39
    .line 40
    invoke-interface {p1, v1}, Lzm/w;->g(I)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {p1}, Lzm/w;->e()Lzm/e0;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lzm/e0;->b()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    invoke-interface {p1}, Lzm/w;->getCurrentPeriodIndex()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->a:Lzm/a0$b;

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    invoke-virtual {v0, p1, v1, v2}, Lzm/a0;->g(ILzm/a0$b;Z)Lzm/a0$b;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Lzm/a0$b;->b:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->b:Ljava/lang/Object;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->b:Ljava/lang/Object;

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lzm/a0;->b(Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/4 v3, -0x1

    .line 81
    if-eq v1, v3, :cond_3

    .line 82
    .line 83
    iget-object v3, p0, Lio/bidmachine/media3/ui/PlayerView$c;->a:Lzm/a0$b;

    .line 84
    .line 85
    invoke-virtual {v0, v1, v3}, Lzm/a0;->f(ILzm/a0$b;)Lzm/a0$b;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget v0, v0, Lzm/a0$b;->c:I

    .line 90
    .line 91
    invoke-interface {p1}, Lzm/w;->x()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-ne p1, v0, :cond_3

    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    iput-object v2, p0, Lio/bidmachine/media3/ui/PlayerView$c;->b:Ljava/lang/Object;

    .line 99
    .line 100
    :cond_4
    :goto_1
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-static {p1, v0}, Lio/bidmachine/media3/ui/PlayerView;->f(Lio/bidmachine/media3/ui/PlayerView;Z)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->m(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 7
    .line 8
    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->o(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/PlayerView$d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 15
    .line 16
    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->o(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/PlayerView$d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p1}, Lio/bidmachine/media3/ui/PlayerView$d;->a(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public m(Lzm/i0;)V
    .locals 1

    .line 1
    sget-object v0, Lzm/i0;->e:Lzm/i0;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lzm/i0;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->n(Lio/bidmachine/media3/ui/PlayerView;)Lzm/w;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 18
    .line 19
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->n(Lio/bidmachine/media3/ui/PlayerView;)Lzm/w;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lzm/w;->getPlaybackState()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x1

    .line 28
    if-ne p1, v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 32
    .line 33
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->q(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->l(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->v(Lio/bidmachine/media3/ui/PlayerView;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->v(Lio/bidmachine/media3/ui/PlayerView;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 20
    .line 21
    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->w(Lio/bidmachine/media3/ui/PlayerView;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 28
    .line 29
    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->d(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 34
    .line 35
    invoke-static {v0}, Lio/bidmachine/media3/ui/PlayerView;->e(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public w(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->g(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 7
    .line 8
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->i(Lio/bidmachine/media3/ui/PlayerView;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public x(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/ui/PlayerView$c;->c:Lio/bidmachine/media3/ui/PlayerView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/ui/PlayerView;->p(Lio/bidmachine/media3/ui/PlayerView;)Lio/bidmachine/media3/ui/PlayerView$e;

    .line 4
    .line 5
    .line 6
    return-void
.end method
