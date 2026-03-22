.class public Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;
.super Ljava/lang/Object;
.source "PreRenderAlgorithmDefault.java"

# interfaces
.implements Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreRender_AlgorithmDef"


# instance fields
.field private mAutoRangeKB:I

.field private mBufferListener:Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;

.field private mListener:Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;

.field private mSource:Lcom/ss/ttvideoengine/source/Source;

.field private mSourceCache:Lcom/ss/ttvideoengine/preRender/SourceCache;

.field private mSourceCacheEnough:Z

.field private mSourceCacheListener:Lcom/ss/ttvideoengine/preRender/SourceCacheListener;

.field private mStop:Z

.field private final mTraceId:Ljava/lang/String;

.field private mTriggered:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "@"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mTraceId:Ljava/lang/String;

    .line 26
    .line 27
    const/16 v0, 0x1f4

    .line 28
    .line 29
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mAutoRangeKB:I

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSourceCacheEnough:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mTriggered:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mStop:Z

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic a(Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;Lcom/ss/ttvideoengine/source/Source;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->lambda$checkSourceCache$0(Lcom/ss/ttvideoengine/source/Source;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mTraceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->startPreRender()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->pausePreRender()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkPlayBuffer()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault$1;-><init>(Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mBufferListener:Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;

    .line 7
    .line 8
    invoke-static {}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->instance()Lcom/ss/ttvideoengine/preRender/PlayBufferManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mBufferListener:Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->addListener(Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private synthetic lambda$checkSourceCache$0(Lcom/ss/ttvideoengine/source/Source;J)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mAutoRangeKB:I

    .line 2
    .line 3
    int-to-long v0, p1

    .line 4
    const-wide/16 v2, 0x400

    .line 5
    .line 6
    mul-long/2addr v0, v2

    .line 7
    cmp-long p1, p2, v0

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSourceCacheEnough:Z

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mTraceId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, " start preRender cache enough "

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "PreRender_AlgorithmDef"

    .line 37
    .line 38
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->startPreRender()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private pausePreRender()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mStop:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mTriggered:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSourceCacheEnough:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mTraceId:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " pause preRender"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "PreRender_AlgorithmDef"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mTriggered:Z

    .line 41
    .line 42
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mListener:Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;->onPausePreRender()V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method private startPreRender()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mStop:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mTriggered:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mTriggered:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mListener:Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;->onTriggerPreRender()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method private updateSettingsInfo()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "prerender"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v1, "auto_range_k"

    .line 15
    .line 16
    const/16 v2, 0x1f4

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mAutoRangeKB:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method protected checkSourceCache()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/preRender/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/preRender/a;-><init>(Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSourceCacheListener:Lcom/ss/ttvideoengine/preRender/SourceCacheListener;

    .line 7
    .line 8
    new-instance v0, Lcom/ss/ttvideoengine/preRender/SourceCache;

    .line 9
    .line 10
    invoke-static {}, Lcom/ss/ttvideoengine/preRender/TimerDefault;->instance()Lcom/ss/ttvideoengine/preRender/TimerDefault;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/preRender/SourceCache;-><init>(Lcom/ss/ttvideoengine/preRender/Timer;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSourceCache:Lcom/ss/ttvideoengine/preRender/SourceCache;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSource:Lcom/ss/ttvideoengine/source/Source;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/preRender/SourceCache;->setSource(Lcom/ss/ttvideoengine/source/Source;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSourceCache:Lcom/ss/ttvideoengine/preRender/SourceCache;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSourceCacheListener:Lcom/ss/ttvideoengine/preRender/SourceCacheListener;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/preRender/SourceCache;->addSourceCacheListener(Lcom/ss/ttvideoengine/preRender/SourceCacheListener;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSourceCache:Lcom/ss/ttvideoengine/preRender/SourceCache;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/preRender/SourceCache;->start()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public getAutoRange()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mAutoRangeKB:I

    .line 2
    .line 3
    mul-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    return v0
.end method

.method public shouldStartPreRender(Lcom/ss/ttvideoengine/source/Source;Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;)V
    .locals 2
    .param p1    # Lcom/ss/ttvideoengine/source/Source;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mTraceId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " shouldStartPreRender "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "PreRender_AlgorithmDef"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->updateSettingsInfo()V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSourceCacheEnough:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mTriggered:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mStop:Z

    .line 37
    .line 38
    iput-object p2, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mListener:Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSource:Lcom/ss/ttvideoengine/source/Source;

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->checkPlayBuffer()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->checkSourceCache()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mStop:Z

    .line 3
    .line 4
    invoke-static {}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->instance()Lcom/ss/ttvideoengine/preRender/PlayBufferManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mBufferListener:Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/preRender/PlayBufferManager;->removeListener(Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSourceCache:Lcom/ss/ttvideoengine/preRender/SourceCache;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSourceCacheListener:Lcom/ss/ttvideoengine/preRender/SourceCacheListener;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/preRender/SourceCache;->removeSourceCacheListener(Lcom/ss/ttvideoengine/preRender/SourceCacheListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSourceCache:Lcom/ss/ttvideoengine/preRender/SourceCache;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/preRender/SourceCache;->stop()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->mSourceCache:Lcom/ss/ttvideoengine/preRender/SourceCache;

    .line 29
    .line 30
    :cond_0
    return-void
.end method
