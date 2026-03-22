.class public Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataLoaderTaskItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MyFetcherListener;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MySmartUrlFetcherListener;,
        Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;
    }
.end annotation


# instance fields
.field public mApiString:Ljava/lang/String;

.field public mDidCanceled:Z

.field public mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

.field public mGroupId:Ljava/lang/String;

.field public mListener:Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;

.field public mPlayIndexGap:I

.field public mPreloadMedia:Lcom/ss/ttvideoengine/preload/PreloadMedia;

.field public mPreloadMilliSecondOffset:J

.field public mPreloadSecond:F

.field public mPreloadSize:J

.field public mPriorityLevel:I

.field public mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

.field public mResponseError:Lcom/ss/ttvideoengine/utils/Error;

.field public mSetResolution:Lcom/ss/ttvideoengine/Resolution;

.field public mSubTag:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field public mTimePreloadLowerLimitSize:J

.field public mTimePreloadUpperLimitSize:J

.field public mTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;",
            ">;"
        }
    .end annotation
.end field

.field public mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

.field public mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

.field public mVideoId:Ljava/lang/String;

.field public mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseError:Lcom/ss/ttvideoengine/utils/Error;

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSize:J

    .line 14
    .line 15
    iput-wide v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadMilliSecondOffset:J

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    iput v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSecond:F

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTimePreloadLowerLimitSize:J

    .line 21
    .line 22
    iput-wide v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTimePreloadUpperLimitSize:J

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPriorityLevel:I

    .line 26
    .line 27
    sget-object v2, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 28
    .line 29
    iput-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSetResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mListener:Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mApiString:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, ""

    .line 40
    .line 41
    iput-object v2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mGroupId:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mDidCanceled:Z

    .line 48
    .line 49
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadMedia:Lcom/ss/ttvideoengine/preload/PreloadMedia;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTag:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSubTag:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPlayIndexGap:I

    .line 57
    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public _notifyError(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

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
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

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

.method public addTrackItemByKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getTrackItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    return-object v0
.end method

.method public getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderURLItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoModelItem:Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadMedia:Lcom/ss/ttvideoengine/preload/PreloadMedia;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_3
    const/4 v0, 0x0

    .line 46
    return-object v0
.end method

.method public getTrackItem(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 25
    .line 26
    iget-object v2, v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_1
    return-object v1
.end method

.method public removeVidPlaceholderTrack()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public setFetchListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MyFetcherListener;

    .line 6
    .line 7
    invoke-direct {v1, p0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$MyFetcherListener;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setListener(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setListener(Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mListener:Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;

    .line 2
    .line 3
    return-void
.end method

.method public setUp(Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUsingResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 17
    .line 18
    iput-wide p3, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 19
    .line 20
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, "DataLoaderHelper"

    .line 27
    .line 28
    const-string v0, "[preload] DataLoaderTaskItem setup fail"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iput-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSetResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 34
    .line 35
    iput-wide p3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mPreloadSize:J

    .line 36
    .line 37
    return-void
.end method
