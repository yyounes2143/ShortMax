.class synthetic Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$1;
.super Ljava/lang/Object;
.source "CodecStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ss$ttvideoengine$source$Source$Type:[I

.field static final synthetic $SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/source/Source$Type;->values()[Lcom/ss/ttvideoengine/source/Source$Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$1;->$SwitchMap$com$ss$ttvideoengine$source$Source$Type:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    sget-object v2, Lcom/ss/ttvideoengine/source/Source$Type;->DIRECT_URL_SOURCE:Lcom/ss/ttvideoengine/source/Source$Type;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    const/4 v0, 0x2

    .line 20
    :try_start_1
    sget-object v2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$1;->$SwitchMap$com$ss$ttvideoengine$source$Source$Type:[I

    .line 21
    .line 22
    sget-object v3, Lcom/ss/ttvideoengine/source/Source$Type;->VID_PLAY_AUTH_TOKEN_SOURCE:Lcom/ss/ttvideoengine/source/Source$Type;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    :catch_1
    invoke-static {}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->values()[Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    array-length v2, v2

    .line 35
    new-array v2, v2, [I

    .line 36
    .line 37
    sput-object v2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$1;->$SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension:[I

    .line 38
    .line 39
    :try_start_2
    sget-object v3, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->h265_HARDWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 46
    .line 47
    :catch_2
    :try_start_3
    sget-object v1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$1;->$SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension:[I

    .line 48
    .line 49
    sget-object v2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->h265_SOFTWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 56
    .line 57
    :catch_3
    :try_start_4
    sget-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$1;->$SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension:[I

    .line 58
    .line 59
    sget-object v1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->h266_SOFTWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v2, 0x3

    .line 66
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 67
    .line 68
    :catch_4
    :try_start_5
    sget-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$1;->$SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension:[I

    .line 69
    .line 70
    sget-object v1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->H264_HARDWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v2, 0x4

    .line 77
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 78
    .line 79
    :catch_5
    :try_start_6
    sget-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$1;->$SwitchMap$com$ss$ttvideoengine$source$strategy$CodecStrategy$Dimension:[I

    .line 80
    .line 81
    sget-object v1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->H264_SOFTWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/4 v2, 0x5

    .line 88
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 89
    .line 90
    :catch_6
    return-void
.end method
