.class public final Lfk/f;
.super Ljava/lang/Object;
.source "BitmapUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lfk/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfk/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lfk/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfk/f;->a:Lfk/f;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    if-lez p2, :cond_1

    .line 19
    .line 20
    if-gtz p3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-float v2, p2

    .line 32
    int-to-float v3, v0

    .line 33
    div-float v4, v2, v3

    .line 34
    .line 35
    int-to-float v5, p3

    .line 36
    int-to-float v6, v1

    .line 37
    div-float v7, v5, v6

    .line 38
    .line 39
    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    mul-float/2addr v3, v4

    .line 44
    mul-float/2addr v6, v4

    .line 45
    sub-float/2addr v2, v3

    .line 46
    const/4 v4, 0x2

    .line 47
    int-to-float v4, v4

    .line 48
    div-float/2addr v2, v4

    .line 49
    sub-float/2addr v5, v6

    .line 50
    div-float/2addr v5, v4

    .line 51
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 52
    .line 53
    invoke-static {p2, p3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string p3, "createBitmap(...)"

    .line 58
    .line 59
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance p3, Landroid/graphics/Canvas;

    .line 63
    .line 64
    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    .line 66
    .line 67
    new-instance v4, Landroid/graphics/RectF;

    .line 68
    .line 69
    add-float/2addr v3, v2

    .line 70
    add-float/2addr v6, v5

    .line 71
    invoke-direct {v4, v2, v5, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Landroid/graphics/Rect;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p3, p1, v2, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    return-object p2

    .line 85
    :catch_0
    :cond_1
    :goto_0
    return-object p1
.end method

.method public final b(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "bitmap"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-gtz p2, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    if-eqz p5, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1, p3, p4}, Lfk/f;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    int-to-float p2, p2

    .line 16
    invoke-virtual {p0, p1, p2}, Lfk/f;->c(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    int-to-float p2, p2

    .line 22
    invoke-virtual {p0, p1, p2}, Lfk/f;->c(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    return-object p1
.end method

.method public final c(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 6
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 27
    .line 28
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "createBitmap(...)"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    .line 50
    .line 51
    new-instance v3, Landroid/graphics/Canvas;

    .line 52
    .line 53
    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Landroid/graphics/RectF;

    .line 57
    .line 58
    invoke-direct {v4, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v4, p2, p2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 62
    .line 63
    .line 64
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    .line 65
    .line 66
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 67
    .line 68
    invoke-direct {p2, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 72
    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    invoke-virtual {v3, p1, p2, p2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :catch_0
    move-exception p2

    .line 80
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    return-object p1
.end method
