.class Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;
.super Ljava/lang/Object;
.source "VideoEventOneOpera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventOneOpera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OperaContext"
.end annotation


# instance fields
.field public mAudioLenAfterMS:J

.field public mAudioLenBeforeMS:J

.field public mConfigBitrateAfter:I

.field public mConfigBitrateBefore:I

.field public mCostTime:J

.field public mEndT:J

.field public mEndType:Ljava/lang/String;

.field private mIndex:I

.field private mIsSeekInCached:I

.field public mLastInterval:J

.field public mLoadTypeWhenSeek:I

.field public mOperaType:Ljava/lang/String;

.field public mResolutionAfter:Ljava/lang/String;

.field public mResolutionBefore:Ljava/lang/String;

.field private mRetryCount:I

.field public mSeekAVFormatSeekTime:J

.field public mSeekCompleteTime:J

.field public mSeekCoreCompleteTime:J

.field public mSeekDecoderFirstAudioFrameTime:J

.field public mSeekDecoderFirstAudioPacketTime:J

.field public mSeekExeBeginTime:J

.field public mSeekLoadingBeginTime:J

.field public mSeekLoadingEndTime:J

.field public mSeekLooperTime:J

.field public mSeekOperateTime:J

.field public mSeekReceiveFirstPacketTime:J

.field public mSeekRenderFirstFrameTime:J

.field private mStartT:J

.field public mStateAfter:Ljava/lang/String;

.field public mStateBefore:Ljava/lang/String;

.field public mVideoLenAfterMS:J

.field public mVideoLenBeforeMS:J

.field final synthetic this$0:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventOneOpera;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->this$0:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mOperaType:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mStateBefore:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mStateAfter:Ljava/lang/String;

    const-wide/32 v0, -0x80000000

    .line 5
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mCostTime:J

    .line 6
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mEndType:Ljava/lang/String;

    .line 7
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mStartT:J

    .line 8
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mEndT:J

    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mRetryCount:I

    .line 10
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mIsSeekInCached:I

    const-wide/16 v3, 0x0

    .line 11
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mVideoLenAfterMS:J

    .line 12
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mAudioLenAfterMS:J

    .line 13
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mVideoLenBeforeMS:J

    .line 14
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mAudioLenBeforeMS:J

    .line 15
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mIndex:I

    .line 16
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mResolutionBefore:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mResolutionAfter:Ljava/lang/String;

    const/high16 p1, -0x80000000

    .line 18
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mConfigBitrateBefore:I

    .line 19
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mConfigBitrateAfter:I

    const-wide/16 v2, -0x1

    .line 20
    iput-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mLastInterval:J

    .line 21
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mLoadTypeWhenSeek:I

    .line 22
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekCompleteTime:J

    .line 23
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekLoadingBeginTime:J

    .line 24
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekLoadingEndTime:J

    .line 25
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekLooperTime:J

    .line 26
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekOperateTime:J

    .line 27
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekExeBeginTime:J

    .line 28
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekAVFormatSeekTime:J

    .line 29
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekCoreCompleteTime:J

    .line 30
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekReceiveFirstPacketTime:J

    .line 31
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekDecoderFirstAudioPacketTime:J

    .line 32
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekDecoderFirstAudioFrameTime:J

    .line 33
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mSeekRenderFirstFrameTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventOneOpera;Lcom/ss/ttvideoengine/log/VideoEventOneOpera$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOneOpera;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mRetryCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$108(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mRetryCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mRetryCount:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mStartT:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$202(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mStartT:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mIndex:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mIndex:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mIsSeekInCached:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$402(Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera$OperaContext;->mIsSeekInCached:I

    .line 2
    .line 3
    return p1
.end method
