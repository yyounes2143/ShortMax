.class public Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;
.super Ljava/lang/Object;
.source "MediaBitrateFitterInfo.java"


# static fields
.field public static final KEY_FITTER_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_FITTER_FUNC_PARAMS:Ljava/lang/String; = "func_params"

.field public static final KEY_FITTER_FUNC_TYPE:Ljava/lang/String; = "func_method"

.field public static final KEY_FITTER_HEADER_SIZE:Ljava/lang/String; = "header_size"

.field private static final TAG:Ljava/lang/String; = "FitterInfo"


# instance fields
.field private mDuration:I

.field private mFunctionParams:[F

.field private mFunctionType:I

.field private mHeaderSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->mFunctionParams:[F

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->mFunctionType:I

    .line 9
    .line 10
    return-void
.end method

.method private calculateSize(F)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getFunctionParams()[F

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getHeaderSize()I

    .line 6
    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/16 v2, 0x32

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "bitrateFitterParams num: "

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    array-length v0, v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "FitterInfo"

    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :cond_0
    const-wide/16 v1, 0x0

    .line 39
    .line 40
    move v4, v3

    .line 41
    :goto_0
    array-length v5, v0

    .line 42
    if-ge v4, v5, :cond_2

    .line 43
    .line 44
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 45
    .line 46
    move v7, v3

    .line 47
    :goto_1
    array-length v8, v0

    .line 48
    sub-int/2addr v8, v4

    .line 49
    add-int/lit8 v8, v8, -0x1

    .line 50
    .line 51
    if-ge v7, v8, :cond_1

    .line 52
    .line 53
    float-to-double v8, p1

    .line 54
    mul-double/2addr v5, v8

    .line 55
    add-int/lit8 v7, v7, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    aget v7, v0, v4

    .line 59
    .line 60
    float-to-double v7, v7

    .line 61
    mul-double/2addr v5, v7

    .line 62
    add-double/2addr v1, v5

    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    float-to-double v3, p1

    .line 67
    mul-double/2addr v1, v3

    .line 68
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    .line 69
    .line 70
    mul-double/2addr v1, v3

    .line 71
    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    .line 72
    .line 73
    div-double/2addr v1, v3

    .line 74
    double-to-int p1, v1

    .line 75
    return p1
.end method

.method private calculateSizeByFun2(F)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getFunctionParams()[F

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    aget v1, v0, v3

    .line 12
    .line 13
    float-to-double v1, v1

    .line 14
    const/4 v3, 0x1

    .line 15
    aget v3, v0, v3

    .line 16
    .line 17
    float-to-double v3, v3

    .line 18
    const/4 v5, 0x2

    .line 19
    aget v0, v0, v5

    .line 20
    .line 21
    float-to-double v5, v0

    .line 22
    float-to-double v7, p1

    .line 23
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    div-double/2addr v1, v5

    .line 28
    add-double/2addr v1, v3

    .line 29
    mul-double/2addr v1, v7

    .line 30
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    .line 31
    .line 32
    mul-double/2addr v1, v3

    .line 33
    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    .line 34
    .line 35
    div-double/2addr v1, v3

    .line 36
    double-to-int p1, v1

    .line 37
    return p1
.end method


# virtual methods
.method public calculateSizeBySecond(F)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->mFunctionParams:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "FitterInfo"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p1, "fitter params empty"

    .line 9
    .line 10
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getDuration()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-float v0, v0

    .line 19
    cmpl-float v0, p1, v0

    .line 20
    .line 21
    if-gtz v0, :cond_4

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    cmpg-float v0, p1, v0

    .line 25
    .line 26
    if-gtz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget v0, p0, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->mFunctionType:I

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->calculateSize(F)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_2
    const/4 v1, 0x1

    .line 39
    if-ne v0, v1, :cond_3

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->calculateSizeByFun2(F)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_3
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->calculateSize(F)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1

    .line 51
    :cond_4
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->getDuration()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "preload second:%f, fitter duration:%d"

    .line 68
    .line 69
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return v1
.end method

.method public extractFields(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    const-string v0, "func_params"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-gtz v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    new-array v1, v1, [F

    .line 28
    .line 29
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->mFunctionParams:[F

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge v1, v2, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->mFunctionParams:[F

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    double-to-float v3, v3

    .line 45
    aput v3, v2, v1

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const-string v0, "header_size"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->mHeaderSize:I

    .line 59
    .line 60
    const-string v0, "duration"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->mDuration:I

    .line 67
    .line 68
    const-string v0, "func_method"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->mFunctionType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :goto_1
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :goto_2
    return-void
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->mDuration:I

    .line 2
    .line 3
    return v0
.end method

.method public getFunctionParams()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->mFunctionParams:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public getFunctionType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->mFunctionType:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeaderSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/model/MediaBitrateFitterInfo;->mHeaderSize:I

    .line 2
    .line 3
    return v0
.end method
