.class public final Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;
.super Ljava/lang/Object;
.source "FrescoFrameCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createImageReference(Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;Lo2/a;)Lo2/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->createImageReference(Lo2/a;)Lo2/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getBitmapSizeBytes(Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;Lo2/a;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->getBitmapSizeBytes(Lo2/a;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final createImageReference(Lo2/a;)Lo2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lo2/a<",
            "Ly3/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ly3/o;->d:Ly3/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Ly3/f;->U(Lo2/a;Ly3/p;I)Ly3/f;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "of(...)"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lo2/a;->w(Ljava/io/Closeable;)Lo2/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final getBitmapSizeBytes(Lo2/a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Ly3/e;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lo2/a;->v(Lo2/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lo2/a;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly3/e;

    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->getBitmapSizeBytes(Ly3/e;)I

    move-result p1

    return p1
.end method

.method private final getBitmapSizeBytes(Ly3/e;)I
    .locals 1

    .line 3
    instance-of v0, p1, Ly3/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    check-cast p1, Ly3/d;

    invoke-interface {p1}, Ly3/d;->B0()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imageutils/d;->j(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final convertToBitmapReferenceAndClose(Lo2/a;)Lo2/a;
    .locals 2
    .param p1    # Lo2/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Ly3/e;",
            ">;)",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lo2/a;->v(Lo2/a;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lo2/a;->s()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Ly3/f;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lo2/a;->s()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "null cannot be cast to non-null type com.facebook.imagepipeline.image.CloseableStaticBitmap"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast v0, Ly3/f;

    .line 28
    .line 29
    invoke-interface {v0}, Ly3/f;->E()Lo2/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {p1}, Lo2/a;->r(Lo2/a;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1}, Lo2/a;->r(Lo2/a;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    return-object p1

    .line 44
    :goto_0
    invoke-static {p1}, Lo2/a;->r(Lo2/a;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method
