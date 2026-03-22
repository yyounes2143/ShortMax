.class public Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;
.super Ljava/lang/Object;
.source "AwemeSpeedPredictor.java"

# interfaces
.implements Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;
.implements Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemeListener;


# static fields
.field public static final SPEEDPREDICTOR_ALOG_DEFAULT:I = 0x4

.field public static final SPEEDPREDICTOR_ALOG_INTELLIGENT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AwemeSpeedPredictor"


# instance fields
.field private mAwemeRealPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;

.field private mSpeedPredictorListener:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    const-string v0, "AwemeSpeedPredictor"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mAwemeRealPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mSpeedPredictorListener:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;

    .line 10
    .line 11
    :try_start_0
    const-string v2, "com.bytedance.vcloud.iesnetworkpredictnative.NetworkSpeedManager"

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const-string v2, "AwemeSpeedPredictor: No Class Find"

    .line 19
    .line 20
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-object v2, v1

    .line 24
    :goto_0
    const-string v3, "getInstance"

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    new-array v5, v4, [Ljava/lang/Class;

    .line 28
    .line 29
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    const-string v3, "AwemeSpeedPredictor: No Class GetInstance Method Find"

    .line 36
    .line 37
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    new-array v3, v4, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mAwemeRealPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    const-string v1, "AwemeSpeedPredictor: No instance Obj Produce"

    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mSpeedPredictorListener:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;

    .line 58
    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;)Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mAwemeRealPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    return-void
.end method

.method public getAverageDownloadSpeed(IIZ)F
    .locals 0

    .line 1
    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    .line 3
    return p1
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mSpeedPredictorListener:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;->getCountry()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDownFileState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mSpeedPredictorListener:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;->getDownFileState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getDownloadSpeed(I)Ljava/util/Map;
    .locals 0
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
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getFilesCachePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mSpeedPredictorListener:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;->getFilesCachePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIOExecutor()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mSpeedPredictorListener:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;->getIOExecutor()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLastPredictConfidence()F
    .locals 1

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    .line 3
    return v0
.end method

.method public getMultidimensionalDownloadSpeeds()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getMultidimensionalDownloadSpeedsObj()Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getMultidimensionalPredictSpeeds()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getMultidimensionalPredictSpeedsObj()Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mSpeedPredictorListener:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;->getNetworkType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPhoneSignal()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mSpeedPredictorListener:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;->getPhoneSignal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPredictSpeed()F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->getPredictSpeed(I)F

    move-result v0

    return v0
.end method

.method public getPredictSpeed(I)F
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mAwemeRealPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;

    invoke-interface {p1}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;->getSpeed()D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "A1.7.0"

    .line 2
    .line 3
    return-object v0
.end method

.method public prepare()V
    .locals 0

    .line 1
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public setConfigInfo(Ljava/util/Map;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSpeedQueueSize(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setupAlgorithmTypeAndConfig(ILcom/bytedance/vcloud/networkpredictor/ISpeedPredictorMLConfig;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->timer:Ljava/util/Timer;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mAwemeRealPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;->setSpeedAlgorithmType(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x5

    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mAwemeRealPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;

    .line 21
    .line 22
    invoke-interface {p1, p0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;->setPredictorListener(Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemeListener;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mAwemeRealPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;

    .line 26
    .line 27
    invoke-interface {p1, p2}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;->configMlModel(Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorMLConfig;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mAwemeRealPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;

    .line 31
    .line 32
    invoke-interface {p1, v0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;->setSpeedAlgorithmType(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->startCalculate()V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public start()V
    .locals 0

    .line 1
    return-void
.end method

.method startCalculate()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/Timer;

    .line 2
    .line 3
    const-string v1, "awemeSpeedPredictor"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->timer:Ljava/util/Timer;

    .line 9
    .line 10
    new-instance v1, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor$1;-><init>(Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x1f4

    .line 16
    .line 17
    const-wide/16 v4, 0x1f4

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method stopCalculate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->timer:Ljava/util/Timer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public update(JJJ)V
    .locals 7

    const-wide/16 p5, 0x0

    cmp-long p5, p3, p5

    if-gtz p5, :cond_0

    return-void

    :cond_0
    long-to-double v3, p1

    const-wide/high16 p1, 0x4020000000000000L    # 8.0

    mul-double/2addr p1, v3

    long-to-double p5, p3

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p5, v0

    div-double v1, p1, p5

    .line 3
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->mAwemeRealPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;->monitorVideoSpeed(DDJ)V

    return-void
.end method

.method public update(Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;Ljava/util/Map;)V
    .locals 0
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

    .line 1
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    .line 2
    return-void
.end method
