.class public Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;
.super Ljava/lang/Object;
.source "StrategyPreloadConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private count:I

.field private size:I

.field private startBufferLimit:I

.field private stopBufferLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->count:I

    const/16 v0, 0x320

    .line 3
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->size:I

    const/16 v0, 0xe

    .line 4
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->startBufferLimit:I

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->stopBufferLimit:I

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->getCount()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->count:I

    .line 8
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->getSize()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->size:I

    .line 9
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->getStartBufferLimit()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->startBufferLimit:I

    .line 10
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->getStopBufferLimit()I

    move-result p1

    iput p1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->stopBufferLimit:I

    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->count:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->size:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->startBufferLimit:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->stopBufferLimit:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public build()Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;-><init>(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setCount(I)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->count:I

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public setSize(I)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->size:I

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public setStartBufferLimit(I)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->startBufferLimit:I

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public setStopBufferLimit(I)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->stopBufferLimit:I

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method
