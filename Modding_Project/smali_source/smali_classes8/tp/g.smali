.class public final Ltp/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lrq/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ltp/c0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Llq/a;Lrq/c;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrq/c;
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
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adPhaseParams"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p3, p0, Ltp/g;->a:Lrq/c;

    .line 20
    .line 21
    invoke-virtual {p3}, Lrq/c;->c()Lrq/f;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "context.applicationContext"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p3, p1, p2}, Ltp/a;->a(Lrq/f;Landroid/content/Context;Llq/a;)Ltp/c0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    iput-object p1, p0, Ltp/g;->b:Ltp/c0;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Ltp/g;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lio/bidmachine/util/ViewUtilsKt;->k(Landroid/view/View;)Lkotlin/Unit;

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Ltp/g;->c:Landroid/view/ViewGroup;

    .line 13
    .line 14
    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/rendering/internal/view/e;Ljava/util/List;Ltp/f;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/rendering/internal/view/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ltp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Lio/bidmachine/rendering/internal/view/e;",
            "Ljava/util/List<",
            "+",
            "Ltp/f;",
            ">;",
            "Ltp/f;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "rootContainer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "elementsContainer"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "adElements"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "adElement"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p5}, Ltp/f;->j()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-interface {p5}, Ltp/f;->h()Lrq/a;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lrq/a;->g()Lrq/s;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, p1}, Lrq/s;->n(Landroid/content/Context;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, p1}, Lrq/s;->c(Landroid/content/Context;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    new-instance v4, Lio/bidmachine/rendering/internal/view/e$a;

    .line 50
    .line 51
    const/4 v5, -0x1

    .line 52
    if-lez v2, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v2, v5

    .line 56
    :goto_0
    if-lez v3, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v3, v5

    .line 60
    :goto_1
    invoke-direct {v4, v2, v3}, Lio/bidmachine/rendering/internal/view/e$a;-><init>(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, p1, v1, p4}, Lio/bidmachine/rendering/internal/view/e$a;->d(Landroid/content/Context;Lrq/s;Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    :try_start_0
    invoke-interface {p5, p2}, Ltp/f;->c(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    invoke-static {p1}, Ltp/s;->h(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    return-void
.end method

.method public final c(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;)Z
    .locals 10
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "+",
            "Ltp/f;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ltp/f;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "rootContainer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ads"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "controls"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Ltp/g;->a()V

    .line 21
    .line 22
    .line 23
    new-instance v7, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lsq/j;->f()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v7, v1}, Landroid/view/View;->setId(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Ltp/g;->b:Ltp/c0;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const/4 v5, 0x6

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    move-object v2, v7

    .line 44
    invoke-static/range {v1 .. v6}, Ltp/c0;->h(Ltp/c0;Landroid/view/View;Ljava/lang/Integer;Lrq/j;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Ltp/g;->a:Lrq/c;

    .line 49
    .line 50
    invoke-virtual {v1}, Lrq/c;->d()Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v7, v1}, Lio/bidmachine/util/ViewUtilsKt;->l(Landroid/view/View;Ljava/lang/Integer;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iput-object v7, p0, Ltp/g;->c:Landroid/view/ViewGroup;

    .line 58
    .line 59
    new-instance v7, Lio/bidmachine/rendering/internal/view/e;

    .line 60
    .line 61
    invoke-direct {v7, v0}, Lio/bidmachine/rendering/internal/view/e;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const-string v9, "context"

    .line 73
    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    move-object v6, v1

    .line 81
    check-cast v6, Ltp/f;

    .line 82
    .line 83
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    move-object v1, p0

    .line 87
    move-object v2, v0

    .line 88
    move-object v3, p1

    .line 89
    move-object v4, v7

    .line 90
    move-object v5, p2

    .line 91
    invoke-virtual/range {v1 .. v6}, Ltp/g;->b(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/rendering/internal/view/e;Ljava/util/List;Ltp/f;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    iget-object p2, p0, Ltp/g;->c:Landroid/view/ViewGroup;

    .line 96
    .line 97
    if-eqz p2, :cond_2

    .line 98
    .line 99
    invoke-static {}, Lyq/t;->b()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p2, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    new-instance p2, Lio/bidmachine/rendering/internal/view/e;

    .line 107
    .line 108
    invoke-direct {p2, v0}, Lio/bidmachine/rendering/internal/view/e;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    move-object v6, v1

    .line 126
    check-cast v6, Ltp/f;

    .line 127
    .line 128
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move-object v1, p0

    .line 132
    move-object v2, v0

    .line 133
    move-object v3, p1

    .line 134
    move-object v4, p2

    .line 135
    move-object v5, p3

    .line 136
    invoke-virtual/range {v1 .. v6}, Ltp/g;->b(Landroid/content/Context;Landroid/view/ViewGroup;Lio/bidmachine/rendering/internal/view/e;Ljava/util/List;Ltp/f;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    iget-object p3, p0, Ltp/g;->c:Landroid/view/ViewGroup;

    .line 141
    .line 142
    if-eqz p3, :cond_4

    .line 143
    .line 144
    invoke-static {}, Lyq/t;->b()Landroid/view/ViewGroup$LayoutParams;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p3, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    iget-object p2, p0, Ltp/g;->c:Landroid/view/ViewGroup;

    .line 152
    .line 153
    invoke-static {}, Lyq/t;->b()Landroid/view/ViewGroup$LayoutParams;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    const/4 v0, 0x0

    .line 158
    invoke-virtual {p1, p2, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    .line 161
    const/4 p1, 0x1

    .line 162
    return p1
.end method

.method public final d()Lrq/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ltp/g;->a:Lrq/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ltp/g;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method
