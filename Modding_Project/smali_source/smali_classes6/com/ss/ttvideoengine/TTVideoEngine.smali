.class public Lcom/ss/ttvideoengine/TTVideoEngine;
.super Ljava/lang/Object;
.source "TTVideoEngine.java"

# interfaces
.implements Lcom/ss/ttvideoengine/TTVideoEngineInterface;


# static fields
.field private static HTTP_DNS_FIRST:Z = false

.field private static final OWN_PLAYER_LOADER_CLASS:Ljava/lang/String; = "com.ss.ttm.player.TTPlayerLibLoader"

.field private static final SDK_VERSION:Ljava/lang/String; = "1.10.172.340-jzdrm-premium"

.field private static final TAG:Ljava/lang/String; = "TTVideoEngine"

.field private static mFallbackUseExoPlayer:Z = false

.field private static mForceUseLitePlayer:Z = false

.field private static mForceUsePluginPlayer:Z = false

.field private static mHARInfo:Lcom/ss/ttvideoengine/info/HARInfo; = null

.field private static mQualityInfos:[Ljava/lang/String; = null

.field static sABRAlgorithmType:I = 0x0

.field static sABRSpeedPredictInputType:I = 0x0

.field public static sBuryDataOptimize:Z = false

.field public static sColdStartOptimize:Z = false

.field static sConfigCenterCheckDiff:I = 0x0

.field private static sDNSType:[I = null

.field static sDeviceScore:F = 0.0f

.field static sEnableEncryptBuryData:I = 0x0

.field static sEnableGloablMuteFeature:I = 0x0

.field public static sEngineCrosstalkCheck:Z = true

.field static sEngineStateListeners:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/VideoEngineStateListener;",
            ">;"
        }
    .end annotation
.end field

.field static sGlobalMute:I = 0x0

.field static sIsReportTestSpeedInfo:I = 0x0

.field static sNetSpeedAbrPredictType:I = 0x0

.field private static sPlayerOutputLog:I = 0x0

.field private static sRefactorFlag:I = 0x0

.field static sReportSpeedInfoMaxWindowSize:I = 0x64

.field static sTestSpeedInterval:I = 0x0

.field static sTestSpeedSampleInterval:I = 0x1f4

.field static sUseConfigCenter:I


# instance fields
.field private final mLogcatTag:Ljava/lang/String;

.field private final mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sput-object v0, Lcom/ss/ttvideoengine/TTVideoEngine;->mQualityInfos:[Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sEngineStateListeners:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;-><init>(Landroid/content/Context;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/Map;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTVideoEngine@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mLogcatTag:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init2, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.10.172.340-jzdrm-premium"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTVideoEngine"

    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p1, p2, p3, p0}, Lcom/ss/ttvideoengine/TTVideoEngine;->createEngine(Landroid/content/Context;ILjava/util/Map;Lcom/ss/ttvideoengine/TTVideoEngine;)Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    return-void
.end method

.method public static addEngineStateListener(Lcom/ss/ttvideoengine/VideoEngineStateListener;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sEngineStateListeners:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static addListener(Lcom/ss/ttvideoengine/setting/ISettingsListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->addListener(Lcom/ss/ttvideoengine/setting/ISettingsListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static addPreloadMedias(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/preload/PreloadMedia;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addPreloadMedias(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static addPreloadMedias(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/preload/PreloadMedia;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addPreloadMedias(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static addPreloadModelMedia(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addPreloadModelMedia(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;)V

    return-void
.end method

.method public static addPreloadModelMedia(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mSceneId:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addPreloadModelMedia(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;)V

    return-void
.end method

.method public static addPreloadURLMedia(Lcom/ss/ttvideoengine/preload/PreloadURLMedia;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addPreloadUrlMedia(Lcom/ss/ttvideoengine/preload/PreloadURLMedia;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static addPriorityPreloadTask(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addPriorityPreloadTask(Lcom/ss/ttvideoengine/preload/PreloadModelMedia;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static addStrategySources(Ljava/util/List;)V
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
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->addStrategySources(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static addTask(Lcom/ss/ttvideoengine/PreloaderURLItem;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/PreloaderURLItem;)V

    return-void
.end method

.method public static addTask(Lcom/ss/ttvideoengine/PreloaderVidItem;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/PreloaderVidItem;)V

    return-void
.end method

.method public static addTask(Lcom/ss/ttvideoengine/PreloaderVideoModelItem;)V
    .locals 1

    .line 14
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/PreloaderVideoModelItem;)V

    return-void
.end method

.method public static addTask(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;J)V
    .locals 1

    .line 13
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;J)V

    return-void
.end method

.method public static addTask(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;J)V
    .locals 1

    .line 12
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;J)V

    return-void
.end method

.method public static addTask(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/VideoModel;",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 15
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;J)V

    return-void
.end method

.method public static addTask(Ljava/lang/String;Lcom/ss/ttvideoengine/PreloaderVidItem;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Ljava/lang/String;Lcom/ss/ttvideoengine/PreloaderVidItem;)V

    return-void
.end method

.method public static addTask(Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/DataLoaderResourceProvider;)V
    .locals 7

    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/DataLoaderResourceProvider;Ljava/lang/String;)V

    return-void
.end method

.method public static addTask(Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/DataLoaderResourceProvider;Ljava/lang/String;)V
    .locals 7

    .line 7
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/DataLoaderResourceProvider;Ljava/lang/String;)V

    return-void
.end method

.method public static addTask(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    .line 5
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public static addTask(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;J)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;J)V

    return-void
.end method

.method public static addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .line 4
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static addTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 6

    .line 8
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V

    return-void
.end method

.method public static addTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    .line 9
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public static addTask([Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    .line 10
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addTask([Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public static businessEvent(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(II)V

    return-void
.end method

.method public static businessEvent(III)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(III)V

    return-void
.end method

.method public static businessEvent(IILjava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(IILjava/lang/String;)V

    return-void
.end method

.method public static businessEvent(ILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(ILjava/lang/String;)V

    return-void
.end method

.method public static cancelAllPreloadTasks()V
    .locals 2

    .line 1
    const-string v0, "TTVideoEngine"

    .line 2
    .line 3
    const-string v1, "<preload> cancel all preload task outside"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->cancelAllTasks()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static cancelAllWaitReqs()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->cancelAllWaitReqs()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static cancelPreloadTask(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->cancelTask(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static cancelPreloadTaskByFilePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->cancelTaskByFilePath(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static cancelPreloadTaskByVideoId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->cancelTaskByVideoId(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static cleanCacheDir(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->cleanCacheDir(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static cleanSpecifiedCacheDir(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->cleanSpecifiedCacheDir(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static clearAllCaches()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->clearAllCaches()V

    return-void
.end method

.method public static clearAllCaches(Z)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->clearAllCaches(Z)V

    return-void
.end method

.method public static clearAllStrategy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->clearAll()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static closeDataLoader()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->close()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static computeMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/math/BigInteger;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x10

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    return-object p0
.end method

.method public static configBoeSuffix(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/TTHelper;->configBoeSuffix(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static copyDataLoaderCache(Lcom/ss/ttvideoengine/cache/CopyCacheItem;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->copyCache(Lcom/ss/ttvideoengine/cache/CopyCacheItem;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static createEngine(Landroid/content/Context;ILjava/util/Map;Lcom/ss/ttvideoengine/TTVideoEngine;)Lcom/ss/ttvideoengine/TTVideoEngineInterface;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;-><init>(Landroid/content/Context;ILjava/util/Map;Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static dataLoaderIsRunning()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static disableAutoTrim(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->disableAutoTrim(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static enableAutoTrim(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->enableAutoTrim(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static enableEngineStrategy(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->enable(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static enableNewMDLFetcher(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public static enableTLSv1_2(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->enableTLSv1_2(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static encryptTimestamp(Landroid/content/Context;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getEngineUniqueId(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1, p0}, Lcom/ss/ttvideoengine/JniUtils;->encryptTimestamp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method protected static findBestResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;ILcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;)Lcom/ss/ttvideoengine/Resolution;
    .locals 2

    .line 3
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/BestResolution;->findDefaultResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;

    move-result-object p1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/BestResolution;->findByNetLevel(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    sget-object p2, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p2}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getPredictSpeed()F

    move-result p2

    const/high16 v0, 0x41000000    # 8.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p2, v0

    float-to-double v0, p2

    goto :goto_0

    :cond_2
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 7
    :goto_0
    invoke-static {p0, p1, v0, v1, p3}, Lcom/ss/ttvideoengine/selector/BestResolution;->findAwemeShiftResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;DLcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;)Lcom/ss/ttvideoengine/Resolution;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/BestResolution;->findMaxQualityResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_4
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/BestResolution;->findMaxCacheResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static findBestResolution(Lcom/ss/ttvideoengine/model/VideoModel;I)Lcom/ss/ttvideoengine/Resolution;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->findBestResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;ILcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;)Lcom/ss/ttvideoengine/Resolution;

    move-result-object p0

    return-object p0
.end method

.method public static findBestResolution(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;I)Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->findBestResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;ILcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;)Lcom/ss/ttvideoengine/Resolution;

    move-result-object p0

    return-object p0
.end method

.method public static findCachedResolutionList(Lcom/ss/ttvideoengine/model/VideoModel;Ljava/util/Map;)Ljava/util/List;
    .locals 11
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/VideoModel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/Resolution;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/VideoModel;->getSupportResolutions()[Lcom/ss/ttvideoengine/Resolution;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x1

    .line 17
    if-ge v2, v3, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    const/4 v2, 0x7

    .line 21
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    const-string v3, "audio"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    sget v2, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget v2, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 43
    .line 44
    :goto_0
    const/4 v3, 0x0

    .line 45
    aget-object v4, v1, v3

    .line 46
    .line 47
    array-length v4, v1

    .line 48
    move v5, v3

    .line 49
    :goto_1
    if-ge v5, v4, :cond_4

    .line 50
    .line 51
    aget-object v6, v1, v5

    .line 52
    .line 53
    invoke-virtual {p0, v6, v2, p1, v3}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    const/16 v8, 0xf

    .line 64
    .line 65
    invoke-virtual {v6, v8}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v7, v8}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getCacheFileSize(Ljava/lang/String;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v7

    .line 73
    const-wide/16 v9, 0x0

    .line 74
    .line 75
    cmp-long v7, v7, v9

    .line 76
    .line 77
    if-lez v7, :cond_3

    .line 78
    .line 79
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    if-eqz v7, :cond_3

    .line 84
    .line 85
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static findDefaultResolution(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/BestResolution;->findDefaultResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static findMaxCacheInfo(Lcom/ss/ttvideoengine/model/IVideoModel;)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-static {p0, v0}, Lcom/ss/ttvideoengine/selector/BestResolution;->findMaxCacheInfo(Lcom/ss/ttvideoengine/model/IVideoModel;I)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p0

    return-object p0
.end method

.method public static findMaxCacheInfo(Lcom/ss/ttvideoengine/model/IVideoModel;I)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/BestResolution;->findMaxCacheInfo(Lcom/ss/ttvideoengine/model/IVideoModel;I)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p0

    return-object p0
.end method

.method public static findMaxCacheResolution(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/BestResolution;->findMaxCacheResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static findMaxQualityResolution(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/BestResolution;->findMaxQualityResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static focusEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "[strategy] focus engine"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getVideoID()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "TTVideoEngine"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getVideoID()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {p0, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->focusMedia(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static focusMedia(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "TTVideoEngine"

    .line 8
    .line 9
    const-string p1, "[strategy] focus media . videoId is null"

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->focusMedia(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static forceRemoveCacheFile(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->forceRemoveCacheFile(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static getAllQualityInfos()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngine;->mQualityInfos:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getAppSessionID()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->appSessionId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->appSessionId:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public static getBizPortraitJson()Lorg/json/JSONObject;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/ss/ttvideoengine/setting/SettingsHelper;->MODULE_BIZ_PORTRAIT:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static getCacheFileSize(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)J
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSize(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getCacheFileSize(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 5
    sget v2, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    const/4 v3, 0x0

    invoke-interface {p0, p1, v2, p2, v3}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object v2

    const/16 v3, 0xf

    if-eqz v2, :cond_0

    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    .line 7
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getCacheFileSize(Ljava/lang/String;)J

    move-result-wide v0

    .line 9
    :cond_0
    sget v2, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    const/4 v4, 0x1

    invoke-interface {p0, p1, v2, p2, v4}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object p1

    .line 11
    invoke-virtual {p0, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getCacheFileSize(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v0, p0

    :cond_1
    return-wide v0
.end method

.method public static getCacheFileSize(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;)J
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSize(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getCacheFileSize(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/VideoModel;",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSize(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getCacheFileSize(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getCacheSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCacheFileSizeByFilePath(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getCacheSizeByFilePath(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static getCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getCacheInfoByFilePath(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getCacheInfoByFilePath(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getContinueCacheSize(Ljava/lang/String;IJ)J
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getContinueCacheSize(Ljava/lang/String;IJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static getDNSType()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sDNSType:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getDeviceID()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getEngineUniqueId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/drm/DrmUtils;->getEngineUniqueId(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getEngineVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "1.10.172.340-jzdrm-premium"

    .line 2
    .line 3
    return-object v0
.end method

.method public static getGearStrategyConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getGlobalConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getHARInfo()Lcom/ss/ttvideoengine/info/HARInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngine;->mHARInfo:Lcom/ss/ttvideoengine/info/HARInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getIoWriteError(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getIoWriteError(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static getMissReason(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getMissReason(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static getNetworkSpeedFromPredictor()F
    .locals 5

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x323

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->moduleSwitch(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "TTVideoEngine"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getNetworkSpeed()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, " get network speed from vod strategy. info = "

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v0

    .line 44
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getPredictSpeed()F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    new-instance v2, Ljava/text/DecimalFormat;

    .line 53
    .line 54
    const-string v3, "#.000000000"

    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    float-to-double v3, v0

    .line 60
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v4, "[IESSpeedPredictor] get network speed:"

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return v0

    .line 85
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    .line 86
    .line 87
    return v0
.end method

.method public static getPlayerAbility(I)Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    if-eq p0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne p0, v1, :cond_1

    .line 11
    .line 12
    :cond_0
    const-string/jumbo p0, "unsupport_h266"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "true"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-string/jumbo p0, "unsupport_dash"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1
    return-object v0
.end method

.method public static getPlayerOutputLog()I
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sPlayerOutputLog:I

    .line 2
    .line 3
    return v0
.end method

.method public static getPreRenderEngine(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPreRenderEngine(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)Lcom/ss/ttvideoengine/TTVideoEngine;

    move-result-object p0

    return-object p0
.end method

.method public static getPreRenderEngine(Ljava/lang/String;)Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->getPreRenderEngine(Ljava/lang/String;)Lcom/ss/ttvideoengine/TTVideoEngine;

    move-result-object p0

    return-object p0
.end method

.method public static getProbeIntervalMS()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getProbeIntervalMS()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static getProbeType()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getProbeType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static getSpeedPredictorInputType()I
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sABRSpeedPredictInputType:I

    .line 2
    .line 3
    return v0
.end method

.method public static getStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getStringValue(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getVodPreloadLabel(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static initAppLog()V
    .locals 0

    .line 1
    return-void
.end method

.method public static isExpiredIpEnable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static isFallbackUseExoPlayer()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngine;->mFallbackUseExoPlayer:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isForceUseLitePlayer()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngine;->mForceUseLitePlayer:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isForceUsePluginPlayer()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngine;->mForceUsePluginPlayer:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isHttpDnsFirst()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngine;->HTTP_DNS_FIRST:Z

    .line 2
    .line 3
    return v0
.end method

.method public static isStrategyCenterRunning()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static isUsingTTNETHttpDns()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static onPause()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "TTVideoEngine"

    .line 2
    .line 3
    const-string v1, "onPause"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static onResume()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "TTVideoEngine"

    .line 2
    .line 3
    const-string v1, "onResume"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static onlyUseMediaLoader(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->onlyUseMediaLoader(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static openBytedanceHTTPDNS(Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;-><init>(Lcom/ss/ttvideoengine/httpdns/ByteDanceHttpDnsDepend;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/httpdns/BytedanceHTTPDNSParser;->start()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->setDnsCustomType(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static playTaskProgress()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->playTaskProgress()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static preConnect(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->preConnect(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static proxyUrl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->proxyUrl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static proxyUrl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 2
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ss/ttvideoengine/DataLoaderHelper;->proxyUrl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quickGetCacheFileSize(Ljava/lang/String;)J
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->tryQuickGetCacheFileSize(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v2, v0, v2

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getCacheSize(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    :cond_0
    return-wide v0
.end method

.method public static releaseStartAndSelectGearSpeedPredictor()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x323

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->moduleSwitch(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "TTVideoEngine"

    .line 14
    .line 15
    const-string v1, "releaseStartAndSelectGearSpeedPredictor, vod strategy speed predictor"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->closeNewStartAndSelectGearSpeedPredictor()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static declared-synchronized releaseTextureRender()V
    .locals 2

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderManager;->release()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v1

    .line 15
    :catch_0
    :goto_0
    monitor-exit v0

    .line 16
    return-void
.end method

.method public static removeAllPreloadMedia()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->removeAllPreloadMedia(Ljava/lang/String;I)V

    return-void
.end method

.method public static removeAllPreloadMedia(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->removeAllPreloadMedia(Ljava/lang/String;I)V

    return-void
.end method

.method public static removeCacheFile(Lcom/ss/ttvideoengine/model/IVideoModel;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v1

    const/16 v2, 0xf

    .line 7
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->forceRemoveCacheFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeCacheFile(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->removeCacheFile(Ljava/lang/String;)V

    return-void
.end method

.method public static removeEngineStateListener(Lcom/ss/ttvideoengine/VideoEngineStateListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sEngineStateListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static removeMedia(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->removeMedia(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removeMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->removeMedia(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removePreRenderEngine(Ljava/lang/String;)Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->removePreRenderEngine(Ljava/lang/String;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static removePreloadMedia(Lcom/ss/ttvideoengine/preload/PreloadMedia;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->removePreloadMedia(Lcom/ss/ttvideoengine/preload/PreloadMedia;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static removePriorityPreloadTask(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->removePriorityPreloadTask(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static saveAllPlayEvent(Landroid/content/Context;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/ss/ttvideoengine/log/EventSaver;->getInstance(Landroid/content/Context;)Lcom/ss/ttvideoengine/log/EventSaver;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/EventSaver;->saveAllPlayEvent()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setAlgorithmJson(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[strategy] setAlgorithmJson key="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " jsonString"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "TTVideoEngine"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->setAlgorithmJson(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static setAllQualityInfos([Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mQualityInfos:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setAppInfo(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5

    .line 1
    const-string v0, "screen_width"

    .line 2
    .line 3
    const-string v1, "screen_height"

    .line 4
    .line 5
    const-string v2, "TTVideoEngine"

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-lez v3, :cond_2

    .line 14
    .line 15
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "setAppInfo:"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object p0, Lcom/ss/ttvideoengine/BaseAppInfo;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    const-string v3, "appid"

    .line 42
    .line 43
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3}, Lcom/ss/ttvideoengine/utils/TTHelper;->parseInt(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sput v3, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppID:I

    .line 52
    .line 53
    const-string v3, "appname"

    .line 54
    .line 55
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/String;

    .line 60
    .line 61
    sput-object v3, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppName:Ljava/lang/String;

    .line 62
    .line 63
    const-string v3, "appchannel"

    .line 64
    .line 65
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Ljava/lang/String;

    .line 70
    .line 71
    sput-object v3, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppChannel:Ljava/lang/String;

    .line 72
    .line 73
    const-string v3, "appversion"

    .line 74
    .line 75
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Ljava/lang/String;

    .line 80
    .line 81
    sput-object v3, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppVersion:Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_0

    .line 88
    .line 89
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    sput v1, Lcom/ss/ttvideoengine/BaseAppInfo;->mScreenHeight:I

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception p0

    .line 103
    goto :goto_1

    .line 104
    :cond_0
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    sput v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mScreenWidth:I

    .line 121
    .line 122
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/JniUtils;->loadLibrary()V

    .line 123
    .line 124
    .line 125
    const-string v0, "region"

    .line 126
    .line 127
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Ljava/lang/String;

    .line 132
    .line 133
    sput-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mRegion:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->getDeviceID()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    sput-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mDeviceId:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {}, Lcom/ss/ttvideoengine/EngineAdapter;->initDefaultEventUploader()V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {}, Lcom/ss/ttvideoengine/BaseAppInfo;->toJsonString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->configAppInfo(Ljava/lang/String;Ljava/util/Map;)V

    .line 153
    .line 154
    .line 155
    invoke-static {p0}, Lcom/ss/ttvideoengine/EngineAdapter;->initSettings(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    const/16 p0, 0x467

    .line 159
    .line 160
    const/4 p1, 0x1

    .line 161
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 162
    .line 163
    .line 164
    sget-object p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->appSessionId:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-eqz p0, :cond_2

    .line 171
    .line 172
    sget-object p0, Lcom/ss/ttvideoengine/BaseAppInfo;->mDeviceId:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/SessionIDGenerator;->generateSessionID(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    sput-object p0, Lcom/ss/ttvideoengine/log/VideoEventBase;->appSessionId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {v2, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :cond_2
    :goto_2
    return-void
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setContext(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setDNSType(II)V
    .locals 2

    .line 1
    filled-new-array {p0, p1}, [I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sDNSType:[I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "setDNSType main:"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, " backup:"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "TTVideoEngine"

    .line 34
    .line 35
    invoke-static {p1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static setDataLoaderListener(Lcom/ss/ttvideoengine/DataLoaderListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setListener(Lcom/ss/ttvideoengine/DataLoaderListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setDataLoaderNetworkClient(Lcom/ss/ttvideoengine/net/TTVNetClient;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setNetworkClient(Lcom/ss/ttvideoengine/net/TTVNetClient;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setDefaultABRAlgorithm(I)V
    .locals 0

    .line 1
    sput p0, Lcom/ss/ttvideoengine/TTVideoEngine;->sABRAlgorithmType:I

    .line 2
    .line 3
    return-void
.end method

.method public static setDeviceInfo(Lcom/ss/ttvideoengine/info/DeviceInfoVE;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "DeviceInfoVE.overAllScore: "

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/ss/ttvideoengine/info/DeviceInfoVE;->overAllScore:Ljava/lang/Float;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "TTVideoEngine"

    .line 24
    .line 25
    invoke-static {v0, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static setEngineStrategyListener(Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->setListener(Lcom/ss/ttvideoengine/strategy/EngineStrategyListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setExpiredIpEnable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public static setFallbackUseExoPlayer(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mFallbackUseExoPlayer:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setFloatValue(IF)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "TTVideoEngine.setFloatValue key="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " value="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "TTVideoEngine"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x2e2

    .line 32
    .line 33
    if-eq p0, v0, :cond_1

    .line 34
    .line 35
    const/16 v0, 0x2e3

    .line 36
    .line 37
    if-eq p0, v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/16 p0, 0x3ec

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->businessEvent(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 51
    .line 52
    cmpl-float p0, p1, p0

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    cmpl-float p0, p1, p0

    .line 58
    .line 59
    if-lez p0, :cond_2

    .line 60
    .line 61
    sput p1, Lcom/ss/ttvideoengine/TTVideoEngine;->sDeviceScore:F

    .line 62
    .line 63
    invoke-static {}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->getInstance()Lcom/ss/ttvideoengine/portrait/PortraitEngine;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "device_score"

    .line 72
    .line 73
    invoke-virtual {p0, v1, v0}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->setLabel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const/high16 p0, 0x41200000    # 10.0f

    .line 77
    .line 78
    mul-float/2addr p1, p0

    .line 79
    float-to-int p0, p1

    .line 80
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/16 v0, 0x7b

    .line 85
    .line 86
    invoke-virtual {p1, v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setIntValue(II)V

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_0
    return-void
.end method

.method public static setForceUseLitePlayer(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mForceUseLitePlayer:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setForceUsePluginPlayer(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mForceUsePluginPlayer:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setFormatProvider(Lcom/ss/ttvideoengine/utils/FormatProvider;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/FormatProvider$FormatProviderHolder;->set(Lcom/ss/ttvideoengine/utils/FormatProvider;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setGearStrategyConfig(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[GearStrategy]setGearStrategyConfig config="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "TTVideoEngine"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->setGlobalConfig(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static setGlobalNetworkClient(Lcom/ss/ttvideoengine/net/TTVNetClient;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->gNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 2
    .line 3
    return-void
.end method

.method public static setHARInfo(Lcom/ss/ttvideoengine/info/HARInfo;)V
    .locals 3

    .line 1
    const-string v0, "TTVideoEngine"

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string/jumbo p0, "setHARInfo harInfo is null"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-interface {p0}, Lcom/ss/ttvideoengine/info/HARInfo;->getHARStatus()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {p0}, Lcom/ss/ttvideoengine/info/HARInfo;->getHARScore()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string/jumbo v2, "setHARInfo status=%d score=%d"

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sput-object p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mHARInfo:Lcom/ss/ttvideoengine/info/HARInfo;

    .line 43
    .line 44
    return-void
.end method

.method public static setHTTPDNSFirst(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/ss/ttvideoengine/TTVideoEngine;->HTTP_DNS_FIRST:Z

    .line 2
    .line 3
    return-void
.end method

.method public static setIntValue(II)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "TTVideoEngine.setIntValue key="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " value="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "TTVideoEngine"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x2a0

    .line 32
    .line 33
    if-ne p0, v0, :cond_0

    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v0, "do set static render type, value = "

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->setRenderType(I)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_0
    const/16 v0, 0x2a2

    .line 65
    .line 66
    if-ne p0, v0, :cond_1

    .line 67
    .line 68
    const-string p0, "enable https for fetch"

    .line 69
    .line 70
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sput p1, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->sEnableHTTPSForFetch:I

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_1
    const/16 v0, 0x70

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    const/4 v3, 0x1

    .line 81
    if-ne p0, v0, :cond_3

    .line 82
    .line 83
    if-lez p1, :cond_2

    .line 84
    .line 85
    const/4 p0, 0x2

    .line 86
    sput p0, Lcom/ss/ttvideoengine/TTVideoEngine;->sABRSpeedPredictInputType:I

    .line 87
    .line 88
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setIntValue(II)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_2
    sput v3, Lcom/ss/ttvideoengine/TTVideoEngine;->sABRSpeedPredictInputType:I

    .line 98
    .line 99
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0, v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setIntValue(II)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :cond_3
    const/16 v0, 0x2a4

    .line 109
    .line 110
    if-ne p0, v0, :cond_4

    .line 111
    .line 112
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->setSpeedQueueSize(I)V

    .line 113
    .line 114
    .line 115
    const/16 p0, 0x3ea

    .line 116
    .line 117
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->businessEvent(II)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :cond_4
    const/16 v0, 0x2be

    .line 123
    .line 124
    if-ne p0, v0, :cond_5

    .line 125
    .line 126
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->setOutputLogLevel(I)V

    .line 131
    .line 132
    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v0, "set log level:"

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_5
    const/16 v0, 0x517

    .line 156
    .line 157
    if-ne p0, v0, :cond_6

    .line 158
    .line 159
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->setOutputLogLevelPercise(I)V

    .line 164
    .line 165
    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v0, "set log level percise:"

    .line 172
    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_6
    const/16 v0, 0x2ac

    .line 189
    .line 190
    if-ne p0, v0, :cond_7

    .line 191
    .line 192
    sput p1, Lcom/ss/ttvideoengine/TTVideoEngine;->sRefactorFlag:I

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_7
    const/16 v0, 0x3c0

    .line 197
    .line 198
    if-ne p0, v0, :cond_8

    .line 199
    .line 200
    sput p1, Lcom/ss/ttvideoengine/TTVideoEngine;->sEnableGloablMuteFeature:I

    .line 201
    .line 202
    const/16 p0, 0x3f7

    .line 203
    .line 204
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->setGlobalIntOptionForKey(II)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_8
    const/16 v0, 0x3c1

    .line 210
    .line 211
    if-ne p0, v0, :cond_9

    .line 212
    .line 213
    sput p1, Lcom/ss/ttvideoengine/TTVideoEngine;->sGlobalMute:I

    .line 214
    .line 215
    const/16 p0, 0x3f8

    .line 216
    .line 217
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->setGlobalIntOptionForKey(II)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_9
    const/16 v0, 0x3cd

    .line 223
    .line 224
    if-ne p0, v0, :cond_a

    .line 225
    .line 226
    const/16 p0, 0x54f

    .line 227
    .line 228
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->setGlobalIntOptionForKey(II)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_a
    const/16 v0, 0x2b1

    .line 234
    .line 235
    if-ne p0, v0, :cond_b

    .line 236
    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v0, "do set static enable cpp opt bvc1, value = "

    .line 243
    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->setEnableCPPh265CodecOpt(I)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_b
    const/16 v0, 0x2cf

    .line 267
    .line 268
    if-ne p0, v0, :cond_c

    .line 269
    .line 270
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->setEnableBmf(I)V

    .line 275
    .line 276
    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v0, "enable bmf"

    .line 283
    .line 284
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_c
    const/16 v0, 0x2d0

    .line 300
    .line 301
    if-ne p0, v0, :cond_d

    .line 302
    .line 303
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->setEnableUseRealBitrate(I)V

    .line 308
    .line 309
    .line 310
    new-instance p0, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    const-string v0, "set use realbitrate:"

    .line 316
    .line 317
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :cond_d
    const/16 v0, 0x2e1

    .line 333
    .line 334
    if-ne p0, v0, :cond_e

    .line 335
    .line 336
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->setLazyLoadVideodec(I)V

    .line 341
    .line 342
    .line 343
    new-instance p0, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    const-string v0, "set lazy load videodec:"

    .line 349
    .line 350
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_0

    .line 364
    .line 365
    :cond_e
    const/16 v0, 0x2ee

    .line 366
    .line 367
    if-ne p0, v0, :cond_f

    .line 368
    .line 369
    sput p1, Lcom/ss/ttvideoengine/TTVideoEngine;->sUseConfigCenter:I

    .line 370
    .line 371
    goto/16 :goto_0

    .line 372
    .line 373
    :cond_f
    const/16 v0, 0x2ed

    .line 374
    .line 375
    if-ne p0, v0, :cond_10

    .line 376
    .line 377
    sput p1, Lcom/ss/ttvideoengine/TTVideoEngine;->sConfigCenterCheckDiff:I

    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :cond_10
    const/16 v0, 0x3c4

    .line 382
    .line 383
    if-ne p0, v0, :cond_11

    .line 384
    .line 385
    sput p1, Lcom/ss/ttvideoengine/TTVideoEngine;->sEnableEncryptBuryData:I

    .line 386
    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :cond_11
    const/16 v0, 0x22

    .line 390
    .line 391
    if-ne p0, v0, :cond_12

    .line 392
    .line 393
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->setEnablePcdnAuto(I)V

    .line 398
    .line 399
    .line 400
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setIntValue(II)V

    .line 405
    .line 406
    .line 407
    new-instance p0, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    const-string v0, "set enablePcdnAuto:"

    .line 413
    .line 414
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p0

    .line 424
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_0

    .line 428
    .line 429
    :cond_12
    const/16 v0, 0x3c5

    .line 430
    .line 431
    if-ne p0, v0, :cond_14

    .line 432
    .line 433
    if-ne p1, v3, :cond_13

    .line 434
    .line 435
    move v2, v3

    .line 436
    :cond_13
    sput-boolean v2, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->sEnableContentDataReport:Z

    .line 437
    .line 438
    goto/16 :goto_0

    .line 439
    .line 440
    :cond_14
    const/16 v0, 0xfbb

    .line 441
    .line 442
    if-ne p0, v0, :cond_15

    .line 443
    .line 444
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 445
    .line 446
    .line 447
    move-result-object p0

    .line 448
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->setEnableSelectStringMapMethod(I)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :cond_15
    const/16 v0, 0xfba

    .line 454
    .line 455
    if-ne p0, v0, :cond_16

    .line 456
    .line 457
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 458
    .line 459
    .line 460
    move-result-object p0

    .line 461
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->setEnableSelectUseObject(I)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :cond_16
    const/16 v0, 0x3c6

    .line 467
    .line 468
    if-ne p0, v0, :cond_18

    .line 469
    .line 470
    if-lez p1, :cond_17

    .line 471
    .line 472
    move v2, v3

    .line 473
    :cond_17
    invoke-static {v2}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->setOptimizeLock(Z)V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_0

    .line 477
    .line 478
    :cond_18
    const/16 v0, 0x3c7

    .line 479
    .line 480
    if-ne p0, v0, :cond_1a

    .line 481
    .line 482
    if-lez p1, :cond_19

    .line 483
    .line 484
    move v2, v3

    .line 485
    :cond_19
    invoke-static {v2}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->setOptimizeEnabled(Z)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_0

    .line 489
    .line 490
    :cond_1a
    const/16 v0, 0x3c8

    .line 491
    .line 492
    if-ne p0, v0, :cond_1c

    .line 493
    .line 494
    if-ne p1, v3, :cond_1b

    .line 495
    .line 496
    move v2, v3

    .line 497
    :cond_1b
    sput-boolean v2, Lcom/ss/ttvideoengine/TTVideoEngine;->sBuryDataOptimize:Z

    .line 498
    .line 499
    goto/16 :goto_0

    .line 500
    .line 501
    :cond_1c
    const/16 v0, 0x3c9

    .line 502
    .line 503
    if-ne p0, v0, :cond_1e

    .line 504
    .line 505
    if-ne p1, v3, :cond_1d

    .line 506
    .line 507
    move v2, v3

    .line 508
    :cond_1d
    sput-boolean v2, Lcom/ss/ttvideoengine/TTVideoEngine;->sEngineCrosstalkCheck:Z

    .line 509
    .line 510
    goto/16 :goto_0

    .line 511
    .line 512
    :cond_1e
    const/16 v0, 0x2ef

    .line 513
    .line 514
    if-ne p0, v0, :cond_1f

    .line 515
    .line 516
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 517
    .line 518
    .line 519
    move-result-object p0

    .line 520
    iput p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->dataLoaderHelperLockType:I

    .line 521
    .line 522
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 523
    .line 524
    .line 525
    move-result-object p0

    .line 526
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->updateLockType(I)V

    .line 527
    .line 528
    .line 529
    goto :goto_0

    .line 530
    :cond_1f
    const/16 v0, 0x2f0

    .line 531
    .line 532
    if-ne p0, v0, :cond_20

    .line 533
    .line 534
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 535
    .line 536
    .line 537
    move-result-object p0

    .line 538
    iput p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->enableMdlLockOptimizeV2:I

    .line 539
    .line 540
    goto :goto_0

    .line 541
    :cond_20
    const/16 v0, 0x3ca

    .line 542
    .line 543
    if-ne p0, v0, :cond_22

    .line 544
    .line 545
    if-ne p1, v3, :cond_21

    .line 546
    .line 547
    move v2, v3

    .line 548
    :cond_21
    sput-boolean v2, Lcom/ss/ttvideoengine/TTVideoEngine;->sColdStartOptimize:Z

    .line 549
    .line 550
    if-eqz v2, :cond_27

    .line 551
    .line 552
    sput-boolean v3, Lcom/ss/ttvideoengine/TTVideoEngine;->sBuryDataOptimize:Z

    .line 553
    .line 554
    goto :goto_0

    .line 555
    :cond_22
    const/16 v0, 0x3cb

    .line 556
    .line 557
    if-ne p0, v0, :cond_24

    .line 558
    .line 559
    if-ne p1, v3, :cond_23

    .line 560
    .line 561
    move v2, v3

    .line 562
    :cond_23
    sput-boolean v2, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->sCpuRefreshFix:Z

    .line 563
    .line 564
    new-instance p0, Ljava/lang/StringBuilder;

    .line 565
    .line 566
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .line 568
    .line 569
    const-string p1, "TTVideoEngine.sCpuRefreshFix key="

    .line 570
    .line 571
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object p0

    .line 581
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    goto :goto_0

    .line 585
    :cond_24
    const/16 v0, 0x3cc

    .line 586
    .line 587
    if-ne p0, v0, :cond_26

    .line 588
    .line 589
    if-ne p1, v3, :cond_25

    .line 590
    .line 591
    move v2, v3

    .line 592
    :cond_25
    sput-boolean v2, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->sUseNativeThread:Z

    .line 593
    .line 594
    new-instance p0, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .line 598
    .line 599
    const-string p1, "TTVideoEngine.sUseNativeThread key="

    .line 600
    .line 601
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object p0

    .line 611
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    goto :goto_0

    .line 615
    :cond_26
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setIntValue(II)V

    .line 620
    .line 621
    .line 622
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyKeys;->setIntValue(II)V

    .line 623
    .line 624
    .line 625
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->setIntValue(II)V

    .line 630
    .line 631
    .line 632
    :cond_27
    :goto_0
    return-void
.end method

.method public static setIntValueSync(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setIntValueSync(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setKVStorageProvider(Lcom/ss/ttvideoengine/database/IKVStorageProvider;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->setKVStorageProvider(Lcom/ss/ttvideoengine/database/IKVStorageProvider;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setLoaderEventListener(Lcom/ss/mediakit/medialoader/LoaderListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setLoaderEventListener(Lcom/ss/mediakit/medialoader/LoaderListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setLongValue(IJ)V
    .locals 1

    .line 1
    const/16 v0, 0xd9

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->setALogWriteAddr(J)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0x2e9

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->setEngineOptimizeFlag(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setLongValue(IJ)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public static setNativeThreadInterface(Lcom/ss/ttvideoengine/NativeThreadInterface;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->gNativeThreadInterface:Lcom/ss/ttvideoengine/NativeThreadInterface;

    .line 2
    .line 3
    return-void
.end method

.method public static setNetworkRTTLevelListener(Lcom/ss/ttvideoengine/info/networkRTTLevelListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->setNetworkRTTLevelListener(Lcom/ss/ttvideoengine/info/networkRTTLevelListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setOkhttpCliet(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setOkhttpClient(Lokhttp3/OkHttpClient;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setPlayTaskProgress(F)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setPlayTaskProgress(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static declared-synchronized setPlayerLibraryLoader(Lcom/ss/ttm/player/ILibraryLoader;)V
    .locals 4

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "com.ss.ttm.player.TTPlayerLibLoader"

    .line 5
    .line 6
    const/16 v2, 0xc8

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string/jumbo v2, "setLibraryLoader"

    .line 13
    .line 14
    .line 15
    const-class v3, Lcom/ss/ttm/player/ILibraryLoader;

    .line 16
    .line 17
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    .line 29
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v2, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    const-string v1, "TTVideoEngine"

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v3, "setPlayerLibraryLoader failed = "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .line 60
    .line 61
    :goto_0
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    throw p0
.end method

.method public static setPlayerOutputLog(I)V
    .locals 0

    .line 1
    sput p0, Lcom/ss/ttvideoengine/TTVideoEngine;->sPlayerOutputLog:I

    .line 2
    .line 3
    return-void
.end method

.method public static setPlayerThreadPoolExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    const-string v0, "TTVideoEngine"

    .line 2
    .line 3
    const-string v1, "set player threadpool"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/ss/ttm/player/AVThreadPool;->setExecutorInstance(Ljava/util/concurrent/ExecutorService;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setPortraitService(Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->setPortraitService(Lcom/ss/ttvideoengine/strategrycenter/IPortraitService;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setPredictorDataLoaderListener()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x323

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->moduleSwitch(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "TTVideoEngine"

    .line 14
    .line 15
    const-string/jumbo v1, "setPredictorDataLoaderListener, vod strategy speed predictor"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lcom/ss/ttvideoengine/DataLoaderListener2ForStrategyCenter;->sInstance:Lcom/ss/ttvideoengine/DataLoaderListener2ForStrategyCenter;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addListener(Lcom/ss/ttvideoengine/DataLoaderListener2;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static setPreloadChooseUrlCallback(Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/TTVideoEngineAdapter;->setPreloadChooseUrlCallback(Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setPreloadTaskConfigs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/preload/PreloadTaskConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setTaskConfigs(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setProbeIntervalMS(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setProbeIntervalMS(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setProbeType(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setProbeType(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setProtectCacheDirsAvoidClear([Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setProtectCacheDirsAvoidClear([Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setReportLogByEngine(ZLandroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "setReportLogByEngine "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "TTVideoEngine"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const-string/jumbo p0, "setReportLogByEngine context is null"

    .line 27
    .line 28
    .line 29
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogEngineUploader;->getInstance()Lcom/ss/ttvideoengine/log/AppLogEngineUploader;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/log/AppLogEngineUploader;->setReportLogByEngine(ZLandroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static setSettingConfig(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public static setSpeedPredictorListener(Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->setSpeedPredictorListener(Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setSpeedPredictorMlConfig(Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorMLConfig;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->setSpeedPredictorMlConfig(Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorMLConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setStrategyEventListener(Lcom/ss/ttvideoengine/strategrycenter/IStrategyEventListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->setEventListener(Lcom/ss/ttvideoengine/strategrycenter/IStrategyEventListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setStrategySources(Ljava/util/List;)V
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
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->setStrategySources(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setStrategyStateSupplier(Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->setSupplier(Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setStringValue(ILjava/lang/String;)V
    .locals 1

    .line 1
    const v0, 0xc350

    .line 2
    .line 3
    .line 4
    if-le p0, v0, :cond_0

    .line 5
    .line 6
    const v0, 0xea5f

    .line 7
    .line 8
    .line 9
    if-gt p0, v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->setStringValue(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->setRegionHost(ILjava/lang/String;)Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setStringValue(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x7a

    .line 33
    .line 34
    if-ne p0, v0, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/ss/ttvideoengine/utils/Inspector;->share()Lcom/ss/ttvideoengine/utils/Inspector;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/utils/Inspector;->setHost(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public static setStringValueSync(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setStringValueSync(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setTTDNSServerHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/net/HTTPDNS;->setTTDNSServerHost(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setThreadPoolExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    .line 1
    const-string v0, "TTVideoEngine"

    .line 2
    .line 3
    const-string v1, "set threadpool"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->setExecutorInstance(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setUsingTTNETHttpDns(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public static setVideoEventUploader(Lcom/ss/ttvideoengine/log/IVideoEventUploader;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventManager;->instance:Lcom/ss/ttvideoengine/log/VideoEventManager;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/log/VideoEventManager;->setUploader(Lcom/ss/ttvideoengine/log/IVideoEventUploader;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static setVodSettingsNetClient(Lcom/ss/ttvideoengine/net/TTVNetClient;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->setNetClient(Lcom/ss/ttvideoengine/net/TTVNetClient;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setupNewSpeedPredictorConfigInfo(Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->setConfigInfo(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setupSpeedPredictorInputType(I)V
    .locals 2

    .line 1
    sput p0, Lcom/ss/ttvideoengine/TTVideoEngine;->sABRSpeedPredictInputType:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/16 v1, 0x70

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/16 v0, 0x1f4

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setIntValue(II)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setIntValue(II)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public static startDataLoader(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "TTVideoEngine"

    .line 2
    .line 3
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->setContext(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->start()V

    .line 15
    .line 16
    .line 17
    const-string p0, "DataLoader Start"

    .line 18
    .line 19
    invoke-static {v0, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string v1, "DataLoader Start Fail"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static startIESSpeedPredictor(I)V
    .locals 2

    .line 1
    const-string v0, "net_speed"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/16 v1, 0x323

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->moduleSwitch(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string p0, "TTVideoEngine"

    .line 23
    .line 24
    const-string/jumbo v0, "startIESSpeedPredictor, vod strategy speed predictor"

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-static {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->createSpeedPredictor(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->setPredictorDataLoaderListener()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static startSpeedPredictor(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->startSpeedPredictor(IIII)V

    return-void
.end method

.method public static startSpeedPredictor(IIII)V
    .locals 1

    .line 2
    const-string v0, "net_speed"

    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    sput p0, Lcom/ss/ttvideoengine/TTVideoEngine;->sNetSpeedAbrPredictType:I

    .line 5
    sput p2, Lcom/ss/ttvideoengine/TTVideoEngine;->sIsReportTestSpeedInfo:I

    .line 6
    sput p3, Lcom/ss/ttvideoengine/TTVideoEngine;->sReportSpeedInfoMaxWindowSize:I

    .line 7
    sget p2, Lcom/ss/ttvideoengine/TTVideoEngine;->sABRSpeedPredictInputType:I

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 8
    sput p2, Lcom/ss/ttvideoengine/TTVideoEngine;->sABRSpeedPredictInputType:I

    :cond_2
    if-lez p1, :cond_3

    .line 9
    sput p1, Lcom/ss/ttvideoengine/TTVideoEngine;->sTestSpeedInterval:I

    .line 10
    sput p1, Lcom/ss/ttvideoengine/TTVideoEngine;->sTestSpeedSampleInterval:I

    .line 11
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[ABR] abrSpeedPredictUpdateIntervalMs:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TTVideoEngine"

    invoke-static {p3, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->createAbrSpeedPredictor(II)V

    return-void
.end method

.method public static startStartAndSelectGearSpeedPredictor(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x323

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->moduleSwitch(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p0, "TTVideoEngine"

    .line 14
    .line 15
    const-string/jumbo v0, "startStartAndSelectGearSpeedPredictor ,vod strategy speed predictor"

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static {p0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->createNewStartAndSelectGearSpeedPredictor(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->setPredictorDataLoaderListener()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static switchToCellularNetwork()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->switchToCellularNetwork()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static switchToDefaultNetwork()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->switchToDefaultNetwork()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static tryQuickQueryCacheFileSize(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->quickQueryCacheFileSize(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static uploadSavedEvent(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/log/EventSaver;->getInstance(Landroid/content/Context;)Lcom/ss/ttvideoengine/log/EventSaver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/log/EventSaver;->uploadIfExits(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static writeDataToFile(Ljava/lang/String;JJI[B)I
    .locals 8

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, p0

    .line 6
    move-wide v2, p1

    .line 7
    move-wide v4, p3

    .line 8
    move v6, p5

    .line 9
    move-object v7, p6

    .line 10
    invoke-virtual/range {v0 .. v7}, Lcom/ss/ttvideoengine/DataLoaderHelper;->writeDataToFile(Ljava/lang/String;JJI[B)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method


# virtual methods
.method public addVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->addVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public asyncInitSR(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->asyncInitSR(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearSurface(Landroid/view/Surface;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->clearSurface(Landroid/view/Surface;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public clearTextureRef()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->clearTextureRef()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public configParams(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->configParams(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public configResolution(Lcom/ss/ttvideoengine/Resolution;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->configResolution(Lcom/ss/ttvideoengine/Resolution;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public declared-synchronized createPlayer()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->createPlayer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public createPlayerAsync()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->createPlayerAsync()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public crosstalkHappen(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->crosstalkHappen(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public dynamicControlSR(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->dynamicControlSR(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public forceDraw()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->forceDraw()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAPIString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getAPIString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAudioLatencyTime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getAudioLatencyTime()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAudioLatencytime()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getAudioLatencyTime()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBufferingType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getBufferingType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCacheControlEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getCacheControlEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCacheKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getCacheKeys()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCurrentPlayPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getCurrentPlayPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCurrentPlaybackTime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getCurrentPlaybackTime()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCurrentPlaybackTimeAsync()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getCurrentPlaybackTimeAsync()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCurrentQualityDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getCurrentQualityDesc()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCurrentResolution()Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getCurrentResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDirectUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getDirectUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDubbedMemUrl(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/DubbedInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getDubbedMemUrl(Ljava/util/List;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getFloatOption(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getFloatOption(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getGearStrategyEngineConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getGearStrategyEngineConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getHash()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIVideoModel()Lcom/ss/ttvideoengine/model/IVideoModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getIVideoModel()Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIntOption(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getIntOption(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLoadState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getLoadState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLoadedProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getLoadedProgress()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLongOption(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getLongOption(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getLooping(Z)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getLooping(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getMaxVolume()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getMaxVolume()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMediaPlayer()Lcom/ss/ttm/player/MediaPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getMediaPlayer()Lcom/ss/ttm/player/MediaPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMediaTrackInfos()[Lcom/ss/ttvideoengine/MediaTrackInfoModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getMediaTrackInfos()[Lcom/ss/ttvideoengine/MediaTrackInfoModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMetrics(I)Lcom/ss/ttvideoengine/metrics/IMediaMetrics;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getMetrics(I)Lcom/ss/ttvideoengine/metrics/IMediaMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getMirrorHorizontal()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getMirrorHorizontal()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMirrorVertical()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getMirrorVertical()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getNetClientSetByUser()Lcom/ss/ttvideoengine/net/TTVNetClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getNetClientSetByUser()Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPlayAPIVersion()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getPlayAPIVersion()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPlayErrorInfo()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getPlayErrorInfo()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getPlaybackState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPlayerSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getPlayerSessionId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getQualityDescBeforeDowngrade()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getQualityDescBeforeDowngrade()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getResolutionBeforeDowngrade()Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getResolutionBeforeDowngrade()Lcom/ss/ttvideoengine/Resolution;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getRotation()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStrategyLogData(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getStrategyLogData(Ljava/lang/String;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getStrategySource()Lcom/ss/ttvideoengine/strategy/source/StrategySource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getStrategySource()Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getStringOption(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getSubTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getSubTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSubtitleContentInfo(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getSubtitleContentInfo(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getSurface()Landroid/view/Surface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getTag()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTextureSurface()Lcom/ss/texturerender/VideoSurface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getTextureSurface()Lcom/ss/texturerender/VideoSurface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getTraceId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVideoEngineDataSource()Lcom/ss/ttvideoengine/log/EventLoggerSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getVideoEngineDataSource()Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVideoFormatInfo()Lcom/ss/ttvideoengine/VideoFormatInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getVideoFormatInfo()Lcom/ss/ttvideoengine/VideoFormatInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getVideoHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVideoID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getVideoID()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVideoModel()Lcom/ss/ttvideoengine/model/VideoModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getVideoModel()Lcom/ss/ttvideoengine/model/VideoModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getVideoWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getVolume()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getWatchedDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getWatchedDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ignoreSRResolutionLimit(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->ignoreSRResolutionLimit(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public initEngine(Landroid/content/Context;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public initSRStrategyConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->initSRStrategyConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isDashSource()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isDashSource()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isInHousePlayer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isInHousePlayer()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isLooping()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isMute()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isOSPlayer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isOSPlayer()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isPlayerType(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isPlayerType(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isPrepared()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isPrepared()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isReleased()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isReleased()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isReportLogEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isReportLogEnable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isShouldPlay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isShouldPlay()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isStarted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSupportHDR()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isSupportHDR()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSupportSR()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isSupportSR()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSystemPlayer()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isSystemPlayer()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isplaybackUsedSR()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->isplaybackUsedSR()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public logcatTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mLogcatTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public notifyCacheEnd()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->notifyCacheEnd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public openTextureSR(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->openTextureSR(ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public pauseByInterruption()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->pauseByInterruption()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->play()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->prepare()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public refreshEnginePara(Landroid/content/Context;ILjava/util/Map;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->refreshEnginePara(Landroid/content/Context;ILjava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public declared-synchronized releaseAsync()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->releaseAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method public removeVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->removeVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resetByPool()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->resetByPool()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resetByPoolSyncPart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->resetByPoolSyncPart()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resetEngine()V
    .locals 0

    .line 1
    return-void
.end method

.method public saveEvent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->saveEvent()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public saveFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->saveFrame()Landroid/graphics/Bitmap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public seekTo(ILcom/ss/ttvideoengine/SeekCompletionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->seekTo(ILcom/ss/ttvideoengine/SeekCompletionListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setABRListener(Lcom/ss/ttvideoengine/ABRListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setABRListener(Lcom/ss/ttvideoengine/ABRListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAIBarrageInfoListener(Lcom/ss/ttvideoengine/AIBarrageSimpleCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setAIBarrageInfoListener(Lcom/ss/ttvideoengine/AIBarrageSimpleCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAIBarrageUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setAIBarrageUrl(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAdditionSubModel(Lcom/ss/ttvideoengine/SubModelProvider;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setAdditionSubModel(Lcom/ss/ttvideoengine/SubModelProvider;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAsyncInit(ZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setAsyncInit(ZI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAudioProcessor(Lcom/ss/ttm/player/AudioProcessor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setAudioProcessor(Lcom/ss/ttm/player/AudioProcessor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAutoRangeRead(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setAutoRangeRead(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBarrageMaskHeadLen(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setBarrageMaskHeadLen(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBarrageMaskUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setBarrageMaskUrl(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBarrageMaskUrlUseDataLoader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setBarrageMaskUrlUseDataLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBufferProcessCallback(Lcom/ss/ttm/player/BufferProcessCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setBufferProcessCallback(Lcom/ss/ttm/player/BufferProcessCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBufferThresholdControl(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setBufferThresholdControl(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCacheControlEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setCacheControlEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCacheFilePathListener(Lcom/ss/ttvideoengine/CacheFilePathListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setCacheFilePathListener(Lcom/ss/ttvideoengine/CacheFilePathListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCacheInfoLists([Ljava/lang/String;[J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setCacheInfoLists([Ljava/lang/String;[J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCustomHeaderSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setCustomHeaderSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCustomInfo(Lcom/ss/ttvideoengine/log/IVideoEventLogger$VideoEventCustomInfo;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setCustomInfo(Lcom/ss/ttvideoengine/log/IVideoEventLogger$VideoEventCustomInfo;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCustomStr(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setCustomStr(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V

    return-void
.end method

.method public setDataSource(Lcom/ss/ttvideoengine/DataSource;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDataSource(Lcom/ss/ttvideoengine/DataSource;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDecryptionKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDecryptionKey(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDefaultFileCacheDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setDirectURL(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDirectURL(Ljava/lang/String;)V

    return-void
.end method

.method public setDirectURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDirectURL(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDirectUrlUseDataLoader(Lcom/ss/ttvideoengine/DirectUrlItem;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDirectUrlUseDataLoader(Lcom/ss/ttvideoengine/DirectUrlItem;)V

    return-void
.end method

.method public setDirectUrlUseDataLoader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDirectUrlUseDataLoader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDirectUrlUseDataLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDirectUrlUseDataLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDirectUrlUseDataLoader([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDirectUrlUseDataLoader([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDirectUrlUseDataLoader([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDirectUrlUseDataLoader([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDirectUrlUseDataLoaderByFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDirectUrlUseDataLoaderByFilePath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDirectUrlUseDataLoaderByFilePath([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDirectUrlUseDataLoaderByFilePath([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDirectUrlUseDataLoaderByFilePath([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDirectUrlUseDataLoaderByFilePath([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDisplayMode(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setDisplayMode(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEffect(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setEffect(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEncodedKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setEncodedKey(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setExpectedParams(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/ss/ttvideoengine/Resolution;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setExpectedParams(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setExternLogListener(Lcom/ss/ttvideoengine/log/ExternVideoLoggerListener;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setExternLogListener(Lcom/ss/ttvideoengine/log/ExternVideoLoggerListener;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setExtraSurface(Landroid/view/Surface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setExtraSurface(Landroid/view/Surface;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFFmpegProtocolObject(Lcom/ss/ttvideoengine/TTVideoEngineFFmpegProtocol;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setFFmpegProtocolObject(Lcom/ss/ttvideoengine/TTVideoEngineFFmpegProtocol;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setFileCacheDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setFloatOption(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setFloatOption(IF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGearStrategyEngineConfig(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setGearStrategyEngineConfig(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGearStrategyListener(Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getGearStrategyEngineConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setGearStrategyListener(Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setUserData(Ljava/lang/Object;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setGroupID(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setGroupID(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGroupIdUseDataLoader(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setGroupIdUseDataLoader(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIntOption(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIsMute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIsMute(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLensParams(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setLensParams(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setListener(Lcom/ss/ttvideoengine/VideoEngineListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setListener(Lcom/ss/ttvideoengine/VideoEngineListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLiveID(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setVideoID(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLoadControl(Lcom/ss/ttm/player/LoadControl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setLoadControl(Lcom/ss/ttm/player/LoadControl;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLocalURL(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setLocalURL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLoggerIntOption(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setLoggerIntOption(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLoggerLongOption(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setLoggerLongOption(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLongOption(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setLongOption(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setLooping(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaskInfoListener(Lcom/ss/ttvideoengine/MaskInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setMaskInfoListener(Lcom/ss/ttvideoengine/MaskInfoListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMirrorHorizontal(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setMirrorHorizontal(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMirrorVertical(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setMirrorVertical(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNetworkClient(Lcom/ss/ttvideoengine/net/TTVNetClient;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setNetworkClient(Lcom/ss/ttvideoengine/net/TTVNetClient;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setObjectOption(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setObjectOption(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPlayAPIVersion(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setPlayAPIVersion(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPlayAuthToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setPlayAuthToken(Ljava/lang/String;)V

    return-void
.end method

.method public setPlayAuthToken(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setPlayAuthToken(Ljava/lang/String;I)V

    return-void
.end method

.method public setPlayInfo(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setPlayInfo(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPlayItem(Lcom/ss/ttvideoengine/TTVideoEnginePlayItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setPlayItem(Lcom/ss/ttvideoengine/TTVideoEnginePlayItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPlayerEventListener(Lcom/ss/ttvideoengine/PlayerEventSimpleListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setPlayerEventListener(Lcom/ss/ttvideoengine/PlayerEventSimpleListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPlayerHLSChooseStreamCallback(Lcom/ss/ttvideoengine/TTVideoEnginePlayHLSChooseStreamCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setPlayerHLSChooseStreamCallback(Lcom/ss/ttvideoengine/TTVideoEnginePlayHLSChooseStreamCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPlayerSurface(Landroid/view/Surface;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setPlayerSurface(Landroid/view/Surface;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPreloaderItem(Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setPreloaderItem(Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setQcomVpp(ZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setQcomVpp(ZI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRadioMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setRadioMode(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setReportLogEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setReportLogEnable(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setResolutionMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/Resolution;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setResolutionMap(Ljava/util/HashMap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRotation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setRotation(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSARChangeListener(Lcom/ss/ttvideoengine/SARChangeListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSARChangeListener(Lcom/ss/ttvideoengine/SARChangeListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSRInitConfig(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSRInitConfig(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSRInitConfig(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSRInitConfig(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public setSource(Lcom/ss/ttvideoengine/source/Source;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    check-cast p1, Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setStrategySource(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setSpeedShiftConfig(Lcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSpeedShiftConfig(Lcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSrMaxTextureSize(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSrMaxTextureSize(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSrMaxTexureSize(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSrMaxTextureSize(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStartTime(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setStartTime(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStrategySource(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setStrategySource(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStreamInfoListener(Lcom/ss/ttvideoengine/StreamInfoListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setStreamInfoListener(Lcom/ss/ttvideoengine/StreamInfoListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStringOption(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setStringOption(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSubAuthToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSubAuthToken(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSubDesInfoModel(Lcom/ss/ttvideoengine/SubDesInfoModelProvider;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSubDesInfoModel(Lcom/ss/ttvideoengine/SubDesInfoModelProvider;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSubInfoCallBack(Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSubInfoCallBack(Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSubInfoListener(Lcom/ss/ttvideoengine/SubInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSubInfoListener(Lcom/ss/ttvideoengine/SubInfoListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSubTag(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSubTag(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSurface(Landroid/view/Surface;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSurfaceHolder(Landroid/view/SurfaceHolder;Z)V

    return-void
.end method

.method public setSurfaceHolderSync(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSurfaceHolderSync(Landroid/view/SurfaceHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSurfaceSync(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSurfaceSync(Landroid/view/Surface;)V

    return-void
.end method

.method public setSurfaceSync(Landroid/view/Surface;J)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setSurfaceSync(Landroid/view/Surface;J)V

    return-void
.end method

.method public setTTHlsDrmToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setTTHlsDrmToken(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setTag(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTestSpeedEnable(ILcom/ss/ttvideoengine/TestNetSpeedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setTestSpeedEnable(ILcom/ss/ttvideoengine/TestNetSpeedListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTokenUrlTemplate(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setTokenUrlTemplate(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTraitObject(ILcom/ss/ttm/player/TraitObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setTraitObject(ILcom/ss/ttm/player/TraitObject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUnSupportSampleRates([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setUnSupportSampleRates([I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoBufferDetailListener(Lcom/ss/ttvideoengine/VideoBufferDetailListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setVideoBufferDetailListener(Lcom/ss/ttvideoengine/VideoBufferDetailListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoBufferListener(Lcom/ss/ttvideoengine/VideoBufferListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setVideoBufferListener(Lcom/ss/ttvideoengine/VideoBufferListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoEngineGetInfoListener(Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setVideoEngineGetInfoListener(Lcom/ss/ttvideoengine/VideoEngineGetInfoListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoEngineInfoListener(Lcom/ss/ttvideoengine/VideoEngineInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setVideoEngineInfoListener(Lcom/ss/ttvideoengine/VideoEngineInfoListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoEngineSimpleCallback(Lcom/ss/ttvideoengine/VideoEngineSimpleCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setVideoEngineSimpleCallback(Lcom/ss/ttvideoengine/VideoEngineSimpleCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoID(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setVideoID(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoInfoListener(Lcom/ss/ttvideoengine/VideoInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setVideoInfoListener(Lcom/ss/ttvideoengine/VideoInfoListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    return-void
.end method

.method public setVideoModel(Lcom/ss/ttvideoengine/model/VideoModel;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setVideoModel(Lcom/ss/ttvideoengine/model/VideoModel;)V

    return-void
.end method

.method public setVideoURLRouteListener(Lcom/ss/ttvideoengine/VideoURLRouteListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setVideoURLRouteListener(Lcom/ss/ttvideoengine/VideoURLRouteListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setVolume(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public snapshot(Lcom/ss/ttvideoengine/SnapshotListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->snapshot(Lcom/ss/ttvideoengine/SnapshotListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public supportedQualityInfos()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->supportedQualityInfos()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public supportedResolutionTypes()[Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->supportedResolutionTypes()[Lcom/ss/ttvideoengine/Resolution;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public supportedSubInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/SubInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->supportedSubInfoList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public supportedSubtitleLangs()[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->supportedSubtitleLangs()[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public supporth265Playback()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->supporth265Playback()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public supporth266Playback()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->supporth266Playback()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public updateSRStrategyConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngine;->mVideoEngine:Lcom/ss/ttvideoengine/TTVideoEngineInterface;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->updateSRStrategyConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
