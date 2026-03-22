.class public Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;
.super Landroid/widget/FrameLayout;
.source "SinaRefreshView.java"

# interfaces
.implements Lcc/b;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string p1, "\u4e0b\u62c9\u5237\u65b0"

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->d:Ljava/lang/String;

    .line 5
    const-string p1, "\u91ca\u653e\u5237\u65b0"

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->e:Ljava/lang/String;

    .line 6
    const-string p1, "\u6b63\u5728\u5237\u65b0"

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->f:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcc/i;->b:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lcc/h;->c:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/widget/ImageView;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    .line 21
    .line 22
    sget v1, Lcc/h;->h:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    .line 31
    .line 32
    sget v1, Lcc/h;->d:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/widget/ImageView;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->b:Landroid/widget/ImageView;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->f:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    .line 9
    .line 10
    const/16 p2, 0x8

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->b:Landroid/widget/ImageView;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->b:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public b(FFF)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    .line 15
    .line 16
    mul-float/2addr p1, p3

    .line 17
    div-float/2addr p1, p2

    .line 18
    const/high16 p2, 0x43340000    # 180.0f

    .line 19
    .line 20
    mul-float/2addr p1, p2

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/16 p2, 0x8

    .line 31
    .line 32
    if-ne p1, p2, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->b:Landroid/widget/ImageView;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public c(Lcc/c;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcc/c;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(FFF)V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    if-gez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    cmpl-float v0, p1, v0

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->e:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    .line 26
    .line 27
    mul-float/2addr p1, p3

    .line 28
    div-float/2addr p1, p2

    .line 29
    const/high16 p2, 0x43340000    # 180.0f

    .line 30
    .line 31
    mul-float/2addr p1, p2

    .line 32
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->d:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setArrowResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPullDownStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRefreshingStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReleaseRefreshStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
