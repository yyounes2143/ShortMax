.class public final Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;
.super Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;
.source "MaterialHeader.kt"

# interfaces
.implements Lsc/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private d:Z

.field private e:I

.field private f:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Lsc/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lrc/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private m:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private n:Lcom/scwang/smart/refresh/layout/constant/RefreshState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object p2, Ltc/b;->h:Ltc/b;

    iput-object p2, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->b:Ltc/b;

    const/high16 p2, 0x42c80000    # 100.0f

    .line 4
    invoke-static {p2}, Lxc/b;->c(F)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 5
    new-instance p2, Lrc/a;

    invoke-direct {p2, p0}, Lrc/a;-><init>(Landroid/view/View;)V

    .line 6
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v0, Lcom/startshorts/androidplayer/R$color;->colorPrimary:I

    .line 7
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    .line 8
    invoke-virtual {p2, v0}, Lrc/a;->e([I)V

    .line 9
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->h:Lrc/a;

    .line 10
    new-instance p2, Lcom/scwang/smart/refresh/header/material/CircleImageView;

    const v0, -0x50506

    invoke-direct {p2, p1, v0}, Lcom/scwang/smart/refresh/header/material/CircleImageView;-><init>(Landroid/content/Context;I)V

    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->h:Lrc/a;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 13
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x42200000    # 40.0f

    .line 16
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->e:I

    .line 17
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->l:Landroid/graphics/Path;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->m:Landroid/graphics/Paint;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Lsc/f;II)V
    .locals 0
    .param p1    # Lsc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "refreshLayout"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->h:Lrc/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lrc/a;->start()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c(Lsc/f;Z)I
    .locals 0
    .param p1    # Lsc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "layout"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->h:Lrc/a;

    .line 9
    .line 10
    invoke-virtual {p2}, Lrc/a;->stop()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->d:Z

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public d(Lsc/f;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 1
    .param p1    # Lsc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/scwang/smart/refresh/layout/constant/RefreshState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/scwang/smart/refresh/layout/constant/RefreshState;
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
    const-string p1, "oldState"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "newState"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->n:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 19
    .line 20
    sget-object p2, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader$a;->$EnumSwitchMapping$0:[I

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    aget p2, p2, p3

    .line 27
    .line 28
    const/4 p3, 0x1

    .line 29
    if-eq p2, p3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p2, 0x0

    .line 33
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->d:Z

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 40
    .line 41
    .line 42
    const/high16 p2, 0x3f800000    # 1.0f

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->o:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->l:Landroid/graphics/Path;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->l:Landroid/graphics/Path;

    .line 16
    .line 17
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->j:I

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->l:Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    const/high16 v3, 0x40000000    # 2.0f

    .line 32
    .line 33
    div-float/2addr v1, v3

    .line 34
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->j:I

    .line 35
    .line 36
    int-to-float v3, v3

    .line 37
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->i:I

    .line 38
    .line 39
    int-to-float v4, v4

    .line 40
    const v5, 0x3ff33333    # 1.9f

    .line 41
    .line 42
    .line 43
    mul-float/2addr v4, v5

    .line 44
    add-float/2addr v3, v4

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    int-to-float v4, v4

    .line 50
    iget v5, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->j:I

    .line 51
    .line 52
    int-to-float v5, v5

    .line 53
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->l:Landroid/graphics/Path;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    int-to-float v1, v1

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->l:Landroid/graphics/Path;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->m:Landroid/graphics/Paint;

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final getMState()Lcom/scwang/smart/refresh/layout/constant/RefreshState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->n:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Lsc/e;II)V
    .locals 0
    .param p1    # Lsc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p3, "kernel"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p3, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->o:Z

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-interface {p1, p0, p3}, Lsc/e;->b(Lsc/a;Z)Lsc/e;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    div-int/lit8 p3, p2, 0x2

    .line 21
    .line 22
    iput p3, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->j:I

    .line 23
    .line 24
    iput p3, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->i:I

    .line 25
    .line 26
    :cond_1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->g:Lsc/e;

    .line 27
    .line 28
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->k:I

    .line 29
    .line 30
    return-void
.end method

.method public i(ZFIII)V
    .locals 9

    .line 1
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->n:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 2
    .line 3
    sget-object p5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 4
    .line 5
    if-eq p2, p5, :cond_3

    .line 6
    .line 7
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->o:Z

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    int-to-double v2, p3

    .line 14
    int-to-double v4, p4

    .line 15
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    double-to-int p2, v2

    .line 20
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->j:I

    .line 21
    .line 22
    sub-int p2, p3, p4

    .line 23
    .line 24
    int-to-double v2, p2

    .line 25
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    double-to-int p2, v2

    .line 30
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->i:I

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 33
    .line 34
    .line 35
    :cond_0
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->h:Lrc/a;

    .line 38
    .line 39
    invoke-virtual {p1}, Lrc/a;->isRunning()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->d:Z

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->n:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 50
    .line 51
    const/high16 p2, 0x40800000    # 4.0f

    .line 52
    .line 53
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 54
    .line 55
    const/high16 v4, 0x40000000    # 2.0f

    .line 56
    .line 57
    if-eq p1, p5, :cond_2

    .line 58
    .line 59
    int-to-float p1, p3

    .line 60
    int-to-float p5, p4

    .line 61
    div-float/2addr p1, p5

    .line 62
    float-to-double v5, p1

    .line 63
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    double-to-float p1, v5

    .line 72
    float-to-double v5, p1

    .line 73
    const-wide v7, 0x3fd999999999999aL    # 0.4

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    sub-double/2addr v5, v7

    .line 79
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(DD)D

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    double-to-float p1, v5

    .line 84
    const/high16 v5, 0x40a00000    # 5.0f

    .line 85
    .line 86
    mul-float/2addr p1, v5

    .line 87
    const/high16 v5, 0x40400000    # 3.0f

    .line 88
    .line 89
    div-float/2addr p1, v5

    .line 90
    int-to-double v5, p3

    .line 91
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 92
    .line 93
    .line 94
    move-result-wide v5

    .line 95
    int-to-double v7, p4

    .line 96
    sub-double/2addr v5, v7

    .line 97
    double-to-float p4, v5

    .line 98
    float-to-double v5, p4

    .line 99
    mul-float p4, p5, v4

    .line 100
    .line 101
    float-to-double v7, p4

    .line 102
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    float-to-double p4, p5

    .line 107
    div-double/2addr v5, p4

    .line 108
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 109
    .line 110
    .line 111
    move-result-wide p4

    .line 112
    double-to-float p4, p4

    .line 113
    div-float/2addr p4, p2

    .line 114
    float-to-double p4, p4

    .line 115
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 116
    .line 117
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    sub-double/2addr p4, v0

    .line 122
    double-to-float p4, p4

    .line 123
    mul-float/2addr p4, v4

    .line 124
    const p5, 0x3f4ccccd    # 0.8f

    .line 125
    .line 126
    .line 127
    mul-float/2addr p5, p1

    .line 128
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->h:Lrc/a;

    .line 129
    .line 130
    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Lrc/a;->k(Z)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->h:Lrc/a;

    .line 135
    .line 136
    const-wide v5, 0x3fe999999999999aL    # 0.8

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    float-to-double v7, p5

    .line 142
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    .line 143
    .line 144
    .line 145
    move-result-wide v5

    .line 146
    double-to-float p5, v5

    .line 147
    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, v1, p5}, Lrc/a;->i(FF)V

    .line 149
    .line 150
    .line 151
    iget-object p5, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->h:Lrc/a;

    .line 152
    .line 153
    float-to-double v0, p1

    .line 154
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    double-to-float v0, v0

    .line 159
    invoke-virtual {p5, v0}, Lrc/a;->d(F)V

    .line 160
    .line 161
    .line 162
    const p5, 0x3ecccccd    # 0.4f

    .line 163
    .line 164
    .line 165
    mul-float/2addr p1, p5

    .line 166
    const/high16 p5, -0x41800000    # -0.25f

    .line 167
    .line 168
    add-float/2addr p1, p5

    .line 169
    mul-float/2addr p4, v4

    .line 170
    add-float/2addr p1, p4

    .line 171
    const/high16 p4, 0x3f000000    # 0.5f

    .line 172
    .line 173
    mul-float/2addr p1, p4

    .line 174
    iget-object p4, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->h:Lrc/a;

    .line 175
    .line 176
    invoke-virtual {p4, p1}, Lrc/a;->f(F)V

    .line 177
    .line 178
    .line 179
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 180
    .line 181
    int-to-float p3, p3

    .line 182
    div-float p4, p3, v4

    .line 183
    .line 184
    iget p5, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->e:I

    .line 185
    .line 186
    int-to-float p5, p5

    .line 187
    div-float/2addr p5, v4

    .line 188
    add-float/2addr p4, p5

    .line 189
    float-to-double v0, p3

    .line 190
    float-to-double p4, p4

    .line 191
    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    .line 192
    .line 193
    .line 194
    move-result-wide p4

    .line 195
    double-to-float p4, p4

    .line 196
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationY(F)V

    .line 197
    .line 198
    .line 199
    mul-float/2addr p3, p2

    .line 200
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->e:I

    .line 201
    .line 202
    int-to-float p2, p2

    .line 203
    div-float/2addr p3, p2

    .line 204
    float-to-double p2, p3

    .line 205
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(DD)D

    .line 206
    .line 207
    .line 208
    move-result-wide p2

    .line 209
    double-to-float p2, p2

    .line 210
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 211
    .line 212
    .line 213
    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 22
    .line 23
    .line 24
    move-result p5

    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p5, :cond_0

    .line 27
    .line 28
    iget p5, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->j:I

    .line 29
    .line 30
    if-lez p5, :cond_0

    .line 31
    .line 32
    div-int/lit8 v1, p4, 0x2

    .line 33
    .line 34
    sub-int/2addr p5, v1

    .line 35
    div-int/lit8 p2, p2, 0x2

    .line 36
    .line 37
    div-int/lit8 p3, p3, 0x2

    .line 38
    .line 39
    sub-int v1, p2, p3

    .line 40
    .line 41
    add-int/2addr p2, p3

    .line 42
    add-int/2addr p4, p5

    .line 43
    invoke-virtual {p1, v1, p5, p2, p4}, Landroid/view/View;->layout(IIII)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->h:Lrc/a;

    .line 47
    .line 48
    const/4 p3, 0x1

    .line 49
    invoke-virtual {p2, p3}, Lrc/a;->k(Z)V

    .line 50
    .line 51
    .line 52
    const/4 p3, 0x0

    .line 53
    const p4, 0x3f4ccccd    # 0.8f

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3, p4}, Lrc/a;->i(FF)V

    .line 57
    .line 58
    .line 59
    const/high16 p3, 0x3f800000    # 1.0f

    .line 60
    .line 61
    invoke-virtual {p2, p3}, Lrc/a;->d(F)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    div-int/lit8 p2, p2, 0x2

    .line 72
    .line 73
    div-int/lit8 p3, p3, 0x2

    .line 74
    .line 75
    sub-int p5, p2, p3

    .line 76
    .line 77
    neg-int p4, p4

    .line 78
    add-int/2addr p2, p3

    .line 79
    invoke-virtual {p1, p5, p4, p2, v0}, Landroid/view/View;->layout(IIII)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-super {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 13
    .line 14
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->e:I

    .line 15
    .line 16
    const/high16 v0, 0x40000000    # 2.0f

    .line 17
    .line 18
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->e:I

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    const-string v0, "colors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/refresh/MaterialHeader;->m:Landroid/graphics/Paint;

    .line 16
    .line 17
    aget p1, p1, v1

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
