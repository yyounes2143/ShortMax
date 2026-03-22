.class public final Lio/bidmachine/rendering/internal/view/privacy/a;
.super Landroid/widget/Button;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
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
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 11
    .line 12
    .line 13
    const/high16 v1, 0x42200000    # 40.0f

    .line 14
    .line 15
    invoke-static {p1, v1}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 23
    .line 24
    .line 25
    const v1, 0x800013

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 40
    .line 41
    .line 42
    const/high16 v0, 0x41c00000    # 24.0f

    .line 43
    .line 44
    invoke-static {p1, v0}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/high16 v1, 0x41200000    # 10.0f

    .line 49
    .line 50
    invoke-static {p1, v1}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/high16 v2, 0x41000000    # 8.0f

    .line 55
    .line 56
    invoke-static {p1, v2}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 64
    .line 65
    .line 66
    sget v0, Lpp/b;->a:I

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    .line 70
    .line 71
    sget v0, Lpp/a;->b:I

    .line 72
    .line 73
    invoke-static {p1, v0}, Lyq/s;->o(Landroid/content/Context;I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private final a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    move-object v0, p1

    .line 7
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "context"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/high16 v2, 0x41c00000    # 24.0f

    .line 23
    .line 24
    invoke-static {v1, v2}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ne v2, v1, :cond_1

    .line 37
    .line 38
    if-ne v3, v1, :cond_1

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    int-to-float p1, v1

    .line 42
    int-to-float v1, v2

    .line 43
    div-float v2, p1, v1

    .line 44
    .line 45
    int-to-float v3, v3

    .line 46
    div-float/2addr p1, v3

    .line 47
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    mul-float/2addr v1, p1

    .line 52
    float-to-int v1, v1

    .line 53
    mul-float/2addr v3, p1

    .line 54
    float-to-int p1, v3

    .line 55
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-static {v0, v1, p1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 71
    .line 72
    .line 73
    return-object v2
.end method


# virtual methods
.method public final setActionIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "context"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget v1, Lpp/a;->a:I

    .line 11
    .line 12
    invoke-static {v0, v1}, Lyq/s;->o(Landroid/content/Context;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/view/privacy/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p1, v1

    .line 32
    :goto_0
    invoke-virtual {p0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
