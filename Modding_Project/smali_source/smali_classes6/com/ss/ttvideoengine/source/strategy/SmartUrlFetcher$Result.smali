.class public Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;
.super Ljava/lang/Object;
.source "SmartUrlFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# static fields
.field public static final DataStoreStatusHasEncodeStream:I = 0x3

.field public static final DataStoreStatusHasOriginalStream:I = 0x2

.field public static final DataStoreStatusNotExist:I = 0x1

.field public static final DataStoreStatusUndefined:I = 0x0

.field public static final StreamTypeFallbackEncodeStream:I = 0x3

.field public static final StreamTypeOriginalStream:I = 0x1

.field public static final StreamTypeStrategyEncodeStream:I = 0x2

.field public static final StreamTypeUndefined:I


# instance fields
.field public final dataStoreStatus:I

.field public final error:Lcom/ss/ttvideoengine/utils/Error;

.field public final jsonResult:Lorg/json/JSONObject;

.field public final originalPlayUrl:Ljava/lang/String;

.field public final streamType:I

.field public final videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/ss/ttvideoengine/model/IVideoModel;Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->dataStoreStatus:I

    .line 10
    iput p2, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->streamType:I

    .line 11
    iput-object p3, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->originalPlayUrl:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 13
    iput-object p5, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->jsonResult:Lorg/json/JSONObject;

    .line 14
    iput-object p6, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->error:Lcom/ss/ttvideoengine/utils/Error;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->dataStoreStatus:I

    .line 3
    iput v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->streamType:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->originalPlayUrl:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 6
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->jsonResult:Lorg/json/JSONObject;

    .line 7
    iput-object p2, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->error:Lcom/ss/ttvideoengine/utils/Error;

    return-void
.end method

.method static synthetic access$200(Lorg/json/JSONObject;)Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->parseResult(Lorg/json/JSONObject;)Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static isStreamTypeValid(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 11
    :goto_1
    return p0
.end method

.method private static parseResult(Lorg/json/JSONObject;)Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;
    .locals 13
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "Result"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "kTTVideoErrorDomainFetchingSmartUrlInfo"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;

    .line 12
    .line 13
    new-instance v2, Lcom/ss/ttvideoengine/utils/Error;

    .line 14
    .line 15
    const/16 v3, -0x26fb

    .line 16
    .line 17
    const-string v4, "Result is null"

    .line 18
    .line 19
    invoke-direct {v2, v1, v3, v4}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, v2}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;-><init>(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    const-string v2, "DataStoreStatus"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const-string v3, "StreamType"

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    const-string v3, "OriginalPlayUrl"

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    const-string v3, "PlayInfoModel"

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-static {v10}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->isStreamTypeValid(I)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :try_start_0
    new-instance v7, Lcom/ss/ttvideoengine/model/VideoModel;

    .line 60
    .line 61
    invoke-direct {v7}, Lcom/ss/ttvideoengine/model/VideoModel;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v0}, Lcom/ss/ttvideoengine/model/VideoModel;->extractFields(Lorg/json/JSONObject;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    move-object v3, v0

    .line 71
    move v4, v2

    .line 72
    move v5, v10

    .line 73
    move-object v6, v11

    .line 74
    move-object v8, p0

    .line 75
    invoke-direct/range {v3 .. v9}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;-><init>(IILjava/lang/String;Lcom/ss/ttvideoengine/model/IVideoModel;Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    new-instance v12, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;

    .line 81
    .line 82
    new-instance v9, Lcom/ss/ttvideoengine/utils/Error;

    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string/jumbo v4, "video model extract failed: "

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const/16 v3, -0x26f8

    .line 103
    .line 104
    invoke-direct {v9, v1, v3, v0}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    move-object v3, v12

    .line 109
    move v4, v2

    .line 110
    move v5, v10

    .line 111
    move-object v6, v11

    .line 112
    move-object v8, p0

    .line 113
    invoke-direct/range {v3 .. v9}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;-><init>(IILjava/lang/String;Lcom/ss/ttvideoengine/model/IVideoModel;Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 114
    .line 115
    .line 116
    return-object v12

    .line 117
    :cond_2
    :goto_0
    new-instance v0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;

    .line 118
    .line 119
    const/4 v7, 0x0

    .line 120
    const/4 v9, 0x0

    .line 121
    move-object v3, v0

    .line 122
    move v4, v2

    .line 123
    move v5, v10

    .line 124
    move-object v6, v11

    .line 125
    move-object v8, p0

    .line 126
    invoke-direct/range {v3 .. v9}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;-><init>(IILjava/lang/String;Lcom/ss/ttvideoengine/model/IVideoModel;Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 127
    .line 128
    .line 129
    return-object v0
.end method


# virtual methods
.method public isEncodeStream()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;->findTargetResolution(Lcom/ss/ttvideoengine/model/IVideoModel;)Lcom/ss/ttvideoengine/Resolution;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 20
    .line 21
    invoke-interface {v2, v0, v1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/16 v3, 0x11

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    :cond_0
    const/4 v1, 0x1

    .line 50
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Result{dataStoreStatus="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->dataStoreStatus:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", streamType="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->streamType:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", originalPlayUrl=\'"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->originalPlayUrl:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x27

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", videoModel="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", jsonResult="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->jsonResult:Lorg/json/JSONObject;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", error="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;->error:Lcom/ss/ttvideoengine/utils/Error;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/16 v1, 0x7d

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method
