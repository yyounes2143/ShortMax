.class public Lcom/ss/ttvideoengine/model/DubbedInfo;
.super Ljava/lang/Object;
.source "DubbedInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;
    }
.end annotation


# instance fields
.field public mBackupUrl1:Ljava/lang/String;

.field public mBackupUrl2:Ljava/lang/String;

.field public mBackupUrl3:Ljava/lang/String;

.field public mBitrate:I

.field public mCheckInfo:Ljava/lang/String;

.field public mFileKey:Ljava/lang/String;

.field public mInfoId:I

.field public mLoudness:F

.field public mMainUrl:Ljava/lang/String;

.field public mMediaType:I

.field public mPeak:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mMediaType:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mMainUrl:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl1:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl2:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl3:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mCheckInfo:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    iput v2, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mInfoId:I

    .line 20
    .line 21
    iput v0, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBitrate:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mLoudness:F

    .line 25
    .line 26
    iput v0, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mPeak:F

    .line 27
    .line 28
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mFileKey:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public getUrls()[Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mMainUrl:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mMainUrl:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl1:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl1:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl2:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl2:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl3:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl3:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_4

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    return-object v0

    .line 68
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    new-array v1, v1, [Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    return-object v1
.end method

.method public toBashJsonObject()Lorg/json/JSONObject;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mMainUrl:Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "main_url"

    .line 17
    .line 18
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mMainUrl:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string v2, "backup_url_1"

    .line 24
    .line 25
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl1:Ljava/lang/String;

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    const-string v3, ""

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    const-string v2, "check_info"

    .line 38
    .line 39
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mCheckInfo:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    const-string v2, "info_id"

    .line 45
    .line 46
    iget v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mInfoId:I

    .line 47
    .line 48
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string v2, "bitrate"

    .line 52
    .line 53
    iget v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBitrate:I

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    const-string v2, "loudness"

    .line 59
    .line 60
    iget v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mLoudness:F

    .line 61
    .line 62
    float-to-double v3, v3

    .line 63
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    const-string v2, "peak"

    .line 67
    .line 68
    iget v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mPeak:F

    .line 69
    .line 70
    float-to-double v3, v3

    .line 71
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    return-object v0
.end method

.method public toStrategyPreloadJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mMainUrl:Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lorg/json/JSONArray;

    .line 17
    .line 18
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mMainUrl:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl1:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl2:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl3:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    .line 49
    .line 50
    :cond_3
    const-string/jumbo v3, "urls"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    const-string v2, "info_id"

    .line 57
    .line 58
    iget v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mInfoId:I

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    const-string v2, "bitrate"

    .line 64
    .line 65
    iget v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBitrate:I

    .line 66
    .line 67
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    const-string v2, "file_hash"

    .line 71
    .line 72
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mFileKey:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    const-string v2, "media_type"

    .line 78
    .line 79
    iget v3, p0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mMediaType:I

    .line 80
    .line 81
    if-nez v3, :cond_4

    .line 82
    .line 83
    const-string/jumbo v3, "video"

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const-string v3, "audio"

    .line 88
    .line 89
    :goto_1
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    return-object v0
.end method
