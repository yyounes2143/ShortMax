.class Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;
.super Ljava/lang/Object;
.source "VideoEventOneEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventOneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventContext"
.end annotation


# instance fields
.field public mAudioLenAfterMS:J

.field public mAudioLenBaseAfterMs:J

.field public mAudioLenBaseBeforeMs:J

.field public mAudioLenBeforeMS:J

.field public mAudioLenDecAfterMs:J

.field public mAudioLenDecBeforeMs:J

.field public mAudioLenOnlyBefore:J

.field public mBufferingType:I

.field public mBytesFromMDL:J

.field public mConfigBitrateAfter:I

.field public mConfigBitrateBefore:I

.field public mCostTime:J

.field public mCpuRate:D

.field public mCpuSpeed:D

.field public mCurrent:F

.field public mEndT:J

.field public mEndType:Ljava/lang/String;

.field public mEventType:Ljava/lang/String;

.field public mIndex:I

.field public mIsABR:I

.field public mLastSeekTime:J

.field public mPlayerAudioReqOffset:J

.field public mPlayerReadState:J

.field public mPlayerReqOffset:J

.field public mPowerSaveMode:I

.field public mPreStartT:J

.field public mQualityDescAfter:Ljava/lang/String;

.field public mQualityDescBefore:Ljava/lang/String;

.field public mResolutionAfter:Ljava/lang/String;

.field public mResolutionBefore:Ljava/lang/String;

.field public mRetryCount:I

.field public mStartT:J

.field public mVideoAudioGap:J

.field public mVideoLenAfterMS:J

.field public mVideoLenBaseAfterMs:J

.field public mVideoLenBaseBeforeMs:J

.field public mVideoLenBeforeMS:J

.field public mVideoLenDecAfterMs:J

.field public mVideoLenDecBeforeMs:J

.field public mVideoLenOnlyBefore:J

.field public mVideoPos:I

.field final synthetic this$0:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventOneEvent;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->this$0:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEventType:Ljava/lang/String;

    const-wide/32 v0, -0x80000000

    .line 3
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCostTime:J

    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEndType:Ljava/lang/String;

    .line 5
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPreStartT:J

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mBufferingType:I

    .line 7
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mStartT:J

    .line 8
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mEndT:J

    .line 9
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mLastSeekTime:J

    const/high16 v2, -0x80000000

    .line 10
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoPos:I

    const/4 v3, 0x0

    .line 11
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mRetryCount:I

    const-wide/16 v4, -0x1

    .line 12
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenBeforeMS:J

    .line 13
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenBeforeMS:J

    const-wide/16 v4, 0x0

    .line 14
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenAfterMS:J

    .line 15
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenAfterMS:J

    .line 16
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mBytesFromMDL:J

    .line 17
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mIndex:I

    .line 18
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenDecBeforeMs:J

    .line 19
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenDecAfterMs:J

    .line 20
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenDecBeforeMs:J

    .line 21
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenDecAfterMs:J

    .line 22
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenBaseBeforeMs:J

    .line 23
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenBaseAfterMs:J

    .line 24
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenBaseBeforeMs:J

    .line 25
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenBaseAfterMs:J

    .line 26
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoLenOnlyBefore:J

    .line 27
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mAudioLenOnlyBefore:J

    .line 28
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPlayerReqOffset:J

    .line 29
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPlayerAudioReqOffset:J

    .line 30
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPlayerReadState:J

    .line 31
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mVideoAudioGap:J

    .line 32
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mResolutionBefore:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mResolutionAfter:Ljava/lang/String;

    .line 34
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mConfigBitrateBefore:I

    .line 35
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mConfigBitrateAfter:I

    .line 36
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mIsABR:I

    .line 37
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mQualityDescBefore:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mQualityDescAfter:Ljava/lang/String;

    const-wide/high16 v0, 0x36a0000000000000L    # 1.401298464324817E-45

    .line 39
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCpuRate:D

    .line 40
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCpuSpeed:D

    .line 41
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mPowerSaveMode:I

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;->mCurrent:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventOneEvent;Lcom/ss/ttvideoengine/log/VideoEventOneEvent$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneEvent;)V

    return-void
.end method
