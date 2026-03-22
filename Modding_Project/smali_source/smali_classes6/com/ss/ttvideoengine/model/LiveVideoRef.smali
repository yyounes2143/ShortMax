.class public Lcom/ss/ttvideoengine/model/LiveVideoRef;
.super Ljava/lang/Object;
.source "LiveVideoRef.java"


# static fields
.field public static final LIVE_STATUS_DOING:I = 0x3

.field public static final LIVE_STATUS_END:I = 0x1

.field public static final LIVE_STATUS_ERROR:I = 0x0

.field public static final LIVE_STATUS_WAIT:I = 0x2


# instance fields
.field public mBackupStatus:I

.field public mEndTime:J

.field public mLiveId:Ljava/lang/String;

.field public mLiveStatus:I

.field public mLiveVideo1:Lcom/ss/ttvideoengine/model/LiveVideoInfo;

.field public mLiveVideo2:Lcom/ss/ttvideoengine/model/LiveVideoInfo;

.field public mStartTime:J

.field public mStatus:I

.field public mUserId:Ljava/lang/String;


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


# virtual methods
.method public extractFields(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    const-string v0, "live_1"

    .line 2
    .line 3
    const-string v1, "live_0"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v2, "live_info"

    .line 9
    .line 10
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    new-instance v3, Lcom/ss/ttvideoengine/model/LiveVideoInfo;

    .line 21
    .line 22
    invoke-direct {v3}, Lcom/ss/ttvideoengine/model/LiveVideoInfo;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lcom/ss/ttvideoengine/model/LiveVideoRef;->mLiveVideo1:Lcom/ss/ttvideoengine/model/LiveVideoInfo;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v3, v1}, Lcom/ss/ttvideoengine/model/LiveVideoInfo;->extractFields(Lorg/json/JSONObject;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    new-instance v1, Lcom/ss/ttvideoengine/model/LiveVideoInfo;

    .line 44
    .line 45
    invoke-direct {v1}, Lcom/ss/ttvideoengine/model/LiveVideoInfo;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/LiveVideoRef;->mLiveVideo2:Lcom/ss/ttvideoengine/model/LiveVideoInfo;

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/model/LiveVideoInfo;->extractFields(Lorg/json/JSONObject;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    const-string v0, "backup_status"

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Lcom/ss/ttvideoengine/model/LiveVideoRef;->mBackupStatus:I

    .line 64
    .line 65
    const-string v0, "live_status"

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lcom/ss/ttvideoengine/model/LiveVideoRef;->mLiveStatus:I

    .line 72
    .line 73
    const-string/jumbo v0, "status"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lcom/ss/ttvideoengine/model/LiveVideoRef;->mStatus:I

    .line 81
    .line 82
    const-string/jumbo v0, "start_time"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/LiveVideoRef;->mStartTime:J

    .line 90
    .line 91
    const-string v0, "end_time"

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/LiveVideoRef;->mEndTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :goto_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    const-string/jumbo v0, "user_id"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/LiveVideoRef;->mUserId:Ljava/lang/String;

    .line 111
    .line 112
    const-string v0, "live_id"

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/LiveVideoRef;->mLiveId:Ljava/lang/String;

    .line 119
    .line 120
    return-void
.end method

.method public getLiveVideoInfo()Lcom/ss/ttvideoengine/model/LiveVideoInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/LiveVideoRef;->mLiveVideo1:Lcom/ss/ttvideoengine/model/LiveVideoInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/LiveVideoRef;->mLiveVideo2:Lcom/ss/ttvideoengine/model/LiveVideoInfo;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method
