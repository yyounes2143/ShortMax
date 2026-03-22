.class public Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;
.super Ljava/lang/Object;
.source "StrategyPreload.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Strategy Preload"


# instance fields
.field private final mConfigManager:Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;

.field private mEnable:Z

.field private mEnablePreload:Z

.field private final mListener:Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;

.field private mPreloadSync:Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;

.field private mPreloadTaskFactory:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

.field private final mPreloadedList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScene:I


# direct methods
.method public constructor <init>(ILcom/ss/ttvideoengine/strategy/preload/PreloadListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mPreloadedList:Ljava/util/Set;

    .line 10
    .line 11
    iput p1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mScene:I

    .line 12
    .line 13
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mListener:Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;

    .line 14
    .line 15
    new-instance p1, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mConfigManager:Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->updateConfig()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static synthetic a(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->lambda$startPreload$0(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getPlayingEngine()Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private isPlayingEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private synthetic lambda$startPreload$0(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mPreloadedList:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mListener:Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;->onResult(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method private startPreload(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mEnablePreload:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mEnable:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->isPlayingEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPlayIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->startPreload(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private stopPreload()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mEnablePreload:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "Strategy Preload"

    .line 7
    .line 8
    const-string/jumbo v1, "stopPreload"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mEnablePreload:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mPreloadSync:Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->stop()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mPreloadSync:Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;

    .line 26
    .line 27
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->cancelAllPreloadTasks()V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public isPreloaded(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mPreloadedList:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onBufferStart(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onBufferStart "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Strategy Preload"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->isPlayingEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->stopPreload()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->isPlayingEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mEnablePreload:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "Strategy Preload"

    .line 13
    .line 14
    const-string v1, "onCacheEnd start preload"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mEnablePreload:Z

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->startPreload(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public onCacheSize(Lcom/ss/ttvideoengine/TTVideoEngine;J)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->isPlayingEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mConfigManager:Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->getStopBufferLimit()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mEnablePreload:Z

    .line 15
    .line 16
    const-wide/16 v2, 0x3e8

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    int-to-long v0, v0

    .line 21
    mul-long/2addr v0, v2

    .line 22
    cmp-long v0, p2, v0

    .line 23
    .line 24
    if-gez v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->stopPreload()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mConfigManager:Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->getStartBufferLimit()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mEnablePreload:Z

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    int-to-long v0, v0

    .line 41
    mul-long/2addr v0, v2

    .line 42
    cmp-long v0, p2, v0

    .line 43
    .line 44
    if-lez v0, :cond_2

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "onCacheSize "

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p2, " start preload"

    .line 60
    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const-string p3, "Strategy Preload"

    .line 69
    .line 70
    invoke-static {p3, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mEnablePreload:Z

    .line 75
    .line 76
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->startPreload(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method public setCustomConfig(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mConfigManager:Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->setCustomConfig(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPreloadTaskFactory(Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mPreloadTaskFactory:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    const-string v0, "Strategy Preload"

    .line 2
    .line 3
    const-string/jumbo v1, "start"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mEnable:Z

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->getPlayingEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->startPreload(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public startPreload(I)V
    .locals 4

    .line 5
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getSource()Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreload start index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Strategy Preload"

    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mConfigManager:Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;

    invoke-virtual {v1}, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->getCount()I

    move-result v1

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, v1, :cond_1

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mConfigManager:Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->getSize()I

    move-result p1

    .line 13
    new-instance v0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mPreloadTaskFactory:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

    invoke-direct {v0, v1, v2, p1}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;-><init>(Ljava/util/List;Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;I)V

    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mPreloadSync:Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;

    .line 14
    new-instance p1, Lcom/ss/ttvideoengine/strategy/preload/b;

    invoke-direct {p1, p0}, Lcom/ss/ttvideoengine/strategy/preload/b;-><init>(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;)V

    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->setListener(Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;)V

    .line 15
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mPreloadSync:Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const-string v0, "Strategy Preload"

    .line 2
    .line 3
    const-string/jumbo v1, "stop"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mEnable:Z

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->stopPreload()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public updateConfig()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategySettings;->getInstance()Lcom/ss/ttvideoengine/strategy/StrategySettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mScene:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategy/StrategySettings;->getPreload(I)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->mConfigManager:Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->setSettingsConfig(Lorg/json/JSONObject;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public updateEngine()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->stopPreload()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public updateSource()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->stopPreload()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->getPlayingEngine()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreload;->startPreload(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
