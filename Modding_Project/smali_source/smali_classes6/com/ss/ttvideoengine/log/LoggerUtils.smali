.class public Lcom/ss/ttvideoengine/log/LoggerUtils;
.super Ljava/lang/Object;
.source "LoggerUtils.java"


# static fields
.field public static final KEY_BASE_AUDIO_LENGTH:Ljava/lang/String; = "bal"

.field public static final KEY_BASE_VIDEO_LENGTH:Ljava/lang/String; = "bvl"

.field public static final KEY_DECODER_AUDIO_LENGTH:Ljava/lang/String; = "dal"

.field public static final KEY_DECODER_VIDEO_LENGTH:Ljava/lang/String; = "dvl"

.field public static final KEY_FORMAT_AUDIO_LENGTH:Ljava/lang/String; = "fal"

.field public static final KEY_FORMAT_AUDIO_ONLY_LENGTH:Ljava/lang/String; = "falim"

.field public static final KEY_FORMAT_VIDEO_LENGTH:Ljava/lang/String; = "fvl"

.field public static final KEY_FORMAT_VIDEO_ONLY_LENGTH:Ljava/lang/String; = "fvlim"

.field public static final PLAYER_BUFFER_STATE_SIZE:I = 0x6

.field private static final caesar_key:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, -0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x5

    .line 5
    const/4 v4, -0x1

    .line 6
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/ss/ttvideoengine/log/LoggerUtils;->caesar_key:[I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static encryptFloatV1(F)F
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    cmpl-float v0, p0, v0

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 7
    .line 8
    cmpl-float v0, p0, v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    neg-float p0, p0

    .line 14
    :cond_1
    :goto_0
    return p0
.end method

.method public static encryptIntergerV1(J)J
    .locals 3

    .line 1
    const-wide/32 v0, -0x80000000

    .line 2
    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-wide p0

    .line 9
    :cond_0
    const/4 v0, 0x4

    .line 10
    ushr-long v0, p0, v0

    .line 11
    .line 12
    const/16 v2, 0x3c

    .line 13
    .line 14
    shl-long/2addr p0, v2

    .line 15
    or-long/2addr p0, v0

    .line 16
    return-wide p0
.end method

.method public static encryptStringV1(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_7

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sget-object v3, Lcom/ss/ttvideoengine/log/LoggerUtils;->caesar_key:[I

    .line 22
    .line 23
    rem-int/lit8 v4, v1, 0x5

    .line 24
    .line 25
    aget v3, v3, v4

    .line 26
    .line 27
    const/16 v4, 0x61

    .line 28
    .line 29
    if-lt v2, v4, :cond_2

    .line 30
    .line 31
    const/16 v5, 0x7a

    .line 32
    .line 33
    if-gt v2, v5, :cond_2

    .line 34
    .line 35
    add-int/2addr v2, v3

    .line 36
    int-to-char v2, v2

    .line 37
    if-ge v2, v4, :cond_1

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1a

    .line 40
    .line 41
    int-to-char v2, v2

    .line 42
    :cond_1
    if-le v2, v5, :cond_6

    .line 43
    .line 44
    :goto_1
    add-int/lit8 v2, v2, -0x1a

    .line 45
    .line 46
    :goto_2
    int-to-char v2, v2

    .line 47
    goto :goto_3

    .line 48
    :cond_2
    const/16 v4, 0x41

    .line 49
    .line 50
    if-lt v2, v4, :cond_4

    .line 51
    .line 52
    const/16 v5, 0x5a

    .line 53
    .line 54
    if-gt v2, v5, :cond_4

    .line 55
    .line 56
    add-int/2addr v2, v3

    .line 57
    int-to-char v2, v2

    .line 58
    if-ge v2, v4, :cond_3

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1a

    .line 61
    .line 62
    int-to-char v2, v2

    .line 63
    :cond_3
    if-le v2, v5, :cond_6

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    const/16 v4, 0x30

    .line 67
    .line 68
    if-lt v2, v4, :cond_6

    .line 69
    .line 70
    const/16 v5, 0x39

    .line 71
    .line 72
    if-gt v2, v5, :cond_6

    .line 73
    .line 74
    add-int/2addr v2, v3

    .line 75
    int-to-char v2, v2

    .line 76
    if-ge v2, v4, :cond_5

    .line 77
    .line 78
    add-int/lit8 v2, v2, 0xa

    .line 79
    .line 80
    int-to-char v2, v2

    .line 81
    :cond_5
    if-le v2, v5, :cond_6

    .line 82
    .line 83
    add-int/lit8 v2, v2, -0xa

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_7
    return-object v0
.end method

.method static parsePlayerBufferString(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
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
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const-string v1, ";|:"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    array-length v1, p0

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_0
    array-length v2, p0

    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    if-ge v1, v2, :cond_2

    .line 30
    .line 31
    :try_start_0
    aget-object v2, p0, v1

    .line 32
    .line 33
    add-int/lit8 v3, v1, 0x1

    .line 34
    .line 35
    aget-object v3, p0, v3

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_1
    add-int/lit8 v1, v1, 0x2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    :goto_2
    return-object v0
.end method

.method static parsePlayerStringToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
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
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    array-length p1, p0

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    array-length v1, p0

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    if-ge p1, v1, :cond_2

    .line 28
    .line 29
    :try_start_0
    aget-object v1, p0, p1

    .line 30
    .line 31
    add-int/lit8 v2, p1, 0x1

    .line 32
    .line 33
    aget-object v2, p0, v2

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :goto_1
    add-int/lit8 p1, p1, 0x2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_2
    return-object v0
.end method

.method static putToMap(Ljava/util/Map;Ljava/lang/String;F)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x7fc00000    # Float.NaN

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static putToMap(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_1

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static putToMap(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static putToMap(Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 10
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
