.class public Lcom/ss/ttvideoengine/model/VideoAdRef;
.super Ljava/lang/Object;
.source "VideoAdRef.java"


# static fields
.field public static final TYPE_PATCH_BEGIN:I = 0x1

.field public static final TYPE_PATCH_END:I = 0x2

.field public static final TYPE_PATCH_MAIN:I = 0x3


# instance fields
.field public action_track_url_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public duration:I

.field public external_url:Ljava/lang/String;

.field public id:J

.field public log_extra:Ljava/lang/String;

.field public mVideo1:Lcom/ss/ttvideoengine/model/VideoInfo;

.field public mVideo2:Lcom/ss/ttvideoengine/model/VideoInfo;

.field public mVideo3:Lcom/ss/ttvideoengine/model/VideoInfo;

.field public patch_position:I

.field public play_track_url_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public playover_track_url_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public skip_time:I


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

.method public static parseTrackUrl(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    array-length v2, p1

    .line 6
    if-lez v2, :cond_0

    .line 7
    .line 8
    aput-object v1, p1, v0

    .line 9
    .line 10
    :cond_0
    if-nez p0, :cond_1

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_1
    :try_start_0
    instance-of v2, p0, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    check-cast p0, Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    array-length v3, p1

    .line 30
    if-lez v3, :cond_2

    .line 31
    .line 32
    aput-object p0, p1, v0

    .line 33
    .line 34
    :cond_2
    return-object v2

    .line 35
    :cond_3
    instance-of v2, p0, Lorg/json/JSONArray;

    .line 36
    .line 37
    if-eqz v2, :cond_9

    .line 38
    .line 39
    check-cast p0, Lorg/json/JSONArray;

    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_4

    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    move v4, v0

    .line 54
    :goto_0
    if-ge v4, v2, :cond_6

    .line 55
    .line 56
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-nez v6, :cond_5

    .line 65
    .line 66
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_7

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_7
    if-eqz p1, :cond_8

    .line 80
    .line 81
    array-length v2, p1

    .line 82
    if-lez v2, :cond_8

    .line 83
    .line 84
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    aput-object p0, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    :cond_8
    return-object v3

    .line 91
    :catch_0
    :cond_9
    return-object v1
.end method


# virtual methods
.method public extractFields(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/VideoAdRef;->id:J

    .line 8
    .line 9
    const-string v0, "log_extra"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoAdRef;->log_extra:Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo v0, "skip_time"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoAdRef;->skip_time:I

    .line 25
    .line 26
    const-string v0, "patch_position"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoAdRef;->patch_position:I

    .line 33
    .line 34
    const-string v0, "duration"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoAdRef;->duration:I

    .line 41
    .line 42
    const-string v0, "external_url"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/VideoAdRef;->external_url:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    :try_start_0
    const-string v1, "play_track_url_list"

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    new-array v2, v0, [Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/model/VideoAdRef;->parseTrackUrl(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/VideoAdRef;->play_track_url_list:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    :catch_0
    :cond_0
    :try_start_1
    const-string v1, "playover_track_url_list"

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    new-array v2, v0, [Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/model/VideoAdRef;->parseTrackUrl(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/VideoAdRef;->playover_track_url_list:Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 83
    :catch_1
    :cond_1
    :try_start_2
    const-string v1, "action_track_url_list"

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    new-array v0, v0, [Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/model/VideoAdRef;->parseTrackUrl(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/VideoAdRef;->action_track_url_list:Ljava/util/List;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 98
    .line 99
    :catch_2
    :cond_2
    return-void
.end method
