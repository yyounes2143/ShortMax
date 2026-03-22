.class public Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataLoaderTaskLoadProgress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;
    }
.end annotation


# instance fields
.field public mCacheInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mSeparateAudioVideo:Z

.field public mTaskType:I

.field public mVideoId:Ljava/lang/String;

.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mVideoId:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mTaskType:I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mSeparateAudioVideo:Z

    .line 15
    .line 16
    return-void
.end method

.method private getCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mKey:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    return-object v1
.end method


# virtual methods
.method public getTotalCacheSize()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v0, v3, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->getCacheSize()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    add-long/2addr v1, v3

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-wide v1
.end method

.method public isCacheEnd()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    move v0, v2

    .line 9
    move v4, v0

    .line 10
    :goto_0
    iget-object v5, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-ge v0, v5, :cond_2

    .line 17
    .line 18
    iget-object v5, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->finished()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    move v3, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v4, v2

    .line 42
    :cond_2
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mSeparateAudioVideo:Z

    .line 43
    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    if-nez v3, :cond_4

    .line 47
    .line 48
    if-lt v4, v1, :cond_3

    .line 49
    .line 50
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mTaskType:I

    .line 51
    .line 52
    if-ne v0, v1, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    move v1, v2

    .line 56
    :cond_4
    :goto_2
    return v1

    .line 57
    :cond_5
    if-nez v3, :cond_7

    .line 58
    .line 59
    const/4 v0, 0x2

    .line 60
    if-lt v4, v0, :cond_6

    .line 61
    .line 62
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mTaskType:I

    .line 63
    .line 64
    if-ne v0, v1, :cond_6

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_6
    move v1, v2

    .line 68
    :cond_7
    :goto_3
    return v1
.end method

.method public isPreloadComplete()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mTaskType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "DataLoaderHelper"

    .line 8
    .line 9
    const-string/jumbo v1, "task is not a preload task"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    move v0, v2

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge v0, v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->finished()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v2, 0x1

    .line 50
    :goto_1
    return v2
.end method

.method public onError(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->getCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iput-object p2, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mError:Lcom/ss/ttvideoengine/utils/Error;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setUp(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mVideoId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 15
    .line 16
    :cond_0
    iget-object p1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mTracks:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    move v1, v0

    .line 24
    move v2, v1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v3, :cond_5

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;

    .line 37
    .line 38
    iget-object v5, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {p0, v5}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->getCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-nez v5, :cond_2

    .line 45
    .line 46
    new-instance v5, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;

    .line 47
    .line 48
    invoke-direct {v5, p0}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;)V

    .line 49
    .line 50
    .line 51
    move v4, v0

    .line 52
    :cond_2
    iget-object v6, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v6, v5, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mKey:Ljava/lang/String;

    .line 55
    .line 56
    iget-wide v6, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mMediaSize:J

    .line 57
    .line 58
    iput-wide v6, v5, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mMediaSize:J

    .line 59
    .line 60
    iget-object v6, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUsingResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 61
    .line 62
    iput-object v6, v5, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 63
    .line 64
    iget-wide v6, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mCacheSize:J

    .line 65
    .line 66
    invoke-virtual {v5, v6, v7}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->setCacheSize(J)V

    .line 67
    .line 68
    .line 69
    iget-object v6, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mLocalFilePath:Ljava/lang/String;

    .line 70
    .line 71
    iput-object v6, v5, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mLocalFilePath:Ljava/lang/String;

    .line 72
    .line 73
    iget-wide v6, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 74
    .line 75
    iput-wide v6, v5, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;->mPreloadSize:J

    .line 76
    .line 77
    iget-object v6, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mVideoInfo:Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 78
    .line 79
    if-eqz v6, :cond_4

    .line 80
    .line 81
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    sget v7, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 86
    .line 87
    if-ne v6, v7, :cond_3

    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iget-object v3, v3, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mVideoInfo:Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    sget v6, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 99
    .line 100
    if-ne v3, v6, :cond_4

    .line 101
    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    :cond_4
    :goto_1
    if-nez v4, :cond_1

    .line 105
    .line 106
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mCacheInfos:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    if-lez v1, :cond_6

    .line 113
    .line 114
    if-lez v2, :cond_6

    .line 115
    .line 116
    iput-boolean v4, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress;->mSeparateAudioVideo:Z

    .line 117
    .line 118
    :cond_6
    return-void
.end method
