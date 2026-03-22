.class public Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;
.super Ljava/lang/Object;
.source "StrategyCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter$StrategyCenterHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TTVideoEngine"

.field private static sConfigInfo:Ljava/util/Map;

.field public static sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

.field public static sNetSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

.field private static speedPredictorListener:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;

.field private static speedPredictorMlConfig:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorMLConfig;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;-><init>()V

    return-void
.end method

.method public static closeNewStartAndSelectGearSpeedPredictor()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static createAbrSpeedPredictor(II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "[ABR] start speed predictor, type:%d\uff0cintervalMs:%d"

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "TTVideoEngine"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;-><init>(I)V

    .line 34
    .line 35
    .line 36
    sput-object p1, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 37
    .line 38
    return-void
.end method

.method public static createNewStartAndSelectGearSpeedPredictor(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "[IESSpeedPredictor] start new speed predictor, type:%d"

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "TTVideoEngine"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 33
    .line 34
    sget-object p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sConfigInfo:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v0, p0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->setConfigInfo(Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static createSpeedPredictor(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "[IESSpeedPredictor] start speed predictor, type:%d"

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "TTVideoEngine"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    if-eq p0, v0, :cond_2

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    if-eq p0, v0, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    if-ne p0, v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :try_start_0
    new-instance v0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;

    .line 40
    .line 41
    sget-object v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->speedPredictorListener:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;-><init>(Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 47
    .line 48
    sget-object v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->speedPredictorMlConfig:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorMLConfig;

    .line 49
    .line 50
    invoke-virtual {v0, p0, v1}, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->setupAlgorithmTypeAndConfig(ILcom/bytedance/vcloud/networkpredictor/ISpeedPredictorMLConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    new-instance v0, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/bytedance/vcloud/networkpredictor/DefaultSpeedPredictor;-><init>(I)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 65
    .line 66
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter$StrategyCenterHolder;->access$100()Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static setConfigInfo(Ljava/util/Map;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sConfigInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public static setSpeedPredictorListener(Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->speedPredictorListener:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;

    .line 2
    .line 3
    return-void
.end method

.method public static setSpeedPredictorMlConfig(Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorMLConfig;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->speedPredictorMlConfig:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorMLConfig;

    .line 2
    .line 3
    return-void
.end method

.method public static setSpeedQueueSize(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->setSpeedQueueSize(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
