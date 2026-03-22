.class public Lcom/ss/ttvideoengine/preload/PreloadModelMedia;
.super Lcom/ss/ttvideoengine/preload/PreloadMedia;
.source "PreloadModelMedia.java"


# instance fields
.field public isLast:Z

.field private mCDNUrlExpiredTime:J

.field private mContext:Ljava/lang/String;

.field private mCustomPath:Ljava/lang/String;

.field private mDubbedAudioPreloadSize:J

.field private mDubbedAudios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/DubbedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstSubVid:Ljava/lang/String;

.field public mForbidP2p:Z

.field private mGroupId:Ljava/lang/String;

.field private mIsEnablePreloadDubbedAudio:Z

.field private mMultipleInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPriorityLevel:I

.field public mResolution:Lcom/ss/ttvideoengine/Resolution;

.field private mSelectCallback:Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;

.field public mStartTimestamp:J

.field private mSubListIndex:I

.field private mSubTag:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field public mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/model/IVideoModel;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preload/PreloadMedia;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 27
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    iput-object v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mForbidP2p:Z

    .line 29
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSelectCallback:Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;

    .line 30
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mExtraInfo:Ljava/util/Map;

    .line 31
    iput v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mPriorityLevel:I

    .line 32
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mCustomPath:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mContext:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mFirstSubVid:Ljava/lang/String;

    const/4 v2, -0x1

    .line 35
    iput v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubListIndex:I

    const-wide/16 v2, 0x0

    .line 36
    iput-wide v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mCDNUrlExpiredTime:J

    .line 37
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mDubbedAudios:Ljava/util/List;

    .line 38
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mIsEnablePreloadDubbedAudio:Z

    .line 39
    iput-wide v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mDubbedAudioPreloadSize:J

    .line 40
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mMultipleInfo:Ljava/util/Map;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mTag:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubTag:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mGroupId:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->isLast:Z

    .line 45
    iput-wide v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mStartTimestamp:J

    .line 46
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;JZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preload/PreloadMedia;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 3
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 4
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSelectCallback:Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mExtraInfo:Ljava/util/Map;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mPriorityLevel:I

    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mCustomPath:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mContext:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mFirstSubVid:Ljava/lang/String;

    const/4 v2, -0x1

    .line 10
    iput v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubListIndex:I

    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mCDNUrlExpiredTime:J

    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mDubbedAudios:Ljava/util/List;

    .line 13
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mIsEnablePreloadDubbedAudio:Z

    .line 14
    iput-wide v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mDubbedAudioPreloadSize:J

    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mMultipleInfo:Ljava/util/Map;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mTag:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubTag:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mGroupId:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->isLast:Z

    .line 20
    iput-wide v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mStartTimestamp:J

    .line 21
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 22
    iput-object p2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 23
    iput-wide p3, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mPreloadSize:J

    .line 24
    iput-boolean p5, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mForbidP2p:Z

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;)V
    .locals 4

    .line 47
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preload/PreloadMedia;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 49
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    iput-object v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mForbidP2p:Z

    .line 51
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mExtraInfo:Ljava/util/Map;

    .line 52
    iput v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mPriorityLevel:I

    .line 53
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mCustomPath:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mContext:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mFirstSubVid:Ljava/lang/String;

    const/4 v2, -0x1

    .line 56
    iput v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubListIndex:I

    const-wide/16 v2, 0x0

    .line 57
    iput-wide v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mCDNUrlExpiredTime:J

    .line 58
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mDubbedAudios:Ljava/util/List;

    .line 59
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mIsEnablePreloadDubbedAudio:Z

    .line 60
    iput-wide v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mDubbedAudioPreloadSize:J

    .line 61
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mMultipleInfo:Ljava/util/Map;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mTag:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubTag:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mGroupId:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->isLast:Z

    .line 66
    iput-wide v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mStartTimestamp:J

    .line 67
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 68
    iput-object p2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSelectCallback:Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v1

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public getCDNUrlExpiredTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mCDNUrlExpiredTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mContext:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustomPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mCustomPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDubbedAudioPreloadSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mDubbedAudioPreloadSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDubbedAudios()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/DubbedInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mDubbedAudios:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mExtraInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFirstSubVid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mFirstSubVid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mGroupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMultipleInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mMultipleInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriorityLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mPriorityLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public getSelectCallback()Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSelectCallback:Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mStartTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSubListIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubListIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getSubTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 10
    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public isEnablePreloadDubbedAudio()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mIsEnablePreloadDubbedAudio:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNeedConvertStrategyInfo()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->getExtraInfo()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->getSubListIndex()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->getFirstSubVid()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-wide v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mCDNUrlExpiredTime:J

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    cmp-long v0, v0, v2

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mTag:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-gtz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubTag:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-gtz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->getMultipleInfo()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-wide v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mStartTimestamp:J

    .line 51
    .line 52
    cmp-long v0, v0, v2

    .line 53
    .line 54
    if-lez v0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 60
    :goto_1
    return v0
.end method

.method public setCDNUrlExpiredTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mCDNUrlExpiredTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mContext:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCustomPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mCustomPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDubbedAudioPreloadSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mDubbedAudioPreloadSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setDubbedAudios(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/DubbedInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mDubbedAudios:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setEnablePreloadDubbedAudio(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mIsEnablePreloadDubbedAudio:Z

    .line 2
    .line 3
    return-void
.end method

.method public setExtraInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mExtraInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setFirstSubVideoId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mFirstSubVid:Ljava/lang/String;

    return-void
.end method

.method public setFirstSubVideoId(Ljava/lang/String;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mFirstSubVid:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubListIndex:I

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mGroupId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMultipleInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mMultipleInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setPriorityLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mPriorityLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public setSelectBitrateCallback(Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSelectCallback:Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setStartTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mStartTimestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public setSubTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubTag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toStrategyInfo()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getMediaInfo()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    :try_start_0
    const-string v2, "sc_priority"

    .line 13
    .line 14
    iget v3, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mPriorityLevel:I

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mExtraInfo:Ljava/util/Map;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    const-string v2, "sc_extra"

    .line 24
    .line 25
    new-instance v3, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->getExtraInfo()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mCustomPath:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    const-string v3, "sc_custom_path"

    .line 46
    .line 47
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mContext:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    const-string v3, "sc_context"

    .line 55
    .line 56
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-wide v2, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mPreloadSize:J

    .line 60
    .line 61
    const-wide/16 v4, 0x0

    .line 62
    .line 63
    cmp-long v6, v2, v4

    .line 64
    .line 65
    if-lez v6, :cond_4

    .line 66
    .line 67
    const-string v6, "sc_preload_size"

    .line 68
    .line 69
    invoke-virtual {v0, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    :cond_4
    iget-object v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mFirstSubVid:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    const-string v3, "sc_frt_sub_vid"

    .line 77
    .line 78
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    :cond_5
    iget v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubListIndex:I

    .line 82
    .line 83
    const/4 v3, -0x1

    .line 84
    if-eq v2, v3, :cond_6

    .line 85
    .line 86
    const-string v3, "sc_sub_list_index"

    .line 87
    .line 88
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    :cond_6
    iget-wide v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mCDNUrlExpiredTime:J

    .line 92
    .line 93
    cmp-long v6, v2, v4

    .line 94
    .line 95
    if-eqz v6, :cond_7

    .line 96
    .line 97
    const-string v6, "sc_url_expired_t"

    .line 98
    .line 99
    invoke-virtual {v0, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    :cond_7
    iget-object v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mTag:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-lez v2, :cond_8

    .line 109
    .line 110
    const-string v2, "sc_tag"

    .line 111
    .line 112
    iget-object v3, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mTag:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    :cond_8
    iget-object v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubTag:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-lez v2, :cond_9

    .line 124
    .line 125
    const-string v2, "sc_sub_tag"

    .line 126
    .line 127
    iget-object v3, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mSubTag:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    :cond_9
    iget-object v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mGroupId:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-lez v2, :cond_a

    .line 139
    .line 140
    const-string v2, "sc_gid"

    .line 141
    .line 142
    iget-object v3, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mGroupId:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    :cond_a
    iget-object v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mDubbedAudios:Ljava/util/List;

    .line 148
    .line 149
    if-eqz v2, :cond_d

    .line 150
    .line 151
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mIsEnablePreloadDubbedAudio:Z

    .line 152
    .line 153
    if-eqz v2, :cond_d

    .line 154
    .line 155
    new-instance v2, Lorg/json/JSONArray;

    .line 156
    .line 157
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 158
    .line 159
    .line 160
    iget-object v3, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mDubbedAudios:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    :cond_b
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_c

    .line 171
    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    check-cast v6, Lcom/ss/ttvideoengine/model/DubbedInfo;

    .line 177
    .line 178
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/model/DubbedInfo;->toStrategyPreloadJsonObject()Lorg/json/JSONObject;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    if-eqz v7, :cond_b

    .line 183
    .line 184
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/model/DubbedInfo;->toStrategyPreloadJsonObject()Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_c
    const-string v3, "sc_dubbed_audios"

    .line 193
    .line 194
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    .line 196
    .line 197
    const-string v2, "sc_dubbed_preload"

    .line 198
    .line 199
    iget-boolean v3, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mIsEnablePreloadDubbedAudio:Z

    .line 200
    .line 201
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 202
    .line 203
    .line 204
    const-string v2, "sc_dubbed_size"

    .line 205
    .line 206
    iget-wide v6, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mDubbedAudioPreloadSize:J

    .line 207
    .line 208
    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 209
    .line 210
    .line 211
    :cond_d
    iget-object v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mMultipleInfo:Ljava/util/Map;

    .line 212
    .line 213
    if-eqz v2, :cond_f

    .line 214
    .line 215
    new-instance v2, Lorg/json/JSONObject;

    .line 216
    .line 217
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 218
    .line 219
    .line 220
    iget-object v3, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mMultipleInfo:Ljava/util/Map;

    .line 221
    .line 222
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-eqz v6, :cond_e

    .line 235
    .line 236
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    check-cast v6, Ljava/util/Map$Entry;

    .line 241
    .line 242
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    check-cast v7, Lcom/ss/ttvideoengine/Resolution;

    .line 247
    .line 248
    sget v8, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 249
    .line 250
    invoke-virtual {v7, v8}, Lcom/ss/ttvideoengine/Resolution;->toString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_e
    const-string v3, "sc_multiple_info"

    .line 263
    .line 264
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    .line 266
    .line 267
    :cond_f
    iget-wide v2, p0, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;->mStartTimestamp:J

    .line 268
    .line 269
    cmp-long v4, v2, v4

    .line 270
    .line 271
    if-lez v4, :cond_10

    .line 272
    .line 273
    const-string/jumbo v4, "timestamp"

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 277
    .line 278
    .line 279
    :cond_10
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    goto :goto_4

    .line 284
    :goto_3
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 285
    .line 286
    .line 287
    :goto_4
    return-object v1
.end method
