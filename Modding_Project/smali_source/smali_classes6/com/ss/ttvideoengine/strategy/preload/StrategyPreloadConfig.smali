.class public Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;
.super Ljava/lang/Object;
.source "StrategyPreloadConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_COUNT:I = 0x3

.field public static final DEFAULT_COUNT_LIMIT:I = 0xa

.field public static final DEFAULT_SIZE:I = 0x320

.field public static final DEFAULT_START_BUFFER_LIMIT:I = 0xe

.field public static final DEFAULT_STOP_BUFFER_LIMIT:I = 0x5


# instance fields
.field private final count:I

.field private final size:I

.field private final startBufferLimit:I

.field private final stopBufferLimit:I


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->access$000(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->count:I

    .line 4
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->access$100(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->size:I

    .line 5
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->access$200(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->startBufferLimit:I

    .line 6
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->access$300(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;)I

    move-result p1

    iput p1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->stopBufferLimit:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;-><init>(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->count:I

    .line 2
    .line 3
    return v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public getStartBufferLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->startBufferLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public getStopBufferLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->stopBufferLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "StrategyPreloadConfig{count="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->count:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", size="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->size:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", startBufferLimit="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->startBufferLimit:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", stopBufferLimit="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->stopBufferLimit:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x7d

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
