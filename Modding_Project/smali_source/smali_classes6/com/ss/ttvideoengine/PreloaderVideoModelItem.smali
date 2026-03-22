.class public Lcom/ss/ttvideoengine/PreloaderVideoModelItem;
.super Ljava/lang/Object;
.source "PreloaderVideoModelItem.java"


# instance fields
.field public mAudioHeaderExtraSize:J

.field public mAudioPacketExtraOffset:J

.field private mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mCdnType:I

.field private mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

.field public mForbidP2p:Z

.field public mGearStrategyEnabled:I

.field private mGroupId:Ljava/lang/String;

.field public mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayIndexGap:I

.field public mPreloadMilliSecond:F

.field public mPreloadMilliSecondOffset:J

.field public mPreloadSize:J

.field private mPriorityLevel:I

.field public mResolution:Lcom/ss/ttvideoengine/Resolution;

.field public mStartTimestamp:J

.field public mSubTag:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field public mTimePreloadLowerLimitSize:J

.field public mTimePreloadUpperLimitSize:J

.field public mVideoHeaderExtraSize:J

.field public mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

.field public mVideoPacketExtraOffset:J


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;JLcom/ss/ttvideoengine/PreloaderFilePathListener;)V
    .locals 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 44
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecond:F

    const-wide/16 v1, 0x0

    .line 46
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadLowerLimitSize:J

    .line 47
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadUpperLimitSize:J

    const/4 v3, 0x0

    .line 48
    iput-boolean v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mForbidP2p:Z

    .line 49
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGearStrategyEnabled:I

    .line 50
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mParams:Ljava/util/Map;

    .line 51
    const-string v4, ""

    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTag:Ljava/lang/String;

    .line 52
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mSubTag:Ljava/lang/String;

    const/4 v5, -0x1

    .line 53
    iput v5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPlayIndexGap:I

    .line 54
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGroupId:Ljava/lang/String;

    .line 55
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPriorityLevel:I

    .line 56
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mStartTimestamp:J

    .line 57
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 58
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 59
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 60
    iput-wide p3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadSize:J

    .line 61
    iput-object p5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;FJJ)V
    .locals 6

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 126
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    const-wide/16 v1, 0x0

    .line 127
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadSize:J

    const/4 v3, 0x0

    .line 128
    iput-boolean v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mForbidP2p:Z

    .line 129
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGearStrategyEnabled:I

    .line 130
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mParams:Ljava/util/Map;

    .line 131
    const-string v4, ""

    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTag:Ljava/lang/String;

    .line 132
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mSubTag:Ljava/lang/String;

    const/4 v5, -0x1

    .line 133
    iput v5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPlayIndexGap:I

    .line 134
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGroupId:Ljava/lang/String;

    .line 135
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPriorityLevel:I

    .line 136
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mStartTimestamp:J

    .line 137
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 138
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 139
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 140
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 141
    iput p3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecond:F

    .line 142
    iput-wide p4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadLowerLimitSize:J

    .line 143
    iput-wide p6, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadUpperLimitSize:J

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;JFJJ)V
    .locals 6

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 146
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    const-wide/16 v1, 0x0

    .line 147
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadSize:J

    const/4 v3, 0x0

    .line 148
    iput-boolean v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mForbidP2p:Z

    .line 149
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGearStrategyEnabled:I

    .line 150
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mParams:Ljava/util/Map;

    .line 151
    const-string v4, ""

    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTag:Ljava/lang/String;

    .line 152
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mSubTag:Ljava/lang/String;

    const/4 v5, -0x1

    .line 153
    iput v5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPlayIndexGap:I

    .line 154
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGroupId:Ljava/lang/String;

    .line 155
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPriorityLevel:I

    .line 156
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mStartTimestamp:J

    .line 157
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 158
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 159
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 160
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 161
    iput-wide p3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecondOffset:J

    .line 162
    iput p5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecond:F

    .line 163
    iput-wide p6, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadLowerLimitSize:J

    .line 164
    iput-wide p8, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadUpperLimitSize:J

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;JJJZ)V
    .locals 6

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 84
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    const-wide/16 v1, 0x0

    .line 85
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadLowerLimitSize:J

    .line 86
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadUpperLimitSize:J

    const/4 v3, 0x0

    .line 87
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGearStrategyEnabled:I

    .line 88
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mParams:Ljava/util/Map;

    .line 89
    const-string v4, ""

    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTag:Ljava/lang/String;

    .line 90
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mSubTag:Ljava/lang/String;

    const/4 v5, -0x1

    .line 91
    iput v5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPlayIndexGap:I

    .line 92
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGroupId:Ljava/lang/String;

    .line 93
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPriorityLevel:I

    .line 94
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mStartTimestamp:J

    .line 95
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 96
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 97
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 98
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 99
    iput-wide p3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadSize:J

    .line 100
    iput-wide p5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecondOffset:J

    long-to-float p1, p7

    .line 101
    iput p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecond:F

    .line 102
    iput-boolean p9, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mForbidP2p:Z

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;JJZ)V
    .locals 6

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 105
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    const/4 v1, 0x0

    .line 106
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecond:F

    const-wide/16 v1, 0x0

    .line 107
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadLowerLimitSize:J

    .line 108
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadUpperLimitSize:J

    const/4 v3, 0x0

    .line 109
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGearStrategyEnabled:I

    .line 110
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mParams:Ljava/util/Map;

    .line 111
    const-string v4, ""

    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTag:Ljava/lang/String;

    .line 112
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mSubTag:Ljava/lang/String;

    const/4 v5, -0x1

    .line 113
    iput v5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPlayIndexGap:I

    .line 114
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGroupId:Ljava/lang/String;

    .line 115
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPriorityLevel:I

    .line 116
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mStartTimestamp:J

    .line 117
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 118
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 119
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 120
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 121
    iput-wide p3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadSize:J

    .line 122
    iput-wide p5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecondOffset:J

    .line 123
    iput-boolean p7, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mForbidP2p:Z

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;JLcom/ss/ttvideoengine/PreloaderFilePathListener;)V
    .locals 6

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 24
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecond:F

    const-wide/16 v1, 0x0

    .line 26
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadLowerLimitSize:J

    .line 27
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadUpperLimitSize:J

    const/4 v3, 0x0

    .line 28
    iput-boolean v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mForbidP2p:Z

    .line 29
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGearStrategyEnabled:I

    .line 30
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mParams:Ljava/util/Map;

    .line 31
    const-string v4, ""

    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTag:Ljava/lang/String;

    .line 32
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mSubTag:Ljava/lang/String;

    const/4 v5, -0x1

    .line 33
    iput v5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPlayIndexGap:I

    .line 34
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGroupId:Ljava/lang/String;

    .line 35
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPriorityLevel:I

    .line 36
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mStartTimestamp:J

    .line 37
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 38
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 39
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 40
    iput-wide p3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadSize:J

    .line 41
    iput-object p5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;JZ)V
    .locals 6

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 64
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    const/4 v1, 0x0

    .line 65
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecond:F

    const-wide/16 v1, 0x0

    .line 66
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadLowerLimitSize:J

    .line 67
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadUpperLimitSize:J

    const/4 v3, 0x0

    .line 68
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGearStrategyEnabled:I

    .line 69
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mParams:Ljava/util/Map;

    .line 70
    const-string v4, ""

    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTag:Ljava/lang/String;

    .line 71
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mSubTag:Ljava/lang/String;

    const/4 v5, -0x1

    .line 72
    iput v5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPlayIndexGap:I

    .line 73
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGroupId:Ljava/lang/String;

    .line 74
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPriorityLevel:I

    .line 75
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mStartTimestamp:J

    .line 76
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 77
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 78
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 79
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 80
    iput-wide p3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadSize:J

    .line 81
    iput-boolean p5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mForbidP2p:Z

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/source/VideoModelSource;J)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 3
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadSize:J

    const/4 v3, 0x0

    .line 5
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadMilliSecond:F

    .line 6
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadLowerLimitSize:J

    .line 7
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTimePreloadUpperLimitSize:J

    const/4 v3, 0x0

    .line 8
    iput-boolean v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mForbidP2p:Z

    .line 9
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGearStrategyEnabled:I

    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mParams:Ljava/util/Map;

    .line 11
    const-string v4, ""

    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTag:Ljava/lang/String;

    .line 12
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mSubTag:Ljava/lang/String;

    const/4 v5, -0x1

    .line 13
    iput v5, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPlayIndexGap:I

    .line 14
    iput-object v4, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGroupId:Ljava/lang/String;

    .line 15
    iput v3, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPriorityLevel:I

    .line 16
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mStartTimestamp:J

    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 19
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/VideoModelSource;->videoModel()Lcom/ss/ttvideoengine/model/IVideoModel;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 20
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/VideoModelSource;->resolution()Lcom/ss/ttvideoengine/Resolution;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 21
    iput-wide p2, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPreloadSize:J

    return-void
.end method


# virtual methods
.method public _notifyError(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    .line 14
    .line 15
    const-string v2, "kTTVideoErrorDomainDataLoaderPreload"

    .line 16
    .line 17
    invoke-direct {v1, v2, p1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->preloadError:Lcom/ss/ttvideoengine/utils/Error;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;->preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCdnType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mCdnType:I

    .line 2
    .line 3
    return v0
.end method

.method getFilePathListener()Lcom/ss/ttvideoengine/PreloaderFilePathListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGroupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayIndexGap()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPlayIndexGap:I

    .line 2
    .line 3
    return v0
.end method

.method public getPriorityLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPriorityLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public getStartTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mStartTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSubTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mSubTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCallBackListener(Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;)V
    .locals 0
    .param p1    # Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 2
    .line 3
    return-void
.end method

.method public setCdnType(I)V
    .locals 1

    .line 1
    const-string v0, "pcdn"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mCdnType:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setFilePathListener(Lcom/ss/ttvideoengine/PreloaderFilePathListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mFilePathListener:Lcom/ss/ttvideoengine/PreloaderFilePathListener;

    .line 2
    .line 3
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mGroupId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayIndexGap(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPlayIndexGap:I

    .line 2
    .line 3
    return-void
.end method

.method public setPriorityLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mPriorityLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public setStartTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mStartTimestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public setSubTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mSubTag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
