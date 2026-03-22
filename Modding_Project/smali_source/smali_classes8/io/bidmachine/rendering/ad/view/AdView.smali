.class public final Lio/bidmachine/rendering/ad/view/AdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/ad/view/AdView$a;,
        Lio/bidmachine/rendering/ad/view/AdView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lsq/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lio/bidmachine/rendering/view/WatermarkView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lio/bidmachine/rendering/internal/state/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lfq/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lio/bidmachine/rendering/internal/view/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ltp/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Ltp/c0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lsp/p;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrq/b;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "adParams"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lsq/h;

    .line 15
    .line 16
    const-string v1, "AdView"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lsq/h;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 22
    .line 23
    new-instance v1, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lio/bidmachine/rendering/ad/view/AdView;->b:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    new-instance v2, Lio/bidmachine/rendering/view/WatermarkView;

    .line 31
    .line 32
    invoke-direct {v2, p1}, Lio/bidmachine/rendering/view/WatermarkView;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lio/bidmachine/rendering/ad/view/AdView;->c:Lio/bidmachine/rendering/view/WatermarkView;

    .line 36
    .line 37
    invoke-static {}, Lyq/t;->b()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lyq/t;->b()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lio/bidmachine/rendering/internal/h;->i:Lio/bidmachine/rendering/internal/h$e;

    .line 52
    .line 53
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/h$e;->a()Lio/bidmachine/rendering/internal/h;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v2, Lio/bidmachine/rendering/internal/state/c;

    .line 58
    .line 59
    invoke-virtual {v0}, Lsq/h;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v3, "tag.toString()"

    .line 64
    .line 65
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v0, v1}, Lio/bidmachine/rendering/internal/state/c;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/internal/h;)V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 72
    .line 73
    invoke-virtual {v2}, Lio/bidmachine/rendering/internal/state/c;->o()Lnq/a;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v2, Lfq/n;

    .line 78
    .line 79
    new-instance v3, Lio/bidmachine/rendering/ad/view/AdView$a;

    .line 80
    .line 81
    invoke-direct {v3, p0}, Lio/bidmachine/rendering/ad/view/AdView$a;-><init>(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 82
    .line 83
    .line 84
    new-instance v4, Lio/bidmachine/rendering/internal/animation/i;

    .line 85
    .line 86
    invoke-direct {v4, v0, v1}, Lio/bidmachine/rendering/internal/animation/i;-><init>(Lgt/g0;Lio/bidmachine/rendering/internal/h;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, p1, p2, v3, v4}, Lfq/n;-><init>(Landroid/content/Context;Lrq/b;Lfq/o;Leq/c;)V

    .line 90
    .line 91
    .line 92
    iput-object v2, p0, Lio/bidmachine/rendering/ad/view/AdView;->e:Lfq/a;

    .line 93
    .line 94
    new-instance v2, Lio/bidmachine/rendering/internal/view/d;

    .line 95
    .line 96
    invoke-direct {v2, p1}, Lio/bidmachine/rendering/internal/view/d;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    iput-object v2, p0, Lio/bidmachine/rendering/ad/view/AdView;->f:Lio/bidmachine/rendering/internal/view/d;

    .line 100
    .line 101
    invoke-static {}, Lyq/t;->b()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lio/bidmachine/rendering/internal/view/d;->d()V

    .line 109
    .line 110
    .line 111
    new-instance v2, Ltp/c;

    .line 112
    .line 113
    invoke-virtual {p2}, Lrq/b;->f()Lrq/q0;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    new-instance v4, Lio/bidmachine/rendering/ad/view/AdView$b;

    .line 118
    .line 119
    invoke-direct {v4, p0}, Lio/bidmachine/rendering/ad/view/AdView$b;-><init>(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {v2, p0, v3, v4}, Ltp/c;-><init>(Landroid/view/View;Lrq/q0;Ltp/b$a;)V

    .line 123
    .line 124
    .line 125
    iput-object v2, p0, Lio/bidmachine/rendering/ad/view/AdView;->g:Ltp/b;

    .line 126
    .line 127
    invoke-virtual {p2}, Lrq/b;->b()Lrq/f;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    if-eqz p2, :cond_0

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const-string v3, "context.applicationContext"

    .line 138
    .line 139
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v4, Lio/bidmachine/rendering/internal/repository/b;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-direct {v4, p1, v0, v1}, Lio/bidmachine/rendering/internal/repository/b;-><init>(Landroid/content/Context;Lgt/g0;Lio/bidmachine/rendering/internal/h;)V

    .line 152
    .line 153
    .line 154
    invoke-static {p2, v2, v4}, Ltp/a;->a(Lrq/f;Landroid/content/Context;Llq/a;)Ltp/c0;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    goto :goto_0

    .line 159
    :cond_0
    const/4 p1, 0x0

    .line 160
    :goto_0
    iput-object p1, p0, Lio/bidmachine/rendering/ad/view/AdView;->h:Ltp/c0;

    .line 161
    .line 162
    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lio/bidmachine/rendering/ad/view/AdView;->j:Z

    .line 164
    .line 165
    const/high16 p1, -0x1000000

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method private final A(Lrq/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lsp/c;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lsp/c;-><init>(Lio/bidmachine/rendering/ad/view/AdView;Lrq/n;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final B(Lrq/t;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/state/a;->a(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 12
    .line 13
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "notifyAdFailToLoad - %s"

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Ltp/s;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lsp/l;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lsp/l;-><init>(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic C(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic D(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/internal/view/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->x(Lio/bidmachine/rendering/internal/view/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic F(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->d0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->j0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->Z(Lrq/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->p0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J(Lio/bidmachine/rendering/ad/view/AdView;Lrq/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->A(Lrq/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic K(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->c0(Lrq/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic L(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic M(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->Y(Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic N(Lio/bidmachine/rendering/ad/view/AdView;Lfq/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->q(Lfq/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic O(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->f0(Lrq/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic P(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Q(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic R(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->u0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic S(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->x0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic T(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/internal/view/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->X(Lio/bidmachine/rendering/internal/view/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final U()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->f:Lio/bidmachine/rendering/internal/view/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/d;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final V(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->d(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final W(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$error"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p0, p1}, Lqp/a;->g(Ljava/lang/Object;Lrq/t;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private final X(Lio/bidmachine/rendering/internal/view/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "showPlaceholder (%s)"

    .line 8
    .line 9
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lsp/k;

    .line 13
    .line 14
    invoke-direct {v0, p1, p0}, Lsp/k;-><init>(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final Y(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onOpenPrivacySheet"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->z(Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final Z(Lrq/t;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 11
    .line 12
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "notifyAdFailToShow - %s"

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Ltp/s;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lsp/d;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lsp/d;-><init>(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->u(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/state/a;->b(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v2, "notifyAdAppeared"

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lsp/m;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lsp/m;-><init>(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->y(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b0(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->i(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/rendering/ad/view/AdView;->V(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c0(Lrq/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->B(Lrq/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lio/bidmachine/rendering/ad/view/AdView;Lrq/n;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->v(Lio/bidmachine/rendering/ad/view/AdView;Lrq/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->e()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v2, "notifyAdClicked"

    .line 12
    .line 13
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lsp/o;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lsp/o;-><init>(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic e(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/rendering/ad/view/AdView;->b0(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e0(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic f(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/rendering/ad/view/AdView;->i0(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f0(Lrq/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "onPreparingForShowFail - %s"

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Ltp/s;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lrq/t;

    .line 13
    .line 14
    const-string v0, "No phase loaded"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->Z(Lrq/t;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic g(Lfq/q;Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->r(Lfq/q;Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->W(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/state/a;->b(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 12
    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v2, "notifyAdDisappeared"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lsp/i;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lsp/i;-><init>(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic i(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/internal/view/f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->t(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/internal/view/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final i0(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic j(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/rendering/ad/view/AdView;->e0(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v2, "notifyAdExpired"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lsp/a;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lsp/a;-><init>(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic k(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/rendering/ad/view/AdView;->m0(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final k0(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->j(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic l(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/rendering/ad/view/AdView;->k0(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v2, "notifyAdFinished"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lsp/f;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lsp/f;-><init>(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic m(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->w(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final m0(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->onAdLoaded(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic n(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/rendering/ad/view/AdView;->s(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/state/a;->a(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v2, "notifyAdLoaded"

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lsp/b;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lsp/b;-><init>(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic o(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/rendering/ad/view/AdView;->o0(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final o0(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqp/a;->a(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final p()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->l0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v2, "notifyAdShown"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lsp/e;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lsp/e;-><init>(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private final q(Lfq/q;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onPreparingForShowComplete"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lsp/h;

    .line 12
    .line 13
    invoke-direct {v0, p1, p0}, Lsp/h;-><init>(Lfq/q;Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final q0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->n0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final r(Lfq/q;Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 1

    .line 1
    const-string v0, "$adPhaseController"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lio/bidmachine/rendering/ad/view/AdView;->b:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-interface {p0, v0}, Lfq/q;->c(Landroid/view/ViewGroup;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-direct {p1}, Lio/bidmachine/rendering/ad/view/AdView;->U()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Lio/bidmachine/rendering/ad/view/AdView;->w0()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private final r0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onPreparingForShowStarted"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final s(Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->b:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final s0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onViewOnScreen"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->e:Lfq/a;

    .line 12
    .line 13
    invoke-interface {v0}, Lfq/a;->d()Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->e:Lfq/a;

    .line 17
    .line 18
    invoke-interface {v0}, Lfq/a;->onShown()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->a0()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static final t(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/internal/view/f;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$placeholderView"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final u(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$privacySheetParams"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p0, p1}, Lqp/a;->e(Ljava/lang/Object;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private final u0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onViewOutOfScreen"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->v0()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final v(Lio/bidmachine/rendering/ad/view/AdView;Lrq/n;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$brokenCreativeEvent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p0, p1}, Lqp/a;->f(Ljava/lang/Object;Lrq/n;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private final v0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->g:Ltp/b;

    .line 2
    .line 3
    invoke-interface {v0}, Ltp/b;->stop()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->e:Lfq/a;

    .line 7
    .line 8
    invoke-interface {v0}, Lfq/a;->f()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->h0()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final w(Lio/bidmachine/rendering/ad/view/AdView;Lrq/t;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$error"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p0, p1}, Lqp/a;->h(Ljava/lang/Object;Lrq/t;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private final w0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Lyq/t;->f(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 13
    .line 14
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->l()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->g:Ltp/b;

    .line 18
    .line 19
    invoke-interface {v0}, Ltp/b;->start()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->g:Ltp/b;

    .line 23
    .line 24
    invoke-interface {v0}, Ltp/b;->b()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->s0()V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method private final x(Lio/bidmachine/rendering/internal/view/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "hidePlaceholder (%s)"

    .line 8
    .line 9
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lsp/j;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lsp/j;-><init>(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/internal/view/f;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final x0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->f:Lio/bidmachine/rendering/internal/view/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/d;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final y(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/ad/view/AdView;)V
    .locals 1

    .line 1
    const-string v0, "$placeholderView"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne v0, p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {p0}, Lsm/q;->J(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lyq/t;->b()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/f;->p()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final z(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 1

    .line 1
    new-instance v0, Lsp/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lsp/g;-><init>(Lio/bidmachine/rendering/ad/view/AdView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "destroy"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 13
    .line 14
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->e:Lfq/a;

    .line 15
    .line 16
    invoke-interface {v0}, Lfq/a;->a()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->g:Ltp/b;

    .line 20
    .line 21
    invoke-interface {v0}, Ltp/b;->a()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lsp/n;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lsp/n;-><init>(Lio/bidmachine/rendering/ad/view/AdView;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 33
    .line 34
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->a()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final getAdViewListener()Lsp/p;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequiredOrientation()Lio/bidmachine/rendering/model/Orientation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->e:Lfq/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lfq/a;->b()Lio/bidmachine/rendering/model/Orientation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const-string v2, "onAttachedToWindow"

    .line 10
    .line 11
    invoke-static {v0, v2, v1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->j:Z

    .line 16
    .line 17
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->w0()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    const-string v3, "onDetachedFromWindow"

    .line 10
    .line 11
    invoke-static {v0, v3, v2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-boolean v1, p0, Lio/bidmachine/rendering/ad/view/AdView;->j:Z

    .line 15
    .line 16
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->v0()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "changedView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 10
    .line 11
    invoke-static {p2}, Lsq/j;->o(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "onVisibilityChanged - %s"

    .line 20
    .line 21
    invoke-static {p1, v1, v0}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lsq/j;->j(I)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->w0()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/view/AdView;->v0()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final setAdViewListener(Lsp/p;)V
    .locals 0
    .param p1    # Lsp/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/ad/view/AdView;->i:Lsp/p;

    .line 2
    .line 3
    return-void
.end method

.method public final setWatermark(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->c:Lio/bidmachine/rendering/view/WatermarkView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/view/WatermarkView;->setWatermark(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final t0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->d:Lio/bidmachine/rendering/internal/state/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lio/bidmachine/rendering/ad/view/AdView;->h:Ltp/c0;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const/4 v5, 0x6

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v2, p0

    .line 19
    invoke-static/range {v1 .. v6}, Ltp/c0;->h(Ltp/c0;Landroid/view/View;Ljava/lang/Integer;Lrq/j;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->e:Lfq/a;

    .line 23
    .line 24
    invoke-interface {v0}, Lfq/a;->c()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/view/AdView;->a:Lsq/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsq/h;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "tag.toString()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
