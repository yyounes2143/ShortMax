.class public final Lcom/google/android/gms/internal/ads/zzti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zze:Z

.field public final zzf:Z

.field public final zzg:Z

.field public final zzh:Z

.field private final zzi:Z

.field private zzj:I

.field private zzk:I

.field private zzl:F


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZZ)V
    .locals 0
    .param p4    # Landroid/media/MediaCodecInfo$CodecCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzti;->zzc:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzti;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 14
    .line 15
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzti;->zzg:Z

    .line 16
    .line 17
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzti;->zze:Z

    .line 18
    .line 19
    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzti;->zzf:Z

    .line 20
    .line 21
    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzti;->zzh:Z

    .line 22
    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzay;->zzj(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzi:Z

    .line 28
    .line 29
    const p1, -0x800001

    .line 30
    .line 31
    .line 32
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzl:F

    .line 33
    .line 34
    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzj:I

    .line 36
    .line 37
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzk:I

    .line 38
    .line 39
    return-void
.end method

.method public static zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzti;
    .locals 13
    .param p3    # Landroid/media/MediaCodecInfo$CodecCapabilities;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    new-instance v12, Lcom/google/android/gms/internal/ads/zzti;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    const-string v2, "adaptive-playback"

    .line 10
    .line 11
    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    move v8, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v8, v1

    .line 20
    :goto_0
    if-eqz v4, :cond_1

    .line 21
    .line 22
    const-string v2, "tunneled-playback"

    .line 23
    .line 24
    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move v9, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v9, v1

    .line 33
    :goto_1
    if-nez p8, :cond_2

    .line 34
    .line 35
    if-eqz v4, :cond_3

    .line 36
    .line 37
    const-string v2, "secure-playback"

    .line 38
    .line 39
    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    :cond_2
    move v10, v0

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move v10, v1

    .line 48
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    .line 50
    const/16 v3, 0x23

    .line 51
    .line 52
    if-lt v2, v3, :cond_4

    .line 53
    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    const-string v2, "detached-surface"

    .line 57
    .line 58
    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 65
    .line 66
    const-string v3, "Xiaomi"

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    const-string v3, "OPPO"

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_4

    .line 81
    .line 82
    const-string v3, "realme"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    :cond_4
    move v11, v1

    .line 91
    goto :goto_3

    .line 92
    :cond_5
    move v11, v0

    .line 93
    :goto_3
    move-object v0, v12

    .line 94
    move-object v1, p0

    .line 95
    move-object v2, p1

    .line 96
    move-object v3, p2

    .line 97
    move-object/from16 v4, p3

    .line 98
    .line 99
    move/from16 v5, p4

    .line 100
    .line 101
    move/from16 v6, p5

    .line 102
    .line 103
    move/from16 v7, p6

    .line 104
    .line 105
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzti;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZZ)V

    .line 106
    .line 107
    .line 108
    return-object v12
.end method

.method private static zzj(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    new-instance v1, Landroid/graphics/Point;

    .line 10
    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 12
    .line 13
    add-int/2addr p1, v0

    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    div-int/2addr p1, v0

    .line 17
    mul-int/2addr p1, v0

    .line 18
    add-int/2addr p2, p0

    .line 19
    add-int/lit8 p2, p2, -0x1

    .line 20
    .line 21
    div-int/2addr p2, p0

    .line 22
    mul-int/2addr p2, p0

    .line 23
    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method private final zzk(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "NoSupport ["

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, "] ["

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ", "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, "]"

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "MediaCodecInfo"

    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzea;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private static zzl(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 4

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzti;->zzj(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 6
    .line 7
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 8
    .line 9
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 10
    .line 11
    cmpl-double v0, p3, v0

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 16
    .line 17
    cmpg-double v0, p3, v0

    .line 18
    .line 19
    if-gez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide p3

    .line 26
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getAchievableFrameRatesFor(II)Landroid/util/Range;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 p1, 0x1

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    return p1

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Ljava/lang/Double;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    cmpg-double p0, p3, v2

    .line 53
    .line 54
    if-gtz p0, :cond_3

    .line 55
    .line 56
    return p1

    .line 57
    :cond_3
    return v1

    .line 58
    :cond_4
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzz;Z)Z
    .locals 11

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzuc;->zza:I

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdk;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    const-string v3, "video/hevc"

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    const-string v5, "video/mv-hevc"

    .line 16
    .line 17
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-eqz v6, :cond_2

    .line 22
    .line 23
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzti;->zzc:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzay;->zze(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfv;->zzh(Ljava/util/List;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    sget-object v6, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 58
    .line 59
    const-string v6, "\\."

    .line 60
    .line 61
    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzz;->zzE:Lcom/google/android/gms/internal/ads/zzk;

    .line 66
    .line 67
    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzdk;->zzb(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzk;)Landroid/util/Pair;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_2
    :goto_0
    if-eqz v0, :cond_e

    .line 72
    .line 73
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v5, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const-string v6, "video/dolby-vision"

    .line 90
    .line 91
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v6, 0x2

    .line 96
    const/4 v7, 0x0

    .line 97
    if-eqz v1, :cond_9

    .line 98
    .line 99
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    const v9, -0x631b55f6

    .line 106
    .line 107
    .line 108
    if-eq v8, v9, :cond_5

    .line 109
    .line 110
    const v9, -0x63185e82

    .line 111
    .line 112
    .line 113
    if-eq v8, v9, :cond_4

    .line 114
    .line 115
    const v9, 0x4f62373a

    .line 116
    .line 117
    .line 118
    if-eq v8, v9, :cond_3

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    const-string v8, "video/avc"

    .line 122
    .line 123
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_6

    .line 128
    .line 129
    move v2, v7

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_6

    .line 136
    .line 137
    move v2, v4

    .line 138
    goto :goto_1

    .line 139
    :cond_5
    const-string v8, "video/av01"

    .line 140
    .line 141
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    move v2, v6

    .line 148
    :cond_6
    :goto_1
    if-eqz v2, :cond_8

    .line 149
    .line 150
    if-eq v2, v4, :cond_7

    .line 151
    .line 152
    if-eq v2, v6, :cond_7

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    move v5, v6

    .line 156
    :goto_2
    move v0, v7

    .line 157
    goto :goto_3

    .line 158
    :cond_8
    const/16 v5, 0x8

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_9
    :goto_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzi:Z

    .line 162
    .line 163
    if-nez v1, :cond_a

    .line 164
    .line 165
    const/16 v1, 0x2a

    .line 166
    .line 167
    if-ne v5, v1, :cond_e

    .line 168
    .line 169
    move v5, v1

    .line 170
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzti;->zzi()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    array-length v2, v1

    .line 175
    move v8, v7

    .line 176
    :goto_4
    if-ge v8, v2, :cond_d

    .line 177
    .line 178
    aget-object v9, v1, v8

    .line 179
    .line 180
    iget v10, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 181
    .line 182
    if-ne v10, v5, :cond_c

    .line 183
    .line 184
    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 185
    .line 186
    if-ge v9, v0, :cond_b

    .line 187
    .line 188
    if-nez p2, :cond_c

    .line 189
    .line 190
    :cond_b
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-eqz v9, :cond_e

    .line 197
    .line 198
    if-ne v5, v6, :cond_e

    .line 199
    .line 200
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 201
    .line 202
    const-string v10, "sailfish"

    .line 203
    .line 204
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-nez v10, :cond_c

    .line 209
    .line 210
    const-string v10, "marlin"

    .line 211
    .line 212
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-eqz v9, :cond_e

    .line 217
    .line 218
    :cond_c
    add-int/2addr v8, v4

    .line 219
    goto :goto_4

    .line 220
    :cond_d
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzk:Ljava/lang/String;

    .line 221
    .line 222
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzti;->zzc:Ljava/lang/String;

    .line 223
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v1, "codec.profileLevel, "

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string p1, ", "

    .line 238
    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzk(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return v7

    .line 253
    :cond_e
    :goto_5
    return v4
.end method

.method private final zzn(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "audio/flac"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzI:I

    .line 12
    .line 13
    const/16 v0, 0x16

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v0, 0x22

    .line 20
    .line 21
    if-ge p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "c2.android.flac.decoder"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 37
    return p1
.end method

.method private final zzo(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzuc;->zzb(Lcom/google/android/gms/internal/ads/zzz;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    return p1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zza(II)F
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzi:Z

    .line 2
    .line 3
    const v1, -0x800001

    .line 4
    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzl:F

    .line 10
    .line 11
    cmpl-float v1, v0, v1

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzj:I

    .line 16
    .line 17
    if-ne v1, p1, :cond_2

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzk:I

    .line 20
    .line 21
    if-eq v1, p2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return v0

    .line 25
    :cond_2
    :goto_0
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzti;->zzh(IID)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/high16 v1, 0x44800000    # 1024.0f

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    const/4 v0, 0x0

    .line 37
    :cond_4
    :goto_1
    sub-float v2, v1, v0

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/high16 v4, 0x40a00000    # 5.0f

    .line 44
    .line 45
    cmpl-float v3, v3, v4

    .line 46
    .line 47
    if-lez v3, :cond_6

    .line 48
    .line 49
    const/high16 v3, 0x40000000    # 2.0f

    .line 50
    .line 51
    div-float/2addr v2, v3

    .line 52
    add-float/2addr v2, v0

    .line 53
    float-to-double v3, v2

    .line 54
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzti;->zzh(IID)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x1

    .line 59
    if-ne v4, v3, :cond_5

    .line 60
    .line 61
    move v0, v2

    .line 62
    :cond_5
    if-eq v4, v3, :cond_4

    .line 63
    .line 64
    move v1, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_6
    move v1, v0

    .line 67
    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzl:F

    .line 68
    .line 69
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzj:I

    .line 70
    .line 71
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzti;->zzk:I

    .line 72
    .line 73
    return v1
.end method

.method public final zzb(II)Landroid/graphics/Point;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzti;->zzj(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzie;
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eq v5, v1, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v4

    .line 18
    :goto_0
    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzti;->zzi:Z

    .line 19
    .line 20
    if-eqz v6, :cond_b

    .line 21
    .line 22
    iget v6, p1, Lcom/google/android/gms/internal/ads/zzz;->zzA:I

    .line 23
    .line 24
    iget v7, p2, Lcom/google/android/gms/internal/ads/zzz;->zzA:I

    .line 25
    .line 26
    if-eq v6, v7, :cond_1

    .line 27
    .line 28
    or-int/lit16 v1, v1, 0x400

    .line 29
    .line 30
    :cond_1
    iget v6, p1, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    .line 31
    .line 32
    iget v7, p2, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    .line 33
    .line 34
    if-ne v6, v7, :cond_2

    .line 35
    .line 36
    iget v6, p1, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    .line 37
    .line 38
    iget v7, p2, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    .line 39
    .line 40
    if-eq v6, v7, :cond_3

    .line 41
    .line 42
    :cond_2
    move v4, v5

    .line 43
    :cond_3
    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzti;->zze:Z

    .line 44
    .line 45
    if-nez v6, :cond_4

    .line 46
    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    or-int/lit16 v1, v1, 0x200

    .line 50
    .line 51
    :cond_4
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzz;->zzE:Lcom/google/android/gms/internal/ads/zzk;

    .line 52
    .line 53
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzk;->zzg(Lcom/google/android/gms/internal/ads/zzk;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_5

    .line 58
    .line 59
    iget-object v7, p2, Lcom/google/android/gms/internal/ads/zzz;->zzE:Lcom/google/android/gms/internal/ads/zzk;

    .line 60
    .line 61
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzk;->zzg(Lcom/google/android/gms/internal/ads/zzk;)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_6

    .line 66
    .line 67
    :cond_5
    iget-object v7, p2, Lcom/google/android/gms/internal/ads/zzz;->zzE:Lcom/google/android/gms/internal/ads/zzk;

    .line 68
    .line 69
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_6

    .line 74
    .line 75
    or-int/lit16 v1, v1, 0x800

    .line 76
    .line 77
    :cond_6
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    .line 78
    .line 79
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 80
    .line 81
    const-string v8, "SM-T230"

    .line 82
    .line 83
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_7

    .line 88
    .line 89
    const-string v7, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    .line 90
    .line 91
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_7

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzz;->zzd(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-nez v7, :cond_7

    .line 102
    .line 103
    or-int/2addr v1, v0

    .line 104
    :cond_7
    iget v7, p1, Lcom/google/android/gms/internal/ads/zzz;->zzx:I

    .line 105
    .line 106
    const/4 v8, -0x1

    .line 107
    if-eq v7, v8, :cond_8

    .line 108
    .line 109
    iget v9, p1, Lcom/google/android/gms/internal/ads/zzz;->zzy:I

    .line 110
    .line 111
    if-eq v9, v8, :cond_8

    .line 112
    .line 113
    iget v8, p2, Lcom/google/android/gms/internal/ads/zzz;->zzx:I

    .line 114
    .line 115
    if-ne v7, v8, :cond_8

    .line 116
    .line 117
    iget v7, p2, Lcom/google/android/gms/internal/ads/zzz;->zzy:I

    .line 118
    .line 119
    if-ne v9, v7, :cond_8

    .line 120
    .line 121
    if-eqz v4, :cond_8

    .line 122
    .line 123
    or-int/2addr v1, v0

    .line 124
    :cond_8
    if-nez v1, :cond_a

    .line 125
    .line 126
    new-instance v7, Lcom/google/android/gms/internal/ads/zzie;

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzz;->zzd(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eq v5, v1, :cond_9

    .line 133
    .line 134
    :goto_1
    move v4, v0

    .line 135
    goto :goto_2

    .line 136
    :cond_9
    const/4 v0, 0x3

    .line 137
    goto :goto_1

    .line 138
    :goto_2
    const/4 v5, 0x0

    .line 139
    move-object v0, v7

    .line 140
    move-object v1, v6

    .line 141
    move-object v2, p1

    .line 142
    move-object v3, p2

    .line 143
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzie;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    .line 144
    .line 145
    .line 146
    return-object v7

    .line 147
    :cond_a
    move v5, v1

    .line 148
    goto/16 :goto_4

    .line 149
    .line 150
    :cond_b
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    .line 151
    .line 152
    iget v5, p2, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    .line 153
    .line 154
    if-eq v4, v5, :cond_c

    .line 155
    .line 156
    or-int/lit16 v1, v1, 0x1000

    .line 157
    .line 158
    :cond_c
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    .line 159
    .line 160
    iget v5, p2, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    .line 161
    .line 162
    if-eq v4, v5, :cond_d

    .line 163
    .line 164
    or-int/lit16 v1, v1, 0x2000

    .line 165
    .line 166
    :cond_d
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzz;->zzI:I

    .line 167
    .line 168
    iget v5, p2, Lcom/google/android/gms/internal/ads/zzz;->zzI:I

    .line 169
    .line 170
    if-eq v4, v5, :cond_e

    .line 171
    .line 172
    or-int/lit16 v1, v1, 0x4000

    .line 173
    .line 174
    :cond_e
    if-nez v1, :cond_10

    .line 175
    .line 176
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Ljava/lang/String;

    .line 177
    .line 178
    const-string v5, "audio/mp4a-latm"

    .line 179
    .line 180
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_10

    .line 185
    .line 186
    sget v4, Lcom/google/android/gms/internal/ads/zzuc;->zza:I

    .line 187
    .line 188
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdk;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdk;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    if-eqz v4, :cond_10

    .line 197
    .line 198
    if-eqz v5, :cond_10

    .line 199
    .line 200
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v4, Ljava/lang/Integer;

    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v5, Ljava/lang/Integer;

    .line 211
    .line 212
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    const/16 v6, 0x2a

    .line 217
    .line 218
    if-ne v4, v6, :cond_10

    .line 219
    .line 220
    if-eq v5, v6, :cond_f

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    .line 224
    .line 225
    new-instance v6, Lcom/google/android/gms/internal/ads/zzie;

    .line 226
    .line 227
    const/4 v4, 0x3

    .line 228
    const/4 v5, 0x0

    .line 229
    move-object v0, v6

    .line 230
    move-object v2, p1

    .line 231
    move-object v3, p2

    .line 232
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzie;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    .line 233
    .line 234
    .line 235
    return-object v6

    .line 236
    :cond_10
    :goto_3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzz;->zzd(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-nez v4, :cond_11

    .line 241
    .line 242
    or-int/lit8 v1, v1, 0x20

    .line 243
    .line 244
    :cond_11
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Ljava/lang/String;

    .line 245
    .line 246
    const-string v5, "audio/opus"

    .line 247
    .line 248
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-eqz v4, :cond_12

    .line 253
    .line 254
    or-int/2addr v1, v0

    .line 255
    :cond_12
    if-nez v1, :cond_a

    .line 256
    .line 257
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    .line 258
    .line 259
    new-instance v6, Lcom/google/android/gms/internal/ads/zzie;

    .line 260
    .line 261
    const/4 v4, 0x1

    .line 262
    const/4 v5, 0x0

    .line 263
    move-object v0, v6

    .line 264
    move-object v2, p1

    .line 265
    move-object v3, p2

    .line 266
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzie;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    .line 267
    .line 268
    .line 269
    return-object v6

    .line 270
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    .line 271
    .line 272
    new-instance v6, Lcom/google/android/gms/internal/ads/zzie;

    .line 273
    .line 274
    const/4 v4, 0x0

    .line 275
    move-object v0, v6

    .line 276
    move-object v2, p1

    .line 277
    move-object v3, p2

    .line 278
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzie;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    .line 279
    .line 280
    .line 281
    return-object v6
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzo(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzti;->zzm(Lcom/google/android/gms/internal/ads/zzz;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzn(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_0
    return v1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztw;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzo(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzti;->zzm(Lcom/google/android/gms/internal/ads/zzz;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzn(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzti;->zzi:Z

    .line 25
    .line 26
    if-eqz v2, :cond_5

    .line 27
    .line 28
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    .line 29
    .line 30
    if-lez v1, :cond_4

    .line 31
    .line 32
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    .line 33
    .line 34
    if-gtz v2, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzz:F

    .line 38
    .line 39
    float-to-double v3, p1

    .line 40
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzti;->zzh(IID)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_4
    :goto_0
    return v0

    .line 46
    :cond_5
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    .line 47
    .line 48
    const/4 v3, -0x1

    .line 49
    if-eq v2, v3, :cond_8

    .line 50
    .line 51
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzti;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 52
    .line 53
    if-nez v4, :cond_6

    .line 54
    .line 55
    const-string p1, "sampleRate.caps"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzk(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_6
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-nez v4, :cond_7

    .line 67
    .line 68
    const-string p1, "sampleRate.aCaps"

    .line 69
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzk(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_7
    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_8

    .line 80
    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v0, "sampleRate.support, "

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzk(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_8
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    .line 104
    .line 105
    if-eq p1, v3, :cond_11

    .line 106
    .line 107
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzti;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 108
    .line 109
    if-nez v2, :cond_9

    .line 110
    .line 111
    const-string p1, "channelCount.caps"

    .line 112
    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzk(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :cond_9
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-nez v2, :cond_a

    .line 123
    .line 124
    const-string p1, "channelCount.aCaps"

    .line 125
    .line 126
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzk(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_3

    .line 130
    .line 131
    :cond_a
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-gt v2, v0, :cond_f

    .line 140
    .line 141
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    .line 143
    const/16 v6, 0x1a

    .line 144
    .line 145
    if-lt v5, v6, :cond_b

    .line 146
    .line 147
    if-lez v2, :cond_b

    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :cond_b
    const-string v5, "audio/mpeg"

    .line 152
    .line 153
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-nez v5, :cond_f

    .line 158
    .line 159
    const-string v5, "audio/3gpp"

    .line 160
    .line 161
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-nez v5, :cond_f

    .line 166
    .line 167
    const-string v5, "audio/amr-wb"

    .line 168
    .line 169
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-nez v5, :cond_f

    .line 174
    .line 175
    const-string v5, "audio/mp4a-latm"

    .line 176
    .line 177
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-nez v5, :cond_f

    .line 182
    .line 183
    const-string v5, "audio/vorbis"

    .line 184
    .line 185
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-nez v5, :cond_f

    .line 190
    .line 191
    const-string v5, "audio/opus"

    .line 192
    .line 193
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-nez v5, :cond_f

    .line 198
    .line 199
    const-string v5, "audio/raw"

    .line 200
    .line 201
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-nez v5, :cond_f

    .line 206
    .line 207
    const-string v5, "audio/flac"

    .line 208
    .line 209
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    if-nez v5, :cond_f

    .line 214
    .line 215
    const-string v5, "audio/g711-alaw"

    .line 216
    .line 217
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-nez v5, :cond_f

    .line 222
    .line 223
    const-string v5, "audio/g711-mlaw"

    .line 224
    .line 225
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-nez v5, :cond_f

    .line 230
    .line 231
    const-string v5, "audio/gsm"

    .line 232
    .line 233
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-eqz v5, :cond_c

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_c
    const-string v5, "audio/ac3"

    .line 241
    .line 242
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-eqz v5, :cond_d

    .line 247
    .line 248
    const/4 v4, 0x6

    .line 249
    goto :goto_1

    .line 250
    :cond_d
    const-string v5, "audio/eac3"

    .line 251
    .line 252
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_e

    .line 257
    .line 258
    const/16 v4, 0x10

    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_e
    const/16 v4, 0x1e

    .line 262
    .line 263
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    const-string v6, "AssumedMaxChannelAdjustment: "

    .line 269
    .line 270
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v3, ", ["

    .line 277
    .line 278
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v2, " to "

    .line 285
    .line 286
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v2, "]"

    .line 293
    .line 294
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    const-string v3, "MediaCodecInfo"

    .line 302
    .line 303
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    move v2, v4

    .line 307
    :cond_f
    :goto_2
    if-ge v2, p1, :cond_10

    .line 308
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    const-string v2, "channelCount.support, "

    .line 315
    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzk(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_10
    return v0

    .line 331
    :cond_11
    move v1, v0

    .line 332
    :goto_3
    return v1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzi:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzti;->zze:Z

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzuc;->zza:I

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdk;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/16 v0, 0x2a

    .line 25
    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public final zzh(IID)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string p1, "sizeAndRate.caps"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzk(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string p1, "sizeAndRate.vCaps"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzk(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v3, 0x1d

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    const-string v5, "@"

    .line 30
    .line 31
    const-string v6, "x"

    .line 32
    .line 33
    if-lt v2, v3, :cond_4

    .line 34
    .line 35
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zztk;->zza(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x2

    .line 40
    if-ne v2, v3, :cond_2

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_2
    if-eq v2, v4, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "sizeAndRate.cover, "

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzk(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v1

    .line 80
    :cond_4
    :goto_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzti;->zzl(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_8

    .line 85
    .line 86
    if-ge p1, p2, :cond_7

    .line 87
    .line 88
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    .line 89
    .line 90
    const-string v3, "OMX.MTK.VIDEO.DECODER.HEVC"

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_5

    .line 97
    .line 98
    const-string v3, "mcv5a"

    .line 99
    .line 100
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_7

    .line 107
    .line 108
    :cond_5
    invoke-static {v0, p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzti;->zzl(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v1, "sizeAndRate.rotated, "

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Ljava/lang/String;

    .line 145
    .line 146
    sget-object p3, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 147
    .line 148
    new-instance p4, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v0, "AssumedSupport ["

    .line 154
    .line 155
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p1, "] ["

    .line 162
    .line 163
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, ", "

    .line 170
    .line 171
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string p1, "]"

    .line 184
    .line 185
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    const-string p2, "MediaCodecInfo"

    .line 193
    .line 194
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzea;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v2, "sizeAndRate.support, "

    .line 204
    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzti;->zzk(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return v1

    .line 231
    :cond_8
    :goto_2
    return v4
.end method

.method public final zzi()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 11
    .line 12
    :cond_1
    return-object v0
.end method
