.class public final Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;
.super Ljava/lang/Object;
.source "DefaultBitmapFramePreparer.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pendingFrameDecodeJobs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final platformBitmapFactory:Lq3/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/d;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1    # Lq3/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "platformBitmapFactory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bitmapFrameRenderer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "bitmapConfig"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "executorService"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->platformBitmapFactory:Lq3/d;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    const-class p1, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->TAG:Ljava/lang/Class;

    .line 35
    .line 36
    new-instance p1, Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->pendingFrameDecodeJobs:Landroid/util/SparseArray;

    .line 42
    .line 43
    return-void
.end method

.method public static final synthetic access$getBitmapConfig$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getBitmapFrameRenderer$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPendingFrameDecodeJobs$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->pendingFrameDecodeJobs:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPlatformBitmapFactory$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Lq3/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->platformBitmapFactory:Lq3/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->TAG:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getUniqueId(Lcom/facebook/fresco/animation/backend/AnimationBackend;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    mul-int/lit8 p1, p1, 0x1f

    .line 6
    .line 7
    add-int/2addr p1, p2

    .line 8
    return p1
.end method


# virtual methods
.method public prepareFrame(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;I)Z
    .locals 10
    .param p1    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bitmapFrameCache"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "animationBackend"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->getUniqueId(Lcom/facebook/fresco/animation/backend/AnimationBackend;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v7, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->pendingFrameDecodeJobs:Landroid/util/SparseArray;

    .line 16
    .line 17
    monitor-enter v7

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->pendingFrameDecodeJobs:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v8, 0x1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->TAG:Ljava/lang/Class;

    .line 28
    .line 29
    const-string p2, "Already scheduled decode job for frame %d"

    .line 30
    .line 31
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-static {p1, p2, p3}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit v7

    .line 39
    return v8

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    :try_start_1
    invoke-interface {p1, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->contains(I)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->TAG:Ljava/lang/Class;

    .line 49
    .line 50
    const-string p2, "Frame %d is cached already."

    .line 51
    .line 52
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-static {p1, p2, p3}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    monitor-exit v7

    .line 60
    return v8

    .line 61
    :cond_1
    :try_start_2
    new-instance v9, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;

    .line 62
    .line 63
    move-object v1, v9

    .line 64
    move-object v2, p0

    .line 65
    move-object v3, p2

    .line 66
    move-object v4, p1

    .line 67
    move v5, p3

    .line 68
    move v6, v0

    .line 69
    invoke-direct/range {v1 .. v6}, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer$FrameDecodeRunnable;-><init>(Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;Lcom/facebook/fresco/animation/backend/AnimationBackend;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;II)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->pendingFrameDecodeJobs:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {p1, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/DefaultBitmapFramePreparer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 78
    .line 79
    invoke-interface {p1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .line 84
    monitor-exit v7

    .line 85
    return v8

    .line 86
    :goto_0
    monitor-exit v7

    .line 87
    throw p1
.end method
