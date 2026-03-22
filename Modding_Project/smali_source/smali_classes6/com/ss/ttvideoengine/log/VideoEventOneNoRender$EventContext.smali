.class Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;
.super Ljava/lang/Object;
.source "VideoEventOneNoRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventContext"
.end annotation


# instance fields
.field audioBaseLengthMs:J

.field audioDecoderLengthMs:J

.field audioFormatLengthMs:J

.field costTime:J

.field mBeginPos:I

.field mBt:I

.field mCpuRate:D

.field mCpuSpeed:D

.field mCurrent:F

.field mDequeueOutputBufferCountInEnd:J

.field mDequeueOutputBufferCountInStart:J

.field mEnableGloablMuteFeature:I

.field mEndPos:I

.field mEndT:J

.field mEndType:Ljava/lang/String;

.field mGlobalMute:I

.field mHeadset:I

.field mIsABR:I

.field mIsBackground:I

.field mIsRadioMode:I

.field mLastAVSwitchInterval:J

.field mLastForebackSwitchInterval:J

.field mLastHeadsetSwitchInterval:J

.field mLastRebufT:J

.field mLastResSwitchInterval:J

.field mLastSeekT:J

.field mLastSetSurfaceNullInterval:J

.field mMcMonitorQueueSizeInEnd:I

.field mMcMonitorQueueSizeInStart:I

.field mPowerSaveMode:I

.field mQualityDescBefore:Ljava/lang/String;

.field mQueueInputBufferCountInEnd:J

.field mQueueInputBufferCountInStart:J

.field mResolutionBefore:Ljava/lang/String;

.field mSetValidSurfaceTimeout:I

.field noRenderType:I

.field reason:I

.field stageError:Ljava/lang/String;

.field startTime:J

.field videoBaseLengthMs:J

.field videoDecoderLengthMs:J

.field videoFormatLengthMs:J


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->noRenderType:I

    .line 3
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->reason:I

    const-wide/32 v1, -0x80000000

    .line 4
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->videoFormatLengthMs:J

    .line 5
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->audioFormatLengthMs:J

    .line 6
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->videoDecoderLengthMs:J

    .line 7
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->audioDecoderLengthMs:J

    .line 8
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->videoBaseLengthMs:J

    .line 9
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->audioBaseLengthMs:J

    .line 10
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->startTime:J

    .line 11
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->costTime:J

    .line 12
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mEndT:J

    const/4 v3, 0x0

    .line 13
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mResolutionBefore:Ljava/lang/String;

    .line 14
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastRebufT:J

    .line 15
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastSeekT:J

    .line 16
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mBeginPos:I

    .line 17
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mEndPos:I

    .line 18
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mEndType:Ljava/lang/String;

    .line 19
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mIsABR:I

    .line 20
    const-string v3, ""

    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mQualityDescBefore:Ljava/lang/String;

    .line 21
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mIsRadioMode:I

    .line 22
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastAVSwitchInterval:J

    .line 23
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastResSwitchInterval:J

    .line 24
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mHeadset:I

    .line 25
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mBt:I

    .line 26
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastHeadsetSwitchInterval:J

    .line 27
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mIsBackground:I

    .line 28
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastForebackSwitchInterval:J

    .line 29
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mLastSetSurfaceNullInterval:J

    .line 30
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mSetValidSurfaceTimeout:I

    const/4 v3, 0x0

    .line 31
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mEnableGloablMuteFeature:I

    .line 32
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mGlobalMute:I

    const-wide/high16 v3, 0x36a0000000000000L    # 1.401298464324817E-45

    .line 33
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mCpuRate:D

    .line 34
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mCpuSpeed:D

    .line 35
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mPowerSaveMode:I

    const/4 v3, 0x1

    .line 36
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mCurrent:F

    .line 37
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mQueueInputBufferCountInStart:J

    .line 38
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mDequeueOutputBufferCountInStart:J

    .line 39
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mMcMonitorQueueSizeInStart:I

    .line 40
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mQueueInputBufferCountInEnd:J

    .line 41
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mDequeueOutputBufferCountInEnd:J

    .line 42
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;->mMcMonitorQueueSizeInEnd:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$1;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender$EventContext;-><init>()V

    return-void
.end method
