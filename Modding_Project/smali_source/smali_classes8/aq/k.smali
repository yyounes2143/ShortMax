.class public final Laq/k;
.super Lup/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laq/k$a;,
        Laq/k$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final r:Lio/bidmachine/rendering/measurer/VideoMeasurer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Lbq/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;Lio/bidmachine/rendering/measurer/VideoMeasurer;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lup/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/rendering/internal/detector/brokencreative/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lio/bidmachine/rendering/measurer/VideoMeasurer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adElementParams"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "adFormListener"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "eventCallback"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct/range {p0 .. p6}, Lup/a;-><init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    .line 27
    .line 28
    .line 29
    iput-object p7, p0, Laq/k;->r:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic I(Laq/k;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Laq/k;->U(Laq/k;Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J(Laq/k;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Laq/k;->a0(Laq/k;Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Laq/k;)V
    .locals 0

    .line 1
    invoke-static {p0}, Laq/k;->g0(Laq/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Laq/k;)V
    .locals 0

    .line 1
    invoke-static {p0}, Laq/k;->f0(Laq/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M(Laq/k;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Laq/k;->V(Laq/k;Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N(Laq/k;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Laq/k;->W(Laq/k;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O(Laq/k;)V
    .locals 0

    .line 1
    invoke-static {p0}, Laq/k;->i0(Laq/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Laq/k;)V
    .locals 0

    .line 1
    invoke-static {p0}, Laq/k;->e0(Laq/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q(Laq/k;)V
    .locals 0

    .line 1
    invoke-static {p0}, Laq/k;->j0(Laq/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic R(Laq/k;)V
    .locals 0

    .line 1
    invoke-static {p0}, Laq/k;->h0(Laq/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic T(Laq/k;)Lup/c;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lup/a;->z()Lup/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final U(Laq/k;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$viewGroup"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Laq/k;->s:Lbq/b;

    .line 12
    .line 13
    iget-object p0, p0, Laq/k;->r:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lbq/b;->n()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p0, v0, p1}, Lio/bidmachine/rendering/measurer/Measurer;->w(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private static final V(Laq/k;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Laq/k;->s:Lbq/b;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, p1}, Ltp/u;->b(Ljava/lang/Integer;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final W(Laq/k;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lup/a;->B()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lbq/c;->a(Landroid/content/Context;Ljava/lang/String;)Lbq/b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Laq/k$a;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Laq/k$a;-><init>(Laq/k;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Lbq/b;->d(Lbq/d;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Laq/k;->r:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Lbq/b;->n()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/measurer/Measurer;->A0(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    iput-object p1, p0, Laq/k;->s:Lbq/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    invoke-static {p1}, Ltp/s;->h(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lrq/t;->b:Lrq/t$a;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lrq/t$a;->a(Ljava/lang/Throwable;)Lrq/t;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Laq/k;->Y(Lrq/t;)V

    .line 49
    .line 50
    .line 51
    :goto_2
    return-void
.end method

.method public static final synthetic X(Laq/k;Lrq/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Laq/k;->Y(Lrq/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final Y(Lrq/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Laq/k;->r:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/rendering/measurer/Measurer;->a(Lrq/t;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lup/a;->z()Lup/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p0, p1}, Lup/c;->d(Lup/a;Lrq/t;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic Z(Laq/k;)Lbq/b;
    .locals 0

    .line 1
    iget-object p0, p0, Laq/k;->s:Lbq/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final a0(Laq/k;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Laq/k;->s:Lbq/b;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, p1}, Ltp/u;->a(Ljava/lang/Integer;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static final synthetic b0(Laq/k;Lrq/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Laq/k;->c0(Lrq/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c0(Lrq/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Laq/k;->r:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/bidmachine/rendering/measurer/Measurer;->a(Lrq/t;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lup/a;->z()Lup/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p0, p1}, Lup/c;->b(Lup/a;Lrq/t;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic d0(Laq/k;)Lio/bidmachine/rendering/measurer/VideoMeasurer;
    .locals 0

    .line 1
    iget-object p0, p0, Laq/k;->r:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final e0(Laq/k;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Laq/k;->s:Lbq/b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lbq/b;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Laq/k;->s:Lbq/b;

    .line 15
    .line 16
    return-void
.end method

.method private static final f0(Laq/k;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Laq/k;->S()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final g0(Laq/k;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Laq/k;->s:Lbq/b;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Lbq/b;->pause()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final h0(Laq/k;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Laq/k;->s:Lbq/b;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Lbq/b;->play()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final i0(Laq/k;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Laq/k;->s:Lbq/b;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Ltp/w;->k()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final j0(Laq/k;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Laq/k;->s:Lbq/b;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Ltp/z;->e()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public D()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Laq/k;->s:Lbq/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lbq/b;->n()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public E()V
    .locals 1

    .line 1
    invoke-super {p0}, Lup/a;->E()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Laq/k;->r:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lio/bidmachine/rendering/measurer/Measurer;->onClicked()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected F()V
    .locals 2

    .line 1
    iget-object v0, p0, Laq/k;->r:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Laq/g;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Laq/g;-><init>(Laq/k;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/measurer/Measurer;->R(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Laq/k;->S()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public H()V
    .locals 1

    .line 1
    invoke-super {p0}, Lup/a;->H()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Laq/k;->r:Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lio/bidmachine/rendering/measurer/Measurer;->onShown()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final S()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Laq/j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Laq/j;-><init>(Laq/k;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Laq/d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Laq/d;-><init>(Laq/k;Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Laq/k;->e()V

    return-void
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Laq/c;

    invoke-direct {v0, p0, p1}, Laq/c;-><init>(Laq/k;Ljava/lang/Integer;)V

    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lup/a;->h()Lrq/a;

    move-result-object v0

    invoke-virtual {v0}, Lrq/a;->l()Lrq/k0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrq/k0;->a()Lrq/l0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    instance-of v2, v0, Lrq/p0;

    if-eqz v2, :cond_1

    .line 3
    check-cast v0, Lrq/p0;

    invoke-virtual {v0}, Lrq/p0;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid resource type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), it should be UrlResourceSource"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lup/a;->x(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lup/a;->h()Lrq/a;

    move-result-object v0

    invoke-virtual {v0}, Lrq/a;->m()Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_1
    sget-object v0, Lio/bidmachine/rendering/model/MediaSource;->b:Lio/bidmachine/rendering/model/MediaSource$a;

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/model/MediaSource$a;->d(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource;

    move-result-object v0

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Lrq/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid adm url ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lrq/t;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Laq/k;->Y(Lrq/t;)V

    return-void

    .line 8
    :cond_3
    invoke-virtual {v0}, Lio/bidmachine/rendering/model/MediaSource;->a()Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    move-result-object v1

    sget-object v2, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->STREAM:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    if-ne v1, v2, :cond_4

    .line 9
    const-string v1, "exo"

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p0}, Lup/a;->h()Lrq/a;

    move-result-object v1

    const-string v2, "player"

    invoke-virtual {v1, v2}, Lrq/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_2
    new-instance v2, Laq/a;

    invoke-direct {v2, p0, v1}, Laq/a;-><init>(Laq/k;Ljava/lang/String;)V

    invoke-static {v2}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 12
    invoke-virtual {p0}, Lup/a;->C()Llq/a;

    move-result-object v1

    new-instance v2, Laq/k$b;

    invoke-direct {v2, p0}, Laq/k$b;-><init>(Laq/k;)V

    invoke-interface {v1, v0, v2}, Llq/a;->c(Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Laq/f;

    invoke-direct {v0, p0, p1}, Laq/f;-><init>(Laq/k;Landroid/view/ViewGroup;)V

    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    new-instance v0, Laq/i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Laq/i;-><init>(Laq/k;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    new-instance v0, Laq/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Laq/b;-><init>(Laq/k;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-super {p0}, Lup/a;->f()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Laq/h;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Laq/h;-><init>(Laq/k;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    new-instance v0, Laq/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Laq/e;-><init>(Laq/k;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
