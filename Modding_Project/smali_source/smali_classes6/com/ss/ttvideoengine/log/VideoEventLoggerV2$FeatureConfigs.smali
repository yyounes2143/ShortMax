.class Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;
.super Ljava/lang/Object;
.source "VideoEventLoggerV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeatureConfigs"
.end annotation


# instance fields
.field private mAEType:I

.field private mAudioRenderType:I

.field private mCodecFrcLevel:I

.field private mDisableSplitVoice:I

.field private mEnableABRStartup:I

.field private mEnableAsyncPosition:I

.field private mEnableAsyncPrepare:I

.field private mEnableAutoRange:I

.field private mEnableBufferDirectly:I

.field private mEnableEngineLooper:I

.field private mEnableFallbackApi:I

.field private mEnableGearStrategy:I

.field private mEnableHttps:I

.field private mEnableHwDropNonRef:I

.field private mEnableLazySeek:I

.field private mEnableLoadControl:I

.field private mEnableNativeYV12:I

.field private mEnableOutletDropLimit:I

.field private mEnableSRStrategy:I

.field private mEnableSmoothClock:I

.field private mEnableStrategyCenter:I

.field private mEnableThreadPriority:I

.field private mEnableVolumeBalance:I

.field private mFirstBufEndMs:I

.field private mHDRType:I

.field private mImageScaleType:I

.field private mKeepFormatThreadAlive:I

.field private mRenderType:I

.field private mSkipFindStreamInfo:I

.field final synthetic this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableBufferDirectly:I

    .line 8
    .line 9
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mFirstBufEndMs:I

    .line 10
    .line 11
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableVolumeBalance:I

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mAEType:I

    .line 15
    .line 16
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableEngineLooper:I

    .line 17
    .line 18
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableAutoRange:I

    .line 19
    .line 20
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableHwDropNonRef:I

    .line 21
    .line 22
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableHttps:I

    .line 23
    .line 24
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableFallbackApi:I

    .line 25
    .line 26
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableAsyncPosition:I

    .line 27
    .line 28
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableLoadControl:I

    .line 29
    .line 30
    const/high16 v1, -0x80000000

    .line 31
    .line 32
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mRenderType:I

    .line 33
    .line 34
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mImageScaleType:I

    .line 35
    .line 36
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mAudioRenderType:I

    .line 37
    .line 38
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mSkipFindStreamInfo:I

    .line 39
    .line 40
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableAsyncPrepare:I

    .line 41
    .line 42
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mCodecFrcLevel:I

    .line 43
    .line 44
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableLazySeek:I

    .line 45
    .line 46
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mKeepFormatThreadAlive:I

    .line 47
    .line 48
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mHDRType:I

    .line 49
    .line 50
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableABRStartup:I

    .line 51
    .line 52
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableThreadPriority:I

    .line 53
    .line 54
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableSmoothClock:I

    .line 55
    .line 56
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mDisableSplitVoice:I

    .line 57
    .line 58
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableNativeYV12:I

    .line 59
    .line 60
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableStrategyCenter:I

    .line 61
    .line 62
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableOutletDropLimit:I

    .line 63
    .line 64
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableGearStrategy:I

    .line 65
    .line 66
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableSRStrategy:I

    .line 67
    .line 68
    return-void
.end method

.method static synthetic access$1000(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableHttps:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1002(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableHttps:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableFallbackApi:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1102(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableFallbackApi:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1200(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableAsyncPosition:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1202(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableAsyncPosition:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1300(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableLoadControl:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1302(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableLoadControl:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1400(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mRenderType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1402(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mRenderType:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1500(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mImageScaleType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1502(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mImageScaleType:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mAudioRenderType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1602(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mAudioRenderType:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1700(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mSkipFindStreamInfo:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1702(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mSkipFindStreamInfo:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1800(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableAsyncPrepare:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1802(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableAsyncPrepare:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1900(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mCodecFrcLevel:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1902(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mCodecFrcLevel:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2000(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableLazySeek:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2002(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableLazySeek:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2100(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mKeepFormatThreadAlive:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2102(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mKeepFormatThreadAlive:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2200(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mHDRType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2202(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mHDRType:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2300(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableABRStartup:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2302(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableABRStartup:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2400(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableGearStrategy:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2402(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableGearStrategy:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2500(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableThreadPriority:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2502(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableThreadPriority:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableSmoothClock:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2602(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableSmoothClock:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2700(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mDisableSplitVoice:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2702(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mDisableSplitVoice:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2800(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableStrategyCenter:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2802(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableStrategyCenter:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2900(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableNativeYV12:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2902(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableNativeYV12:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableBufferDirectly:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$3000(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableOutletDropLimit:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$3002(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableOutletDropLimit:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$302(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableBufferDirectly:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3100(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableSRStrategy:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$3102(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableSRStrategy:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mFirstBufEndMs:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$402(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mFirstBufEndMs:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableVolumeBalance:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableVolumeBalance:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mAEType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$602(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mAEType:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$700(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableEngineLooper:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$702(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableEngineLooper:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableAutoRange:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$802(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableAutoRange:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$900(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableHwDropNonRef:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$902(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->mEnableHwDropNonRef:I

    .line 2
    .line 3
    return p1
.end method
