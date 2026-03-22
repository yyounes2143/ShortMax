.class public abstract Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;
.super Ljava/lang/Object;
.source "DalvikPurgeableDecoder.java"

# interfaces
.implements Lc4/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder$OreoUtils;
    }
.end annotation

.annotation build Lk2/d;
.end annotation


# static fields
.field protected static final b:[B


# instance fields
.field private final a:Lb4/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/a;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->b:[B

    .line 11
    .line 12
    return-void

    .line 13
    :array_0
    .array-data 1
        -0x1t
        -0x27t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lb4/h;->a()Lb4/g;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->a:Lb4/g;

    .line 9
    .line 10
    return-void
.end method

.method public static e(Lo2/a;I)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo2/a;->s()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 v0, p1, -0x2

    .line 11
    .line 12
    invoke-interface {p0, v0}, Lcom/facebook/common/memory/PooledByteBuffer;->D(I)B

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    sub-int/2addr p1, v0

    .line 21
    invoke-interface {p0, p1}, Lcom/facebook/common/memory/PooledByteBuffer;->D(I)B

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/16 p1, -0x27

    .line 26
    .line 27
    if-ne p0, p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0
.end method

.method public static f(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 8
    .line 9
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 12
    .line 13
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 14
    .line 15
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 16
    .line 17
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 18
    .line 19
    return-object v0
.end method

.method private static native nativePinBitmap(Landroid/graphics/Bitmap;)V
    .annotation build Lk2/d;
    .end annotation
.end method


# virtual methods
.method public a(Ly3/k;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;Landroid/graphics/ColorSpace;)Lo2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly3/k;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/ColorSpace;",
            ")",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ly3/k;->t()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-static {p3, p2}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->f(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v0, 0x1a

    .line 12
    .line 13
    if-lt p3, v0, :cond_0

    .line 14
    .line 15
    invoke-static {p2, p4}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder$OreoUtils;->a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Ly3/k;->l()Lo2/a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->c(Lo2/a;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->g(Landroid/graphics/Bitmap;)Lo2/a;

    .line 30
    .line 31
    .line 32
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {p1}, Lo2/a;->r(Lo2/a;)V

    .line 34
    .line 35
    .line 36
    return-object p2

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    invoke-static {p1}, Lo2/a;->r(Lo2/a;)V

    .line 39
    .line 40
    .line 41
    throw p2
.end method

.method public b(Ly3/k;Landroid/graphics/Bitmap$Config;Landroid/graphics/Rect;ILandroid/graphics/ColorSpace;)Lo2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly3/k;",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/graphics/Rect;",
            "I",
            "Landroid/graphics/ColorSpace;",
            ")",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ly3/k;->t()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-static {p3, p2}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->f(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v0, 0x1a

    .line 12
    .line 13
    if-lt p3, v0, :cond_0

    .line 14
    .line 15
    invoke-static {p2, p5}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder$OreoUtils;->a(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Ly3/k;->l()Lo2/a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0, p1, p4, p2}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->d(Lo2/a;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->g(Landroid/graphics/Bitmap;)Lo2/a;

    .line 30
    .line 31
    .line 32
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {p1}, Lo2/a;->r(Lo2/a;)V

    .line 34
    .line 35
    .line 36
    return-object p2

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    invoke-static {p1}, Lo2/a;->r(Lo2/a;)V

    .line 39
    .line 40
    .line 41
    throw p2
.end method

.method protected abstract c(Lo2/a;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method protected abstract d(Lo2/a;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;I",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public g(Landroid/graphics/Bitmap;)Lo2/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->nativePinBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->a:Lb4/g;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lb4/g;->g(Landroid/graphics/Bitmap;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->a:Lb4/g;

    .line 16
    .line 17
    invoke-virtual {v0}, Lb4/g;->e()Lo2/h;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1, v0}, Lo2/a;->F(Ljava/lang/Object;Lo2/h;)Lo2/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    invoke-static {p1}, Lcom/facebook/imageutils/d;->j(Landroid/graphics/Bitmap;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    .line 32
    .line 33
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->a:Lb4/g;

    .line 40
    .line 41
    invoke-virtual {v1}, Lb4/g;->b()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->a:Lb4/g;

    .line 50
    .line 51
    invoke-virtual {v2}, Lb4/g;->f()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->a:Lb4/g;

    .line 60
    .line 61
    invoke-virtual {v3}, Lb4/g;->c()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object v4, p0, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;->a:Lb4/g;

    .line 70
    .line 71
    invoke-virtual {v4}, Lb4/g;->d()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "Attempted to pin a bitmap of size %d bytes. The current pool count is %d, the current pool size is %d bytes. The current pool max count is %d, the current pool max size is %d bytes."

    .line 84
    .line 85
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v0, Lcom/facebook/imagepipeline/common/TooManyBitmapsException;

    .line 90
    .line 91
    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/common/TooManyBitmapsException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lk2/m;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    throw p1
.end method
