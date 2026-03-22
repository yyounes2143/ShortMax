.class public Lcom/ss/ttvideoengine/model/BareVideoModel;
.super Ljava/lang/Object;
.source "BareVideoModel.java"

# interfaces
.implements Lcom/ss/ttvideoengine/model/IVideoModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TTVideoEngine.BareVideoModel"


# instance fields
.field private mAdaptive:Z

.field private mBashString:Ljava/lang/String;

.field private mBid:Ljava/lang/String;

.field private mCategory:I

.field private mDuration:J

.field private mDynamicType:Ljava/lang/String;

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoudness:F

.field private mPeak:F

.field private mPlaceHolder:I

.field private mVid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mCategory:I

    .line 4
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mBid:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mBashString:Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mPlaceHolder:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/model/BareVideoModel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/model/BareVideoModel;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/ss/ttvideoengine/model/BareVideoModel;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mPlaceHolder:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$102(Lcom/ss/ttvideoengine/model/BareVideoModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mVid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1102(Lcom/ss/ttvideoengine/model/BareVideoModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mBashString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$202(Lcom/ss/ttvideoengine/model/BareVideoModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mBid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$302(Lcom/ss/ttvideoengine/model/BareVideoModel;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mDuration:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$402(Lcom/ss/ttvideoengine/model/BareVideoModel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mAdaptive:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$502(Lcom/ss/ttvideoengine/model/BareVideoModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mDynamicType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$602(Lcom/ss/ttvideoengine/model/BareVideoModel;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mLoudness:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$702(Lcom/ss/ttvideoengine/model/BareVideoModel;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mPeak:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$802(Lcom/ss/ttvideoengine/model/BareVideoModel;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mCategory:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$902(Lcom/ss/ttvideoengine/model/BareVideoModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public allVideoURLs(Lcom/ss/ttvideoengine/Resolution;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->allVideoURLs(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public allVideoURLs(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    new-array p1, p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/16 p2, 0x10

    .line 4
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStrArr(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fromMediaInfoJsonObject(Lorg/json/JSONObject;)I
    .locals 4

    .line 1
    :try_start_0
    const-string/jumbo v0, "vid"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mVid:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "bid"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mBid:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mVid:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mBid:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    const-string v0, "category"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mCategory:I

    .line 38
    .line 39
    const-string v0, "duration"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mDuration:J

    .line 46
    .line 47
    const-string v0, "infos"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 v0, 0x0

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    move v1, v0

    .line 57
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ge v1, v2, :cond_2

    .line 62
    .line 63
    new-instance v2, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    .line 64
    .line 65
    invoke-direct {v2}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->build()Lcom/ss/ttvideoengine/model/BareVideoInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->fromMediaInfoJsonObject(Lorg/json/JSONObject;)I

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    .line 80
    .line 81
    if-nez v3, :cond_1

    .line 82
    .line 83
    new-instance v3, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v3, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    .line 89
    .line 90
    :cond_1
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    return v0

    .line 99
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v1, "[GearStrategy]fromMediaInfoJsonObject exception="

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v0, "TTVideoEngine.BareVideoModel"

    .line 117
    .line 118
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const/4 p1, -0x1

    .line 122
    return p1
.end method

.method public fromMediaInfoJsonString(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->fromMediaInfoJsonObject(Lorg/json/JSONObject;)I

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p1

    .line 11
    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "[GearStrategy]fromMediaInfoJsonString exception="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "TTVideoEngine.BareVideoModel"

    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, -0x1

    .line 35
    return p1
.end method

.method public getCodecs()[Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 25
    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    new-array v1, v1, [Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, [Ljava/lang/String;

    .line 50
    .line 51
    return-object v0
.end method

.method public getDnsInfo()Lorg/json/JSONObject;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getDynamicType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mDynamicType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormats()Ljava/util/Set;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ss/ttvideoengine/model/IVideoModel$Format;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_6

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x6

    .line 29
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v3, "mp3"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    sget-object v2, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->MP3:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 45
    .line 46
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string v3, "dash"

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    sget-object v2, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->DASH:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 59
    .line 60
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const-string v3, "hls"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    sget-object v2, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->HLS:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 73
    .line 74
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const-string v3, "mp4"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    sget-object v2, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->MP4:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 87
    .line 88
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    sget-object v2, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->MP4:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 93
    .line 94
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    return-object v0
.end method

.method public getMediaInfo()Lorg/json/JSONObject;
    .locals 8

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->MP3:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "mp3"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->DASH:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v0, "dash"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->HLS:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const-string v0, "hls"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->MP4:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const-string v0, "mp4"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const-string v0, ""

    .line 46
    .line 47
    :goto_0
    const/4 v1, 0x2

    .line 48
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-wide v2, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mDuration:J

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    if-eqz v4, :cond_5

    .line 64
    .line 65
    new-instance v6, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_4

    .line 79
    .line 80
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    check-cast v7, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 85
    .line 86
    invoke-virtual {v7}, Lcom/ss/ttvideoengine/model/VideoInfo;->toMediaInfo()Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    const-string v4, "infos"

    .line 97
    .line 98
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :cond_5
    const-string v4, "format"

    .line 102
    .line 103
    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    const-string/jumbo v0, "vid"

    .line 107
    .line 108
    .line 109
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    const-string v0, "bid"

    .line 113
    .line 114
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mBid:Ljava/lang/String;

    .line 115
    .line 116
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    const-string v0, "category"

    .line 120
    .line 121
    const/16 v1, 0xe8

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoRefInt(I)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const-string v0, "placeholder"

    .line 135
    .line 136
    const/16 v1, 0xfe

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoRefInt(I)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    const-string v0, "duration"

    .line 150
    .line 151
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    new-instance v0, Lorg/json/JSONObject;

    .line 159
    .line 160
    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    .line 163
    return-object v0

    .line 164
    :goto_2
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    const/4 v0, 0x0

    .line 168
    return-object v0
.end method

.method public getOriginalAudioInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getSource()Lcom/ss/ttvideoengine/model/IVideoModel$Source;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Source;->BARE:Lcom/ss/ttvideoengine/model/IVideoModel$Source;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpadea()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 18
    .line 19
    const/4 v2, 0x5

    .line 20
    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    return-object v1
.end method

.method public getSubInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/SubInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getSupportInfoId(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getSupportQualityInfos()[Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 23
    .line 24
    const/16 v3, 0x20

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    new-array v1, v1, [Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, [Ljava/lang/String;

    .line 48
    .line 49
    return-object v0
.end method

.method public getSupportResolutions()[Lcom/ss/ttvideoengine/Resolution;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    new-array v1, v1, [Lcom/ss/ttvideoengine/Resolution;

    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, [Lcom/ss/ttvideoengine/Resolution;

    .line 42
    .line 43
    return-object v0
.end method

.method public getSupportSubtitleLangs()[I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getSupportedTTSAudioInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getVType()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "mp4"

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    return-object p1
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ttvideoengine/model/VideoInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    move-result-object v3

    if-eq p1, v3, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    move-result v3

    if-eq p2, v3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_6

    .line 14
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 17
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 18
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v2, v5}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_6
    :goto_1
    move-object v1, v2

    :cond_7
    return-object v1
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object v0

    if-nez p4, :cond_0

    return-object v0

    .line 25
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->getAllQualityInfos()[Ljava/lang/String;

    move-result-object p4

    .line 26
    array-length v1, p4

    const/4 v2, 0x0

    if-lez v1, :cond_7

    if-eqz p3, :cond_7

    const/16 v1, 0x20

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 28
    array-length v3, p4

    add-int/lit8 v3, v3, -0x1

    :cond_1
    :goto_0
    if-nez v0, :cond_7

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    move v5, v2

    .line 30
    :goto_1
    array-length v6, p4

    if-ge v5, v6, :cond_3

    .line 31
    aget-object v6, p4, v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v4, v3

    :cond_4
    if-nez v0, :cond_6

    .line 32
    aget-object v0, p4, v4

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    .line 35
    :cond_5
    array-length v5, p4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    array-length v5, p4

    rem-int/2addr v4, v5

    if-ne v4, v3, :cond_4

    :cond_6
    move v3, v4

    goto :goto_0

    .line 36
    :cond_7
    invoke-static {}, Lcom/ss/ttvideoengine/Resolution;->getAllResolutions()[Lcom/ss/ttvideoengine/Resolution;

    move-result-object p3

    .line 37
    array-length p4, p3

    if-gtz p4, :cond_8

    return-object v0

    .line 38
    :cond_8
    array-length p4, p3

    add-int/lit8 p4, p4, -0x1

    if-eqz p1, :cond_a

    .line 39
    :goto_3
    array-length v1, p3

    if-ge v2, v1, :cond_a

    .line 40
    aget-object v1, p3, v2

    .line 41
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/Resolution;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/Resolution;->getIndex()I

    move-result v3

    if-ne v1, v3, :cond_9

    move p4, v2

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    move p1, p4

    :cond_b
    if-nez v0, :cond_d

    .line 42
    aget-object v0, p3, p1

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v0, p2, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_5

    .line 44
    :cond_c
    array-length v1, p3

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    array-length v1, p3

    rem-int/2addr p1, v1

    if-ne p1, p4, :cond_b

    :cond_d
    :goto_5
    return-object v0
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;IZ)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    return-object p1
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation

    const/4 v0, 0x7

    .line 8
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoRefInt(I)I

    move-result v0

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    return-object p1
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation

    const/4 v0, 0x7

    .line 21
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoRefInt(I)I

    move-result v0

    .line 22
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    return-object p1
.end method

.method public getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Z)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 2

    const/4 v0, 0x7

    .line 19
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoRefInt(I)I

    move-result v0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;ILjava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    move-result-object p1

    return-object p1
.end method

.method public getVideoInfo(Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/model/VideoInfo;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ttvideoengine/model/VideoInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public getVideoInfoByInfoId(I)Lcom/ss/ttvideoengine/model/VideoInfo;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getVideoInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/VideoInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoRefBool(I)Z
    .locals 3

    .line 1
    const/16 v0, 0xd0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/16 v0, 0xde

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mAdaptive:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 33
    .line 34
    const/4 v2, 0x6

    .line 35
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v2, "hls"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    :cond_3
    :goto_0
    return v1
.end method

.method public getVideoRefFloat(I)F
    .locals 1

    .line 1
    const/16 v0, 0xe0

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xe1

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mPeak:F

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mLoudness:F

    .line 15
    .line 16
    :goto_0
    return p1
.end method

.method public getVideoRefInt(I)I
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/16 v0, 0xe8

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0xfe

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mPlaceHolder:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mCategory:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    sget p1, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    iget-wide v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mDuration:J

    .line 27
    .line 28
    long-to-int p1, v0

    .line 29
    :goto_0
    return p1
.end method

.method public getVideoRefLong(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVideoRefStr(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0xf6

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mBid:Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mBashString:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mVid:Ljava/lang/String;

    .line 21
    .line 22
    :goto_0
    return-object p1
.end method

.method public getVideoStyle()Lcom/ss/ttvideoengine/model/VideoStyle;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel;->mInfos:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getFormats()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isSupportBash()Z
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->DASH:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getDynamicType()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    const-string v3, "segment_base"

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    return v2

    .line 43
    :cond_1
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->MP4:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    const/16 v0, 0xde

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoRefBool(I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getSpadea()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    return v2

    .line 70
    :cond_2
    return v1
.end method

.method public isSupportHLSSeamlessSwitch()Z
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->HLS:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/16 v0, 0xde

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoRefBool(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_1
    return v1
.end method

.method public resolutionToString(Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/Resolution;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public setUpResolution(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/Resolution;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public toBashJsonObject()Lorg/json/JSONObject;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_6

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-gtz v2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    .line 16
    .line 17
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lorg/json/JSONArray;

    .line 21
    .line 22
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_4

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->toBashJsonObject()Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-nez v5, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    sget v7, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 55
    .line 56
    if-ne v6, v7, :cond_3

    .line 57
    .line 58
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    sget v6, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 69
    .line 70
    if-ne v4, v6, :cond_1

    .line 71
    .line 72
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-gtz v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-lez v1, :cond_7

    .line 87
    .line 88
    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    .line 89
    .line 90
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v4, "dynamic_video_list"

    .line 94
    .line 95
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    const-string v2, "dynamic_audio_list"

    .line 99
    .line 100
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    return-object v1

    .line 104
    :cond_6
    :goto_1
    return-object v0

    .line 105
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :cond_7
    return-object v0
.end method

.method public toBashString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->toBashJsonObject()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, ""

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public toMediaInfoJsonString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->getMediaInfo()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method
