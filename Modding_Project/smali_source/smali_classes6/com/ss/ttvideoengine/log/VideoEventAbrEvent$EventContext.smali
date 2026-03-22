.class Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;
.super Ljava/lang/Object;
.source "VideoEventAbrEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventContext"
.end annotation


# instance fields
.field public mAbrV:Ljava/lang/String;

.field public mAudioBufferLen:J

.field public mCostTime:J

.field public mDelayTime:J

.field public mEndType:Ljava/lang/String;

.field public mEventTime:J

.field public mMaxBufferLen:J

.field public mNewBr:J

.field public mOldBr:J

.field public mReason:I

.field public mSpeed:F

.field public mSwitch2new:I

.field public mVideoBufferLen:J

.field public mWasteByte:J

.field final synthetic this$0:Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->this$0:Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, -0x80000000

    .line 2
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mEventTime:J

    .line 3
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mCostTime:J

    .line 4
    const-string p1, ""

    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mEndType:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mAbrV:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mOldBr:J

    .line 7
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mNewBr:J

    .line 8
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mMaxBufferLen:J

    .line 9
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mAudioBufferLen:J

    .line 10
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mVideoBufferLen:J

    const/high16 p1, -0x40800000    # -1.0f

    .line 11
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mSpeed:F

    .line 12
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mDelayTime:J

    .line 13
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mWasteByte:J

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mSwitch2new:I

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;->mReason:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent$EventContext;-><init>(Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;)V

    return-void
.end method
