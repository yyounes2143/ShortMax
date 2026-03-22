.class Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;
.super Ljava/lang/Object;
.source "GearStrategyABR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;,
        Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;,
        Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TTVideoEngine.GearStrategy.ABR"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static parseABRResult(Lcom/bytedance/vcloud/abrmodule/ABRResult;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/vcloud/abrmodule/ABRResult;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const-wide/16 v5, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    move-wide v7, v5

    .line 14
    move-wide v9, v7

    .line 15
    move-wide v11, v9

    .line 16
    const/4 v13, 0x0

    .line 17
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/vcloud/abrmodule/ABRResult;->size()I

    .line 18
    .line 19
    .line 20
    move-result v14

    .line 21
    if-ge v13, v14, :cond_4

    .line 22
    .line 23
    invoke-virtual {v0, v13}, Lcom/bytedance/vcloud/abrmodule/ABRResult;->get(I)Lcom/bytedance/vcloud/abrmodule/ABRResultElement;

    .line 24
    .line 25
    .line 26
    move-result-object v14

    .line 27
    invoke-virtual {v14}, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->getBitrate()J

    .line 28
    .line 29
    .line 30
    move-result-wide v15

    .line 31
    invoke-virtual {v14}, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->getOnceSelectType()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v14}, Lcom/bytedance/vcloud/abrmodule/ABRResultElement;->getMediaType()I

    .line 36
    .line 37
    .line 38
    move-result v14

    .line 39
    sget v2, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 40
    .line 41
    if-ne v2, v14, :cond_2

    .line 42
    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    move-wide v7, v15

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    if-ne v4, v3, :cond_1

    .line 48
    .line 49
    move-wide v9, v15

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v2, 0x2

    .line 52
    if-ne v2, v3, :cond_3

    .line 53
    .line 54
    move-wide v11, v15

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    sget v2, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 57
    .line 58
    if-ne v2, v14, :cond_3

    .line 59
    .line 60
    move-wide v5, v15

    .line 61
    :cond_3
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    move-wide v2, v5

    .line 65
    move-wide v5, v7

    .line 66
    goto :goto_2

    .line 67
    :cond_5
    move-wide v2, v5

    .line 68
    move-wide v9, v2

    .line 69
    move-wide v11, v9

    .line 70
    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string/jumbo v7, "video_bitrarte"

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v2, "audio_bitrarte"

    .line 85
    .line 86
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    cmp-long v0, v9, v5

    .line 90
    .line 91
    const-string v2, "downgrade_type"

    .line 92
    .line 93
    const-string/jumbo v3, "video_bitrarte_origin"

    .line 94
    .line 95
    .line 96
    if-lez v0, :cond_6

    .line 97
    .line 98
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    cmp-long v0, v11, v5

    .line 114
    .line 115
    if-lez v0, :cond_7

    .line 116
    .line 117
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    const/4 v0, 0x2

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const/4 v0, 0x0

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :goto_3
    return-object v1
.end method

.method static select(Lcom/ss/ttvideoengine/model/IVideoModel;ILcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;Ljava/util/Map;)V
    .locals 5
    .param p0    # Lcom/ss/ttvideoengine/model/IVideoModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "I",
            "Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-interface {p0, v0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {p2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;->transGearInput(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "TTVideoEngine.GearStrategy.ABR"

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {p2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->access$000(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "select input %s %d %s"

    .line 35
    .line 36
    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const/4 v1, 0x1

    .line 44
    if-ne p1, v1, :cond_1

    .line 45
    .line 46
    invoke-static {p0, p2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;->selectStartup(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {p0, p2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;->selectPreload(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :goto_0
    invoke-static {p3, p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;->transGearOutput(Ljava/util/Map;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->access$000(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    filled-new-array {v0, p1, p0}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p1, "select output %s %d %s"

    .line 81
    .line 82
    invoke-static {p2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {v2, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-void
.end method

.method private static selectPreload(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;
    .locals 5
    .param p0    # Lcom/ss/ttvideoengine/model/IVideoModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->srInput:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;->srConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 4
    .line 5
    new-instance v1, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->displayInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;

    .line 17
    .line 18
    iget v4, v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;->displayWidth:I

    .line 19
    .line 20
    iget v3, v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;->displayHeight:I

    .line 21
    .line 22
    invoke-virtual {v2, v4, v3}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->displaySize(II)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->displayInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;

    .line 27
    .line 28
    iget v4, v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;->screenWidth:I

    .line 29
    .line 30
    iget v3, v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;->screenHeight:I

    .line 31
    .line 32
    invoke-virtual {v2, v4, v3}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->screenSize(II)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiDefaultResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 37
    .line 38
    iget v4, v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 39
    .line 40
    iget-object v3, v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v4, v3}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->wifiDefault(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v3, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 47
    .line 48
    iget v4, v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 49
    .line 50
    iget-object v3, v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, v4, v3}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->abrMax(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v3, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->mobile4GMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 57
    .line 58
    iget v4, v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 59
    .line 60
    iget-object v3, v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, v4, v3}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->cellularMax(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->srStrategyConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v2, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->downgradeResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 71
    .line 72
    iget v3, v2, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 73
    .line 74
    iget-object v2, v2, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v3, v2}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->downgrade(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v2, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->userExpectedResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 81
    .line 82
    iget v3, v2, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 83
    .line 84
    iget-object v2, v2, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v3, v2}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->userExpected(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v2, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->tag:Ljava/lang/String;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->subTag:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v2, p1}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->tags(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->build()Ljava/util/Map;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p0, p1}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->select(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;)Lcom/ss/ttvideoengine/selector/SelectedInfo;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/selector/SelectedInfo;->getGearResult()Ljava/util/Map;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    new-instance p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;

    .line 111
    .line 112
    const/4 v0, 0x0

    .line 113
    invoke-direct {p1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;-><init>(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$1;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->access$300(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;Ljava/util/Map;)V

    .line 117
    .line 118
    .line 119
    return-object p1
.end method

.method private static selectStartup(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;
    .locals 7
    .param p0    # Lcom/ss/ttvideoengine/model/IVideoModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;-><init>(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$1;)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-interface {p0, v1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Lcom/ss/ttvideoengine/abr/ABRPool;->getInstance()Lcom/ss/ttvideoengine/abr/ABRPool;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, v1}, Lcom/ss/ttvideoengine/abr/ABRPool;->getFromPreloaded(Ljava/lang/String;)Lcom/bytedance/vcloud/abrmodule/IABRModule;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lcom/ss/ttvideoengine/abr/ABRPool;->getInstance()Lcom/ss/ttvideoengine/abr/ABRPool;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/abr/ABRPool;->getFromCache()Lcom/bytedance/vcloud/abrmodule/IABRModule;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v3, v2

    .line 41
    :goto_0
    invoke-static {p1, v1, p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;->setMediaInfo2Abr(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;Lcom/bytedance/vcloud/abrmodule/IABRModule;Lcom/ss/ttvideoengine/model/IVideoModel;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v3, v2

    .line 46
    :goto_1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->access$400(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    const/16 v6, 0x16

    .line 51
    .line 52
    invoke-interface {v1, v6, v4, v5}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setLongOptionForKey(IJ)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->access$500(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    const/16 v6, 0x21

    .line 60
    .line 61
    invoke-interface {v1, v6, v4, v5}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setLongOptionForKey(IJ)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v1, p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;->setMediaBuffer2Abr(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;Lcom/bytedance/vcloud/abrmodule/IABRModule;Lcom/ss/ttvideoengine/model/IVideoModel;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;->setDisplayInfo(Lcom/bytedance/vcloud/abrmodule/IABRModule;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)V

    .line 68
    .line 69
    .line 70
    const/16 p0, 0xe

    .line 71
    .line 72
    invoke-interface {v1, p0, v2}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->netInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;

    .line 76
    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    const/16 v4, 0x19

    .line 80
    .line 81
    iget v5, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->downloadSpeed:F

    .line 82
    .line 83
    invoke-interface {v1, v4, v5}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setFloatOptionForKey(IF)V

    .line 84
    .line 85
    .line 86
    const/16 v4, 0x17

    .line 87
    .line 88
    iget v5, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->networkSpeed:F

    .line 89
    .line 90
    invoke-interface {v1, v4, v5}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setFloatOptionForKey(IF)V

    .line 91
    .line 92
    .line 93
    const/16 v4, 0x18

    .line 94
    .line 95
    iget v5, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->networkSpeedConfidence:F

    .line 96
    .line 97
    invoke-interface {v1, v4, v5}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setFloatOptionForKey(IF)V

    .line 98
    .line 99
    .line 100
    const/16 v4, 0x1b

    .line 101
    .line 102
    iget v5, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->avgDownloadSpeed:F

    .line 103
    .line 104
    invoke-interface {v1, v4, v5}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setFloatOptionForKey(IF)V

    .line 105
    .line 106
    .line 107
    const/16 v4, 0x1c

    .line 108
    .line 109
    iget v5, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->avgStartupEndNetworkSpeed:F

    .line 110
    .line 111
    invoke-interface {v1, v4, v5}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setFloatOptionForKey(IF)V

    .line 112
    .line 113
    .line 114
    const/16 v4, 0x15

    .line 115
    .line 116
    iget p0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->networkState:I

    .line 117
    .line 118
    invoke-interface {v1, v4, p0}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object p0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->har:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$HAR;

    .line 122
    .line 123
    if-eqz p0, :cond_3

    .line 124
    .line 125
    const/16 v4, 0x46

    .line 126
    .line 127
    iget v5, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$HAR;->harStatus:I

    .line 128
    .line 129
    invoke-interface {v1, v4, v5}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 130
    .line 131
    .line 132
    const/16 v4, 0x47

    .line 133
    .line 134
    iget p0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$HAR;->harScore:I

    .line 135
    .line 136
    invoke-interface {v1, v4, p0}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 137
    .line 138
    .line 139
    :cond_3
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    const-string v4, "abr_params"

    .line 144
    .line 145
    invoke-virtual {p0, v4}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    if-eqz p0, :cond_4

    .line 150
    .line 151
    const-string/jumbo v4, "user_quality_sensitivity"

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    double-to-float v4, v4

    .line 159
    const-string/jumbo v5, "user_enter_full_screen"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    const/16 v6, 0x48

    .line 167
    .line 168
    invoke-interface {v1, v6, v4}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setFloatOptionForKey(IF)V

    .line 169
    .line 170
    .line 171
    const/16 v4, 0x49

    .line 172
    .line 173
    invoke-interface {v1, v4, v5}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 174
    .line 175
    .line 176
    invoke-static {v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->access$600(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v4, p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->recordABRSettingsLog(Lorg/json/JSONObject;)V

    .line 181
    .line 182
    .line 183
    :cond_4
    iget-object p0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->srInput:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;

    .line 184
    .line 185
    iget v4, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->abrWithSR:I

    .line 186
    .line 187
    if-ne v4, v2, :cond_5

    .line 188
    .line 189
    iget v4, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;->srEnabled:I

    .line 190
    .line 191
    const/16 v5, 0x27

    .line 192
    .line 193
    invoke-interface {v1, v5, v4}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 194
    .line 195
    .line 196
    const/16 v4, 0x28

    .line 197
    .line 198
    iget v5, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;->srSatisfied:I

    .line 199
    .line 200
    invoke-interface {v1, v4, v5}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 201
    .line 202
    .line 203
    iget-object p0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;->srBenchmark:Ljava/util/Map;

    .line 204
    .line 205
    invoke-interface {v1, p0}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setSRBenchmarkMap(Ljava/util/Map;)V

    .line 206
    .line 207
    .line 208
    :cond_5
    const/16 p0, 0x4b

    .line 209
    .line 210
    iget-object v4, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->tag:Ljava/lang/String;

    .line 211
    .line 212
    invoke-interface {v1, p0, v4}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setStringOptionForKey(ILjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const/16 p0, 0x4c

    .line 216
    .line 217
    iget-object v4, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->subTag:Ljava/lang/String;

    .line 218
    .line 219
    invoke-interface {v1, p0, v4}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setStringOptionForKey(ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget p0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->abrOnceType:I

    .line 223
    .line 224
    invoke-interface {v1, p0, v2}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->onceSelect(II)Lcom/bytedance/vcloud/abrmodule/ABRResult;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-static {p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->parseABRResult(Lcom/bytedance/vcloud/abrmodule/ABRResult;)Ljava/util/Map;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-static {v0, p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->access$300(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;Ljava/util/Map;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->access$600(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->recordABRModuleLog(Lcom/bytedance/vcloud/abrmodule/IABRModule;)V

    .line 240
    .line 241
    .line 242
    if-eqz v3, :cond_6

    .line 243
    .line 244
    invoke-static {}, Lcom/ss/ttvideoengine/abr/ABRPool;->getInstance()Lcom/ss/ttvideoengine/abr/ABRPool;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/abr/ABRPool;->giveBack(Lcom/bytedance/vcloud/abrmodule/IABRModule;)V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_6
    invoke-interface {v1}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->release()V

    .line 253
    .line 254
    .line 255
    :goto_2
    return-object v0
.end method

.method private static setDisplayInfo(Lcom/bytedance/vcloud/abrmodule/IABRModule;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->displayInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;

    .line 2
    .line 3
    iget v0, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;->screenWidth:I

    .line 4
    .line 5
    const/16 v1, 0x22

    .line 6
    .line 7
    invoke-interface {p0, v1, v0}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->displayInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;

    .line 11
    .line 12
    iget v0, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;->screenHeight:I

    .line 13
    .line 14
    const/16 v1, 0x23

    .line 15
    .line 16
    invoke-interface {p0, v1, v0}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->displayInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;

    .line 20
    .line 21
    iget v0, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;->displayWidth:I

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    invoke-interface {p0, v1, v0}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->displayInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;

    .line 28
    .line 29
    iget p1, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;->displayHeight:I

    .line 30
    .line 31
    const/4 v0, 0x7

    .line 32
    invoke-interface {p0, v0, p1}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method static setGlobalConfig(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V
    .locals 2
    .param p0    # Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x2c

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setSwitchModel(I)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x2d

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setFixedLevel(I)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x2e

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setStartupModel(I)V

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x2f

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getFloatValue(I)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setStartupBandwidthParameter(F)V

    .line 35
    .line 36
    .line 37
    const/16 v0, 0x30

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getDoubleValue(I)D

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setStartupModelFirstParam(D)V

    .line 44
    .line 45
    .line 46
    const/16 v0, 0x31

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getDoubleValue(I)D

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setStartupModelSecondParam(D)V

    .line 53
    .line 54
    .line 55
    const/16 v0, 0x32

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getDoubleValue(I)D

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setStartupModelThirdParam(D)V

    .line 62
    .line 63
    .line 64
    const/16 v0, 0x33

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getDoubleValue(I)D

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    invoke-static {v0, v1}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setStartupModelFourthParam(D)V

    .line 71
    .line 72
    .line 73
    const/16 v0, 0x34

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setStartupUseCache(I)V

    .line 80
    .line 81
    .line 82
    const/16 v0, 0x35

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setAbrFlowJson(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const/16 v0, 0x36

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setAbrPreloadJson(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/16 v0, 0x37

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setAbrStartupJson(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/16 v0, 0x38

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    const/4 v0, 0x1

    .line 116
    if-ne p0, v0, :cond_0

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/abr/ABRPool;->setEnabled(Z)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method private static setMediaBuffer2Abr(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;Lcom/bytedance/vcloud/abrmodule/IABRModule;Lcom/ss/ttvideoengine/model/IVideoModel;)V
    .locals 11

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p2}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_4

    .line 9
    .line 10
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/16 v1, 0xf

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget v1, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->quickGetFileCache:I

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    if-ne v1, v2, :cond_3

    .line 46
    .line 47
    invoke-static {v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->quickGetCacheFileSize(Ljava/lang/String;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    :goto_1
    move-wide v7, v1

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    invoke-static {v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSize(Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    goto :goto_1

    .line 58
    :goto_2
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v1, 0x3

    .line 63
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    int-to-long v5, v1

    .line 68
    const/16 v1, 0x26

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    int-to-long v9, v0

    .line 75
    move-object v2, p1

    .line 76
    invoke-interface/range {v2 .. v10}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->addBufferInfo(ILjava/lang/String;JJJ)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    :goto_3
    return-void
.end method

.method private static setMediaInfo2Abr(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;Lcom/bytedance/vcloud/abrmodule/IABRModule;Lcom/ss/ttvideoengine/model/IVideoModel;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-interface/range {p2 .. p2}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_f

    .line 12
    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v5, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const/4 v7, 0x2

    .line 40
    const/4 v8, 0x1

    .line 41
    const/4 v9, 0x3

    .line 42
    if-eqz v6, :cond_5

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 49
    .line 50
    if-nez v6, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    sget v11, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 58
    .line 59
    const/4 v13, -0x1

    .line 60
    const/16 v14, 0x2c

    .line 61
    .line 62
    const/16 v15, 0x8

    .line 63
    .line 64
    const/16 v12, 0xf

    .line 65
    .line 66
    if-ne v10, v11, :cond_4

    .line 67
    .line 68
    invoke-virtual {v6, v9}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    new-instance v10, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;

    .line 73
    .line 74
    invoke-direct {v10}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v12}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    invoke-virtual {v10, v11}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setStreamId(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v10, v9}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setBandWidth(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v15}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    invoke-virtual {v10, v12}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setCodec(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v14}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    invoke-virtual {v10, v12}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setRealBitrate(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v8}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    invoke-virtual {v6, v7}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    invoke-virtual {v10, v8}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setWidth(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10, v7}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setHeight(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v13}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setFrameRate(I)V

    .line 116
    .line 117
    .line 118
    const/16 v7, 0x1388

    .line 119
    .line 120
    invoke-virtual {v10, v7}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setSegmentDuration(I)V

    .line 121
    .line 122
    .line 123
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-nez v7, :cond_3

    .line 128
    .line 129
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    :cond_3
    invoke-static {v0, v9}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->access$700(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;I)I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    invoke-virtual {v10, v7}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setSupportSR(I)V

    .line 137
    .line 138
    .line 139
    invoke-static {v6}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->getResolutionIndex(Lcom/ss/ttvideoengine/model/VideoInfo;)I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    invoke-virtual {v10, v6}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setResolution(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_4
    new-instance v7, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;

    .line 148
    .line 149
    invoke-direct {v7}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v12}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-virtual {v7, v8}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->setStreamId(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v9}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    invoke-virtual {v7, v9}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->setBandWidth(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v15}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-virtual {v7, v9}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->setCodec(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v14}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    invoke-virtual {v7, v6}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->setRealBitrate(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v13}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->setSampleRate(I)V

    .line 181
    .line 182
    .line 183
    const/16 v6, 0x1388

    .line 184
    .line 185
    invoke-virtual {v7, v6}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->setSegmentDuration(I)V

    .line 186
    .line 187
    .line 188
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-nez v6, :cond_1

    .line 193
    .line 194
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_5
    invoke-interface {v1, v4, v5}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setMediaInfo(Ljava/util/List;Ljava/util/List;)V

    .line 200
    .line 201
    .line 202
    iget-object v3, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->mobile4GMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 203
    .line 204
    iget v3, v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 205
    .line 206
    invoke-static {v3}, Lcom/ss/ttvideoengine/Resolution;->valueOf(I)Lcom/ss/ttvideoengine/Resolution;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    const/16 v4, 0x20

    .line 211
    .line 212
    const/4 v5, 0x0

    .line 213
    if-nez v3, :cond_6

    .line 214
    .line 215
    iget-object v6, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->mobile4GMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 216
    .line 217
    iget-object v6, v6, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 218
    .line 219
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-nez v6, :cond_8

    .line 224
    .line 225
    :cond_6
    iget-object v6, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->mobile4GMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 226
    .line 227
    iget-object v6, v6, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    if-nez v6, :cond_7

    .line 234
    .line 235
    new-instance v6, Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    iget-object v11, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->mobile4GMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 245
    .line 246
    iget-object v11, v11, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 247
    .line 248
    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_7
    move-object v6, v5

    .line 253
    :goto_1
    invoke-interface {v2, v3, v6, v8}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    if-eqz v3, :cond_8

    .line 258
    .line 259
    invoke-virtual {v3, v9}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    int-to-long v10, v3

    .line 264
    invoke-interface {v1, v7, v10, v11}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setLongOptionForKey(IJ)V

    .line 265
    .line 266
    .line 267
    :cond_8
    iget-object v3, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiDefaultResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 268
    .line 269
    iget v3, v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 270
    .line 271
    invoke-static {v3}, Lcom/ss/ttvideoengine/Resolution;->valueOf(I)Lcom/ss/ttvideoengine/Resolution;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    if-nez v3, :cond_9

    .line 276
    .line 277
    iget-object v6, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiDefaultResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 278
    .line 279
    iget-object v6, v6, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    if-nez v6, :cond_b

    .line 286
    .line 287
    :cond_9
    iget-object v6, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiDefaultResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 288
    .line 289
    iget-object v6, v6, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    if-nez v6, :cond_a

    .line 296
    .line 297
    new-instance v6, Ljava/util/HashMap;

    .line 298
    .line 299
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    iget-object v10, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiDefaultResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 307
    .line 308
    iget-object v10, v10, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 309
    .line 310
    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_a
    move-object v6, v5

    .line 315
    :goto_2
    invoke-interface {v2, v3, v6, v8}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    if-eqz v3, :cond_b

    .line 320
    .line 321
    invoke-virtual {v3, v9}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    int-to-long v6, v3

    .line 326
    const/16 v3, 0xc

    .line 327
    .line 328
    invoke-interface {v1, v3, v6, v7}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setLongOptionForKey(IJ)V

    .line 329
    .line 330
    .line 331
    :cond_b
    iget-object v3, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 332
    .line 333
    iget v3, v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 334
    .line 335
    invoke-static {v3}, Lcom/ss/ttvideoengine/Resolution;->valueOf(I)Lcom/ss/ttvideoengine/Resolution;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    if-nez v3, :cond_c

    .line 340
    .line 341
    iget-object v6, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 342
    .line 343
    iget-object v6, v6, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 344
    .line 345
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    if-nez v6, :cond_e

    .line 350
    .line 351
    :cond_c
    iget-object v6, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 352
    .line 353
    iget-object v6, v6, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 354
    .line 355
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    if-nez v6, :cond_d

    .line 360
    .line 361
    new-instance v5, Ljava/util/HashMap;

    .line 362
    .line 363
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    iget-object v0, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 371
    .line 372
    iget-object v0, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 373
    .line 374
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    :cond_d
    invoke-interface {v2, v3, v5, v8}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    if-eqz v0, :cond_e

    .line 382
    .line 383
    invoke-virtual {v0, v9}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    int-to-long v3, v0

    .line 388
    const/16 v0, 0xd

    .line 389
    .line 390
    invoke-interface {v1, v0, v3, v4}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setLongOptionForKey(IJ)V

    .line 391
    .line 392
    .line 393
    :cond_e
    const/16 v0, 0x42

    .line 394
    .line 395
    invoke-interface {v2, v9}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefInt(I)I

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    invoke-interface {v1, v0, v3}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 400
    .line 401
    .line 402
    const/16 v0, 0xed

    .line 403
    .line 404
    invoke-interface {v2, v0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    if-nez v2, :cond_f

    .line 413
    .line 414
    const/16 v2, 0x45

    .line 415
    .line 416
    invoke-interface {v1, v2, v0}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setStringOptionForKey(ILjava/lang/String;)V

    .line 417
    .line 418
    .line 419
    :cond_f
    :goto_3
    return-void
.end method

.method private static transGearInput(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;-><init>(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$1;)V

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->abrOnceType:I

    .line 14
    .line 15
    const/16 v1, 0x17

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->quickGetFileCache:I

    .line 22
    .line 23
    const/16 v1, 0xc

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->abrWithSR:I

    .line 30
    .line 31
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->srInput:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;

    .line 32
    .line 33
    const/16 v2, 0xd

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;->srEnabled:I

    .line 40
    .line 41
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->srInput:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;

    .line 42
    .line 43
    const/16 v2, 0xe

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iput v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;->srSatisfied:I

    .line 50
    .line 51
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->srInput:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;

    .line 52
    .line 53
    const/16 v2, 0xf

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getObjectValue(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/util/Map;

    .line 60
    .line 61
    iput-object v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;->srBenchmark:Ljava/util/Map;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->srInput:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;

    .line 64
    .line 65
    const/16 v2, 0x2b

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getObjectValue(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/util/List;

    .line 72
    .line 73
    iput-object v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;->srSupportBitrateList:Ljava/util/List;

    .line 74
    .line 75
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->srInput:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;

    .line 76
    .line 77
    const/16 v2, 0x1e

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getObjectValue(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 84
    .line 85
    iput-object v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;->srConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 86
    .line 87
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->displayInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;

    .line 88
    .line 89
    const/16 v2, 0x1a

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    iput v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;->displayWidth:I

    .line 96
    .line 97
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->displayInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;

    .line 98
    .line 99
    const/16 v2, 0x1b

    .line 100
    .line 101
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    iput v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;->displayHeight:I

    .line 106
    .line 107
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->displayInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;

    .line 108
    .line 109
    const/16 v2, 0x18

    .line 110
    .line 111
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iput v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;->screenWidth:I

    .line 116
    .line 117
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->displayInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;

    .line 118
    .line 119
    const/16 v2, 0x19

    .line 120
    .line 121
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    iput v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;->screenHeight:I

    .line 126
    .line 127
    const/16 v1, 0x9

    .line 128
    .line 129
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    iput v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->startupSpeedType:I

    .line 134
    .line 135
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->mobile4GMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 136
    .line 137
    const/16 v2, 0x13

    .line 138
    .line 139
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    iput v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 144
    .line 145
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->mobile4GMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 146
    .line 147
    const/16 v2, 0x14

    .line 148
    .line 149
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iput-object v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiDefaultResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 156
    .line 157
    const/16 v2, 0x11

    .line 158
    .line 159
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    iput v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 164
    .line 165
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiDefaultResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 166
    .line 167
    const/16 v2, 0x12

    .line 168
    .line 169
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    iput-object v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 174
    .line 175
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->userExpectedResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 176
    .line 177
    const/4 v2, 0x5

    .line 178
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    iput v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 183
    .line 184
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->userExpectedResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 185
    .line 186
    const/4 v2, 0x6

    .line 187
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    iput-object v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 192
    .line 193
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->downgradeResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 194
    .line 195
    const/4 v2, 0x7

    .line 196
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    iput v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 201
    .line 202
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->downgradeResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 203
    .line 204
    const/16 v2, 0x8

    .line 205
    .line 206
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    iput-object v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 211
    .line 212
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 213
    .line 214
    const/16 v2, 0x15

    .line 215
    .line 216
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    iput v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->index:I

    .line 221
    .line 222
    iget-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 223
    .line 224
    const/16 v2, 0x16

    .line 225
    .line 226
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iput-object v2, v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;->quality:Ljava/lang/String;

    .line 231
    .line 232
    iget v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->startupSpeedType:I

    .line 233
    .line 234
    invoke-static {v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->gatheringSpeedInfo(I)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iput-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->netInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;

    .line 239
    .line 240
    invoke-static {}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->gatheringHARInfo()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$HAR;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iput-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->har:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$HAR;

    .line 245
    .line 246
    const/16 v1, 0x1c

    .line 247
    .line 248
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    iput-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->tag:Ljava/lang/String;

    .line 253
    .line 254
    const/16 v1, 0x1d

    .line 255
    .line 256
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    iput-object v1, v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->subTag:Ljava/lang/String;

    .line 261
    .line 262
    const/16 v1, 0x1f

    .line 263
    .line 264
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 265
    .line 266
    .line 267
    move-result p0

    .line 268
    invoke-static {p0}, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->setNarrowScreenUseWidth(I)V

    .line 269
    .line 270
    .line 271
    return-object v0
.end method

.method private static transGearOutput(Ljava/util/Map;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-wide v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->videoBitrate:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string/jumbo v1, "video_bitrarte"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->audioBitrate:J

    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "audio_bitrarte"

    .line 23
    .line 24
    invoke-static {p0, v1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->downgradeType:I

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "downgrade_type"

    .line 34
    .line 35
    invoke-static {p0, v1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-wide v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->videoBitrateOrigin:J

    .line 39
    .line 40
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string/jumbo v1, "video_bitrarte_origin"

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;->logInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->userQualitySensitivity:F

    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string/jumbo v1, "user_quality_sen"

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->userEnterFullScreen:I

    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string/jumbo v1, "user_enter_fullscreen"

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-wide v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->maxCacheBitrate:J

    .line 79
    .line 80
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v1, "max_cache_bitrate"

    .line 85
    .line 86
    invoke-static {p0, v1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-wide v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->bitrateBeforeFitScreen:J

    .line 90
    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "bitrate_before_fit_screen"

    .line 96
    .line 97
    invoke-static {p0, v1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->startupSpeed:F

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string/jumbo v1, "startup_speed"

    .line 107
    .line 108
    .line 109
    invoke-static {p0, v1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->startupPredictSpeed:F

    .line 113
    .line 114
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, "predict_speed"

    .line 119
    .line 120
    invoke-static {p0, v1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget v0, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->startupAverageSpeed:F

    .line 124
    .line 125
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "average_speed"

    .line 130
    .line 131
    invoke-static {p0, v1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    const-string v0, "abr_ver"

    .line 135
    .line 136
    iget-object v1, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->abrVersion:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {p0, v0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const-string/jumbo v0, "sr_info"

    .line 142
    .line 143
    .line 144
    iget-object v1, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->abrSrInfo:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {p0, v0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    const-string/jumbo v0, "startup_info"

    .line 150
    .line 151
    .line 152
    iget-object p1, p1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->abrStartupInfo:Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {p0, v0, p1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$Utils;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_1
    return-void
.end method
