.class public Lcom/ss/ttvideoengine/preload/PreloadMedia;
.super Ljava/lang/Object;
.source "PreloadMedia.java"


# instance fields
.field protected mCacheKey:Ljava/lang/String;

.field private mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mContentLength:J

.field protected mDuration:J

.field protected mPreloadSecond:F

.field protected mPreloadSize:J

.field public mSceneId:Ljava/lang/String;

.field protected mVideoId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCacheKey:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mVideoId:Ljava/lang/String;

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    iput-wide v1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mPreloadSize:J

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mContentLength:J

    .line 14
    .line 15
    iput-wide v1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mDuration:J

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mPreloadSecond:F

    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mSceneId:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    instance-of v1, p1, Lcom/ss/ttvideoengine/preload/PreloadMedia;

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    return v0

    .line 18
    :cond_2
    check-cast p1, Lcom/ss/ttvideoengine/preload/PreloadMedia;

    .line 19
    .line 20
    iget-wide v3, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mPreloadSize:J

    .line 21
    .line 22
    iget-wide v5, p1, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mPreloadSize:J

    .line 23
    .line 24
    cmp-long v1, v3, v5

    .line 25
    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCacheKey:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p1, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCacheKey:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    move v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    move v1, v0

    .line 41
    :goto_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 42
    .line 43
    if-nez v3, :cond_4

    .line 44
    .line 45
    iget-object v4, p1, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 46
    .line 47
    if-eqz v4, :cond_8

    .line 48
    .line 49
    :cond_4
    if-eqz v3, :cond_5

    .line 50
    .line 51
    iget-object v4, p1, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 52
    .line 53
    if-nez v4, :cond_6

    .line 54
    .line 55
    :cond_5
    move v1, v0

    .line 56
    :cond_6
    if-eqz v1, :cond_8

    .line 57
    .line 58
    if-eqz v1, :cond_7

    .line 59
    .line 60
    iget-object p1, p1, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 61
    .line 62
    if-ne v3, p1, :cond_7

    .line 63
    .line 64
    move v0, v2

    .line 65
    :cond_7
    move v1, v0

    .line 66
    :cond_8
    return v1
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCacheKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mContentLength:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPreloadSecond()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mPreloadSecond:F

    .line 2
    .line 3
    return v0
.end method

.method public getPreloadSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mPreloadSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mVideoId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCacheKey:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mVideoId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCacheKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCallBackListener(Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;)V
    .locals 0
    .param p1    # Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 2
    .line 3
    return-void
.end method

.method public setContentLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mContentLength:J

    .line 2
    .line 3
    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public setPreloadSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mPreloadSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mVideoId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
