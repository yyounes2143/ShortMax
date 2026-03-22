.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;
.super Ljava/lang/Object;
.source "AnimationCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimationCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationCoordinator.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,130:1\n216#2,2:131\n216#2,2:133\n*S KotlinDebug\n*F\n+ 1 AnimationCoordinator.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator\n*L\n53#1:131,2\n58#1:133,2\n*E\n"
    }
.end annotation


# static fields
.field private static final FPS_STEP_PERCENTAGE:F = 0.2f

.field private static final FREQUENCY_LOADERS_MS:J = 0x2710L

.field private static final FREQUENCY_PERFORMANCE_MS:J = 0x7d0L

.field public static final INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MIN_RENDERING_FPS_PERCENTAGE:F = 0.5f

.field private static final calculatePerformance:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final clearUnusedFrameLoaders:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final criticalCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final failuresCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final handler$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final runningAnimations:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final successCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->successCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->failuresCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->criticalCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->runningAnimations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    new-instance v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/a;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/a;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sput-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->handler$delegate:Lms/i;

    .line 47
    .line 48
    new-instance v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/b;

    .line 49
    .line 50
    invoke-direct {v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/b;-><init>()V

    .line 51
    .line 52
    .line 53
    sput-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->calculatePerformance:Ljava/lang/Runnable;

    .line 54
    .line 55
    new-instance v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/c;

    .line 56
    .line 57
    invoke-direct {v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/c;-><init>()V

    .line 58
    .line 59
    .line 60
    sput-object v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->clearUnusedFrameLoaders:Ljava/lang/Runnable;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->getHandler()Landroid/os/Handler;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->getHandler()Landroid/os/Handler;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
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

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->calculatePerformance$lambda$3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->handler_delegate$lambda$0()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->clearUnusedFrameLoaders$lambda$4()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final calculatePerformance$lambda$3()V
    .locals 5

    .line 1
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->successCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-float v0, v0

    .line 9
    sget-object v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->failuresCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    sget-object v3, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->criticalCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    add-float v3, v0, v2

    .line 24
    .line 25
    add-float/2addr v3, v1

    .line 26
    const/4 v4, 0x0

    .line 27
    cmpl-float v4, v3, v4

    .line 28
    .line 29
    if-lez v4, :cond_3

    .line 30
    .line 31
    div-float/2addr v0, v3

    .line 32
    div-float/2addr v2, v3

    .line 33
    div-float/2addr v1, v3

    .line 34
    const/high16 v3, 0x3e800000    # 0.25f

    .line 35
    .line 36
    cmpl-float v2, v2, v3

    .line 37
    .line 38
    if-gtz v2, :cond_1

    .line 39
    .line 40
    const v2, 0x3dcccccd    # 0.1f

    .line 41
    .line 42
    .line 43
    cmpl-float v1, v1, v2

    .line 44
    .line 45
    if-lez v1, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const v1, 0x3f7ae148    # 0.98f

    .line 49
    .line 50
    .line 51
    cmpl-float v0, v0, v1

    .line 52
    .line 53
    if-lez v0, :cond_2

    .line 54
    .line 55
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->runningAnimations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Ljava/util/Map$Entry;

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Ljava/lang/Number;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    sget-object v3, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    .line 94
    .line 95
    invoke-direct {v3, v2, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->updateRenderingFps(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;I)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    :goto_1
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->runningAnimations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_2

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Ljava/util/Map$Entry;

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Ljava/lang/Number;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    sget-object v3, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    .line 138
    .line 139
    neg-int v1, v1

    .line 140
    invoke-direct {v3, v2, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->updateRenderingFps(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;I)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->runningAnimations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 147
    .line 148
    .line 149
    :cond_3
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    .line 150
    .line 151
    invoke-direct {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->schedulePerformance()Z

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method private static final clearUnusedFrameLoaders$lambda$4()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x2710

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    sget-object v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->Companion:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;

    .line 9
    .line 10
    new-instance v3, Ljava/util/Date;

    .line 11
    .line 12
    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;->clearUnusedUntil(Ljava/util/Date;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->scheduleLoaders()Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->handler$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final handler_delegate$lambda$0()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "FrescoAnimationWorker"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method private final scheduleLoaders()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->clearUnusedFrameLoaders:Ljava/lang/Runnable;

    .line 6
    .line 7
    const-wide/16 v2, 0x2710

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final schedulePerformance()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->calculatePerformance:Ljava/lang/Runnable;

    .line 6
    .line 7
    const-wide/16 v2, 0x7d0

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final updateRenderingFps(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;I)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;->getAnimationFps()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x3f000000    # 0.5f

    .line 7
    .line 8
    mul-float/2addr v0, v1

    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/ranges/e;->d(FF)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    float-to-int v0, v0

    .line 16
    invoke-interface {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;->getRenderingFps()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v1, p2

    .line 21
    invoke-interface {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;->getAnimationFps()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {v1, v0, p2}, Lkotlin/ranges/e;->n(III)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-interface {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;->getRenderingFps()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eq p2, v0, :cond_0

    .line 34
    .line 35
    invoke-interface {p1, p2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;->setRenderingFps(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public final onRenderFrame(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;)V
    .locals 3
    .param p1    # Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "frameResult"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->runningAnimations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;->getAnimationFps()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    const v2, 0x3e4ccccd    # 0.2f

    .line 25
    .line 26
    .line 27
    mul-float/2addr v1, v2

    .line 28
    float-to-int v1, v1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;->getType()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object p2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    aget p1, p2, p1

    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    if-eq p1, p2, :cond_3

    .line 50
    .line 51
    const/4 p2, 0x2

    .line 52
    if-eq p1, p2, :cond_2

    .line 53
    .line 54
    const/4 p2, 0x3

    .line 55
    if-ne p1, p2, :cond_1

    .line 56
    .line 57
    sget-object p1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->criticalCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 64
    .line 65
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_2
    sget-object p1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->failuresCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    sget-object p1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationCoordinator;->successCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method
