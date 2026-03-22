.class public final Lcom/google/android/gms/internal/ads/zzuc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "MediaCodecUtil.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzuc;->zzb:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzti;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztw;
        }
    .end annotation

    .line 1
    const-string v0, "audio/raw"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzuc;->zzd(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/google/android/gms/internal/ads/zzti;

    .line 21
    .line 22
    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzz;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "audio/eac3-joc"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string p0, "audio/eac3"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string v1, "video/dolby-vision"

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdk;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_4

    .line 27
    .line 28
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/16 v1, 0x10

    .line 37
    .line 38
    if-eq p0, v1, :cond_5

    .line 39
    .line 40
    const/16 v1, 0x100

    .line 41
    .line 42
    if-ne p0, v1, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v1, 0x200

    .line 46
    .line 47
    if-ne p0, v1, :cond_2

    .line 48
    .line 49
    const-string p0, "video/avc"

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    const/16 v1, 0x400

    .line 53
    .line 54
    if-eq p0, v1, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const-string p0, "video/av01"

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_4
    :goto_0
    const-string p0, "video/mv-hevc"

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_5

    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    return-object p0

    .line 70
    :cond_5
    :goto_1
    const-string p0, "video/hevc"

    .line 71
    .line 72
    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zztr;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztw;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzuc;->zzb(Lcom/google/android/gms/internal/ads/zzz;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztr;->zza(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static declared-synchronized zzd(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztw;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzuc;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zztv;

    .line 5
    .line 6
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztv;-><init>(Ljava/lang/String;ZZ)V

    .line 7
    .line 8
    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzuc;->zzb:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object v3

    .line 21
    :cond_0
    :try_start_1
    const-string v3, "video/mv-hevc"

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    new-instance v4, Lcom/google/android/gms/internal/ads/zztz;

    .line 28
    .line 29
    invoke-direct {v4, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zztz;-><init>(ZZZ)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzuc;->zzg(Lcom/google/android/gms/internal/ads/zztv;Lcom/google/android/gms/internal/ads/zztx;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_1
    :goto_0
    const-string p1, "audio/raw"

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    const/4 p1, 0x1

    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    const/16 v4, 0x1a

    .line 58
    .line 59
    if-ge p0, v4, :cond_2

    .line 60
    .line 61
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 62
    .line 63
    const-string v4, "R9"

    .line 64
    .line 65
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-ne p0, p1, :cond_2

    .line 76
    .line 77
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lcom/google/android/gms/internal/ads/zzti;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    .line 84
    .line 85
    const-string v4, "OMX.MTK.AUDIO.DECODER.RAW"

    .line 86
    .line 87
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_2

    .line 92
    .line 93
    const-string v4, "OMX.google.raw.decoder"

    .line 94
    .line 95
    const-string v5, "audio/raw"

    .line 96
    .line 97
    const-string v6, "audio/raw"

    .line 98
    .line 99
    const/4 v11, 0x0

    .line 100
    const/4 v12, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v9, 0x1

    .line 104
    const/4 v10, 0x0

    .line 105
    invoke-static/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zzti;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzti;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zztt;

    .line 113
    .line 114
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztt;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzuc;->zzh(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzua;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 121
    .line 122
    const/16 v4, 0x20

    .line 123
    .line 124
    if-ge p0, v4, :cond_4

    .line 125
    .line 126
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-le p0, p1, :cond_4

    .line 131
    .line 132
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Lcom/google/android/gms/internal/ads/zzti;

    .line 137
    .line 138
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    .line 139
    .line 140
    const-string p1, "OMX.qti.audio.decoder.flac"

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-eqz p0, :cond_4

    .line 147
    .line 148
    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    check-cast p0, Lcom/google/android/gms/internal/ads/zzti;

    .line 153
    .line 154
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    :cond_4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfyq;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .line 163
    .line 164
    monitor-exit v0

    .line 165
    return-object p0

    .line 166
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    throw p0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zztr;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztw;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zztr;->zza(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzuc;->zzc(Lcom/google/android/gms/internal/ads/zztr;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget p1, Lcom/google/android/gms/internal/ads/zzfyq;->zzd:I

    .line 12
    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyn;->zzi()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static zzf(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzz;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/google/android/gms/internal/ads/zztu;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zztu;-><init>(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzuc;->zzh(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzua;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zztv;Lcom/google/android/gms/internal/ads/zztx;)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztw;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "secure-playback"

    .line 6
    .line 7
    const-string v3, "tunneled-playback"

    .line 8
    .line 9
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zztv;->zza:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zztx;->zza()I

    .line 17
    .line 18
    .line 19
    move-result v14

    .line 20
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zztx;->zze()Z

    .line 21
    .line 22
    .line 23
    move-result v16

    .line 24
    const/16 v17, 0x0

    .line 25
    .line 26
    move/from16 v13, v17

    .line 27
    .line 28
    :goto_0
    if-ge v13, v14, :cond_19

    .line 29
    .line 30
    invoke-interface {v1, v13}, Lcom/google/android/gms/internal/ads/zztx;->zzb(I)Landroid/media/MediaCodecInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v8, 0x1d

    .line 37
    .line 38
    if-lt v7, v8, :cond_1

    .line 39
    .line 40
    invoke-static {v6}, Lf6/k;->a(Landroid/media/MediaCodecInfo;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_1

    .line 45
    .line 46
    :cond_0
    :goto_1
    move/from16 v22, v13

    .line 47
    .line 48
    move/from16 v18, v14

    .line 49
    .line 50
    goto/16 :goto_b

    .line 51
    .line 52
    :catch_0
    move-exception v0

    .line 53
    goto/16 :goto_d

    .line 54
    .line 55
    :cond_1
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 60
    .line 61
    .line 62
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    if-nez v7, :cond_0

    .line 64
    .line 65
    const-string v7, ".secure"

    .line 66
    .line 67
    if-nez v16, :cond_2

    .line 68
    .line 69
    :try_start_1
    invoke-virtual {v12, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-nez v9, :cond_0

    .line 74
    .line 75
    :cond_2
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    array-length v10, v9

    .line 80
    move/from16 v11, v17

    .line 81
    .line 82
    :goto_2
    if-ge v11, v10, :cond_4

    .line 83
    .line 84
    aget-object v4, v9, v11

    .line 85
    .line 86
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v18

    .line 90
    if-eqz v18, :cond_3

    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    const-string v4, "video/dolby-vision"

    .line 98
    .line 99
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_8

    .line 104
    .line 105
    const-string v4, "OMX.MS.HEVCDV.Decoder"

    .line 106
    .line 107
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_5

    .line 112
    .line 113
    const-string v4, "video/hevcdv"

    .line 114
    .line 115
    goto/16 :goto_4

    .line 116
    .line 117
    :cond_5
    const-string v4, "OMX.RTK.video.decoder"

    .line 118
    .line 119
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-nez v4, :cond_7

    .line 124
    .line 125
    const-string v4, "OMX.realtek.video.decoder.tunneled"

    .line 126
    .line 127
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_6

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    const/4 v4, 0x0

    .line 135
    goto :goto_4

    .line 136
    :cond_7
    :goto_3
    const-string v4, "video/dv_hevc"

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_8
    const-string v4, "video/mv-hevc"

    .line 140
    .line 141
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_a

    .line 146
    .line 147
    const-string v4, "c2.qti.mvhevc.decoder"

    .line 148
    .line 149
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-nez v4, :cond_9

    .line 154
    .line 155
    const-string v4, "c2.qti.mvhevc.decoder.secure"

    .line 156
    .line 157
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_6

    .line 162
    .line 163
    :cond_9
    const-string v4, "video/x-mvhevc"

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_a
    const-string v4, "audio/alac"

    .line 167
    .line 168
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_b

    .line 173
    .line 174
    const-string v4, "OMX.lge.alac.decoder"

    .line 175
    .line 176
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eqz v4, :cond_b

    .line 181
    .line 182
    const-string v4, "audio/x-lg-alac"

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_b
    const-string v4, "audio/flac"

    .line 186
    .line 187
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-eqz v4, :cond_c

    .line 192
    .line 193
    const-string v4, "OMX.lge.flac.decoder"

    .line 194
    .line 195
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_c

    .line 200
    .line 201
    const-string v4, "audio/x-lg-flac"

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_c
    const-string v4, "audio/ac3"

    .line 205
    .line 206
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-eqz v4, :cond_6

    .line 211
    .line 212
    const-string v4, "OMX.lge.ac3.decoder"

    .line 213
    .line 214
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-eqz v4, :cond_6

    .line 219
    .line 220
    const-string v4, "audio/lg-ac3"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    .line 222
    :goto_4
    if-eqz v4, :cond_0

    .line 223
    .line 224
    :try_start_2
    invoke-virtual {v6, v4}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-interface {v1, v3, v4, v9}, Lcom/google/android/gms/internal/ads/zztx;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    invoke-interface {v1, v3, v4, v9}, Lcom/google/android/gms/internal/ads/zztx;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 233
    .line 234
    .line 235
    move-result v11

    .line 236
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zztv;->zzc:Z

    .line 237
    .line 238
    if-nez v8, :cond_d

    .line 239
    .line 240
    if-nez v11, :cond_0

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_d
    if-nez v10, :cond_e

    .line 244
    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :cond_e
    :goto_5
    invoke-interface {v1, v2, v4, v9}, Lcom/google/android/gms/internal/ads/zztx;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    invoke-interface {v1, v2, v4, v9}, Lcom/google/android/gms/internal/ads/zztx;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zztv;->zzb:Z

    .line 256
    .line 257
    if-nez v11, :cond_f

    .line 258
    .line 259
    if-nez v10, :cond_0

    .line 260
    .line 261
    :cond_f
    if-eqz v11, :cond_10

    .line 262
    .line 263
    if-eqz v8, :cond_0

    .line 264
    .line 265
    const/4 v8, 0x1

    .line 266
    :cond_10
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 267
    .line 268
    const/16 v0, 0x1d

    .line 269
    .line 270
    if-lt v10, v0, :cond_11

    .line 271
    .line 272
    invoke-static {v6}, Lcom/applovin/impl/sdk/v0;->a(Landroid/media/MediaCodecInfo;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    goto :goto_6

    .line 277
    :catch_1
    move-exception v0

    .line 278
    move-object v1, v12

    .line 279
    goto/16 :goto_a

    .line 280
    .line 281
    :cond_11
    invoke-static {v6, v15}, Lcom/google/android/gms/internal/ads/zzuc;->zzi(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-nez v0, :cond_12

    .line 286
    .line 287
    const/4 v0, 0x1

    .line 288
    goto :goto_6

    .line 289
    :cond_12
    move/from16 v0, v17

    .line 290
    .line 291
    :goto_6
    invoke-static {v6, v15}, Lcom/google/android/gms/internal/ads/zzuc;->zzi(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v20

    .line 295
    const/16 v1, 0x1d

    .line 296
    .line 297
    if-lt v10, v1, :cond_13

    .line 298
    .line 299
    invoke-static {v6}, Lf6/j;->a(Landroid/media/MediaCodecInfo;)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    goto :goto_7

    .line 304
    :cond_13
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfuv;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    const-string v6, "omx.google."

    .line 313
    .line 314
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    if-nez v6, :cond_14

    .line 319
    .line 320
    const-string v6, "c2.android."

    .line 321
    .line 322
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-nez v6, :cond_14

    .line 327
    .line 328
    const-string v6, "c2.google."

    .line 329
    .line 330
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 334
    if-nez v1, :cond_14

    .line 335
    .line 336
    const/4 v1, 0x1

    .line 337
    goto :goto_7

    .line 338
    :cond_14
    move/from16 v1, v17

    .line 339
    .line 340
    :goto_7
    if-eqz v16, :cond_15

    .line 341
    .line 342
    if-eq v11, v8, :cond_16

    .line 343
    .line 344
    const/4 v10, 0x1

    .line 345
    goto :goto_8

    .line 346
    :cond_15
    move v10, v8

    .line 347
    :goto_8
    if-nez v16, :cond_17

    .line 348
    .line 349
    if-nez v11, :cond_17

    .line 350
    .line 351
    :cond_16
    const/16 v18, 0x0

    .line 352
    .line 353
    const/16 v19, 0x0

    .line 354
    .line 355
    move-object v6, v12

    .line 356
    move-object v7, v15

    .line 357
    move-object v8, v4

    .line 358
    move v10, v0

    .line 359
    move/from16 v11, v20

    .line 360
    .line 361
    move-object/from16 v21, v12

    .line 362
    .line 363
    move v12, v1

    .line 364
    move/from16 v22, v13

    .line 365
    .line 366
    move/from16 v13, v18

    .line 367
    .line 368
    move/from16 v18, v14

    .line 369
    .line 370
    move/from16 v14, v19

    .line 371
    .line 372
    :try_start_3
    invoke-static/range {v6 .. v14}, Lcom/google/android/gms/internal/ads/zzti;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzti;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 377
    .line 378
    .line 379
    goto :goto_b

    .line 380
    :catch_2
    move-exception v0

    .line 381
    move-object/from16 v1, v21

    .line 382
    .line 383
    goto :goto_a

    .line 384
    :cond_17
    move-object/from16 v21, v12

    .line 385
    .line 386
    move/from16 v22, v13

    .line 387
    .line 388
    move/from16 v18, v14

    .line 389
    .line 390
    if-nez v16, :cond_18

    .line 391
    .line 392
    if-eqz v10, :cond_18

    .line 393
    .line 394
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 397
    .line 398
    .line 399
    move-object/from16 v3, v21

    .line 400
    .line 401
    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    const/4 v13, 0x0

    .line 412
    const/4 v14, 0x1

    .line 413
    move-object v7, v15

    .line 414
    move-object v8, v4

    .line 415
    move v10, v0

    .line 416
    move/from16 v11, v20

    .line 417
    .line 418
    move v12, v1

    .line 419
    invoke-static/range {v6 .. v14}, Lcom/google/android/gms/internal/ads/zzti;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzti;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 424
    .line 425
    .line 426
    goto :goto_c

    .line 427
    :catch_3
    move-exception v0

    .line 428
    :goto_9
    move-object v1, v3

    .line 429
    goto :goto_a

    .line 430
    :catch_4
    move-exception v0

    .line 431
    move-object/from16 v3, v21

    .line 432
    .line 433
    goto :goto_9

    .line 434
    :goto_a
    :try_start_6
    const-string v2, "MediaCodecUtil"

    .line 435
    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    .line 440
    .line 441
    const-string v5, "Failed to query codec "

    .line 442
    .line 443
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    const-string v1, " ("

    .line 450
    .line 451
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v1, ")"

    .line 458
    .line 459
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzea;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 470
    :cond_18
    :goto_b
    add-int/lit8 v13, v22, 0x1

    .line 471
    .line 472
    move-object/from16 v0, p0

    .line 473
    .line 474
    move-object/from16 v1, p1

    .line 475
    .line 476
    move/from16 v14, v18

    .line 477
    .line 478
    goto/16 :goto_0

    .line 479
    .line 480
    :cond_19
    :goto_c
    return-object v5

    .line 481
    :goto_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zztw;

    .line 482
    .line 483
    const/4 v2, 0x0

    .line 484
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zztw;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzub;)V

    .line 485
    .line 486
    .line 487
    throw v1
.end method

.method private static zzh(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzua;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzts;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zzua;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static zzi(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/applovin/impl/sdk/w0;->a(Landroid/media/MediaCodecInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzay;->zzh(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfuv;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "arc."

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    const-string p1, "omx.google."

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_6

    .line 45
    .line 46
    const-string p1, "omx.ffmpeg."

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_6

    .line 53
    .line 54
    const-string p1, "omx.sec."

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    const-string p1, ".sw."

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_6

    .line 69
    .line 70
    :cond_3
    const-string p1, "omx.qcom.video.decoder.hevcswvdec"

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_6

    .line 77
    .line 78
    const-string p1, "c2.android."

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_6

    .line 85
    .line 86
    const-string p1, "c2.google."

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_6

    .line 93
    .line 94
    const-string p1, "omx."

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_5

    .line 101
    .line 102
    const-string p1, "c2."

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-nez p0, :cond_4

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    return v1

    .line 112
    :cond_5
    move v0, v1

    .line 113
    :cond_6
    :goto_0
    return v0
.end method
