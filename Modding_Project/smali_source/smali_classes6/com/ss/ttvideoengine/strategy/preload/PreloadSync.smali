.class public Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;
.super Ljava/lang/Object;
.source "PreloadSync.java"

# interfaces
.implements Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

.field private static final TAG:Ljava/lang/String; = "StrategyPreload"


# instance fields
.field private final mFactory:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

.field private mListener:Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;

.field private final mPreloadSize:I

.field private mStop:Z

.field private final mStrategySources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->DEFAULT_FACTORY:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            ">;",
            "Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mStrategySources:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    sget-object p2, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->DEFAULT_FACTORY:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

    .line 17
    .line 18
    :cond_0
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mFactory:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

    .line 19
    .line 20
    iput p3, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mPreloadSize:I

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->lambda$onResult$0(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onResult$0(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mListener:Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;->onResult(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private preload()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mStop:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mStrategySources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mStrategySources:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->preloadNext()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->preload(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private preload(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V
    .locals 5

    .line 5
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mPreloadSize:I

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    .line 6
    invoke-interface {p1}, Lcom/ss/ttvideoengine/source/Source;->type()Lcom/ss/ttvideoengine/source/Source$Type;

    move-result-object v2

    .line 7
    invoke-interface {p1}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    move-result-object v3

    .line 8
    sget-object v4, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$2;->$SwitchMap$com$ss$ttvideoengine$source$Source$Type:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    check-cast p1, Lcom/ss/ttvideoengine/source/VideoModelSource;

    .line 10
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mFactory:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

    .line 11
    invoke-interface {v2, p1, v0, v1}, Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;->createVideoModelItem(Lcom/ss/ttvideoengine/source/VideoModelSource;J)Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    move-result-object p1

    .line 12
    new-instance v0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;

    invoke-direct {v0, v3, p0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;-><init>(Ljava/lang/String;Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;)V

    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->setCallBackListener(Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;)V

    .line 13
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->addTask(Lcom/ss/ttvideoengine/PreloaderVideoModelItem;)V

    goto :goto_0

    .line 14
    :cond_1
    check-cast p1, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;

    .line 15
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->resolution()Lcom/ss/ttvideoengine/Resolution;

    move-result-object v2

    .line 16
    iget-object v4, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mFactory:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

    .line 17
    invoke-interface {v4, p1, v0, v1}, Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;->createVidItem(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;J)Lcom/ss/ttvideoengine/PreloaderVidItem;

    move-result-object p1

    .line 18
    new-instance v0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;

    invoke-direct {v0, v3, p0, p1, v2}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;-><init>(Ljava/lang/String;Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;Lcom/ss/ttvideoengine/PreloaderVidItem;Lcom/ss/ttvideoengine/Resolution;)V

    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/PreloaderVidItem;->setCallBackListener(Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;)V

    .line 19
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->addTask(Lcom/ss/ttvideoengine/PreloaderVidItem;)V

    goto :goto_0

    .line 20
    :cond_2
    check-cast p1, Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 21
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mFactory:Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;

    .line 22
    invoke-interface {v2, p1, v0, v1}, Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;->createUrlItem(Lcom/ss/ttvideoengine/source/DirectUrlSource;J)Lcom/ss/ttvideoengine/PreloaderURLItem;

    move-result-object p1

    .line 23
    new-instance v0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;

    invoke-direct {v0, v3, p0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;-><init>(Ljava/lang/String;Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;)V

    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->setCallBackListener(Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;)V

    .line 24
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->addTask(Lcom/ss/ttvideoengine/PreloaderURLItem;)V

    :goto_0
    return-void
.end method

.method private preloadNext()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mStrategySources:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mStrategySources:Ljava/util/List;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->preload()V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->preloadNext()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/ss/ttvideoengine/strategy/preload/a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Lcom/ss/ttvideoengine/strategy/preload/a;-><init>(Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setListener(Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mListener:Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->preload()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;->mStop:Z

    .line 3
    .line 4
    return-void
.end method
