.class Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;
.super Ljava/lang/Object;
.source "GearStrategyABR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Utils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->calUserExpectedBitrate(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->calDowngradeBitrate(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method static synthetic access$700(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->checkBitrateIsInSupportedList(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static calDowngradeBitrate(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)J
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->downgradeResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 2
    .line 3
    iget v0, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 4
    .line 5
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/Resolution;->getIndex()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->downgradeResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object p1, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->downgradeResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 24
    .line 25
    iget v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 26
    .line 27
    iget-object p1, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p0, v0, p1, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->findVideoInfo(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/lang/String;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x3

    .line 37
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    int-to-long p0, p0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-wide/16 p0, -0x1

    .line 44
    .line 45
    :goto_0
    return-wide p0
.end method

.method private static calUserExpectedBitrate(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)J
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->userExpectedResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 2
    .line 3
    iget v0, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 4
    .line 5
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Auto:Lcom/ss/ttvideoengine/Resolution;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/Resolution;->getIndex()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->userExpectedResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 14
    .line 15
    iget v0, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 16
    .line 17
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/Resolution;->getIndex()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-gt v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->userExpectedResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    :cond_0
    iget-object p1, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->userExpectedResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 36
    .line 37
    iget v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 38
    .line 39
    iget-object p1, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-static {p0, v0, p1, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->findVideoInfo(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/lang/String;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    const/4 p1, 0x3

    .line 49
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    int-to-long p0, p0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-wide/16 p0, -0x1

    .line 56
    .line 57
    :goto_0
    return-wide p0
.end method

.method private static checkBitrateIsInSupportedList(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->srInput:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;->srSupportBitrateList:Ljava/util/List;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method private static findVideoInfo(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/lang/String;Z)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 6
    invoke-static {p1}, Lcom/ss/ttvideoengine/Resolution;->valueOf(I)Lcom/ss/ttvideoengine/Resolution;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 7
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x20

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    invoke-interface {p0, p1, v0, p3}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p0

    return-object p0
.end method

.method private static findVideoInfo(Lcom/ss/ttvideoengine/model/VideoModel;IJZ)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfoList()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    move-result v1

    const/4 v2, 0x3

    .line 4
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueLong(I)J

    move-result-wide v2

    const/16 v4, 0x2c

    .line 5
    invoke-virtual {v0, v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueLong(I)J

    move-result-wide v4

    if-ne p1, v1, :cond_0

    if-eqz p4, :cond_1

    cmp-long v1, p2, v4

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static gatheringHARInfo()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$HAR;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->getHARInfo()Lcom/ss/ttvideoengine/info/HARInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v2, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$HAR;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$HAR;-><init>(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$1;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/ss/ttvideoengine/info/HARInfo;->getHARScore()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, v2, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$HAR;->harScore:I

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/ss/ttvideoengine/info/HARInfo;->getHARStatus()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, v2, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$HAR;->harStatus:I

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    return-object v1
.end method

.method public static gatheringSpeedInfo(I)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;-><init>(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$1;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getCurrentAccessType()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->networkState:I

    .line 16
    .line 17
    sget-object v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    sget v2, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 22
    .line 23
    invoke-interface {v1, v2}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getDownloadSpeed(I)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const-string v3, "download_speed"

    .line 30
    .line 31
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iput v2, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->downloadSpeed:F

    .line 48
    .line 49
    :cond_0
    const/4 v2, 0x0

    .line 50
    invoke-interface {v1, v2}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getPredictSpeed(I)F

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iput v3, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->networkSpeed:F

    .line 55
    .line 56
    invoke-interface {v1}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getLastPredictConfidence()F

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    iput v3, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->networkSpeedConfidence:F

    .line 61
    .line 62
    sget v3, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-interface {v1, v3, v4, v4}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getAverageDownloadSpeed(IIZ)F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iput v3, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->avgDownloadSpeed:F

    .line 70
    .line 71
    sget v3, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 72
    .line 73
    invoke-interface {v1, v3, p0, v2}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getAverageDownloadSpeed(IIZ)F

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    iput p0, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->avgStartupEndNetworkSpeed:F

    .line 78
    .line 79
    :cond_1
    return-object v0
.end method

.method public static safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
