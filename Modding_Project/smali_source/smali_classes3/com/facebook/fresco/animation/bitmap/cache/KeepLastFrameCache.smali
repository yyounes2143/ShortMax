.class public final Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;
.super Ljava/lang/Object;
.source "KeepLastFrameCache.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FRAME_NUMBER_UNSET:I = -0x1


# instance fields
.field private frameCacheListener:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastBitmapReference:Lo2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastFrameNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I

    .line 6
    .line 7
    return-void
.end method

.method private final declared-synchronized closeAndResetLastBitmapReference()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->frameCacheListener:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-interface {v2, p0, v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;->onFrameEvicted(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lo2/a;

    .line 18
    .line 19
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lo2/a;

    .line 24
    .line 25
    iput v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->closeAndResetLastBitmapReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public declared-synchronized contains(I)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lo2/a;

    .line 7
    .line 8
    invoke-static {p1}, Lo2/a;->v(Lo2/a;)Z

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    monitor-exit p0

    .line 20
    return p1

    .line 21
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method public declared-synchronized getBitmapToReuseForFrame(III)Lo2/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lo2/a;

    .line 3
    .line 4
    invoke-static {p1}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->closeAndResetLastBitmapReference()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :catchall_1
    move-exception p1

    .line 16
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->closeAndResetLastBitmapReference()V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    throw p1
.end method

.method public declared-synchronized getCachedFrame(I)Lo2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lo2/a;

    .line 7
    .line 8
    invoke-static {p1}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw p1
.end method

.method public declared-synchronized getFallbackFrame(I)Lo2/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lo2/a;

    .line 3
    .line 4
    invoke-static {p1}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public declared-synchronized getSizeInBytes()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lo2/a;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lo2/a;->s()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/graphics/Bitmap;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/facebook/imageutils/d;->j(Landroid/graphics/Bitmap;)I

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :goto_0
    monitor-exit p0

    .line 22
    return v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method public isAnimationReady()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$DefaultImpls;->isAnimationReady(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onAnimationPrepared(Ljava/util/Map;)Z
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$DefaultImpls;->onAnimationPrepared(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onFramePrepared(ILo2/a;I)V
    .locals 0
    .param p2    # Lo2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string p1, "bitmapReference"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public declared-synchronized onFrameRendered(ILo2/a;I)V
    .locals 1
    .param p2    # Lo2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string p3, "bitmapReference"

    .line 3
    .line 4
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lo2/a;

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Lo2/a;->s()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lo2/a;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lo2/a;->s()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/graphics/Bitmap;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_1
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lo2/a;

    .line 38
    .line 39
    invoke-static {p3}, Lo2/a;->r(Lo2/a;)V

    .line 40
    .line 41
    .line 42
    iget p3, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I

    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    if-eq p3, v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->frameCacheListener:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-interface {v0, p0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;->onFrameEvicted(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-static {p2}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastBitmapReference:Lo2/a;

    .line 59
    .line 60
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->frameCacheListener:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;

    .line 61
    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    invoke-interface {p2, p0, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;->onFrameCached(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;I)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->lastFrameNumber:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p1
.end method

.method public setFrameCacheListener(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/KeepLastFrameCache;->frameCacheListener:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;

    .line 2
    .line 3
    return-void
.end method
