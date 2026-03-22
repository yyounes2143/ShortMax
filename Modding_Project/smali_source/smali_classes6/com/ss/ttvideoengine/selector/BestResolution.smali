.class public Lcom/ss/ttvideoengine/selector/BestResolution;
.super Ljava/lang/Object;
.source "BestResolution.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static findAwemeShiftResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;DLcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;)Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;

    .line 8
    .line 9
    invoke-direct {v0, p4}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;-><init>(Lcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;)V

    .line 10
    .line 11
    .line 12
    new-instance p4, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector$Params;

    .line 13
    .line 14
    invoke-direct {p4}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector$Params;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4, p2, p3}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector$Params;->speed(D)Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector$Params;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector$Params;->build()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {v0, p0, p2}, Lcom/ss/ttvideoengine/selector/Selector;->select(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;)Lcom/ss/ttvideoengine/selector/SelectedInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/selector/SelectedInfo;->getVideoInfo()Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    return-object p1
.end method

.method public static findByNetLevel(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    instance-of v0, p0, Lcom/ss/ttvideoengine/model/VideoModel;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Lcom/ss/ttvideoengine/model/VideoModel;

    .line 12
    .line 13
    const/16 v1, 0xf5

    .line 14
    .line 15
    const-string/jumbo v2, "{\"select_resolution\":[\"net_target_bitrate\"]}"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/model/VideoModel;->setVideoRefStr(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_6

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getLastTargetBitrate()D

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    cmpg-double v2, v0, v2

    .line 45
    .line 46
    if-gtz v2, :cond_3

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-wide v2, 0x47efffffe0000000L    # 3.4028234663852886E38

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_6

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 69
    .line 70
    if-nez v4, :cond_5

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    iget v5, v4, Lcom/ss/ttvideoengine/model/VideoInfo;->mBitrate:I

    .line 74
    .line 75
    int-to-double v6, v5

    .line 76
    cmpg-double v6, v6, v0

    .line 77
    .line 78
    if-gtz v6, :cond_4

    .line 79
    .line 80
    int-to-double v6, v5

    .line 81
    sub-double v6, v0, v6

    .line 82
    .line 83
    cmpg-double v6, v6, v2

    .line 84
    .line 85
    if-gez v6, :cond_4

    .line 86
    .line 87
    int-to-double v2, v5

    .line 88
    sub-double v2, v0, v2

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    goto :goto_0

    .line 95
    :cond_6
    :goto_1
    return-object p1

    .line 96
    :cond_7
    :goto_2
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 97
    .line 98
    return-object p0
.end method

.method public static findDefaultResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;
    .locals 7

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-static {}, Lcom/ss/ttvideoengine/Resolution;->getAllResolutions()[Lcom/ss/ttvideoengine/Resolution;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v0, v0

    .line 10
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getSupportResolutions()[Lcom/ss/ttvideoengine/Resolution;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_5

    .line 15
    .line 16
    array-length v1, p0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    array-length v1, p0

    .line 21
    const/4 v2, 0x0

    .line 22
    move-object v3, p1

    .line 23
    :goto_0
    if-ge v2, v1, :cond_4

    .line 24
    .line 25
    aget-object v4, p0, v2

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    sub-int/2addr v5, v6

    .line 39
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ge v5, v0, :cond_3

    .line 44
    .line 45
    move-object v3, v4

    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move v0, v5

    .line 50
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    :goto_2
    return-object v3

    .line 54
    :cond_5
    :goto_3
    return-object p1

    .line 55
    :cond_6
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 56
    .line 57
    return-object p0
.end method

.method public static findMaxCacheInfo(Lcom/ss/ttvideoengine/model/IVideoModel;I)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget v1, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 6
    .line 7
    if-eq p1, v1, :cond_2

    .line 8
    .line 9
    sget v1, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 10
    .line 11
    if-ne p1, v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 17
    :goto_1
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_6

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-wide/16 v2, 0x0

    .line 35
    .line 36
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_6

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eq v5, p1, :cond_5

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_5
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/16 v6, 0xf

    .line 62
    .line 63
    invoke-virtual {v4, v6}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v5, v6}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getCacheFileSize(Ljava/lang/String;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    cmp-long v7, v5, v2

    .line 72
    .line 73
    if-lez v7, :cond_4

    .line 74
    .line 75
    move-object v0, v4

    .line 76
    move-wide v2, v5

    .line 77
    goto :goto_2

    .line 78
    :cond_6
    :goto_3
    return-object v0
.end method

.method public static findMaxCacheResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;
    .locals 9

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getSupportResolutions()[Lcom/ss/ttvideoengine/Resolution;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    array-length v1, v0

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    if-ge v4, v1, :cond_2

    .line 20
    .line 21
    aget-object v5, v0, v4

    .line 22
    .line 23
    invoke-static {p0, v5}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSize(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    cmp-long v8, v6, v2

    .line 28
    .line 29
    if-lez v8, :cond_1

    .line 30
    .line 31
    move-object p1, v5

    .line 32
    move-wide v2, v6

    .line 33
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    return-object p1

    .line 37
    :cond_3
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 38
    .line 39
    return-object p0
.end method

.method public static findMaxQualityResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;
    .locals 8

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getSupportResolutions()[Lcom/ss/ttvideoengine/Resolution;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    aget-object v3, v0, v2

    .line 20
    .line 21
    invoke-static {p0, v3}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSize(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    const-wide/16 v6, 0x0

    .line 26
    .line 27
    cmp-long v4, v4, v6

    .line 28
    .line 29
    if-lez v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-le v4, v5, :cond_1

    .line 40
    .line 41
    move-object p1, v3

    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return-object p1

    .line 46
    :cond_3
    sget-object p0, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 47
    .line 48
    return-object p0
.end method
