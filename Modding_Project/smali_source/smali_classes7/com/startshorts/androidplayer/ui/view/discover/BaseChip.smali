.class public abstract Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "BaseChip.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private b:Z

.field private c:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
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

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final y(I)Landroid/graphics/drawable/ShapeDrawable;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->w()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    new-array v1, v1, [F

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput v0, v1, v2

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput v0, v1, v2

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    aput v0, v1, v2

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    aput v0, v1, v2

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    aput v0, v1, v2

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    aput v0, v1, v2

    .line 26
    .line 27
    const/4 v2, 0x6

    .line 28
    aput v0, v1, v2

    .line 29
    .line 30
    const/4 v2, 0x7

    .line 31
    aput v0, v1, v2

    .line 32
    .line 33
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    .line 50
    .line 51
    return-object v1
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract B()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final C()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->y(I)Landroid/graphics/drawable/ShapeDrawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->z()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->x()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    .line 50
    const/16 v3, 0x1d

    .line 51
    .line 52
    if-lt v2, v3, :cond_1

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-static {}, Landroidx/compose/ui/graphics/b1;->a()V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroidx/compose/ui/graphics/v;->a()Landroid/graphics/BlendMode;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/a1;->a(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    if-eqz v0, :cond_2

    .line 72
    .line 73
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 74
    .line 75
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 76
    .line 77
    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->c:Landroid/widget/ImageView;

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->d:Landroid/widget/TextView;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->B()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    return-void
.end method

.method public final setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->b:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->C()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget p2, Lcom/startshorts/androidplayer/R$id;->icon_iv:I

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/ImageView;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->c:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget p2, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 36
    .line 37
    .line 38
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    :goto_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->d:Landroid/widget/TextView;

    .line 46
    .line 47
    return-void
.end method

.method public v()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_discover_fragment_2_chip_bg_checked:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_discover_fragment_2_chip_bg_unchecked:I

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public w()F
    .locals 1

    .line 1
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/z;->m()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    return v0
.end method

.method public x()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_discover_fragment_2_chip_content_checked:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_discover_fragment_2_chip_content_unchecked:I

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public abstract z()I
.end method
