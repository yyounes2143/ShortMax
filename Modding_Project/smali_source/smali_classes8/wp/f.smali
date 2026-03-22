.class public final Lwp/f;
.super Lup/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwp/f$b;,
        Lwp/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final t:Lwp/f$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final r:Lio/bidmachine/rendering/measurer/HtmlMeasurer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Lio/bidmachine/iab/mraid/MraidAdView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwp/f$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lwp/f$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lwp/f;->t:Lwp/f$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;Lio/bidmachine/rendering/measurer/HtmlMeasurer;)V
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
    .param p7    # Lio/bidmachine/rendering/measurer/HtmlMeasurer;
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
    iput-object p7, p0, Lwp/f;->r:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic I(Lwp/f;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lwp/f;->S(Lwp/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J(Lwp/f;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwp/f;->T(Lwp/f;Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Lwp/f;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lwp/f;->Z(Lwp/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Lwp/f;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lwp/f;->X(Lwp/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M(Lwp/f;Lio/bidmachine/iab/mraid/MraidPlacementType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lwp/f;->U(Lwp/f;Lio/bidmachine/iab/mraid/MraidPlacementType;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final S(Lwp/f;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwp/f;->s:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->C()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lwp/f;->s:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 15
    .line 16
    return-void
.end method

.method private static final T(Lwp/f;Landroid/view/ViewGroup;)V
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
    iget-object v0, p0, Lwp/f;->s:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 12
    .line 13
    iget-object p0, p0, Lwp/f;->r:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->getWebView()Landroid/webkit/WebView;

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

.method private static final U(Lwp/f;Lio/bidmachine/iab/mraid/MraidPlacementType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$preparedSource"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView;

    .line 12
    .line 13
    invoke-virtual {p0}, Lup/a;->B()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0}, Lwp/f;->O()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    new-instance v8, Lwp/g;

    .line 22
    .line 23
    invoke-virtual {p0}, Lup/a;->z()Lup/c;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Ltp/b0;->r()Ljq/b;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "eventCallback"

    .line 32
    .line 33
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lwp/f;->r:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    .line 37
    .line 38
    invoke-direct {v8, p0, v1, v3, v4}, Lwp/g;-><init>(Lwp/f;Lup/c;Ljq/b;Lio/bidmachine/rendering/measurer/HtmlMeasurer;)V

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    move-object v1, v0

    .line 44
    move-object v3, p1

    .line 45
    move-object v4, p2

    .line 46
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/iab/mraid/MraidAdView;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidPlacementType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lio/bidmachine/iab/mraid/MraidAdView$e;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p3}, Lio/bidmachine/iab/mraid/MraidAdView;->W(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lwp/f;->r:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->getWebView()Landroid/webkit/WebView;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-interface {p1, p2}, Lio/bidmachine/rendering/measurer/Measurer;->A0(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    iput-object v0, p0, Lwp/f;->s:Lio/bidmachine/iab/mraid/MraidAdView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    invoke-static {p1}, Ltp/s;->h(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    sget-object p2, Lrq/t;->b:Lrq/t$a;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Lrq/t$a;->a(Ljava/lang/Throwable;)Lrq/t;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lwp/f;->R(Lrq/t;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    return-void
.end method

.method public static final synthetic V(Lwp/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lwp/f;->Y(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final X(Lwp/f;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lwp/f;->N()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final Y(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lwp/f;->r:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lio/bidmachine/rendering/measurer/HtmlMeasurer;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object p1, v0

    .line 22
    :cond_2
    :goto_0
    const-string v0, "htmlMeasurer?.prepareCre\u2026iveForMeasure(adm) ?: adm"

    .line 23
    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lwp/f;->Q()Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lwp/f;->P()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lwp/a;

    .line 36
    .line 37
    invoke-direct {v2, p0, v0, v1, p1}, Lwp/a;-><init>(Lwp/f;Lio/bidmachine/iab/mraid/MraidPlacementType;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    :goto_1
    new-instance p1, Lrq/t;

    .line 45
    .line 46
    const-string v0, "Adm is null or empty"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lwp/f;->R(Lrq/t;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private static final Z(Lwp/f;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwp/f;->s:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->X()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lwp/f;->H()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final a0(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/MediaSource;->b:Lio/bidmachine/rendering/model/MediaSource$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/model/MediaSource$a;->d(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lrq/t;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "Invalid adm url ("

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x29

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p1}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lwp/f;->R(Lrq/t;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lup/a;->C()Llq/a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v1, Lwp/f$a;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lwp/f$a;-><init>(Lwp/f;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0, v1}, Llq/a;->a(Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public D()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lwp/f;->s:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    .line 3
    return-object v0
.end method

.method protected F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lwp/f;->r:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lwp/c;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lwp/c;-><init>(Lwp/f;)V

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
    invoke-virtual {p0}, Lwp/f;->N()V

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
    iget-object v0, p0, Lwp/f;->r:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

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

.method public final N()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lwp/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lwp/e;-><init>(Lwp/f;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final O()Ljava/util/List;
    .locals 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lup/a;->h()Lrq/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "features"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lrq/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_7

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_7

    .line 18
    .line 19
    const-string v0, ","

    .line 20
    .line 21
    filled-new-array {v0}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v6, 0x6

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x0

    .line 42
    move v3, v2

    .line 43
    :goto_0
    if-ge v3, v1, :cond_6

    .line 44
    .line 45
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const/4 v6, 0x1

    .line 56
    sub-int/2addr v5, v6

    .line 57
    move v7, v2

    .line 58
    move v8, v7

    .line 59
    :goto_1
    if-gt v7, v5, :cond_5

    .line 60
    .line 61
    if-nez v8, :cond_0

    .line 62
    .line 63
    move v9, v7

    .line 64
    goto :goto_2

    .line 65
    :cond_0
    move v9, v5

    .line 66
    :goto_2
    invoke-interface {v4, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    const/16 v10, 0x20

    .line 71
    .line 72
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-gtz v9, :cond_1

    .line 77
    .line 78
    move v9, v6

    .line 79
    goto :goto_3

    .line 80
    :cond_1
    move v9, v2

    .line 81
    :goto_3
    if-nez v8, :cond_3

    .line 82
    .line 83
    if-nez v9, :cond_2

    .line 84
    .line 85
    move v8, v6

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    if-nez v9, :cond_4

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 97
    .line 98
    invoke-interface {v4, v7, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    return-object v0

    .line 113
    :catch_0
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lup/a;->h()Lrq/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrq/a;->f()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "base_url"

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lup/a;->h()Lrq/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Lrq/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lyq/r;->q(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 34
    :cond_1
    const-string v0, "https://localhost"

    .line 35
    .line 36
    return-object v0
.end method

.method public final Q()Lio/bidmachine/iab/mraid/MraidPlacementType;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lup/a;->h()Lrq/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "placement_type"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lrq/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "fullscreen"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    sget-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->INTERSTITIAL:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v1, "view"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    sget-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->INLINE:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0
.end method

.method public final R(Lrq/t;)V
    .locals 1
    .param p1    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwp/f;->r:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lio/bidmachine/rendering/measurer/Measurer;->a(Lrq/t;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lup/a;->z()Lup/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p0, p1}, Lup/c;->d(Lup/a;Lrq/t;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final W(Lrq/t;)V
    .locals 1
    .param p1    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwp/f;->r:Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lio/bidmachine/rendering/measurer/Measurer;->a(Lrq/t;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lup/a;->z()Lup/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p0, p1}, Lup/c;->b(Lup/a;Lrq/t;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lup/a;->h()Lrq/a;

    move-result-object v0

    invoke-virtual {v0}, Lrq/a;->l()Lrq/k0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrq/k0;->a()Lrq/l0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    instance-of v1, v0, Lrq/y;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lrq/y;

    invoke-virtual {v0}, Lrq/y;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwp/f;->Y(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    instance-of v1, v0, Lrq/p0;

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, Lrq/p0;

    invoke-virtual {v0}, Lrq/p0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwp/f;->a0(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v1, Lrq/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid resource type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), it should be HtmlResourceSource or UrlResourceSource"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lrq/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lwp/f;->R(Lrq/t;)V

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lup/a;->h()Lrq/a;

    move-result-object v0

    invoke-virtual {v0}, Lrq/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lwp/f;->Y(Ljava/lang/String;)V

    :goto_1
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

    .line 8
    new-instance v0, Lwp/d;

    invoke-direct {v0, p0, p1}, Lwp/d;-><init>(Lwp/f;Landroid/view/ViewGroup;)V

    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    new-instance v0, Lwp/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lwp/b;-><init>(Lwp/f;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwp/f;->s:Lio/bidmachine/iab/mraid/MraidAdView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidAdView;->N()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-super {p0}, Lup/a;->m()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method
