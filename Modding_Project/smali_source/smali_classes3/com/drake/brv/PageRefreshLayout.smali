.class public Lcom/drake/brv/PageRefreshLayout;
.super Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;
.source "PageRefreshLayout.kt"

# interfaces
.implements Lvc/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drake/brv/PageRefreshLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final m1:Lcom/drake/brv/PageRefreshLayout$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static n1:I

.field private static o1:I

.field private static p1:Z

.field private static q1:Z


# instance fields
.field private R0:I

.field private S0:Lcom/drake/statelayout/StateLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private T0:I

.field private U0:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private V0:I

.field private W0:Z

.field private X0:Lm1/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private Y0:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private Z0:Z

.field private a1:Z

.field private b1:Z

.field private c1:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/drake/brv/PageRefreshLayout;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d1:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/drake/brv/PageRefreshLayout;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e1:I

.field private f1:Z

.field private g1:Z

.field private h1:I

.field private i1:I

.field private j1:I

.field private k1:Z

.field private l1:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/drake/brv/PageRefreshLayout$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/drake/brv/PageRefreshLayout$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/drake/brv/PageRefreshLayout;->m1:Lcom/drake/brv/PageRefreshLayout$a;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput v0, Lcom/drake/brv/PageRefreshLayout;->n1:I

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    sput v1, Lcom/drake/brv/PageRefreshLayout;->o1:I

    .line 14
    .line 15
    sput-boolean v0, Lcom/drake/brv/PageRefreshLayout;->p1:Z

    .line 16
    .line 17
    sput-boolean v0, Lcom/drake/brv/PageRefreshLayout;->q1:Z

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/drake/brv/PageRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget v0, Lcom/drake/brv/PageRefreshLayout;->n1:I

    iput v0, p0, Lcom/drake/brv/PageRefreshLayout;->R0:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/drake/brv/PageRefreshLayout;->T0:I

    .line 5
    iput v0, p0, Lcom/drake/brv/PageRefreshLayout;->V0:I

    .line 6
    new-instance v1, Lcom/drake/brv/PageRefreshLayout$b;

    invoke-direct {v1, p0}, Lcom/drake/brv/PageRefreshLayout$b;-><init>(Lcom/drake/brv/PageRefreshLayout;)V

    iput-object v1, p0, Lcom/drake/brv/PageRefreshLayout;->X0:Lm1/b;

    .line 7
    sget v1, Lcom/drake/brv/PageRefreshLayout;->o1:I

    iput v1, p0, Lcom/drake/brv/PageRefreshLayout;->e1:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/drake/brv/PageRefreshLayout;->g1:Z

    .line 9
    iput v0, p0, Lcom/drake/brv/PageRefreshLayout;->h1:I

    .line 10
    iput v0, p0, Lcom/drake/brv/PageRefreshLayout;->i1:I

    .line 11
    iput v0, p0, Lcom/drake/brv/PageRefreshLayout;->j1:I

    .line 12
    sget-boolean v0, Lcom/drake/brv/PageRefreshLayout;->p1:Z

    iput-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->k1:Z

    .line 13
    sget-boolean v0, Lcom/drake/brv/PageRefreshLayout;->q1:Z

    iput-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->l1:Z

    .line 14
    sget-object v0, Lj1/e;->e0:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026leable.PageRefreshLayout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :try_start_0
    sget p2, Lj1/e;->k0:I

    iget-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->W0:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 16
    invoke-virtual {p0, p2}, Lcom/drake/brv/PageRefreshLayout;->setUpFetchEnabled(Z)V

    .line 17
    sget p2, Lj1/e;->l0:I

    iget-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->g1:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 18
    invoke-virtual {p0, p2}, Lcom/drake/brv/PageRefreshLayout;->setStateEnabled(Z)V

    .line 19
    sget p2, Lj1/e;->j0:I

    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->T0:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 20
    iput p2, p0, Lcom/drake/brv/PageRefreshLayout;->T0:I

    .line 21
    sget p2, Lj1/e;->i0:I

    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->V0:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 22
    iput p2, p0, Lcom/drake/brv/PageRefreshLayout;->V0:I

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P:Z

    .line 24
    sget v0, Lj1/e;->t0:I

    .line 25
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P:Z

    .line 26
    sget p2, Lj1/e;->f0:I

    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->h1:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 27
    invoke-virtual {p0, p2}, Lcom/drake/brv/PageRefreshLayout;->setEmptyLayout(I)V

    .line 28
    sget p2, Lj1/e;->g0:I

    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->i1:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 29
    invoke-virtual {p0, p2}, Lcom/drake/brv/PageRefreshLayout;->setErrorLayout(I)V

    .line 30
    sget p2, Lj1/e;->h0:I

    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->j1:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 31
    invoke-virtual {p0, p2}, Lcom/drake/brv/PageRefreshLayout;->setLoadingLayout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public static synthetic K(Landroid/view/View;Lcom/drake/brv/PageRefreshLayout;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Lcom/drake/brv/PageRefreshLayout;->R(Landroid/view/View;Lcom/drake/brv/PageRefreshLayout;Landroid/view/View;IIIIIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic L(Lcom/drake/brv/PageRefreshLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic M(Lcom/drake/brv/PageRefreshLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic N(Lcom/drake/brv/PageRefreshLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/drake/brv/PageRefreshLayout;->b1:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic O(Lcom/drake/brv/PageRefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic P(Lcom/drake/brv/PageRefreshLayout;Z)Lsc/f;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C(Z)Lsc/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final R(Landroid/view/View;Lcom/drake/brv/PageRefreshLayout;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    instance-of p2, p0, Lcom/drake/brv/BindingAdapter;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    check-cast p0, Lcom/drake/brv/BindingAdapter;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/drake/brv/BindingAdapter;->v()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-object p1, p1, Lcom/drake/brv/PageRefreshLayout;->X0:Lm1/b;

    .line 23
    .line 24
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private final S()V
    .locals 8

    .line 1
    invoke-static {}, Lp1/c;->c()I

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
    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->i1:I

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lp1/c;->b()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->h1:I

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lp1/c;->d()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->j1:I

    .line 29
    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/drake/brv/PageRefreshLayout;->setStateEnabled(Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->T0:I

    .line 42
    .line 43
    if-ne v0, v1, :cond_1

    .line 44
    .line 45
    new-instance v0, Lcom/drake/statelayout/StateLayout;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v1, "context"

    .line 52
    .line 53
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v6, 0x6

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    move-object v2, v0

    .line 61
    invoke-direct/range {v2 .. v7}, Lcom/drake/statelayout/StateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/drake/brv/PageRefreshLayout;->Y0:Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/drake/brv/PageRefreshLayout;->Y0:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/drake/brv/PageRefreshLayout;->Y0:Landroid/view/View;

    .line 75
    .line 76
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/drake/statelayout/StateLayout;->setContent(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->G(Landroid/view/View;)Lsc/f;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/drake/statelayout/StateLayout;

    .line 91
    .line 92
    :goto_0
    iput-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 93
    .line 94
    :cond_2
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 95
    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/drake/brv/PageRefreshLayout;->getEmptyLayout()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/drake/statelayout/StateLayout;->setEmptyLayout(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/drake/brv/PageRefreshLayout;->getErrorLayout()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/drake/statelayout/StateLayout;->setErrorLayout(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/drake/brv/PageRefreshLayout;->getLoadingLayout()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {v0, v1}, Lcom/drake/statelayout/StateLayout;->setLoadingLayout(I)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/drake/brv/PageRefreshLayout$initializeState$2$1;

    .line 121
    .line 122
    invoke-direct {v1, p0}, Lcom/drake/brv/PageRefreshLayout$initializeState$2$1;-><init>(Lcom/drake/brv/PageRefreshLayout;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lcom/drake/statelayout/StateLayout;->k(Lkotlin/jvm/functions/Function2;)Lcom/drake/statelayout/StateLayout;

    .line 126
    .line 127
    .line 128
    :goto_1
    return-void
.end method

.method private final T()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->W0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->getLayout()Landroid/view/ViewGroup;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 18
    .line 19
    invoke-interface {v1}, Lsc/b;->getView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->getRefreshFooter()Lsc/c;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-interface {v1}, Lsc/a;->getView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_1
    if-nez v1, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 42
    .line 43
    .line 44
    :goto_2
    return-void
.end method


# virtual methods
.method public A(Z)Lsc/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/drake/brv/PageRefreshLayout;->a1:Z

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A(Z)Lsc/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "super.setEnableLoadMore(enabled)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public C(Z)Lsc/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/drake/brv/PageRefreshLayout;->b1:Z

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C(Z)Lsc/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "super.setEnableRefresh(enabled)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public E(Z)Lsc/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E(Z)Lsc/f;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public final Q()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->V0:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->U0:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {p0, p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->F(Lvc/g;)Lsc/f;

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->C:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->a1:Z

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->b1:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->Y0:Landroid/view/View;

    .line 23
    .line 24
    if-nez v0, :cond_4

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-ge v1, v0, :cond_1

    .line 32
    .line 33
    add-int/lit8 v2, v1, 0x1

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    instance-of v3, v1, Lsc/a;

    .line 40
    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    iput-object v1, p0, Lcom/drake/brv/PageRefreshLayout;->Y0:Landroid/view/View;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    move v1, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->g1:Z

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/drake/brv/PageRefreshLayout;->S()V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->U0:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->Y0:Landroid/view/View;

    .line 60
    .line 61
    :cond_3
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    move-object v1, v0

    .line 66
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    new-instance v2, Lj1/c;

    .line 69
    .line 70
    invoke-direct {v2, v0, p0}, Lj1/c;-><init>(Landroid/view/View;Lcom/drake/brv/PageRefreshLayout;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void
.end method

.method public b(Lsc/f;)V
    .locals 1
    .param p1    # Lsc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "refreshLayout"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/drake/brv/PageRefreshLayout;->E(Z)Lsc/f;

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->a1:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A(Z)Lsc/f;

    .line 15
    .line 16
    .line 17
    :cond_0
    sget p1, Lcom/drake/brv/PageRefreshLayout;->n1:I

    .line 18
    .line 19
    iput p1, p0, Lcom/drake/brv/PageRefreshLayout;->R0:I

    .line 20
    .line 21
    iget-object p1, p0, Lcom/drake/brv/PageRefreshLayout;->c1:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public c(Lsc/f;)V
    .locals 1
    .param p1    # Lsc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "refreshLayout"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/drake/brv/PageRefreshLayout;->d1:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/drake/brv/PageRefreshLayout;->c1:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-nez p1, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final getEmptyLayout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->h1:I

    .line 2
    .line 3
    return v0
.end method

.method public final getErrorLayout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->i1:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->R0:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLoaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->f1:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLoadingLayout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->j1:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOnBindViewHolderListener()Lm1/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->X0:Lm1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPreloadIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->e1:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRecyclerViewId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->V0:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRefreshEnableWhenEmpty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->k1:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRefreshEnableWhenError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->l1:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getRv()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->U0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStateChangedHandler()Lp1/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/drake/statelayout/StateLayout;->getStateChangedHandler()Lp1/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final getStateEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->g1:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getStateLayout()Lcom/drake/statelayout/StateLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStateLayoutId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/drake/brv/PageRefreshLayout;->T0:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUpFetchEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->W0:Z

    .line 2
    .line 3
    return v0
.end method

.method public m(IZZ)Lsc/f;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m(IZZ)Lsc/f;

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/drake/brv/PageRefreshLayout;->a1:Z

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/drake/brv/PageRefreshLayout;->g1:Z

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/drake/statelayout/StateLayout;->getStatus()Lcom/drake/statelayout/Status;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    sget-object p2, Lcom/drake/statelayout/Status;->CONTENT:Lcom/drake/statelayout/Status;

    .line 23
    .line 24
    if-eq p1, p2, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A(Z)Lsc/f;

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 p1, 0x1

    .line 32
    invoke-super {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A(Z)Lsc/f;

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_1
    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/drake/brv/PageRefreshLayout;->T()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/drake/brv/PageRefreshLayout;->Q()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->onFinishInflate()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->Z0:Z

    .line 9
    .line 10
    return-void
.end method

.method public p(IZLjava/lang/Boolean;)Lsc/f;
    .locals 1
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p(IZLjava/lang/Boolean;)Lsc/f;

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P:Z

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_2

    .line 9
    .line 10
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->T:Z

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move p1, p2

    .line 26
    :goto_1
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B(Z)Lsc/f;

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-boolean p1, p0, Lcom/drake/brv/PageRefreshLayout;->a1:Z

    .line 30
    .line 31
    if-eqz p1, :cond_5

    .line 32
    .line 33
    iget-boolean p1, p0, Lcom/drake/brv/PageRefreshLayout;->g1:Z

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    iget-object p1, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {p1}, Lcom/drake/statelayout/StateLayout;->getStatus()Lcom/drake/statelayout/Status;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_2
    sget-object p3, Lcom/drake/statelayout/Status;->CONTENT:Lcom/drake/statelayout/Status;

    .line 48
    .line 49
    if-eq p1, p3, :cond_4

    .line 50
    .line 51
    invoke-super {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A(Z)Lsc/f;

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    invoke-super {p0, p2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A(Z)Lsc/f;

    .line 56
    .line 57
    .line 58
    :cond_5
    :goto_3
    return-object p0
.end method

.method public final setEmptyLayout(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/drake/brv/PageRefreshLayout;->h1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/drake/statelayout/StateLayout;->setEmptyLayout(I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method public final setErrorLayout(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/drake/brv/PageRefreshLayout;->i1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/drake/statelayout/StateLayout;->setErrorLayout(I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/drake/brv/PageRefreshLayout;->R0:I

    .line 2
    .line 3
    return-void
.end method

.method public final setLoaded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/drake/brv/PageRefreshLayout;->f1:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLoadingLayout(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/drake/brv/PageRefreshLayout;->j1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/drake/statelayout/StateLayout;->setLoadingLayout(I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method public final setOnBindViewHolderListener(Lm1/b;)V
    .locals 1
    .param p1    # Lm1/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/drake/brv/PageRefreshLayout;->X0:Lm1/b;

    .line 7
    .line 8
    return-void
.end method

.method public final setPreloadIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/drake/brv/PageRefreshLayout;->e1:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRecyclerViewId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/drake/brv/PageRefreshLayout;->V0:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshEnableWhenEmpty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/drake/brv/PageRefreshLayout;->k1:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshEnableWhenError(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/drake/brv/PageRefreshLayout;->l1:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRv(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/drake/brv/PageRefreshLayout;->U0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    return-void
.end method

.method public final setStateChangedHandler(Lp1/b;)V
    .locals 1
    .param p1    # Lp1/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/drake/statelayout/StateLayout;->setStateChangedHandler(Lp1/b;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setStateEnabled(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/drake/brv/PageRefreshLayout;->g1:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->Z0:Z

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/drake/brv/PageRefreshLayout;->S()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-nez p1, :cond_2

    .line 18
    .line 19
    iget-object p1, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v1, v0, v1}, Lcom/drake/statelayout/StateLayout;->p(Lcom/drake/statelayout/StateLayout;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method public final setStateLayout(Lcom/drake/statelayout/StateLayout;)V
    .locals 0
    .param p1    # Lcom/drake/statelayout/StateLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/drake/brv/PageRefreshLayout;->S0:Lcom/drake/statelayout/StateLayout;

    .line 2
    .line 3
    return-void
.end method

.method public final setStateLayoutId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/drake/brv/PageRefreshLayout;->T0:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUpFetchEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/drake/brv/PageRefreshLayout;->W0:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/drake/brv/PageRefreshLayout;->W0:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/drake/brv/PageRefreshLayout;->C(Z)Lsc/f;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a(Z)Lsc/f;

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z(Z)Lsc/f;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->D(Z)Lsc/f;

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/drake/brv/PageRefreshLayout$c;

    .line 25
    .line 26
    invoke-direct {p1}, Lcom/drake/brv/PageRefreshLayout$c;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I(Lvc/i;)Lsc/f;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a(Z)Lsc/f;

    .line 34
    .line 35
    .line 36
    new-instance p1, Lwc/a;

    .line 37
    .line 38
    invoke-direct {p1}, Lwc/a;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->I(Lvc/i;)Lsc/f;

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-boolean p1, p0, Lcom/drake/brv/PageRefreshLayout;->Z0:Z

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/drake/brv/PageRefreshLayout;->T()V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method
