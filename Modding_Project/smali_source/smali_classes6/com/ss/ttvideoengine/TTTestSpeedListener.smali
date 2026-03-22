.class public Lcom/ss/ttvideoengine/TTTestSpeedListener;
.super Ljava/lang/Object;
.source "TTTestSpeedListener.java"

# interfaces
.implements Lcom/ss/ttvideoengine/TestSpeedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TTVideoEngine"

.field private static final TYPE_AUDIO:I = 0x1

.field private static final TYPE_VIDEO:I


# instance fields
.field private engineWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;"
        }
    .end annotation
.end field

.field private lastSampleTimestamp:J

.field private mAbrPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

.field public mAverageDownloadSpeed:F

.field public mAveragePredictSpeed:F

.field private mPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

.field public mSpeedAverageCount:I


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mAverageDownloadSpeed:F

    .line 6
    .line 7
    iput v0, p0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mAveragePredictSpeed:F

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mSpeedAverageCount:I

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->lastSampleTimestamp:J

    .line 15
    .line 16
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->engineWeakReference:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mAbrPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 26
    .line 27
    return-void
.end method

.method private _getCurrentPlaybackStreamId()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->engineWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngine;

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
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getIVideoModel()Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/ss/ttvideoengine/model/IVideoModel;->hasData()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-lez v2, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/16 v4, 0xf

    .line 64
    .line 65
    invoke-virtual {v2, v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    return-object v1
.end method

.method private _getDownSpeed(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/util/Map;)F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)F"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-le v1, v2, :cond_2

    .line 10
    .line 11
    const-string v1, "download_speed"

    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 26
    .line 27
    .line 28
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v2

    .line 31
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v4, "[SPEEDPREDICT] exception %s"

    .line 42
    .line 43
    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "TTVideoEngine"

    .line 48
    .line 49
    invoke-static {v3, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move v2, v0

    .line 53
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const-string/jumbo v5, "stream_id"

    .line 66
    .line 67
    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Ljava/util/Map$Entry;

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v6, :cond_0

    .line 83
    .line 84
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_0

    .line 89
    .line 90
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-nez v5, :cond_0

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-interface {p3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    check-cast p3, Ljava/lang/String;

    .line 113
    .line 114
    if-eqz p3, :cond_2

    .line 115
    .line 116
    const-string v1, "-1"

    .line 117
    .line 118
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    if-nez p3, :cond_2

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->capacity()I

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    const/4 v0, 0x0

    .line 129
    invoke-virtual {p2, v0, p3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    .line 141
    .line 142
    return v2

    .line 143
    :cond_2
    return v0
.end method

.method private _getIntInfoFromtcpInfoJson(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo p1, "tcpInfo"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    return-wide p1

    .line 31
    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :catch_1
    const-wide/16 p1, 0x0

    .line 36
    .line 37
    return-wide p1

    .line 38
    :cond_1
    :goto_0
    const-wide/16 p1, -0x1

    .line 39
    .line 40
    return-wide p1
.end method

.method private _getProtocolFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "protocol"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    :goto_0
    const-string/jumbo p1, "unknown"

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method private _getTcpInfoRtt(Ljava/lang/String;)J
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo p1, "tcpInfo"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string/jumbo v0, "tcpRtt"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    return-wide v0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :catch_1
    const-wide/16 v0, 0x0

    .line 39
    .line 40
    return-wide v0

    .line 41
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    .line 42
    .line 43
    return-wide v0
.end method

.method private _streamInfoMapAppendOtherInfo(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->engineWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v1, 0x3e

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLongOption(I)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const/16 v3, 0x3d

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLongOption(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-virtual {v0, v5}, Lcom/ss/ttvideoengine/TTVideoEngine;->getIntOption(I)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    mul-int/lit16 v6, v6, 0x3e8

    .line 32
    .line 33
    invoke-virtual {v0, v5}, Lcom/ss/ttvideoengine/TTVideoEngine;->getIntOption(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    mul-int/lit16 v0, v0, 0x3e8

    .line 38
    .line 39
    long-to-int v1, v1

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "playerVideoBufLen"

    .line 45
    .line 46
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    long-to-int v1, v3

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "playerAudioBufLen"

    .line 55
    .line 56
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "playerVideoMaxBufLen"

    .line 64
    .line 65
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "playerAudioMaxBufLen"

    .line 73
    .line 74
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onNotify(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    .line 1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 4
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v5, v6, v7, v2, v3}, [Ljava/lang/Object;

    move-result-object v5

    .line 5
    const-string/jumbo v6, "speed notify, what:%d, code:%d, para:%d, inf:%s, extraInfoJsonStr:%s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 6
    const-string v6, "TTVideoEngine"

    invoke-static {v6, v5}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v5, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->engineWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/ttvideoengine/TTVideoEngine;

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x2

    if-ne v1, v7, :cond_1

    .line 8
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    move-result-object v8

    const/4 v13, -0x1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-interface/range {v8 .. v13}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->updateGlobalNetworkSpeed(JJI)V

    .line 9
    :cond_1
    iget-object v8, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mAbrPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    if-nez v8, :cond_2

    return-void

    :cond_2
    if-ne v1, v7, :cond_8

    .line 10
    new-instance v1, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;

    invoke-direct {v1}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;-><init>()V

    .line 11
    invoke-virtual {v1, v2}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->setSteamId(Ljava/lang/String;)V

    move-wide/from16 v9, p2

    .line 12
    invoke-virtual {v1, v9, v10}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->setBytes(J)V

    move-wide/from16 v9, p4

    .line 13
    invoke-virtual {v1, v9, v10}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->setTime(J)V

    .line 14
    invoke-direct {v0, v3}, Lcom/ss/ttvideoengine/TTTestSpeedListener;->_getTcpInfoRtt(Ljava/lang/String;)J

    move-result-wide v9

    .line 15
    const-string/jumbo v2, "tcpLastRecvDate"

    invoke-direct {v0, v3, v2}, Lcom/ss/ttvideoengine/TTTestSpeedListener;->_getIntInfoFromtcpInfoJson(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    .line 16
    invoke-virtual {v1, v9, v10}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->setTcpInfoRtt(J)V

    .line 17
    invoke-virtual {v1, v11, v12}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->setLastRecvDate(J)V

    .line 18
    invoke-direct {v0, v3}, Lcom/ss/ttvideoengine/TTTestSpeedListener;->_getProtocolFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->setProtocol(Ljava/lang/String;)V

    .line 20
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_3

    .line 21
    const-string v2, "audio"

    move-object/from16 v9, p7

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v7

    :goto_0
    xor-int/2addr v2, v7

    .line 22
    invoke-virtual {v1, v2}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->setTrackType(I)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->setTimestamp(J)V

    .line 24
    invoke-virtual {v1}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-eqz v2, :cond_4

    .line 25
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v9, "#.000000000"

    invoke-direct {v2, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->getBytes()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-virtual {v1}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorRecordOld;->getTime()J

    move-result-wide v13

    long-to-double v13, v13

    div-double/2addr v9, v13

    .line 27
    invoke-virtual {v2, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 28
    const-string v9, "[ABR]: speedRecord:%s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 29
    invoke-static {v4, v9, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v6, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/TTTestSpeedListener;->_getCurrentPlaybackStreamId()Ljava/util/Map;

    move-result-object v2

    .line 32
    invoke-direct {v0, v2}, Lcom/ss/ttvideoengine/TTTestSpeedListener;->_streamInfoMapAppendOtherInfo(Ljava/util/Map;)V

    .line 33
    invoke-interface {v8, v1, v2}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->update(Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;Ljava/util/Map;)V

    .line 34
    iget v1, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mSpeedAverageCount:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mSpeedAverageCount:I

    .line 35
    invoke-interface {v8, v3}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getDownloadSpeed(I)Ljava/util/Map;

    move-result-object v1

    .line 36
    invoke-interface {v8, v3}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getPredictSpeed(I)F

    move-result v18

    .line 37
    invoke-interface {v8, v7}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getDownloadSpeed(I)Ljava/util/Map;

    move-result-object v2

    .line 38
    invoke-interface {v8, v7}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getPredictSpeed(I)F

    move-result v19

    .line 39
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v6, " "

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 42
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-direct {v0, v1, v4, v6}, Lcom/ss/ttvideoengine/TTTestSpeedListener;->_getDownSpeed(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/util/Map;)F

    move-result v16

    .line 44
    invoke-direct {v0, v2, v8, v9}, Lcom/ss/ttvideoengine/TTTestSpeedListener;->_getDownSpeed(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/util/Map;)F

    move-result v17

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 46
    iget-wide v13, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->lastSampleTimestamp:J

    sub-long v20, v1, v13

    cmp-long v10, v13, v11

    if-nez v10, :cond_5

    move-wide/from16 v20, v11

    .line 47
    :cond_5
    iput-wide v1, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->lastSampleTimestamp:J

    const/4 v1, 0x0

    cmpl-float v2, v16, v1

    if-lez v2, :cond_6

    .line 48
    iget v2, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mSpeedAverageCount:I

    if-lez v2, :cond_6

    .line 49
    iget v10, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mAverageDownloadSpeed:F

    sub-float v11, v16, v10

    int-to-float v2, v2

    div-float/2addr v11, v2

    add-float/2addr v10, v11

    iput v10, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mAverageDownloadSpeed:F

    :cond_6
    cmpl-float v1, v18, v1

    if-lez v1, :cond_7

    .line 50
    iget v1, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mSpeedAverageCount:I

    if-lez v1, :cond_7

    .line 51
    iget v2, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mAveragePredictSpeed:F

    sub-float v10, v18, v2

    int-to-float v1, v1

    div-float/2addr v10, v1

    add-float/2addr v2, v10

    iput v2, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mAveragePredictSpeed:F

    .line 52
    :cond_7
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 53
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v6

    move-object/from16 v23, v9

    .line 54
    invoke-interface/range {v13 .. v23}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->updateNetworkSpeedPredictorSampleValue(Ljava/lang/String;Ljava/lang/String;FFFFJLjava/util/Map;Ljava/util/Map;)V

    .line 55
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    move-result-object v1

    invoke-interface {v1, v7}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setIsMultiDimensionsInput(I)V

    .line 56
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setIsMultiDimensionsOut(I)V

    :cond_8
    return-void
.end method

.method public onNotify(ILjava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 57
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 58
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "speed notify, what:%d, info:%s"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 59
    const-string v5, "TTVideoEngine"

    invoke-static {v5, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v4, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->engineWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/ttvideoengine/TTVideoEngine;

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1

    .line 61
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->updateMultiNetworkSpeed(Ljava/lang/String;)V

    .line 62
    :cond_1
    iget-object v7, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mAbrPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    if-eqz v7, :cond_a

    .line 63
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->getSpeedPredictorInputType()I

    move-result v8

    if-eq v8, v6, :cond_2

    goto/16 :goto_2

    :cond_2
    if-ne v1, v6, :cond_a

    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/TTTestSpeedListener;->_getCurrentPlaybackStreamId()Ljava/util/Map;

    move-result-object v1

    .line 65
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/TTTestSpeedListener;->_streamInfoMapAppendOtherInfo(Ljava/util/Map;)V

    .line 66
    invoke-interface {v7, v2, v1}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->update(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v2, :cond_3

    .line 67
    const-string v1, "[ABR]: speedRecordsJson:%s"

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v2

    .line 68
    invoke-static {v3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v5, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_3
    iget v1, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mSpeedAverageCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mSpeedAverageCount:I

    const/4 v1, 0x0

    .line 71
    invoke-interface {v7, v1}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getDownloadSpeed(I)Ljava/util/Map;

    move-result-object v8

    .line 72
    invoke-interface {v7, v1}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getPredictSpeed(I)F

    move-result v14

    .line 73
    invoke-interface {v7, v2}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getDownloadSpeed(I)Ljava/util/Map;

    move-result-object v9

    .line 74
    invoke-interface {v7, v2}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getPredictSpeed(I)F

    move-result v15

    .line 75
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, " "

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 78
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 79
    invoke-direct {v0, v8, v10, v13}, Lcom/ss/ttvideoengine/TTTestSpeedListener;->_getDownSpeed(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/util/Map;)F

    move-result v8

    .line 80
    invoke-direct {v0, v9, v12, v11}, Lcom/ss/ttvideoengine/TTTestSpeedListener;->_getDownSpeed(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/util/Map;)F

    move-result v16

    const/4 v9, 0x0

    cmpl-float v17, v8, v9

    if-lez v17, :cond_4

    .line 81
    iget v6, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mSpeedAverageCount:I

    if-lez v6, :cond_4

    .line 82
    iget v2, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mAverageDownloadSpeed:F

    sub-float v17, v8, v2

    int-to-float v6, v6

    div-float v17, v17, v6

    add-float v2, v2, v17

    iput v2, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mAverageDownloadSpeed:F

    :cond_4
    cmpl-float v2, v14, v9

    if-lez v2, :cond_5

    .line 83
    iget v2, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mSpeedAverageCount:I

    if-lez v2, :cond_5

    .line 84
    iget v6, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mAveragePredictSpeed:F

    sub-float v9, v14, v6

    int-to-float v2, v2

    div-float/2addr v9, v2

    add-float/2addr v6, v9

    iput v6, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->mAveragePredictSpeed:F

    .line 85
    :cond_5
    invoke-interface {v7}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getMultidimensionalDownloadSpeedsObj()Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;

    move-result-object v2

    .line 86
    invoke-interface {v7}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getMultidimensionalPredictSpeedsObj()Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;

    move-result-object v6

    move-object v7, v2

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object v9, v6

    move-object/from16 v17, v7

    .line 88
    iget-wide v6, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->lastSampleTimestamp:J

    sub-long v18, v1, v6

    const-wide/16 v20, 0x0

    cmp-long v6, v6, v20

    if-nez v6, :cond_6

    move-wide/from16 v6, v20

    goto :goto_0

    :cond_6
    move-wide/from16 v6, v18

    .line 89
    :goto_0
    iput-wide v1, v0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->lastSampleTimestamp:J

    const/16 v1, 0x20d

    .line 90
    invoke-virtual {v4, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getIntOption(I)I

    move-result v2

    if-nez v2, :cond_7

    .line 91
    const-string v1, "[SPEEDPREDICT] use sing predictor data outing"

    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/Object;

    .line 92
    invoke-static {v3, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v5, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    move-result-object v9

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 95
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v11

    move-object v11, v1

    move v12, v8

    move-object v1, v13

    move/from16 v13, v16

    move-wide/from16 v16, v6

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 96
    invoke-interface/range {v9 .. v19}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->updateNetworkSpeedPredictorSampleValue(Ljava/lang/String;Ljava/lang/String;FFFFJLjava/util/Map;Ljava/util/Map;)V

    .line 97
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setIsMultiDimensionsOut(I)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    .line 98
    invoke-virtual {v4, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getIntOption(I)I

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_9

    .line 99
    const-string v1, "[SPEEDPREDICT] use multi data outing"

    new-array v2, v2, [Ljava/lang/Object;

    .line 100
    invoke-static {v3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v5, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_8

    .line 102
    invoke-virtual {v9}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;->getResultCollection()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 103
    invoke-virtual {v9}, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;->getResultCollection()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 104
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-interface {v1, v2, v9, v6, v7}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->updateNetworkSpeedPredictorSampleMutiValue(Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;J)V

    .line 105
    :cond_8
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setIsMultiDimensionsOut(I)V

    .line 106
    :cond_9
    :goto_1
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setIsMultiDimensionsInput(I)V

    :cond_a
    :goto_2
    return-void
.end method

.method public onNotifyGlobalSpeed(JJI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTTestSpeedListener;->engineWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getLogger()Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    move-wide v2, p1

    .line 16
    move-wide v4, p3

    .line 17
    move v6, p5

    .line 18
    invoke-interface/range {v1 .. v6}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->updateGlobalNetworkSpeed(JJI)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
