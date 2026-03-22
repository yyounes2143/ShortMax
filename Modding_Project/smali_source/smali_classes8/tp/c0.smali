.class public final Ltp/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltp/c0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Llq/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lrq/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Llq/a;Lrq/f;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrq/f;
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
    const-string v0, "background"

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
    iput-object p1, p0, Ltp/c0;->a:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Ltp/c0;->b:Llq/a;

    .line 22
    .line 23
    iput-object p3, p0, Ltp/c0;->c:Lrq/f;

    .line 24
    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Ltp/c0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic h(Ltp/c0;Landroid/view/View;Ljava/lang/Integer;Lrq/j;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ltp/c0;->a(Landroid/view/View;Ljava/lang/Integer;Lrq/j;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic i(Ltp/c0;Landroid/view/View;ZLandroid/graphics/Bitmap;Lio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lrq/j;ILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v6, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v6, p4

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v7, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v7, p5

    .line 16
    :goto_1
    and-int/lit8 v0, p7, 0x20

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    move-object v8, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object v8, p6

    .line 23
    :goto_2
    move-object v2, p0

    .line 24
    move-object v3, p1

    .line 25
    move v4, p2

    .line 26
    move-object v5, p3

    .line 27
    invoke-virtual/range {v2 .. v8}, Ltp/c0;->c(Landroid/view/View;ZLandroid/graphics/Bitmap;Lio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lrq/j;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/Integer;Lrq/j;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lrq/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    iget-object v0, p0, Ltp/c0;->c:Lrq/f;

    .line 7
    .line 8
    invoke-virtual {v0}, Lrq/f;->b()Lrq/i0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0}, Lrq/i0;->a()Lrq/j0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v1, v0, Lrq/e0;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    sget-object v1, Ltp/k;->a:Ltp/k;

    .line 23
    .line 24
    check-cast v0, Lrq/e0;

    .line 25
    .line 26
    invoke-virtual {v0}, Lrq/e0;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Ltp/k;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const/16 v9, 0x8

    .line 35
    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    move-object v2, p0

    .line 40
    move-object v3, p1

    .line 41
    move-object v7, p2

    .line 42
    move-object v8, p3

    .line 43
    invoke-static/range {v2 .. v10}, Ltp/c0;->i(Ltp/c0;Landroid/view/View;ZLandroid/graphics/Bitmap;Lio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lrq/j;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    instance-of v1, v0, Lrq/q;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    check-cast v0, Lrq/q;

    .line 52
    .line 53
    invoke-virtual {v0}, Lrq/q;->a()Lrq/o;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const/4 v3, 0x0

    .line 58
    move-object v1, p0

    .line 59
    move-object v2, p1

    .line 60
    move-object v5, p2

    .line 61
    move-object v6, p3

    .line 62
    invoke-virtual/range {v1 .. v6}, Ltp/c0;->e(Landroid/view/View;ZLrq/o;Ljava/lang/Integer;Lrq/j;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    instance-of v1, v0, Lrq/b0;

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    check-cast v0, Lrq/b0;

    .line 71
    .line 72
    invoke-virtual {v0}, Lrq/b0;->a()Lrq/z;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const/4 v3, 0x0

    .line 77
    move-object v1, p0

    .line 78
    move-object v2, p1

    .line 79
    move-object v5, p2

    .line 80
    move-object v6, p3

    .line 81
    invoke-virtual/range {v1 .. v6}, Ltp/c0;->g(Landroid/view/View;ZLrq/z;Ljava/lang/Integer;Lrq/j;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    :catchall_0
    :cond_3
    iget-object v0, p0, Ltp/c0;->c:Lrq/f;

    .line 87
    .line 88
    invoke-virtual {v0}, Lrq/f;->c()Lrq/g;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    :try_start_1
    instance-of v1, v0, Lrq/p;

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    check-cast v0, Lrq/p;

    .line 99
    .line 100
    invoke-virtual {v0}, Lrq/p;->a()Lrq/o;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const/4 v3, 0x1

    .line 105
    move-object v1, p0

    .line 106
    move-object v2, p1

    .line 107
    move-object v5, p2

    .line 108
    move-object v6, p3

    .line 109
    invoke-virtual/range {v1 .. v6}, Ltp/c0;->e(Landroid/view/View;ZLrq/o;Ljava/lang/Integer;Lrq/j;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    instance-of v1, v0, Lrq/a0;

    .line 114
    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    check-cast v0, Lrq/a0;

    .line 118
    .line 119
    invoke-virtual {v0}, Lrq/a0;->a()Lrq/z;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    const/4 v3, 0x1

    .line 124
    move-object v1, p0

    .line 125
    move-object v2, p1

    .line 126
    move-object v5, p2

    .line 127
    move-object v6, p3

    .line 128
    invoke-virtual/range {v1 .. v6}, Ltp/c0;->g(Landroid/view/View;ZLrq/z;Ljava/lang/Integer;Lrq/j;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    .line 133
    :catchall_1
    :cond_6
    return-void
.end method

.method public final b(Landroid/view/View;ZILjava/lang/Integer;Lrq/j;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrq/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/bidmachine/rendering/internal/j;

    .line 7
    .line 8
    invoke-direct {v0}, Lio/bidmachine/rendering/internal/j;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3}, Lio/bidmachine/rendering/internal/j;->j(I)V

    .line 12
    .line 13
    .line 14
    if-eqz p4, :cond_0

    .line 15
    .line 16
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    int-to-float p3, p3

    .line 21
    invoke-virtual {v0, p3}, Lio/bidmachine/rendering/internal/j;->e(F)V

    .line 22
    .line 23
    .line 24
    :cond_0
    if-eqz p5, :cond_1

    .line 25
    .line 26
    invoke-virtual {p5}, Lrq/j;->b()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p5}, Lrq/j;->a()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/16 v6, 0xc

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    move-object v1, v0

    .line 40
    invoke-static/range {v1 .. v7}, Lio/bidmachine/rendering/internal/j;->i(Lio/bidmachine/rendering/internal/j;IIFFILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p5}, Lrq/j;->b()I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    invoke-virtual {p5}, Lrq/j;->b()I

    .line 48
    .line 49
    .line 50
    move-result p4

    .line 51
    iget-object v1, p0, Ltp/c0;->a:Landroid/content/Context;

    .line 52
    .line 53
    const/high16 v2, 0x40000000    # 2.0f

    .line 54
    .line 55
    invoke-static {v1, v2}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    sub-int/2addr p4, v1

    .line 60
    invoke-virtual {p5}, Lrq/j;->b()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {p5}, Lrq/j;->b()I

    .line 65
    .line 66
    .line 67
    move-result p5

    .line 68
    iget-object v3, p0, Ltp/c0;->a:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {v3, v2}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    add-int/2addr p5, v2

    .line 75
    invoke-virtual {p1, p3, p4, v1, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Ltp/c0;->d(Landroid/view/View;ZLandroid/graphics/drawable/Drawable;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final c(Landroid/view/View;ZLandroid/graphics/Bitmap;Lio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lrq/j;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/rendering/model/ScaleType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lrq/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p4}, Lrq/m0;->a(Lio/bidmachine/rendering/model/ScaleType;)Landroid/widget/ImageView$ScaleType;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    new-instance v0, Ltp/x;

    .line 14
    .line 15
    invoke-direct {v0, p3}, Ltp/x;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p4}, Ltp/x;->e(Landroid/widget/ImageView$ScaleType;)Ltp/x;

    .line 19
    .line 20
    .line 21
    if-eqz p5, :cond_1

    .line 22
    .line 23
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-lez p3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    int-to-float p3, p3

    .line 34
    invoke-virtual {v0, p3}, Ltp/x;->i(F)Ltp/x;

    .line 35
    .line 36
    .line 37
    :cond_1
    if-eqz p6, :cond_2

    .line 38
    .line 39
    invoke-virtual {p6}, Lrq/j;->b()I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    int-to-float p3, p3

    .line 44
    invoke-virtual {v0, p3}, Ltp/x;->a(F)Ltp/x;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p6}, Lrq/j;->a()I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    invoke-virtual {v0, p3}, Ltp/x;->c(I)Ltp/x;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p6}, Lrq/j;->b()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    invoke-virtual {p6}, Lrq/j;->b()I

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    iget-object p5, p0, Ltp/c0;->a:Landroid/content/Context;

    .line 63
    .line 64
    const/high16 v1, 0x40000000    # 2.0f

    .line 65
    .line 66
    invoke-static {p5, v1}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 67
    .line 68
    .line 69
    move-result p5

    .line 70
    sub-int/2addr p4, p5

    .line 71
    invoke-virtual {p6}, Lrq/j;->b()I

    .line 72
    .line 73
    .line 74
    move-result p5

    .line 75
    invoke-virtual {p6}, Lrq/j;->b()I

    .line 76
    .line 77
    .line 78
    move-result p6

    .line 79
    iget-object v2, p0, Ltp/c0;->a:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v2, v1}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    add-int/2addr p6, v1

    .line 86
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Ltp/c0;->d(Landroid/view/View;ZLandroid/graphics/drawable/Drawable;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final d(Landroid/view/View;ZLandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "drawable"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ltp/c0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object p2, p0, Ltp/c0;->c:Lrq/f;

    .line 22
    .line 23
    invoke-virtual {p2}, Lrq/f;->a()F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const/high16 v0, 0x437f0000    # 255.0f

    .line 32
    .line 33
    invoke-static {p2, v0}, Lyq/s;->m(Ljava/lang/Number;F)F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    float-to-int p2, p2

    .line 38
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final e(Landroid/view/View;ZLrq/o;Ljava/lang/Integer;Lrq/j;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrq/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrq/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "color"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Lrq/o;->a()Lrq/r;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    instance-of v0, p3, Lrq/f0;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p3, Lrq/f0;

    .line 20
    .line 21
    invoke-virtual {p3}, Lrq/f0;->a()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    move-object v0, p0

    .line 26
    move-object v1, p1

    .line 27
    move v2, p2

    .line 28
    move-object v4, p4

    .line 29
    move-object v5, p5

    .line 30
    invoke-virtual/range {v0 .. v5}, Ltp/c0;->b(Landroid/view/View;ZILjava/lang/Integer;Lrq/j;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    instance-of v0, p3, Lrq/x;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    check-cast p3, Lrq/x;

    .line 39
    .line 40
    invoke-virtual {p3}, Lrq/x;->a()Lrq/w;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    move-object v0, p0

    .line 45
    move-object v1, p1

    .line 46
    move v2, p2

    .line 47
    move-object v4, p4

    .line 48
    move-object v5, p5

    .line 49
    invoke-virtual/range {v0 .. v5}, Ltp/c0;->f(Landroid/view/View;ZLrq/w;Ljava/lang/Integer;Lrq/j;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public final f(Landroid/view/View;ZLrq/w;Ljava/lang/Integer;Lrq/j;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrq/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrq/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gradient"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Lrq/w;->c()Lio/bidmachine/rendering/model/GradientType;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lio/bidmachine/rendering/model/GradientType;->toDrawableGradientType()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p3}, Lrq/w;->b()Lio/bidmachine/rendering/model/GradientDirection;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lio/bidmachine/rendering/model/GradientDirection;->toDrawableGradientOrientation()Lio/bidmachine/rendering/internal/j$c;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v9, Lio/bidmachine/rendering/internal/j;

    .line 28
    .line 29
    invoke-virtual {p3}, Lrq/w;->a()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->c1(Ljava/util/Collection;)[I

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v9, v1, v2}, Lio/bidmachine/rendering/internal/j;-><init>(Lio/bidmachine/rendering/internal/j$c;[I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v9, v0}, Lio/bidmachine/rendering/internal/j;->m(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Lrq/w;->c()Lio/bidmachine/rendering/model/GradientType;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    sget-object v0, Lio/bidmachine/rendering/model/GradientType;->Radial:Lio/bidmachine/rendering/model/GradientType;

    .line 48
    .line 49
    if-ne p3, v0, :cond_0

    .line 50
    .line 51
    const/4 p3, 0x1

    .line 52
    const/4 v0, 0x0

    .line 53
    const/4 v1, 0x0

    .line 54
    const/4 v2, 0x2

    .line 55
    invoke-static {v9, v1, v2, p3, v0}, Lio/bidmachine/rendering/internal/j;->h(Lio/bidmachine/rendering/internal/j;FIILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    if-eqz p4, :cond_1

    .line 59
    .line 60
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    int-to-float p3, p3

    .line 65
    invoke-virtual {v9, p3}, Lio/bidmachine/rendering/internal/j;->e(F)V

    .line 66
    .line 67
    .line 68
    :cond_1
    if-eqz p5, :cond_2

    .line 69
    .line 70
    invoke-virtual {p5}, Lrq/j;->b()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {p5}, Lrq/j;->a()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    const/16 v7, 0xc

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v5, 0x0

    .line 82
    const/4 v6, 0x0

    .line 83
    move-object v2, v9

    .line 84
    invoke-static/range {v2 .. v8}, Lio/bidmachine/rendering/internal/j;->i(Lio/bidmachine/rendering/internal/j;IIFFILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p5}, Lrq/j;->b()I

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    invoke-virtual {p5}, Lrq/j;->b()I

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    iget-object v0, p0, Ltp/c0;->a:Landroid/content/Context;

    .line 96
    .line 97
    const/high16 v1, 0x40000000    # 2.0f

    .line 98
    .line 99
    invoke-static {v0, v1}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    sub-int/2addr p4, v0

    .line 104
    invoke-virtual {p5}, Lrq/j;->b()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p5}, Lrq/j;->b()I

    .line 109
    .line 110
    .line 111
    move-result p5

    .line 112
    iget-object v2, p0, Ltp/c0;->a:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v2, v1}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    add-int/2addr p5, v1

    .line 119
    invoke-virtual {p1, p3, p4, v0, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 120
    .line 121
    .line 122
    :cond_2
    invoke-virtual {p0, p1, p2, v9}, Ltp/c0;->d(Landroid/view/View;ZLandroid/graphics/drawable/Drawable;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final g(Landroid/view/View;ZLrq/z;Ljava/lang/Integer;Lrq/j;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrq/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrq/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "image"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Lrq/z;->a()Lrq/k0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrq/k0;->a()Lrq/l0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Lrq/i;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Lrq/i;

    .line 24
    .line 25
    invoke-virtual {v0}, Lrq/i;->a()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Ltp/k;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {p3}, Lrq/z;->b()Lio/bidmachine/rendering/model/ScaleType;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    move-object v1, p0

    .line 38
    move-object v2, p1

    .line 39
    move v3, p2

    .line 40
    move-object v6, p4

    .line 41
    move-object v7, p5

    .line 42
    invoke-virtual/range {v1 .. v7}, Ltp/c0;->c(Landroid/view/View;ZLandroid/graphics/Bitmap;Lio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lrq/j;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    instance-of v1, v0, Lrq/p0;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    sget-object v1, Lio/bidmachine/rendering/model/MediaSource;->b:Lio/bidmachine/rendering/model/MediaSource$a;

    .line 51
    .line 52
    check-cast v0, Lrq/p0;

    .line 53
    .line 54
    invoke-virtual {v0}, Lrq/p0;->a()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Lio/bidmachine/rendering/model/MediaSource$a;->d(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v1, p0, Ltp/c0;->b:Llq/a;

    .line 65
    .line 66
    new-instance v9, Ltp/c0$a;

    .line 67
    .line 68
    invoke-virtual {p3}, Lrq/z;->b()Lio/bidmachine/rendering/model/ScaleType;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    move-object v2, v9

    .line 73
    move-object v3, p0

    .line 74
    move-object v4, p1

    .line 75
    move v5, p2

    .line 76
    move-object v7, p4

    .line 77
    move-object v8, p5

    .line 78
    invoke-direct/range {v2 .. v8}, Ltp/c0$a;-><init>(Ltp/c0;Landroid/view/View;ZLio/bidmachine/rendering/model/ScaleType;Ljava/lang/Integer;Lrq/j;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v0, v9}, Llq/a;->b(Lio/bidmachine/rendering/model/MediaSource;Llq/a$a;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    instance-of p1, v0, Lrq/y;

    .line 86
    .line 87
    if-nez p1, :cond_2

    .line 88
    .line 89
    instance-of p1, v0, Lrq/r0;

    .line 90
    .line 91
    :cond_2
    :goto_0
    return-void
.end method
