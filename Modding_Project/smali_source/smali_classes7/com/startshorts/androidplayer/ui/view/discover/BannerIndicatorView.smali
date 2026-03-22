.class public final Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;
.super Landroid/view/View;
.source "BannerIndicatorView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private final d:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:F


# direct methods
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
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 5
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/startshorts/androidplayer/R$color;->color_discover_fragment_2_banner_indicate_unselected:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->d:Landroid/graphics/Paint;

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 9
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, -0x1

    .line 10
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->e:Landroid/graphics/Paint;

    const/high16 p1, 0x40400000    # 3.0f

    .line 12
    invoke-static {p1}, Ljk/g;->a(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->f:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
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
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->c:F

    .line 15
    .line 16
    sub-float/2addr v0, v1

    .line 17
    const/4 v1, 0x2

    .line 18
    int-to-float v1, v1

    .line 19
    div-float/2addr v0, v1

    .line 20
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->b:I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v2, :cond_2

    .line 25
    .line 26
    int-to-float v5, v4

    .line 27
    iget v6, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->f:F

    .line 28
    .line 29
    mul-float/2addr v5, v6

    .line 30
    mul-float/2addr v5, v1

    .line 31
    add-float/2addr v5, v0

    .line 32
    add-float v8, v5, v3

    .line 33
    .line 34
    iget v5, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->a:I

    .line 35
    .line 36
    if-ne v4, v5, :cond_0

    .line 37
    .line 38
    sget-object v3, Lfk/z;->a:Lfk/z;

    .line 39
    .line 40
    invoke-virtual {v3}, Lfk/z;->m()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    int-to-float v3, v3

    .line 45
    iget v5, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->f:F

    .line 46
    .line 47
    mul-float/2addr v5, v1

    .line 48
    add-float/2addr v5, v8

    .line 49
    move v10, v5

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    add-float/2addr v6, v8

    .line 52
    move v10, v6

    .line 53
    :goto_1
    iget v11, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->f:F

    .line 54
    .line 55
    iget v5, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->a:I

    .line 56
    .line 57
    if-ne v4, v5, :cond_1

    .line 58
    .line 59
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->e:Landroid/graphics/Paint;

    .line 60
    .line 61
    :goto_2
    move-object v12, v5

    .line 62
    goto :goto_3

    .line 63
    :cond_1
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->d:Landroid/graphics/Paint;

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_3
    const/4 v9, 0x0

    .line 67
    move-object v7, p1

    .line 68
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->a:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMax(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->a:I

    .line 5
    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    int-to-float p1, p1

    .line 9
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->f:F

    .line 10
    .line 11
    mul-float/2addr p1, v0

    .line 12
    const/4 v0, 0x2

    .line 13
    int-to-float v0, v0

    .line 14
    mul-float/2addr p1, v0

    .line 15
    const/high16 v0, 0x40e00000    # 7.0f

    .line 16
    .line 17
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-float v0, v0

    .line 22
    add-float/2addr p1, v0

    .line 23
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->c:F

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->f:F

    .line 30
    .line 31
    float-to-int v0, v0

    .line 32
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    .line 34
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->c:F

    .line 35
    .line 36
    float-to-int v0, v0

    .line 37
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 43
    .line 44
    .line 45
    return-void
.end method
