.class Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;
.super Ljava/lang/Object;
.source "VideoEventOneOutSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventContext"
.end annotation


# instance fields
.field private mAudioBaseLenMs:J

.field private mAudioDecoderLenMs:J

.field private mAudioFormaterLenMs:J

.field private mBeginPos:I

.field private mBitrateAfter:I

.field private mBitrateBefore:I

.field public mBt:I

.field private mCostTime:J

.field public mCpuRate:D

.field public mCpuSpeed:D

.field public mCurrent:F

.field private mDropCount:I

.field private mEndPos:I

.field private mEndT:J

.field private mEndType:Ljava/lang/String;

.field public mHeadset:I

.field public mIsABR:I

.field public mIsBackground:I

.field public mIsCharging:I

.field public mIsRadioMode:I

.field public mLastAVSwitchInterval:J

.field public mLastForebackSwitchInterval:J

.field public mLastHeadsetSwitchInterval:J

.field private mLastRebufT:J

.field public mLastResSwitchInterval:J

.field private mLastSeekT:J

.field public mMaxAVDiff:J

.field private mPauseTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mPower:I

.field public mPowerSaveMode:I

.field private mPtsList:Ljava/lang/String;

.field private mQualityDescAfter:Ljava/lang/String;

.field private mQualityDescBefore:Ljava/lang/String;

.field private mResolultionAfter:Ljava/lang/String;

.field private mResolutionBefore:Ljava/lang/String;

.field private mStartT:J

.field private mVideoBaseLenMs:J

.field private mVideoDecFpsList:Ljava/lang/String;

.field private mVideoDecoderLenMs:J

.field private mVideoFormaterLenMS:J

.field final synthetic this$0:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->this$0:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, -0x80000000

    .line 2
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mStartT:J

    .line 3
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mEndT:J

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mPtsList:Ljava/lang/String;

    const/high16 v2, -0x80000000

    .line 5
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mDropCount:I

    .line 6
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mAudioFormaterLenMs:J

    .line 7
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mVideoFormaterLenMS:J

    .line 8
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mAudioDecoderLenMs:J

    .line 9
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mVideoDecoderLenMs:J

    .line 10
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mAudioBaseLenMs:J

    .line 11
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mVideoBaseLenMs:J

    .line 12
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mResolutionBefore:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mResolultionAfter:Ljava/lang/String;

    .line 14
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mBitrateBefore:I

    .line 15
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mBitrateAfter:I

    .line 16
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mVideoDecFpsList:Ljava/lang/String;

    .line 17
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastRebufT:J

    .line 18
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastSeekT:J

    .line 19
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mBeginPos:I

    .line 20
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mEndPos:I

    .line 21
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mCostTime:J

    .line 22
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mEndType:Ljava/lang/String;

    .line 23
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mIsABR:I

    .line 24
    const-string p1, ""

    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mQualityDescBefore:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mQualityDescAfter:Ljava/lang/String;

    .line 26
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mIsRadioMode:I

    .line 27
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastAVSwitchInterval:J

    .line 28
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastResSwitchInterval:J

    .line 29
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mHeadset:I

    .line 30
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mBt:I

    .line 31
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastHeadsetSwitchInterval:J

    .line 32
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mPower:I

    .line 33
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mIsCharging:I

    .line 34
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mMaxAVDiff:J

    .line 35
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mIsBackground:I

    .line 36
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastForebackSwitchInterval:J

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mPauseTimeList:Ljava/util/ArrayList;

    const-wide/high16 v0, 0x36a0000000000000L    # 1.401298464324817E-45

    .line 38
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mCpuRate:D

    .line 39
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mCpuSpeed:D

    .line 40
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mPowerSaveMode:I

    const/4 p1, 0x1

    .line 41
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mCurrent:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mStartT:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1000(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mVideoDecoderLenMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1002(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mVideoDecoderLenMs:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$102(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mStartT:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$1100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mAudioDecoderLenMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1102(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mAudioDecoderLenMs:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$1200(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mVideoBaseLenMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1202(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mVideoBaseLenMs:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$1300(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mAudioBaseLenMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1302(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mAudioBaseLenMs:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$1400(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mEndType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1402(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mEndType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1500(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mEndPos:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1502(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mEndPos:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1600(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mEndT:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1602(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mEndT:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$1700(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mCostTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1702(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mCostTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$1800(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mResolultionAfter:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1802(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mResolultionAfter:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1900(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mBitrateAfter:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1902(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mBitrateAfter:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mBeginPos:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2000(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mQualityDescAfter:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2002(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mQualityDescAfter:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$202(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mBeginPos:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2100(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mDropCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2102(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mDropCount:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2200(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mPtsList:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2202(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mPtsList:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2300(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mVideoDecFpsList:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2302(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mVideoDecFpsList:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2400(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mPauseTimeList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastRebufT:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$302(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastRebufT:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastSeekT:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$402(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mLastSeekT:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mResolutionBefore:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mResolutionBefore:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$600(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mBitrateBefore:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$602(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mBitrateBefore:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$700(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mQualityDescBefore:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$702(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mQualityDescBefore:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$800(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mVideoFormaterLenMS:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$802(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mVideoFormaterLenMS:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$900(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mAudioFormaterLenMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$902(Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync$EventContext;->mAudioFormaterLenMs:J

    .line 2
    .line 3
    return-wide p1
.end method
