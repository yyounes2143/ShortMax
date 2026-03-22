.class public Lcom/ss/ttvideoengine/model/VideoSeekTs;
.super Ljava/lang/Object;
.source "VideoSeekTs.java"


# static fields
.field public static final KEY_ENDING:Ljava/lang/String; = "ending"

.field public static final KEY_OPENING:Ljava/lang/String; = "opening"

.field private static final KEY_VER2_ENDING:Ljava/lang/String; = "Ending"

.field private static final KEY_VER2_OPENING:Ljava/lang/String; = "Opening"

.field public static final VALUE_VIDEO_SEEKTS_ENDING:I = 0x1

.field public static final VALUE_VIDEO_SEEKTS_OPENING:I


# instance fields
.field public mEnding:F

.field private mEndingVer2:F

.field public mOpening:F

.field private mOpeningVer2:F

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mOpening:F

    .line 7
    .line 8
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mEnding:F

    .line 9
    .line 10
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mOpeningVer2:F

    .line 11
    .line 12
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mEndingVer2:F

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mVersion:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public extractFields(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "opening"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, "ending"

    .line 11
    .line 12
    if-nez v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v0, "Ending"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const-string v2, "Opening"

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    :cond_2
    const/4 v1, 0x2

    .line 38
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mVersion:I

    .line 39
    .line 40
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    double-to-float v1, v1

    .line 45
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mOpeningVer2:F

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    double-to-float p1, v0

    .line 52
    iput p1, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mEndingVer2:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 61
    iput v1, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mVersion:I

    .line 62
    .line 63
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    double-to-float v0, v0

    .line 68
    iput v0, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mOpening:F

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    double-to-float p1, v0

    .line 75
    iput p1, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mEnding:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_1
    move-exception p1

    .line 79
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_1
    return-void
.end method

.method public getValueFloat(I)F
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mVersion:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/high16 v2, -0x40800000    # -1.0f

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    if-eq p1, v3, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mEndingVer2:F

    .line 15
    .line 16
    return p1

    .line 17
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mOpeningVer2:F

    .line 18
    .line 19
    return p1

    .line 20
    :cond_2
    if-eqz p1, :cond_4

    .line 21
    .line 22
    if-eq p1, v3, :cond_3

    .line 23
    .line 24
    return v2

    .line 25
    :cond_3
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mEnding:F

    .line 26
    .line 27
    return p1

    .line 28
    :cond_4
    iget p1, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mOpening:F

    .line 29
    .line 30
    return p1
.end method

.method public parseFromPb(Lcom/ss/ttvideoengine/model/VideoModelPb$SeekOffSet;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/VideoSeekTs;->mVersion:I

    .line 2
    .line 3
    return-void
.end method
