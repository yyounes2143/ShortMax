.class public Lcom/ss/ttvideoengine/strategy/StrategyManager;
.super Ljava/lang/Object;
.source "StrategyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/strategy/StrategyManager$Holder;
    }
.end annotation


# static fields
.field public static final STRATEGY_SCENE_SHORT_VIDEO:I = 0x1

.field public static final STRATEGY_SCENE_SMALL_VIDEO:I = 0x0

.field public static final STRATEGY_TYPE_COMMON:I = 0x0

.field public static final STRATEGY_TYPE_PRELOAD:I = 0x1

.field public static final STRATEGY_TYPE_PRE_RENDER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Strategy Manager"


# instance fields
.field private mControlEngineRelease:Z

.field private mCustomPreloadConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

.field private mEnableOptPreRenderOnSourceUpdate:Z

.field private mEnableTrimEngineInstance:Z

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mListener:Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;

.field private mPlayEngine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayIndex:I

.field private mPreloadFirst:Z

.field private mPreloadTaskFactory:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

.field private final mStrategyCommon:Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;

.field private mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

.field private mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

.field private final mStrategySources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            ">;"
        }
    .end annotation
.end field

.field private mStrategyStatic:Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyCommon:Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategySources:Ljava/util/List;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mPlayIndex:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mEnableOptPreRenderOnSourceUpdate:Z

    .line 7
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mEnableTrimEngineInstance:Z

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mControlEngineRelease:Z

    .line 9
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mPreloadFirst:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/strategy/StrategyManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/ss/ttvideoengine/strategy/StrategyManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$enableOptPreRenderOnSourceUpdate$5(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/strategy/StrategyManager;)Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mListener:Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/ss/ttvideoengine/strategy/StrategyManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$preload$8(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/ss/ttvideoengine/strategy/StrategyManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$enableReleasePreRenderEngineInstanceByLRU$6(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/ss/ttvideoengine/strategy/StrategyManager;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$enable$3(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/ss/ttvideoengine/strategy/StrategyManager;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$null$2(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/ss/ttvideoengine/strategy/StrategyManager;Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$setPreloadTaskFactory$9(Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/ss/ttvideoengine/strategy/StrategyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$updateSettings$15()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/ss/ttvideoengine/strategy/StrategyManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$preloadFirst$7(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/ss/ttvideoengine/strategy/StrategyManager;Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$setCustomPreloadConfig$10(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager$Holder;->access$100()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic j(Lcom/ss/ttvideoengine/strategy/StrategyManager;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$setStrategySources$0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/ss/ttvideoengine/strategy/StrategyManager;Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$enginePlay$12(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/ss/ttvideoengine/strategy/StrategyManager;Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$onPrepared$14(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$addStrategySources$1(Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "Strategy Manager"

    .line 2
    .line 3
    const-string v1, "addStrategySources"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategySources:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategySources:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->updateSource()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->updateSource(Z)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method private synthetic lambda$bufferStart$13(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->onBufferStart(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$clearAll$11()V
    .locals 2

    .line 1
    const-string v0, "Strategy Manager"

    .line 2
    .line 3
    const-string v1, "clearAll"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->stop()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->stop()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 26
    .line 27
    :cond_1
    iput-object v1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyStatic:Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->stopBufferCheck()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategySources:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private synthetic lambda$controlEngineRelease$4(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mControlEngineRelease:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->controlEngineRelease(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$enable$3(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "enable type:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", scene:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "Strategy Manager"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyStatic:Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    new-instance v0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;

    .line 36
    .line 37
    invoke-direct {v0, p2}, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyStatic:Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;

    .line 41
    .line 42
    :cond_0
    const/4 v0, 0x1

    .line 43
    if-eq p1, v0, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    if-eq p1, v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 50
    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    new-instance p1, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 54
    .line 55
    new-instance v0, Lcom/ss/ttvideoengine/strategy/StrategyManager$1;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager$1;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, p2, v0}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;-><init>(ILcom/ss/ttvideoengine/strategy/prerender/PreRenderListener;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 64
    .line 65
    iget-boolean p2, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mControlEngineRelease:Z

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->controlEngineRelease(Z)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 71
    .line 72
    iget-boolean p2, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mPreloadFirst:Z

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->preloadFirst(Z)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 78
    .line 79
    iget-boolean p2, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mEnableOptPreRenderOnSourceUpdate:Z

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->enableOptPreRenderOnSourceUpdate(Z)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 85
    .line 86
    iget-boolean p2, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mEnableTrimEngineInstance:Z

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->enableReleasePreRenderEngineInstanceByLRU(Z)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->start()V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->startBufferCheck()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 101
    .line 102
    if-nez p1, :cond_4

    .line 103
    .line 104
    new-instance p1, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 105
    .line 106
    new-instance v0, Lcom/ss/ttvideoengine/strategy/k;

    .line 107
    .line 108
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/strategy/k;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, p2, v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;-><init>(ILcom/ss/ttvideoengine/strategy/preload/PreloadListener;)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 115
    .line 116
    iget-object p2, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mPreloadTaskFactory:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->setPreloadTaskFactory(Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mCustomPreloadConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 122
    .line 123
    if-eqz p1, :cond_3

    .line 124
    .line 125
    iget-object p2, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 126
    .line 127
    invoke-virtual {p2, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->setCustomConfig(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->start()V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->startBufferCheck()V

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$enableOptPreRenderOnSourceUpdate$5(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mEnableOptPreRenderOnSourceUpdate:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->enableOptPreRenderOnSourceUpdate(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$enableReleasePreRenderEngineInstanceByLRU$6(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mEnableTrimEngineInstance:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->enableReleasePreRenderEngineInstanceByLRU(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$enginePlay$12(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "enginePlay "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "Strategy Manager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-ne v0, p1, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mPlayEngine:Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->updateEngineIndex()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->updateEngine()V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->updateEngine()V

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->startBufferCheck()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private synthetic lambda$null$2(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->onPreloadSuccess(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private synthetic lambda$onPrepared$14(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyStatic:Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->onPrepared(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$preload$8(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->startPreload(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic lambda$preloadFirst$7(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mPreloadFirst:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->preloadFirst(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$setCustomPreloadConfig$10(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mCustomPreloadConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->setCustomConfig(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$setPreloadTaskFactory$9(Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mPreloadTaskFactory:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->setPreloadTaskFactory(Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic lambda$setStrategySources$0(Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "Strategy Manager"

    .line 2
    .line 3
    const-string/jumbo v1, "setStrategySources"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategySources:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategySources:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->updateEngineIndex()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->updateSource()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->updateSource(Z)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method private synthetic lambda$updateSettings$15()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyCommon:Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->updateConfig()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->updateConfig()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->updateConfig()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyStatic:Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->updateConfig()V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method public static synthetic m(Lcom/ss/ttvideoengine/strategy/StrategyManager;Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$bufferStart$13(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/ss/ttvideoengine/strategy/StrategyManager;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$addStrategySources$1(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Lcom/ss/ttvideoengine/strategy/StrategyManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$controlEngineRelease$4(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(Lcom/ss/ttvideoengine/strategy/StrategyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->lambda$clearAll$11()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private startBufferCheck()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->instance()Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager$2;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->start(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/strategy/utils/BufferCheckListener;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private stopBufferCheck()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->instance()Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/utils/BufferCheckUtil;->stop()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private updateEngineIndex()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mPlayIndex:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getVideoID()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput v1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mPlayIndex:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategySources:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 34
    .line 35
    invoke-interface {v2}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategySources:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mPlayIndex:I

    .line 52
    .line 53
    :cond_2
    return-void
.end method


# virtual methods
.method public addStrategySources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/g;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bufferStart(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/o;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/strategy/b;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public codecType(Lcom/ss/ttvideoengine/TTVideoEngineInterface;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyCommon:Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->setCodecType(Lcom/ss/ttvideoengine/TTVideoEngineInterface;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public controlEngineRelease(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/m;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public enable(II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/ss/ttvideoengine/strategy/e;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public enableEngineLooper()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyCommon:Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->enableEngineLooper()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public enableOptPreRenderOnSourceUpdate(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/j;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public enableReleasePreRenderEngineInstanceByLRU(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/h;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public engineCreate(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyCommon:Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->engineCreate(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/pcdn/PCDNConfig;->configEngine(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyStatic:Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->engineCreate(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public enginePlay(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/ss/ttvideoengine/debug/DebugManager;->enginePlay(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/ss/ttvideoengine/strategy/d;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/d;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mPlayEngine:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 12
    .line 13
    return-object v0
.end method

.method public getPlayIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mPlayIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getPreRenderEngine(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->getPreRenderEngine(Ljava/lang/String;)Lcom/ss/ttvideoengine/TTVideoEngine;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPreRenderEngine(Ljava/lang/String;)Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->getPreRenderEngine(Ljava/lang/String;)Lcom/ss/ttvideoengine/TTVideoEngine;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSource()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategySources:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public initGearGlobalConfig()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;->initGlobalConfig()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public isAllowPreRender(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreload:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->isPreloaded(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public mdlStart(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyCommon:Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->mdlStart(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/pcdn/PCDNConfig;->configMDL(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPrepared(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/i;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public preload(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/f;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public preloadFirst(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/l;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public removePreRenderEngine(Ljava/lang/String;)Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyPreRender:Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/prerender/StrategyPreRender;->removePreRenderEngine(Ljava/lang/String;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method

.method public declared-synchronized runOnWorkThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.method public setCustomPreloadConfig(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/n;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setListener(Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mListener:Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;

    .line 2
    .line 3
    return-void
.end method

.method public setPreloadTaskFactory(Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/c;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setStrategySources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/p;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/p;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setVideoInfo(Lcom/ss/ttvideoengine/TTVideoEngineInterface;Lcom/ss/ttvideoengine/model/VideoInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategyManager;->mStrategyCommon:Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/strategy/common/StrategyCommon;->setVideoInfo(Lcom/ss/ttvideoengine/TTVideoEngineInterface;Lcom/ss/ttvideoengine/model/VideoInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startSpeedPredictor()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;->startSpeedPredictor()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public updateSRStrategyConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;->updateSRStrategyConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public updateSettings()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategySettings;->getInstance()Lcom/ss/ttvideoengine/strategy/StrategySettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/StrategySettings;->update()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/ss/ttvideoengine/strategy/a;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/strategy/a;-><init>(Lcom/ss/ttvideoengine/strategy/StrategyManager;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
