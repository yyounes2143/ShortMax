.class public final Lcom/drake/statelayout/StateLayout;
.super Landroid/widget/FrameLayout;
.source "StateLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/drake/statelayout/StateLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/drake/statelayout/Status;",
            "Lp1/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/drake/statelayout/StateLayout;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lcom/drake/statelayout/Status;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private k:Z

.field private l:J

.field private m:Lp1/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private n:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private o:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private p:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/drake/statelayout/StateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/drake/statelayout/StateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/drake/statelayout/StateLayout;->a:Landroid/util/ArrayMap;

    .line 6
    sget-object p3, Lcom/drake/statelayout/Status;->CONTENT:Lcom/drake/statelayout/Status;

    iput-object p3, p0, Lcom/drake/statelayout/StateLayout;->j:Lcom/drake/statelayout/Status;

    .line 7
    invoke-static {}, Lp1/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drake/statelayout/StateLayout;->l:J

    .line 8
    invoke-static {}, Lp1/c;->j()Lp1/b;

    move-result-object p3

    iput-object p3, p0, Lcom/drake/statelayout/StateLayout;->m:Lp1/b;

    const/4 p3, -0x1

    .line 9
    iput p3, p0, Lcom/drake/statelayout/StateLayout;->n:I

    .line 10
    iput p3, p0, Lcom/drake/statelayout/StateLayout;->o:I

    .line 11
    iput p3, p0, Lcom/drake/statelayout/StateLayout;->p:I

    .line 12
    sget-object v0, Lp1/a;->h0:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026 R.styleable.StateLayout)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :try_start_0
    sget p2, Lp1/a;->i0:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/drake/statelayout/StateLayout;->setEmptyLayout(I)V

    .line 14
    sget p2, Lp1/a;->j0:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/drake/statelayout/StateLayout;->setErrorLayout(I)V

    .line 15
    sget p2, Lp1/a;->k0:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/drake/statelayout/StateLayout;->setLoadingLayout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/drake/statelayout/StateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/drake/statelayout/StateLayout;->n(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lcom/drake/statelayout/StateLayout;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/statelayout/StateLayout;->getOnContent()Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/drake/statelayout/StateLayout;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/statelayout/StateLayout;->getOnEmpty()Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/drake/statelayout/StateLayout;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/statelayout/StateLayout;->getOnError()Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/drake/statelayout/StateLayout;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/statelayout/StateLayout;->getOnLoading()Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/drake/statelayout/StateLayout;)[I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/drake/statelayout/StateLayout;->getRetryIds()[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/drake/statelayout/StateLayout;)Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/drake/statelayout/StateLayout;->a:Landroid/util/ArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getOnContent()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/statelayout/StateLayout;->g:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lp1/c;->a:Lp1/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lp1/c;->e()Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method private final getOnEmpty()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/statelayout/StateLayout;->e:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lp1/c;->a:Lp1/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lp1/c;->f()Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method private final getOnError()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/statelayout/StateLayout;->f:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lp1/c;->a:Lp1/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lp1/c;->g()Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method private final getOnLoading()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/statelayout/StateLayout;->h:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lp1/c;->a:Lp1/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lp1/c;->h()Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method private final getRetryIds()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/drake/statelayout/StateLayout;->d:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lp1/c;->a:Lp1/c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lp1/c;->i()[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method public static final synthetic h(Lcom/drake/statelayout/StateLayout;Lcom/drake/statelayout/Status;Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/drake/statelayout/StateLayout;->j(Lcom/drake/statelayout/Status;Ljava/lang/Object;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Lcom/drake/statelayout/StateLayout;Lcom/drake/statelayout/Status;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/drake/statelayout/StateLayout;->j:Lcom/drake/statelayout/Status;

    .line 2
    .line 3
    return-void
.end method

.method private final j(Lcom/drake/statelayout/Status;Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/statelayout/StateLayout;->a:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lp1/e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lp1/e;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lp1/e;->b()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    sget-object v0, Lcom/drake/statelayout/StateLayout$a;->$EnumSwitchMapping$0:[I

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    aget v1, v0, v1

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    const/4 v3, 0x4

    .line 29
    const/4 v4, 0x3

    .line 30
    const/4 v5, 0x2

    .line 31
    const/4 v6, 0x1

    .line 32
    if-eq v1, v6, :cond_4

    .line 33
    .line 34
    if-eq v1, v5, :cond_3

    .line 35
    .line 36
    if-eq v1, v4, :cond_2

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    move v1, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 43
    .line 44
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/drake/statelayout/StateLayout;->getLoadingLayout()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/drake/statelayout/StateLayout;->getErrorLayout()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/drake/statelayout/StateLayout;->getEmptyLayout()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    :goto_0
    if-ne v1, v2, :cond_9

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    aget p1, v0, p1

    .line 69
    .line 70
    if-eq p1, v6, :cond_8

    .line 71
    .line 72
    if-eq p1, v5, :cond_7

    .line 73
    .line 74
    if-eq p1, v4, :cond_6

    .line 75
    .line 76
    if-eq p1, v3, :cond_5

    .line 77
    .line 78
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 79
    .line 80
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_5
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 85
    .line 86
    const-string p2, "No StateLayout contentView is set"

    .line 87
    .line 88
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_6
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 93
    .line 94
    const-string p2, "No StateLayout loadingLayout is set"

    .line 95
    .line 96
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_7
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 101
    .line 102
    const-string p2, "No StateLayout errorLayout is set"

    .line 103
    .line 104
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_8
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 109
    .line 110
    const-string p2, "No StateLayout emptyLayout is set"

    .line 111
    .line 112
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const/4 v2, 0x0

    .line 125
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/drake/statelayout/StateLayout;->a:Landroid/util/ArrayMap;

    .line 130
    .line 131
    new-instance v2, Lp1/e;

    .line 132
    .line 133
    const-string v3, "view"

    .line 134
    .line 135
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {v2, v0, p2}, Lp1/e;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    return-object v0
.end method

.method private final l(Lcom/drake/statelayout/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/drake/statelayout/StateLayout;->a:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final m(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lp1/d;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Lp1/d;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private static final n(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "$block"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic p(Lcom/drake/statelayout/StateLayout;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/drake/statelayout/StateLayout;->o(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic r(Lcom/drake/statelayout/StateLayout;Ljava/lang/Object;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 12
    .line 13
    if-eqz p4, :cond_2

    .line 14
    .line 15
    const/4 p3, 0x1

    .line 16
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/drake/statelayout/StateLayout;->q(Ljava/lang/Object;ZZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final s(Lcom/drake/statelayout/Status;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/drake/statelayout/StateLayout;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/drake/statelayout/StateLayout;->b:Z

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/drake/statelayout/StateLayout;->j:Lcom/drake/statelayout/Status;

    .line 9
    .line 10
    if-ne v0, p1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lcom/drake/statelayout/StateLayout;->a:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lp1/e;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lp1/e;->a()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    new-instance v0, Lcom/drake/statelayout/StateLayout$showStatus$1;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1, p2}, Lcom/drake/statelayout/StateLayout$showStatus$1;-><init>(Lcom/drake/statelayout/StateLayout;Lcom/drake/statelayout/Status;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0}, Lcom/drake/statelayout/StateLayout;->m(Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final getClickThrottle()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/drake/statelayout/StateLayout;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getEmptyLayout()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/drake/statelayout/StateLayout;->o:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lp1/c;->b()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :cond_0
    return v0
.end method

.method public final getErrorLayout()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/drake/statelayout/StateLayout;->n:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lp1/c;->c()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :cond_0
    return v0
.end method

.method public final getLoaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/drake/statelayout/StateLayout;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLoadingLayout()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/drake/statelayout/StateLayout;->p:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lp1/c;->d()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :cond_0
    return v0
.end method

.method public final getStateChangedHandler()Lp1/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/statelayout/StateLayout;->m:Lp1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()Lcom/drake/statelayout/Status;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drake/statelayout/StateLayout;->j:Lcom/drake/statelayout/Status;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Lkotlin/jvm/functions/Function2;)Lcom/drake/statelayout/StateLayout;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/drake/statelayout/StateLayout;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/drake/statelayout/StateLayout;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/drake/statelayout/StateLayout;->i:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-object p0
.end method

.method public final o(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/drake/statelayout/StateLayout;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/drake/statelayout/StateLayout;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/drake/statelayout/Status;->CONTENT:Lcom/drake/statelayout/Status;

    .line 11
    .line 12
    invoke-direct {p0, v0, p1}, Lcom/drake/statelayout/StateLayout;->s(Lcom/drake/statelayout/Status;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/drake/statelayout/StateLayout;->k:Z

    .line 17
    .line 18
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-gt v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/drake/statelayout/StateLayout;->a:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "view"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/drake/statelayout/StateLayout;->setContent(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 40
    .line 41
    const-string v1, "StateLayout only have one child view"

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public final q(Ljava/lang/Object;ZZ)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lcom/drake/statelayout/Status;->LOADING:Lcom/drake/statelayout/Status;

    .line 4
    .line 5
    invoke-direct {p0, p2, p1}, Lcom/drake/statelayout/StateLayout;->s(Lcom/drake/statelayout/Status;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-eqz p3, :cond_1

    .line 9
    .line 10
    iget-object p2, p0, Lcom/drake/statelayout/StateLayout;->i:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-interface {p2, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final setClickThrottle(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/drake/statelayout/StateLayout;->l:J

    .line 2
    .line 3
    return-void
.end method

.method public final setContent(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/drake/statelayout/StateLayout;->a:Landroid/util/ArrayMap;

    .line 7
    .line 8
    sget-object v1, Lcom/drake/statelayout/Status;->CONTENT:Lcom/drake/statelayout/Status;

    .line 9
    .line 10
    new-instance v2, Lp1/e;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v2, p1, v3}, Lp1/e;-><init>(Landroid/view/View;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setEmptyLayout(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/drake/statelayout/StateLayout;->o:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/drake/statelayout/Status;->EMPTY:Lcom/drake/statelayout/Status;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/drake/statelayout/StateLayout;->l(Lcom/drake/statelayout/Status;)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lcom/drake/statelayout/StateLayout;->o:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final setErrorLayout(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/drake/statelayout/StateLayout;->n:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/drake/statelayout/Status;->ERROR:Lcom/drake/statelayout/Status;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/drake/statelayout/StateLayout;->l(Lcom/drake/statelayout/Status;)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lcom/drake/statelayout/StateLayout;->n:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final setLoaded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/drake/statelayout/StateLayout;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLoadingLayout(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/drake/statelayout/StateLayout;->p:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/drake/statelayout/Status;->LOADING:Lcom/drake/statelayout/Status;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/drake/statelayout/StateLayout;->l(Lcom/drake/statelayout/Status;)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lcom/drake/statelayout/StateLayout;->p:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final setStateChangedHandler(Lp1/b;)V
    .locals 1
    .param p1    # Lp1/b;
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
    iput-object p1, p0, Lcom/drake/statelayout/StateLayout;->m:Lp1/b;

    .line 7
    .line 8
    return-void
.end method
