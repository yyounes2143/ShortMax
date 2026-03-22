.class public final Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;
.super Ljava/lang/Object;
.source "FrescoFrameCache.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final animatedFrameCache:Ln3/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final enableBitmapReusing:Z

.field private lastRenderedItem:Lo2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo2/a<",
            "Ly3/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final preparedPendingFrames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;

    .line 10
    .line 11
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->TAG:Ljava/lang/Class;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ln3/c;Z)V
    .locals 1
    .param p1    # Ln3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "animatedFrameCache"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->animatedFrameCache:Ln3/c;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->enableBitmapReusing:Z

    .line 12
    .line 13
    new-instance p1, Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 19
    .line 20
    return-void
.end method

.method public static final convertToBitmapReferenceAndClose(Lo2/a;)Lo2/a;
    .locals 1
    .param p0    # Lo2/a;
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
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->convertToBitmapReferenceAndClose(Lo2/a;)Lo2/a;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private final declared-synchronized getPreparedPendingFramesSizeBytes()I
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    sget-object v3, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lo2/a;

    .line 21
    .line 22
    invoke-static {v3, v4}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->access$getBitmapSizeBytes(Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;Lo2/a;)I

    .line 23
    .line 24
    .line 25
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    add-int/2addr v2, v3

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    monitor-exit p0

    .line 33
    return v2

    .line 34
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v0
.end method

.method private final declared-synchronized removePreparedReference(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lo2/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->TAG:Ljava/lang/Class;

    .line 21
    .line 22
    const-string v1, "removePreparedReference(%d) removed. Pending frames: %s"

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-static {v0, v1, p1, v2}, Ll2/a;->q(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->lastRenderedItem:Lo2/a;

    .line 3
    .line 4
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->lastRenderedItem:Lo2/a;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lo2/a;

    .line 26
    .line 27
    invoke-static {v2}, Lo2/a;->r(Lo2/a;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v0
.end method

.method public declared-synchronized contains(I)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->animatedFrameCache:Ln3/c;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ln3/c;->b(I)Z

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return p1

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
    iget-boolean p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->enableBitmapReusing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    :try_start_1
    sget-object p1, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->animatedFrameCache:Ln3/c;

    .line 12
    .line 13
    invoke-virtual {p2}, Ln3/c;->d()Lo2/a;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->convertToBitmapReferenceAndClose(Lo2/a;)Lo2/a;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    monitor-exit p0

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    throw p1
.end method

.method public declared-synchronized getCachedFrame(I)Lo2/a;
    .locals 2
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
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->animatedFrameCache:Ln3/c;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ln3/c;->c(I)Lo2/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->convertToBitmapReferenceAndClose(Lo2/a;)Lo2/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p1
.end method

.method public declared-synchronized getFallbackFrame(I)Lo2/a;
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
    sget-object p1, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->lastRenderedItem:Lo2/a;

    .line 5
    .line 6
    invoke-static {v0}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->convertToBitmapReferenceAndClose(Lo2/a;)Lo2/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p1
.end method

.method public declared-synchronized getSizeInBytes()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->lastRenderedItem:Lo2/a;

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->access$getBitmapSizeBytes(Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;Lo2/a;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->getPreparedPendingFramesSizeBytes()I

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    add-int/2addr v0, v1

    .line 15
    monitor-exit p0

    .line 16
    return v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method public isAnimationReady()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onAnimationPrepared(Ljava/util/Map;)Z
    .locals 1
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
    const-string v0, "frameBitmaps"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public declared-synchronized onFramePrepared(ILo2/a;I)V
    .locals 2
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :try_start_1
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    .line 9
    .line 10
    invoke-static {v0, p2}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->access$createImageReference(Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;Lo2/a;)Lo2/a;

    .line 11
    .line 12
    .line 13
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    :try_start_2
    invoke-static {p3}, Lo2/a;->r(Lo2/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :try_start_3
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->animatedFrameCache:Ln3/c;

    .line 24
    .line 25
    invoke-virtual {p2, p1, p3}, Ln3/c;->a(ILo2/a;)Lo2/a;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p2}, Lo2/a;->v(Lo2/a;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lo2/a;

    .line 42
    .line 43
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object p2, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->TAG:Ljava/lang/Class;

    .line 52
    .line 53
    const-string v0, "cachePreparedFrame(%d) cached. Pending frames: %s"

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->preparedPendingFrames:Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-static {p2, v0, p1, v1}, Ll2/a;->q(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception p1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    :try_start_4
    invoke-static {p3}, Lo2/a;->r(Lo2/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 68
    .line 69
    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :goto_1
    :try_start_5
    invoke-static {p3}, Lo2/a;->r(Lo2/a;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :goto_2
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 77
    throw p1
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
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->removePreparedReference(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    :try_start_1
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->Companion:Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;

    .line 12
    .line 13
    invoke-static {v0, p2}, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;->access$createImageReference(Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache$Companion;Lo2/a;)Lo2/a;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->lastRenderedItem:Lo2/a;

    .line 20
    .line 21
    invoke-static {p2}, Lo2/a;->r(Lo2/a;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->animatedFrameCache:Ln3/c;

    .line 25
    .line 26
    invoke-virtual {p2, p1, p3}, Ln3/c;->a(ILo2/a;)Lo2/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/FrescoFrameCache;->lastRenderedItem:Lo2/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {p3}, Lo2/a;->r(Lo2/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_1
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    :try_start_3
    invoke-static {p3}, Lo2/a;->r(Lo2/a;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    throw p1
.end method

.method public setFrameCacheListener(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache$FrameCacheListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
