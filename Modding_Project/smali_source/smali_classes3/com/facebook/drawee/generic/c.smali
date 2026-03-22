.class public Lcom/facebook/drawee/generic/c;
.super Ljava/lang/Object;
.source "WrappingUtils.java"


# static fields
.field private static final a:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/drawee/generic/c;->a:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    new-instance v0, Lc3/k;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->j()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-direct {v0, p2, v1, p0, v2}, Lc3/k;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Z)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/c;->b(Lc3/j;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    instance-of p2, p0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    check-cast p0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 33
    .line 34
    new-instance p2, Lc3/n;

    .line 35
    .line 36
    invoke-direct {p2, p0}, Lc3/n;-><init>(Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p2, p1}, Lcom/facebook/drawee/generic/c;->b(Lc3/j;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 40
    .line 41
    .line 42
    return-object p2

    .line 43
    :cond_1
    instance-of p2, p0, Landroid/graphics/drawable/ColorDrawable;

    .line 44
    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 48
    .line 49
    invoke-static {p0}, Lc3/l;->a(Landroid/graphics/drawable/ColorDrawable;)Lc3/l;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0, p1}, Lcom/facebook/drawee/generic/c;->b(Lc3/j;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_2
    const-string p1, "Don\'t know how to round that drawable: %s"

    .line 58
    .line 59
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const-string v0, "WrappingUtils"

    .line 64
    .line 65
    invoke-static {v0, p1, p2}, Ll2/a;->z(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-object p0
.end method

.method static b(Lc3/j;Lcom/facebook/drawee/generic/RoundingParams;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p0, v0}, Lc3/j;->d(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->e()[F

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p0, v0}, Lc3/j;->o([F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->c()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->d()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-interface {p0, v0, v1}, Lc3/j;->c(IF)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->h()F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-interface {p0, v0}, Lc3/j;->e(F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->m()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-interface {p0, v0}, Lc3/j;->l(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->i()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-interface {p0, v0}, Lc3/j;->h(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->j()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-interface {p0, p1}, Lc3/j;->g(Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method static c(Lc3/c;)Lc3/c;
    .locals 2

    .line 1
    :goto_0
    invoke-interface {p0}, Lc3/c;->a()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p0, :cond_1

    .line 6
    .line 7
    instance-of v1, v0, Lc3/c;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    move-object p0, v0

    .line 13
    check-cast p0, Lc3/c;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    :goto_1
    return-object p0
.end method

.method static d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lf4/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "WrappingUtils#maybeApplyLeafRounding"

    .line 8
    .line 9
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    if-eqz p0, :cond_5

    .line 16
    .line 17
    if-eqz p1, :cond_5

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->l()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->BITMAP_ONLY:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    instance-of v0, p0, Lc3/g;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    move-object v0, p0

    .line 33
    check-cast v0, Lc3/g;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/facebook/drawee/generic/c;->c(Lc3/c;)Lc3/c;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lcom/facebook/drawee/generic/c;->a:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    invoke-interface {v0, v1}, Lc3/c;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, p1, p2}, Lcom/facebook/drawee/generic/c;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {v0, p1}, Lc3/c;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lf4/b;->d()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-static {}, Lf4/b;->b()V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-object p0

    .line 62
    :cond_3
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/facebook/drawee/generic/c;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {}, Lf4/b;->d()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    invoke-static {}, Lf4/b;->b()V

    .line 73
    .line 74
    .line 75
    :cond_4
    return-object p0

    .line 76
    :cond_5
    :goto_1
    invoke-static {}, Lf4/b;->d()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_6

    .line 81
    .line 82
    invoke-static {}, Lf4/b;->b()V

    .line 83
    .line 84
    .line 85
    :cond_6
    return-object p0

    .line 86
    :goto_2
    invoke-static {}, Lf4/b;->d()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    invoke-static {}, Lf4/b;->b()V

    .line 93
    .line 94
    .line 95
    :cond_7
    throw p0
.end method

.method static e(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lf4/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "WrappingUtils#maybeWrapWithRoundedOverlayColor"

    .line 8
    .line 9
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    if-eqz p0, :cond_3

    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->l()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->OVERLAY_COLOR:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    new-instance v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/c;->b(Lc3/j;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->g()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->u(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lf4/b;->d()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    invoke-static {}, Lf4/b;->b()V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-object v0

    .line 53
    :cond_3
    :goto_1
    invoke-static {}, Lf4/b;->d()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    invoke-static {}, Lf4/b;->b()V

    .line 60
    .line 61
    .line 62
    :cond_4
    return-object p0

    .line 63
    :goto_2
    invoke-static {}, Lf4/b;->d()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    invoke-static {}, Lf4/b;->b()V

    .line 70
    .line 71
    .line 72
    :cond_5
    throw p0
.end method

.method static f(Landroid/graphics/drawable/Drawable;Lc3/q;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/facebook/drawee/generic/c;->g(Landroid/graphics/drawable/Drawable;Lc3/q;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method static g(Landroid/graphics/drawable/Drawable;Lc3/q;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-static {}, Lf4/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "WrappingUtils#maybeWrapWithScaleType"

    .line 8
    .line 9
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    if-eqz p0, :cond_4

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance v0, Lc3/o;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lc3/o;-><init>(Landroid/graphics/drawable/Drawable;Lc3/q;)V

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Lc3/o;->x(Landroid/graphics/PointF;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-static {}, Lf4/b;->d()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    invoke-static {}, Lf4/b;->b()V

    .line 34
    .line 35
    .line 36
    :cond_3
    return-object v0

    .line 37
    :cond_4
    :goto_0
    invoke-static {}, Lf4/b;->d()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_5

    .line 42
    .line 43
    invoke-static {}, Lf4/b;->b()V

    .line 44
    .line 45
    .line 46
    :cond_5
    return-object p0
.end method

.method static h(Lc3/j;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Lc3/j;->d(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v1}, Lc3/j;->f(F)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, v0, v1}, Lc3/j;->c(IF)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v1}, Lc3/j;->e(F)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Lc3/j;->l(Z)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v0}, Lc3/j;->h(Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lc3/k;->p()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-interface {p0, v0}, Lc3/j;->g(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method static i(Lc3/c;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/drawee/generic/c;->c(Lc3/c;)Lc3/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lc3/c;->a()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->l()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->BITMAP_ONLY:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    instance-of v1, v0, Lc3/j;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Lc3/j;

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/c;->b(Lc3/j;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-eqz v0, :cond_2

    .line 30
    .line 31
    sget-object v1, Lcom/facebook/drawee/generic/c;->a:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    invoke-interface {p0, v1}, Lc3/c;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p1, p2}, Lcom/facebook/drawee/generic/c;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p0, p1}, Lc3/c;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    instance-of p0, v0, Lc3/j;

    .line 45
    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    check-cast v0, Lc3/j;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/facebook/drawee/generic/c;->h(Lc3/j;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void
.end method

.method static j(Lc3/c;Lcom/facebook/drawee/generic/RoundingParams;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lc3/c;->a()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->l()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->OVERLAY_COLOR:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    instance-of v1, v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/c;->b(Lc3/j;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->g()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->u(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v0, Lcom/facebook/drawee/generic/c;->a:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    invoke-interface {p0, v0}, Lc3/c;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/c;->e(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;)Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p0, p1}, Lc3/c;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    instance-of p1, v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    check-cast v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    .line 51
    .line 52
    sget-object p1, Lcom/facebook/drawee/generic/c;->a:Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lc3/g;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {p0, v0}, Lc3/c;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method static k(Lc3/c;Lc3/q;)Lc3/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/drawee/generic/c;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lc3/c;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/c;->f(Landroid/graphics/drawable/Drawable;Lc3/q;)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lc3/c;->k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    const-string p0, "Parent has no child drawable!"

    .line 15
    .line 16
    invoke-static {p1, p0}, Lk2/h;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    check-cast p1, Lc3/o;

    .line 20
    .line 21
    return-object p1
.end method
