.class public final Laq/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbq/d;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laq/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Laq/k;


# direct methods
.method public constructor <init>(Laq/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lbq/b;)V
    .locals 1
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 7
    .line 8
    invoke-virtual {p1}, Laq/k;->H()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 12
    .line 13
    invoke-static {p1}, Laq/k;->d0(Laq/k;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->D0()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 23
    .line 24
    invoke-virtual {p1}, Ltp/b0;->r()Ljq/b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljq/b;->b()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public b(Lbq/b;)V
    .locals 1
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 7
    .line 8
    invoke-static {p1}, Laq/k;->d0(Laq/k;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->c0()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 18
    .line 19
    invoke-virtual {p1}, Ltp/b0;->r()Ljq/b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljq/b;->f()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public c(Lbq/b;)V
    .locals 1
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 7
    .line 8
    invoke-static {p1}, Laq/k;->d0(Laq/k;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->b0()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 18
    .line 19
    invoke-virtual {p1}, Ltp/b0;->r()Ljq/b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljq/b;->i()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public d(Lbq/b;)V
    .locals 1
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laq/k$a;->a:Laq/k;

    .line 7
    .line 8
    invoke-static {v0}, Laq/k;->d0(Laq/k;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lbq/b;->n()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lio/bidmachine/rendering/measurer/Measurer;->T(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 22
    .line 23
    invoke-static {p1}, Laq/k;->T(Laq/k;)Lup/c;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Laq/k$a;->a:Laq/k;

    .line 28
    .line 29
    invoke-interface {p1, v0}, Lup/c;->a(Lup/a;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public e(Lbq/b;)V
    .locals 3
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laq/k$a;->a:Laq/k;

    .line 7
    .line 8
    invoke-static {v0}, Laq/k;->d0(Laq/k;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lbq/b;->g()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    long-to-float v1, v1

    .line 19
    invoke-interface {p1}, Lbq/b;->getVolume()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-interface {v0, v1, p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->z0(FF)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 27
    .line 28
    invoke-virtual {p1}, Ltp/b0;->r()Ljq/b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljq/b;->j()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public f(Lbq/b;Lrq/t;)V
    .locals 1
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "error"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 12
    .line 13
    invoke-static {p1, p2}, Laq/k;->b0(Laq/k;Lrq/t;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public g(Lbq/b;Lrq/t;)V
    .locals 1
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "error"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 12
    .line 13
    invoke-static {p1, p2}, Laq/k;->X(Laq/k;Lrq/t;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public h(Lbq/b;)V
    .locals 1
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 7
    .line 8
    invoke-static {p1}, Laq/k;->d0(Laq/k;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->n0()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 18
    .line 19
    invoke-virtual {p1}, Ltp/b0;->r()Ljq/b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljq/b;->d()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public i(Lbq/b;)V
    .locals 1
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 7
    .line 8
    invoke-static {p1}, Laq/k;->d0(Laq/k;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->m0()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 18
    .line 19
    invoke-virtual {p1}, Ltp/b0;->r()Ljq/b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljq/b;->c()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public j(Lbq/b;)V
    .locals 1
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 7
    .line 8
    invoke-static {p1}, Laq/k;->d0(Laq/k;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->e0()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 18
    .line 19
    invoke-virtual {p1}, Ltp/b0;->r()Ljq/b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljq/b;->g()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public k(Lbq/b;)V
    .locals 1
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 7
    .line 8
    invoke-static {p1}, Laq/k;->d0(Laq/k;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->d0()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 18
    .line 19
    invoke-virtual {p1}, Ltp/b0;->r()Ljq/b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljq/b;->a()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public l(Lbq/b;Z)V
    .locals 1
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 7
    .line 8
    invoke-virtual {p1}, Lup/a;->j()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iget-object p2, p0, Laq/k$a;->a:Laq/k;

    .line 27
    .line 28
    invoke-virtual {p2}, Ltp/b0;->r()Ljq/b;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-interface {p2, p1}, Ljq/b;->b(Ljava/lang/Integer;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object p2, p0, Laq/k$a;->a:Laq/k;

    .line 37
    .line 38
    invoke-virtual {p2}, Ltp/b0;->r()Ljq/b;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p2, p1}, Ljq/b;->a(Ljava/lang/Integer;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method public m(Lbq/b;J)V
    .locals 3
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laq/k$a;->a:Laq/k;

    .line 7
    .line 8
    invoke-virtual {v0}, Ltp/b0;->r()Ljq/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p1}, Lbq/b;->g()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-interface {v0, v1, v2, p2, p3}, Ljq/b;->a(JJ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public n(Lbq/b;F)V
    .locals 1
    .param p1    # Lbq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Laq/k$a;->a:Laq/k;

    .line 7
    .line 8
    invoke-static {p1}, Laq/k;->d0(Laq/k;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1, p2}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->F0(F)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
