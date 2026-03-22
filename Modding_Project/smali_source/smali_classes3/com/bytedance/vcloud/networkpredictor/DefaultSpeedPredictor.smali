.class public Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;
.super Ljava/lang/Object;
.source "DefaultSpeedPredictor.java"

# interfaces
.implements Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final KeyIsUpdateSpeedRecord:I = 0x0

.field public static final SPEEDPREDICTOR_ALOG_ANET:I = 0x2

.field public static final SPEEDPREDICTOR_ALOG_ANETIES:I = 0x6

.field public static final SPEEDPREDICTOR_ALOG_HANET:I = 0x1

.field public static final SPEEDPREDICTOR_ALOG_HECNET:I = 0x0

.field public static final SPEEDPREDICTOR_ALOG_KFNET:I = 0x4

.field public static final SPEEDPREDICTOR_ALOG_LSTMNET:I = 0x3

.field private static final SPEEDPREDICTOR_LOG_LEVEL_KEY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SpeedPredictor"


# instance fields
.field lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mHandle:J

.field private mSpeedUpdateHander:Landroid/os/Handler;

.field final readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private subThread:Ljava/lang/Thread;

.field final writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 29
    .line 30
    invoke-static {}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorJniLoader;->loadLibrary()Z

    .line 31
    .line 32
    .line 33
    sget-boolean v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorJniLoader;->isLibraryLoaded:Z

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const-string p1, "SpeedPredictor"

    .line 38
    .line 39
    const-string v0, "[SpeedPredictor] no predictor native loaded"

    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_create(I)J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    iput-wide v2, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 50
    .line 51
    invoke-static {v1}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorConfig;->setLoglevel(I)V

    .line 52
    .line 53
    .line 54
    iget-wide v2, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 55
    .line 56
    invoke-static {}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorConfig;->getLogLevel()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-direct {p0, v2, v3, v1, p1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_setIntValue(JII)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private native _close(J)V
.end method

.method private native _create(I)J
.end method

.method private native _getAverageDownloadSpeed(JIIZ)F
.end method

.method private native _getDoubleValue(JID)D
.end method

.method private native _getDownloadSpeed(JI)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native _getIntValue(JII)I
.end method

.method private native _getLastPredictConfidence(J)F
.end method

.method private native _getLongValue(JIJ)J
.end method

.method private native _getMultidimensionalDownloadSpeeds(J)Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;
.end method

.method private native _getMultidimensionalPredictSpeeds(J)Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;
.end method

.method private native _getPredictSpeed(JI)F
.end method

.method private native _getVersion()Ljava/lang/String;
.end method

.method private native _prepare(J)V
.end method

.method private native _release(J)V
.end method

.method private native _setConfigSpeedInfo(JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native _setDoubleValue(JID)V
.end method

.method private native _setIntValue(JII)V
.end method

.method private native _setLongValue(JIJ)V
.end method

.method private native _setSpeedQueueSize(JI)V
.end method

.method private native _setStringValue(JILjava/lang/String;)V
.end method

.method private native _start(J)V
.end method

.method private native _update(JLjava/util/ArrayList;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecord;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method private native _updateOldWithStreamId(JLcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method private native _updateWithSizeTime(JJJJ)V
.end method

.method static synthetic access$002(Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mSpeedUpdateHander:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p1
.end method

.method private resetSpeedPredictor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mSpeedUpdateHander:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mSpeedUpdateHander:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mSpeedUpdateHander:Landroid/os/Handler;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->subThread:Ljava/lang/Thread;

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private speedPredictorResultArrayToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-gtz v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    .line 14
    .line 15
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResult;->toJsonObject()Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-lez p1, :cond_4

    .line 52
    .line 53
    new-instance p1, Lorg/json/JSONObject;

    .line 54
    .line 55
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "data"

    .line 59
    .line 60
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-object p1

    .line 68
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_4
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_close(J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public getAverageDownloadSpeed(IIZ)F
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v2, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long v0, v2, v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 17
    .line 18
    .line 19
    const/high16 p1, -0x40800000    # -1.0f

    .line 20
    .line 21
    return p1

    .line 22
    :cond_0
    move-object v1, p0

    .line 23
    move v4, p1

    .line 24
    move v5, p2

    .line 25
    move v6, p3

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_getAverageDownloadSpeed(JIIZ)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object p2, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    .line 34
    .line 35
    return p1
.end method

.method public getDownloadSpeed(I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_getDownloadSpeed(JI)Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method

.method public getLastPredictConfidence()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 17
    .line 18
    .line 19
    const/high16 v0, -0x40800000    # -1.0f

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_getLastPredictConfidence(J)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 29
    .line 30
    .line 31
    return v0
.end method

.method public getMultidimensionalDownloadSpeeds()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_getMultidimensionalDownloadSpeeds(J)Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;->getResultCollection()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->speedPredictorResultArrayToString(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public getMultidimensionalDownloadSpeedsObj()Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_getMultidimensionalDownloadSpeeds(J)Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public getMultidimensionalPredictSpeeds()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 18
    .line 19
    .line 20
    return-object v3

    .line 21
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_getMultidimensionalPredictSpeeds(J)Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;->getResultCollection()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->speedPredictorResultArrayToString(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 44
    .line 45
    .line 46
    return-object v3
.end method

.method public getMultidimensionalPredictSpeedsObj()Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_getMultidimensionalPredictSpeeds(J)Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public getPredictSpeed()F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->getPredictSpeed(I)F

    move-result v0

    return v0
.end method

.method public getPredictSpeed(I)F
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 3
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 5
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_getPredictSpeed(JI)F

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "j_1.7.0"

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_getVersion()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 10
    .line 11
    iget-object v2, p1, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->mSpeedRecord:Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->mStreamIdMediaTypeMap:Ljava/util/Map;

    .line 14
    .line 15
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_updateOldWithStreamId(JLcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public prepare()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_prepare(J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public release()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_close(J)V

    .line 21
    .line 22
    .line 23
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 24
    .line 25
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_release(J)V

    .line 26
    .line 27
    .line 28
    iput-wide v2, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->resetSpeedPredictor()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public setConfigInfo(Ljava/util/Map;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_setConfigSpeedInfo(JLjava/util/Map;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setSpeedQueueSize(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_setSpeedQueueSize(JI)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_start(J)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public update(JJJ)V
    .locals 10

    move-object v9, p0

    .line 35
    iget-object v0, v9, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 36
    iget-wide v1, v9, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    .line 37
    iget-object v0, v9, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :cond_0
    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_updateWithSizeTime(JJJJ)V

    .line 39
    iget-object v0, v9, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method public update(Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 17
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 18
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    .line 19
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 20
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->subThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 21
    new-instance v0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor$1;

    invoke-direct {v0, p0, p0}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor$1;-><init>(Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->subThread:Ljava/lang/Thread;

    .line 22
    const-string v1, "speed_predict_update_thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->subThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mSpeedUpdateHander:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 25
    new-instance v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;

    invoke-direct {v0}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;-><init>()V

    const/4 v1, 0x0

    .line 26
    iput v1, v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->what:I

    .line 27
    iput-object p1, v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->mSpeedRecord:Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;

    .line 28
    iput-object p2, v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->mStreamIdMediaTypeMap:Ljava/util/Map;

    .line 29
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mSpeedUpdateHander:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 30
    iput v1, p1, Landroid/os/Message;->what:I

    .line 31
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 33
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_updateOldWithStreamId(JLcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;Ljava/util/Map;)V

    .line 34
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2
    iget-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, v2, :cond_1

    .line 8
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 9
    new-instance v3, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecord;

    invoke-direct {v3}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecord;-><init>()V

    .line 10
    invoke-virtual {v3, v2}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecord;->extractFields(Lorg/json/JSONObject;)V

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 13
    iget-wide v1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->mHandle:J

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->_update(JLjava/util/ArrayList;Ljava/util/Map;)V

    .line 14
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    .line 15
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method
