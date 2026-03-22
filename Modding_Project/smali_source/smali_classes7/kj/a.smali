.class public final Lkj/a;
.super Ljava/lang/Object;
.source "RelativeGuide.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkj/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private final b(ILandroid/view/ViewGroup;Landroid/view/View;)Lkj/a$a;
    .locals 3

    .line 1
    new-instance p3, Lkj/a$a;

    .line 2
    .line 3
    invoke-direct {p3}, Lkj/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkj/a;->a:Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p2}, Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;->a(Landroid/view/View;)Landroid/graphics/RectF;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x3

    .line 16
    const/4 v2, 0x5

    .line 17
    if-eq p1, v1, :cond_3

    .line 18
    .line 19
    if-eq p1, v2, :cond_2

    .line 20
    .line 21
    const/16 v1, 0x30

    .line 22
    .line 23
    const/16 v2, 0x50

    .line 24
    .line 25
    if-eq p1, v1, :cond_1

    .line 26
    .line 27
    if-eq p1, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 34
    .line 35
    iget p2, p0, Lkj/a;->c:I

    .line 36
    .line 37
    int-to-float p2, p2

    .line 38
    add-float/2addr p1, p2

    .line 39
    float-to-int p1, p1

    .line 40
    invoke-virtual {p3, p1}, Lkj/a$a;->j(I)V

    .line 41
    .line 42
    .line 43
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 44
    .line 45
    float-to-int p1, p1

    .line 46
    invoke-virtual {p3, p1}, Lkj/a$a;->h(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p3, v2}, Lkj/a$a;->g(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    int-to-float p1, p1

    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget p2, v0, Landroid/graphics/RectF;->top:F

    .line 62
    .line 63
    sub-float/2addr p1, p2

    .line 64
    iget p2, p0, Lkj/a;->c:I

    .line 65
    .line 66
    int-to-float p2, p2

    .line 67
    add-float/2addr p1, p2

    .line 68
    float-to-int p1, p1

    .line 69
    invoke-virtual {p3, p1}, Lkj/a$a;->f(I)V

    .line 70
    .line 71
    .line 72
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 73
    .line 74
    float-to-int p1, p1

    .line 75
    invoke-virtual {p3, p1}, Lkj/a$a;->h(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget p1, v0, Landroid/graphics/RectF;->right:F

    .line 83
    .line 84
    iget p2, p0, Lkj/a;->c:I

    .line 85
    .line 86
    int-to-float p2, p2

    .line 87
    add-float/2addr p1, p2

    .line 88
    float-to-int p1, p1

    .line 89
    invoke-virtual {p3, p1}, Lkj/a$a;->h(I)V

    .line 90
    .line 91
    .line 92
    iget p1, v0, Landroid/graphics/RectF;->top:F

    .line 93
    .line 94
    float-to-int p1, p1

    .line 95
    invoke-virtual {p3, p1}, Lkj/a$a;->j(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p3, v2}, Lkj/a$a;->g(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    int-to-float p1, p1

    .line 107
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget p2, v0, Landroid/graphics/RectF;->left:F

    .line 111
    .line 112
    sub-float/2addr p1, p2

    .line 113
    iget p2, p0, Lkj/a;->c:I

    .line 114
    .line 115
    int-to-float p2, p2

    .line 116
    add-float/2addr p1, p2

    .line 117
    float-to-int p1, p1

    .line 118
    invoke-virtual {p3, p1}, Lkj/a$a;->i(I)V

    .line 119
    .line 120
    .line 121
    iget p1, v0, Landroid/graphics/RectF;->top:F

    .line 122
    .line 123
    float-to-int p1, p1

    .line 124
    invoke-virtual {p3, p1}, Lkj/a$a;->j(I)V

    .line 125
    .line 126
    .line 127
    :goto_0
    return-object p3
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lcom/startshorts/androidplayer/ui/view/guide/core/a;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/ui/view/guide/core/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "viewGroup"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, p0, Lkj/a;->b:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lkj/a;->d(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, p2}, Lkj/a;->e(Landroid/view/View;Lcom/startshorts/androidplayer/ui/view/guide/core/a;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    .line 32
    .line 33
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    .line 38
    iget v1, p0, Lkj/a;->d:I

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v1, p1, v0}, Lkj/a;->b(ILandroid/view/ViewGroup;Landroid/view/View;)Lkj/a$a;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v1, p1, v0}, Lkj/a;->c(Lkj/a$a;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lkj/a$a;->b()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    .line 56
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 57
    .line 58
    invoke-virtual {v1}, Lkj/a$a;->c()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    add-int/2addr p1, v2

    .line 63
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 64
    .line 65
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 66
    .line 67
    invoke-virtual {v1}, Lkj/a$a;->e()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    add-int/2addr p1, v2

    .line 72
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 73
    .line 74
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 75
    .line 76
    invoke-virtual {v1}, Lkj/a$a;->d()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    add-int/2addr p1, v2

    .line 81
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 82
    .line 83
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 84
    .line 85
    invoke-virtual {v1}, Lkj/a$a;->a()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    add-int/2addr p1, v1

    .line 90
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 91
    .line 92
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    return-object v0
.end method

.method protected final c(Lkj/a$a;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1    # Lkj/a$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method protected final d(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    return-void
.end method

.method protected final e(Landroid/view/View;Lcom/startshorts/androidplayer/ui/view/guide/core/a;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/ui/view/guide/core/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final f(Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lkj/a;->a:Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;

    .line 2
    .line 3
    return-void
.end method
