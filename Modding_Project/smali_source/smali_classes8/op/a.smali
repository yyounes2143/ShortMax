.class public Lop/a;
.super Ljava/lang/Object;
.source "ImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lop/a$c;,
        Lop/a$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2
    .line 3
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    :goto_0
    div-int v2, v0, v1

    .line 7
    .line 8
    if-gt v2, p1, :cond_1

    .line 9
    .line 10
    div-int v2, p0, v1

    .line 11
    .line 12
    if-le v2, p2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    :goto_1
    mul-int/lit8 v1, v1, 0x2

    .line 17
    .line 18
    goto :goto_0
.end method

.method public static b(I)I
    .locals 1

    .line 1
    const/16 v0, 0x2bc

    .line 2
    .line 3
    if-le p0, v0, :cond_0

    .line 4
    .line 5
    move p0, v0

    .line 6
    :cond_0
    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lio/bidmachine/core/g;->D(Landroid/content/Context;)Landroid/graphics/Point;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 6
    .line 7
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 8
    .line 9
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/16 v0, 0x4b0

    .line 14
    .line 15
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static d(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance p3, Lop/a$a;

    .line 8
    .line 9
    invoke-direct {p3}, Lop/a$a;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p2, p1, p3}, Lop/a;->e(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;Lop/a$c;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private static e(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;Lop/a$c;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lop/a$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p1, :cond_3

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-nez p2, :cond_2

    .line 18
    .line 19
    const-string p0, "Target ImageView is null"

    .line 20
    .line 21
    invoke-interface {p3, p0}, Lop/a$c;->onError(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    invoke-static {}, Lop/b;->a()Lop/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lop/a$b;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1, p2, p3}, Lop/a$b;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;Lop/a$c;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lop/b;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    :goto_0
    const-string p0, "ImagePath is invalid"

    .line 39
    .line 40
    invoke-interface {p3, p0}, Lop/a$c;->onError(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
