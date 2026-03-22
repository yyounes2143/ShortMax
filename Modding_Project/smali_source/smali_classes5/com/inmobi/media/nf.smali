.class public abstract Lcom/inmobi/media/nf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;[BF)Landroid/widget/FrameLayout;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "watermarkBytes"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    const/4 v2, -0x1

    .line 41
    invoke-direct {p1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Landroid/widget/FrameLayout;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p0}, Landroid/view/View;->setElevation(F)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p2}, Landroid/view/View;->setAlpha(F)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 68
    .line 69
    .line 70
    return-object v2
.end method
