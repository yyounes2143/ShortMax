.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Lcom/bytedance/vcloud/abrmodule/IPlayStateSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyPlayStateSupplier"
.end annotation


# instance fields
.field private mSidxAudioWindowSize:I

.field private mSidxVideoWindowSize:I

.field private final mVideoEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngineImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mSidxVideoWindowSize:I

    .line 6
    .line 7
    iput v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mSidxAudioWindowSize:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getAudioBufferInfo()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/vcloud/abrmodule/IBufferInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 13
    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_5

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_5

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-interface {v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getMediatype()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sget v4, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 63
    .line 64
    if-eq v3, v4, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    new-instance v3, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;

    .line 68
    .line 69
    invoke-direct {v3}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;-><init>()V

    .line 70
    .line 71
    .line 72
    const/16 v4, 0xf

    .line 73
    .line 74
    invoke-interface {v2, v4}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v3, v4}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->setStreamId(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSize(Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->setFileAvailSize(J)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getBitrateFitterInfo()Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getHeaderSize()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    int-to-long v4, v4

    .line 99
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->setHeadSize(J)V

    .line 100
    .line 101
    .line 102
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v5, ""

    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const/4 v5, 0x3

    .line 113
    invoke-interface {v2, v5}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_5
    :goto_1
    return-object v0
.end method

.method public getAverageDownloadSpeed(IIZ)F
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getAverageDownloadSpeed(IIZ)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    .line 11
    .line 12
    return p1
.end method

.method public getCurrentDownloadAudioBitrate()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    return v0

    .line 13
    :cond_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7300(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getCurrentDownloadAudioSegmentIndex()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/16 v2, 0x207

    .line 19
    .line 20
    invoke-interface {v0, v2, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public getCurrentDownloadVideoBitrate()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/16 v2, 0x259

    .line 19
    .line 20
    invoke-interface {v0, v2, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public getCurrentDownloadVideoSegmentIndex()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/16 v2, 0x208

    .line 19
    .line 20
    invoke-interface {v0, v2, v1}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public getCurrentPlaybackTime()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-interface {v0}, Lcom/ss/ttm/player/MediaPlayer;->getCurrentPosition()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public getDownloadSpeed()F
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getDownloadSpeed(I)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "download_speed"

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 33
    .line 34
    return v0
.end method

.method public getLoaderType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/16 v2, 0xc8

    .line 19
    .line 20
    :try_start_0
    invoke-interface {v0, v2}, Lcom/ss/ttm/player/MediaPlayer;->getStringOption(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return v1
.end method

.method public getMaxCacheAudioTime()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/16 v1, 0x7530

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    const/16 v2, 0x18

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    invoke-interface {v0, v2, v3}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_2

    .line 27
    .line 28
    mul-int/lit16 v0, v0, 0x3e8

    .line 29
    .line 30
    return v0

    .line 31
    :cond_2
    return v1
.end method

.method public getMaxCacheVideoTime()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/16 v1, 0x7530

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    const/16 v2, 0x18

    .line 20
    .line 21
    const/4 v3, -0x1

    .line 22
    invoke-interface {v0, v2, v3}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_2

    .line 27
    .line 28
    mul-int/lit16 v0, v0, 0x3e8

    .line 29
    .line 30
    return v0

    .line 31
    :cond_2
    return v1
.end method

.method public getNetworkSpeed()F
    .locals 4

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getPredictSpeed(I)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/ss/ttvideoengine/TTVideoEngineInternal;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "[ABR] get network speed:"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v0

    .line 43
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 44
    .line 45
    return v0
.end method

.method public getNetworkState()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getCurrentAccessType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getPlaySpeed()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mPlaybackParams:Lcom/ss/ttm/player/PlaybackParams;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/ss/ttm/player/PlaybackParams;->getSpeed()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public getPlayerAudioCacheTime()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/16 v1, 0x49

    .line 19
    .line 20
    const-wide/16 v2, -0x1

    .line 21
    .line 22
    invoke-interface {v0, v1, v2, v3}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    long-to-int v0, v0

    .line 27
    return v0
.end method

.method public getPlayerVideoCacheTime()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/16 v1, 0x48

    .line 19
    .line 20
    const-wide/16 v2, -0x1

    .line 21
    .line 22
    invoke-interface {v0, v1, v2, v3}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    long-to-int v0, v0

    .line 27
    return v0
.end method

.method public getSegmentInfoList(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/vcloud/abrmodule/ISegmentInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mSidxVideoWindowSize:I

    .line 24
    .line 25
    if-eq p1, v2, :cond_2

    .line 26
    .line 27
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mSidxVideoWindowSize:I

    .line 28
    .line 29
    const/16 v2, 0x20a

    .line 30
    .line 31
    invoke-interface {v0, v2, p1}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mSidxAudioWindowSize:I

    .line 35
    .line 36
    if-eq p2, p1, :cond_3

    .line 37
    .line 38
    iput p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mSidxAudioWindowSize:I

    .line 39
    .line 40
    const/16 p1, 0x20b

    .line 41
    .line 42
    invoke-interface {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayer;->setIntOption(II)V

    .line 43
    .line 44
    .line 45
    :cond_3
    instance-of p1, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    check-cast v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;

    .line 50
    .line 51
    const/16 p1, 0x209

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->getObjectOption(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    check-cast p1, [Ljava/lang/Object;

    .line 60
    .line 61
    array-length p2, p1

    .line 62
    const/4 v0, 0x0

    .line 63
    :goto_0
    if-ge v0, p2, :cond_4

    .line 64
    .line 65
    aget-object v2, p1, v0

    .line 66
    .line 67
    new-instance v3, Lcom/ss/ttvideoengine/abr/SegmentInfo;

    .line 68
    .line 69
    invoke-direct {v3, v2}, Lcom/ss/ttvideoengine/abr/SegmentInfo;-><init>(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    return-object v1
.end method

.method public getSpeedConfidence()F
    .locals 4

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getLastPredictConfidence()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/ss/ttvideoengine/TTVideoEngineInternal;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "[ABR] get network confidence:"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v0

    .line 42
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 43
    .line 44
    return v0
.end method

.method public getTimelineNetworkSpeed()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/bytedance/vcloud/abrmodule/IABRModuleSpeedRecord;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getVideoBufferInfo()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/vcloud/abrmodule/IBufferInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyPlayStateSupplier;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 13
    .line 14
    if-eqz v1, :cond_5

    .line 15
    .line 16
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_5

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_5

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-interface {v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getMediatype()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sget v4, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 63
    .line 64
    if-eq v3, v4, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    new-instance v3, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;

    .line 68
    .line 69
    invoke-direct {v3}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;-><init>()V

    .line 70
    .line 71
    .line 72
    const/16 v4, 0xf

    .line 73
    .line 74
    invoke-interface {v2, v4}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v3, v4}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->setStreamId(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSize(Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->setFileAvailSize(J)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getBitrateFitterInfo()Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getHeaderSize()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    int-to-long v4, v4

    .line 99
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->setHeadSize(J)V

    .line 100
    .line 101
    .line 102
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v5, ""

    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const/4 v5, 0x3

    .line 113
    invoke-interface {v2, v5}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_5
    :goto_1
    return-object v0
.end method
