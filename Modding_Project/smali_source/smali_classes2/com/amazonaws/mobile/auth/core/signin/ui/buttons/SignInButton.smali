.class public Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;
.super Landroid/widget/LinearLayout;
.source "SignInButton.java"


# static fields
.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:F


# instance fields
.field protected a:Landroid/widget/ImageView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/graphics/Bitmap;

.field protected d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sput v1, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->e:I

    .line 8
    .line 9
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sput v1, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->f:I

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-static {v1}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sput v1, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->g:I

    .line 21
    .line 22
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sput v0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->h:I

    .line 27
    .line 28
    const/16 v0, 0x32

    .line 29
    .line 30
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-float v0, v0

    .line 35
    sput v0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->i:F

    .line 36
    .line 37
    return-void
.end method

.method private a(FLandroid/graphics/RectF;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-interface {p1, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-direct {v1, v2, v2, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    return p1
.end method

.method private b(FFLandroid/graphics/RectF;)F
    .locals 4

    .line 1
    move v0, p2

    .line 2
    move p2, p1

    .line 3
    :goto_0
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    if-gtz v1, :cond_1

    .line 6
    .line 7
    add-float v1, p1, v0

    .line 8
    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr v1, v2

    .line 12
    invoke-direct {p0, v1, p3}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a(FLandroid/graphics/RectF;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/high16 v3, 0x3f000000    # 0.5f

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    add-float p1, v1, v3

    .line 21
    .line 22
    move p2, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-float v0, v1, v3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return p2
.end method

.method private c()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->d:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x2

    .line 21
    const/high16 v2, 0x41000000    # 8.0f

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    new-instance v1, Landroid/graphics/RectF;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    sub-int/2addr v2, v3

    .line 45
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sub-int/2addr v2, v3

    .line 52
    int-to-float v2, v2

    .line 53
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 54
    .line 55
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    sub-int/2addr v2, v3

    .line 68
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    sub-int/2addr v2, v3

    .line 75
    int-to-float v2, v2

    .line 76
    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 77
    .line 78
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 79
    .line 80
    sget v3, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->i:F

    .line 81
    .line 82
    invoke-direct {p0, v0, v3, v1}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b(FFLandroid/graphics/RectF;)F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x11

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x10

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method private getBackgroundStatesDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    throw v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->a:Landroid/widget/ImageView;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    int-to-double v0, p2

    .line 15
    const-wide v2, 0x3fe70a3d70a3d70aL    # 0.72

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    mul-double/2addr v0, v2

    .line 21
    double-to-int p2, v0

    .line 22
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->c:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-le p2, v0, :cond_0

    .line 29
    .line 30
    iget-object p2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->c:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    :cond_0
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    .line 38
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 39
    .line 40
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-ne p1, p3, :cond_0

    .line 5
    .line 6
    if-eq p2, p4, :cond_1

    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->c()V

    .line 9
    .line 10
    .line 11
    :cond_1
    return-void
.end method

.method public setButtonText(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->c()V

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->c()V

    return-void
.end method

.method public setSmallStyle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->d:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/buttons/SignInButton;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
