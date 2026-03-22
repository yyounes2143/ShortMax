.class public Lcom/ss/ttvideoengine/model/BarrageMaskInfo;
.super Ljava/lang/Object;
.source "BarrageMaskInfo.java"


# static fields
.field public static final KEY_MASK_BITRATE:Ljava/lang/String; = "bitrate"

.field public static final KEY_MASK_FILE_HASH:Ljava/lang/String; = "file_hash"

.field public static final KEY_MASK_FILE_ID:Ljava/lang/String; = "file_id"

.field public static final KEY_MASK_FILE_SIZE:Ljava/lang/String; = "file_size"

.field public static final KEY_MASK_HEAD_LEN:Ljava/lang/String; = "head_len"

.field public static final KEY_MASK_UPDATED_AT:Ljava/lang/String; = "updated_at"

.field public static final KEY_MASK_URL:Ljava/lang/String; = "barrage_mask_url"

.field public static final KEY_MASK_VERSION:Ljava/lang/String; = "version"

.field public static final KEY_VER4_MASK_BITRATE:Ljava/lang/String; = "Bitrate"

.field public static final KEY_VER4_MASK_FILE_HASH:Ljava/lang/String; = "FileHash"

.field public static final KEY_VER4_MASK_FILE_ID:Ljava/lang/String; = "FileId"

.field public static final KEY_VER4_MASK_FILE_SIZE:Ljava/lang/String; = "FileSize"

.field public static final KEY_VER4_MASK_HEAD_LEN:Ljava/lang/String; = "HeadLen"

.field public static final KEY_VER4_MASK_UPDATED_AT:Ljava/lang/String; = "UpdatedAt"

.field public static final KEY_VER4_MASK_URL:Ljava/lang/String; = "BarrageMaskUrl"

.field public static final KEY_VER4_MASK_VERSION:Ljava/lang/String; = "Version"

.field public static final VALUE_VIDEO_MASK_INFO_BITRATE:I = 0x6

.field public static final VALUE_VIDEO_MASK_INFO_FILE_HASH:I = 0x3

.field public static final VALUE_VIDEO_MASK_INFO_FILE_ID:I = 0x2

.field public static final VALUE_VIDEO_MASK_INFO_FILE_SIZE:I = 0x4

.field public static final VALUE_VIDEO_MASK_INFO_HEAD_LEN:I = 0x7

.field public static final VALUE_VIDEO_MASK_INFO_UPDATED_AT:I = 0x5

.field public static final VALUE_VIDEO_MASK_INFO_URL:I = 0x1

.field public static final VALUE_VIDEO_MASK_INFO_VERSION:I


# instance fields
.field public mMaskBitrate:I

.field public mMaskFileHash:Ljava/lang/String;

.field public mMaskFileId:Ljava/lang/String;

.field public mMaskFileSize:J

.field public mMaskHeadLen:I

.field public mMaskUpdatedAt:J

.field public mMaskUrl:Ljava/lang/String;

.field public mMaskVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskFileSize:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskUpdatedAt:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskBitrate:I

    .line 12
    .line 13
    iput v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskHeadLen:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public extractFields(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    const-string/jumbo v0, "version"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskVersion:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "barrage_mask_url"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskUrl:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "file_id"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskFileId:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "file_hash"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskFileHash:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "file_size"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskFileSize:J

    .line 44
    .line 45
    const-string/jumbo v0, "updated_at"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskUpdatedAt:J

    .line 53
    .line 54
    const-string v0, "bitrate"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskBitrate:I

    .line 61
    .line 62
    const-string v0, "head_len"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskHeadLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method public extractFieldsV4(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    const-string v0, "Version"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskVersion:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "BarrageMaskUrl"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskUrl:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "FileId"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskFileId:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "FileHash"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskFileHash:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "FileSize"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskFileSize:J

    .line 43
    .line 44
    const-string v0, "UpdatedAt"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskUpdatedAt:J

    .line 51
    .line 52
    const-string v0, "Bitrate"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskBitrate:I

    .line 59
    .line 60
    const-string v0, "HeadLen"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iput p1, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskHeadLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p1

    .line 70
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method public getMediaInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
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
    const/4 v1, 0x2

    .line 7
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->getValueStr(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "file_id"

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string v1, "media_type"

    .line 17
    .line 18
    const-string v2, "mask"

    .line 19
    .line 20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->getValueLong(I)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "file_size"

    .line 33
    .line 34
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x6

    .line 38
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->getValueInt(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "bitrate"

    .line 47
    .line 48
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->getValueStr(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_0

    .line 61
    .line 62
    const-string/jumbo v2, "urls"

    .line 63
    .line 64
    .line 65
    filled-new-array {v1}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_0
    const/4 v1, 0x3

    .line 73
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->getValueStr(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "file_hash"

    .line 78
    .line 79
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method public getValueInt(I)I
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget p1, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskHeadLen:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskBitrate:I

    .line 13
    .line 14
    return p1
.end method

.method public getValueLong(I)J
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskUpdatedAt:J

    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskFileSize:J

    .line 14
    .line 15
    return-wide v0
.end method

.method public getValueStr(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskFileHash:Ljava/lang/String;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskFileId:Ljava/lang/String;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskUrl:Ljava/lang/String;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/BarrageMaskInfo;->mMaskVersion:Ljava/lang/String;

    .line 25
    .line 26
    return-object p1
.end method
