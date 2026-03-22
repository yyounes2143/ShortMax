.class Lcom/ss/ttvideoengine/selector/gracie/GracieStateSupplier;
.super Ljava/lang/Object;
.source "GracieStateSupplier.java"

# interfaces
.implements Lcom/bytedance/vcloud/abrmodule/IPlayStateSupplier;


# instance fields
.field mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/model/IVideoModel;)V
    .locals 0
    .param p1    # Lcom/ss/ttvideoengine/model/IVideoModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieStateSupplier;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 5
    .line 6
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
    iget-object v1, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieStateSupplier;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_4

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getMediatype()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    sget v4, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 44
    .line 45
    if-eq v3, v4, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance v3, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;

    .line 49
    .line 50
    invoke-direct {v3}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;-><init>()V

    .line 51
    .line 52
    .line 53
    const/16 v4, 0xf

    .line 54
    .line 55
    invoke-interface {v2, v4}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->setStreamId(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSize(Ljava/lang/String;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->setFileAvailSize(J)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getBitrateFitterInfo()Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getHeaderSize()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    int-to-long v4, v4

    .line 80
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->setHeadSize(J)V

    .line 81
    .line 82
    .line 83
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v5, ""

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const/4 v5, 0x3

    .line 94
    invoke-interface {v2, v5}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
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
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public getCurrentDownloadAudioSegmentIndex()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public getCurrentDownloadVideoBitrate()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public getCurrentDownloadVideoSegmentIndex()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public getCurrentPlaybackTime()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
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
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public getMaxCacheAudioTime()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public getMaxCacheVideoTime()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public getNetworkSpeed()F
    .locals 2

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
    return v0

    .line 11
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 12
    .line 13
    return v0
.end method

.method public getNetworkState()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x3f0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getIntValue(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    return v0
.end method

.method public getPlayerAudioCacheTime()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public getPlayerVideoCacheTime()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getSegmentInfoList(II)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getSpeedConfidence()F
    .locals 1

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
    return v0

    .line 10
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 11
    .line 12
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
    iget-object v1, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieStateSupplier;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_4

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getMediatype()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    sget v4, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 44
    .line 45
    if-eq v3, v4, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance v3, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;

    .line 49
    .line 50
    invoke-direct {v3}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;-><init>()V

    .line 51
    .line 52
    .line 53
    const/16 v4, 0xf

    .line 54
    .line 55
    invoke-interface {v2, v4}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->setStreamId(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSize(Ljava/lang/String;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->setFileAvailSize(J)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getBitrateFitterInfo()Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getHeaderSize()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    int-to-long v4, v4

    .line 80
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/vcloud/abrmodule/ABRBufferInfo;->setHeadSize(J)V

    .line 81
    .line 82
    .line 83
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v5, ""

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const/4 v5, 0x3

    .line 94
    invoke-interface {v2, v5}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    :goto_1
    return-object v0
.end method
