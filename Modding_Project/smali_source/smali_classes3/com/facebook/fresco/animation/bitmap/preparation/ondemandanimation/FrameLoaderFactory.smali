.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;
.super Ljava/lang/Object;
.source "AnimationLoaderFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UNUSED_FRAME_LOADERS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bufferLengthMilliseconds:I

.field private final maxFpsRender:I

.field private final platformBitmapFactory:Lq3/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->Companion:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->UNUSED_FRAME_LOADERS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lq3/d;II)V
    .locals 1
    .param p1    # Lq3/d;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->platformBitmapFactory:Lq3/d;

    .line 10
    .line 11
    iput p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->maxFpsRender:I

    .line 12
    .line 13
    iput p3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->bufferLengthMilliseconds:I

    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->UNUSED_FRAME_LOADERS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final createBufferLoader(Ljava/lang/String;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Lcom/facebook/fresco/animation/backend/AnimationInformation;)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/fresco/animation/backend/AnimationInformation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cacheKey"

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
    const-string v0, "animationInformation"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->UNUSED_FRAME_LOADERS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;->getFrameLoader()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v0

    .line 35
    return-object p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    :try_start_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->platformBitmapFactory:Lq3/d;

    .line 44
    .line 45
    new-instance v4, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;

    .line 46
    .line 47
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->maxFpsRender:I

    .line 48
    .line 49
    invoke-direct {v4, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;-><init>(I)V

    .line 50
    .line 51
    .line 52
    iget v6, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->bufferLengthMilliseconds:I

    .line 53
    .line 54
    move-object v1, p1

    .line 55
    move-object v3, p2

    .line 56
    move-object v5, p3

    .line 57
    invoke-direct/range {v1 .. v6}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;-><init>(Lq3/d;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;Lcom/facebook/fresco/animation/backend/AnimationInformation;I)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :goto_0
    monitor-exit v0

    .line 62
    throw p1
.end method
