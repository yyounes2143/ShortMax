.class public final Lcom/google/android/gms/internal/ads/zzcdb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkf;


# instance fields
.field private zza:Z


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

.method private static zzb(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I
    .locals 1

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    .line 17
    .line 18
    .line 19
    move-result p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "Could not parse "

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, " in a video GMSG: "

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 47
    .line 48
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v0, "Parse pixels for "

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, ", got string "

    .line 71
    .line 72
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, ", int "

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p1, "."

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    return p3
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzcbp;Ljava/util/Map;)V
    .locals 5

    .line 1
    const-string v0, "minBufferMs"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "maxBufferMs"

    .line 10
    .line 11
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "bufferForPlaybackMs"

    .line 18
    .line 19
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 26
    .line 27
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    const-string v4, "socketReceiveBufferSize"

    .line 34
    .line 35
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzcbp;->zzB(I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzcbp;->zzA(I)V

    .line 57
    .line 58
    .line 59
    :cond_1
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzcbp;->zzy(I)V

    .line 66
    .line 67
    .line 68
    :cond_2
    if-eqz v3, :cond_3

    .line 69
    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzcbp;->zzz(I)V

    .line 75
    .line 76
    .line 77
    :cond_3
    if-eqz p1, :cond_4

    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcbp;->zzD(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catch_0
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string p1, "Could not parse buffer parameters in loadControl video GMSG: (%s, %s)"

    .line 92
    .line 93
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 98
    .line 99
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    .line 1
    move-object/from16 v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzccb;

    .line 2
    const-string v4, "action"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 3
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Action missing from video GMSG."

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    const-string v5, "playerId"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 7
    :goto_0
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->zzn()Lcom/google/android/gms/internal/ads/zzcbq;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 8
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->zzn()Lcom/google/android/gms/internal/ads/zzcbq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcbq;->zzb()Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const-string v8, "load"

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 9
    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 10
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Event intended for player %s, but sent to player %d - event ignored"

    .line 12
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_2
    const/4 v6, 0x3

    .line 15
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzm(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 16
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v9, "google.afma.Notify_dt"

    .line 17
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Video GMSG: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    :cond_5
    const-string v6, "background"

    .line 20
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v9, "color"

    if-eqz v6, :cond_7

    .line 21
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "Color parameter missing from background video GMSG."

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 24
    :cond_6
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 25
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzccb;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 26
    :catch_0
    const-string v1, "Invalid color parameter in background video GMSG."

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_7
    const-string v6, "playerBackground"

    .line 29
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 30
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v1, "Color parameter missing from playerBackground video GMSG."

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 33
    :cond_8
    :try_start_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 34
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzccb;->zzB(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 35
    :catch_1
    const-string v1, "Invalid color parameter in playerBackground video GMSG."

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_9
    const-string v6, "decoderProps"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "onVideoEvent"

    const-string v11, "event"

    const/4 v12, 0x0

    if-eqz v9, :cond_c

    .line 38
    const-string v4, "mimeTypes"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_a

    const-string v1, "No MIME types specified for decoder properties inspection."

    .line 39
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    .line 40
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    invoke-interface {v1, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "error"

    const-string v4, "missingMimeTypes"

    .line 42
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-interface {v3, v10, v1}, Lcom/google/android/gms/internal/ads/zzbna;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_a
    new-instance v5, Ljava/util/HashMap;

    .line 44
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v7, ","

    .line 45
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    :goto_3
    if-ge v12, v7, :cond_b

    aget-object v8, v1, v12

    .line 46
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/ads/internal/util/zzcj;->zza(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v12, v2

    goto :goto_3

    :cond_b
    new-instance v1, Ljava/util/HashMap;

    .line 47
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    invoke-interface {v1, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-interface {v3, v10, v1}, Lcom/google/android/gms/internal/ads/zzbna;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 51
    :cond_c
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->zzn()Lcom/google/android/gms/internal/ads/zzcbq;

    move-result-object v6

    if-nez v6, :cond_d

    const-string v1, "Could not get underlay container for a video GMSG."

    .line 52
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_d
    const-string v9, "new"

    .line 53
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v13, "position"

    .line 54
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "y"

    const-string v15, "x"

    if-nez v9, :cond_2e

    if-eqz v13, :cond_e

    goto/16 :goto_a

    .line 55
    :cond_e
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->zzq()Lcom/google/android/gms/internal/ads/zzcgi;

    move-result-object v9

    const-string v13, "currentTime"

    if-eqz v9, :cond_12

    const-string v7, "timeupdate"

    .line 56
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 57
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_f

    const-string v1, "currentTime parameter missing from timeupdate video GMSG."

    .line 58
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_f
    :try_start_2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 60
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzcgi;->zzt(F)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    .line 61
    :catch_2
    const-string v2, "Could not parse currentTime parameter from timeupdate video GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_10
    const-string v7, "skip"

    .line 64
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_4

    .line 65
    :cond_11
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzcgi;->zzu()V

    return-void

    .line 66
    :cond_12
    :goto_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcbq;->zza()Lcom/google/android/gms/internal/ads/zzcbp;

    move-result-object v6

    if-nez v6, :cond_13

    new-instance v1, Ljava/util/HashMap;

    .line 67
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "no_video_view"

    .line 68
    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {v3, v10, v1}, Lcom/google/android/gms/internal/ads/zzbna;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_13
    const-string v7, "click"

    .line 70
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 71
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 72
    invoke-static {v2, v1, v15, v12}, Lcom/google/android/gms/internal/ads/zzcdb;->zzb(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    .line 73
    invoke-static {v2, v1, v14, v12}, Lcom/google/android/gms/internal/ads/zzcdb;->zzb(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    int-to-float v12, v3

    int-to-float v13, v1

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-wide v7, v9

    .line 75
    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 76
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzcbp;->zzx(Landroid/view/MotionEvent;)V

    .line 77
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 78
    :cond_14
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const-string v2, "time"

    .line 79
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_15

    const-string v1, "Time parameter missing from currentTime video GMSG."

    .line 80
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_15
    :try_start_3
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 82
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzcbp;->zzw(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    .line 83
    :catch_3
    const-string v2, "Could not parse time parameter from currentTime video GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_16
    const-string v7, "hide"

    .line 86
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v1, 0x4

    .line 87
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_17
    const-string v7, "remove"

    .line 88
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/16 v1, 0x8

    .line 89
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 90
    :cond_18
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 91
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzcbp;->zzr(Ljava/lang/Integer;)V

    return-void

    :cond_19
    const-string v5, "loadControl"

    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 93
    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzcdb;->zzc(Lcom/google/android/gms/internal/ads/zzcbp;Ljava/util/Map;)V

    return-void

    .line 94
    :cond_1a
    const-string v5, "muted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 95
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 96
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcbp;->zzs()V

    return-void

    .line 97
    :cond_1b
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcbp;->zzI()V

    return-void

    :cond_1c
    const-string v5, "pause"

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 99
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcbp;->zzu()V

    return-void

    :cond_1d
    const-string v5, "play"

    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 101
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcbp;->zzv()V

    return-void

    :cond_1e
    const-string v5, "show"

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 103
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 104
    :cond_1f
    const-string v5, "src"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 105
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 106
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbde;->zzcn:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 107
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v5

    .line 108
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    goto :goto_5

    .line 109
    :cond_20
    const-string v1, "Src parameter missing from src video GMSG."

    .line 110
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 111
    :cond_21
    :goto_5
    const-string v5, "periodicReportIntervalMs"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    :goto_6
    const/4 v7, 0x0

    goto :goto_7

    .line 112
    :cond_22
    :try_start_4
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    .line 113
    :catch_4
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Video gmsg invalid numeric parameter \'periodicReportIntervalMs\': "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    goto :goto_6

    .line 115
    :goto_7
    new-array v5, v2, [Ljava/lang/String;

    aput-object v4, v5, v12

    const-string v8, "demuxed"

    .line 116
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 117
    :try_start_5
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    .line 118
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v12

    .line 119
    :goto_8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_25

    .line 120
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/internal/ads/zzbde;->zzcn:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 121
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v11

    .line 122
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_24

    .line 123
    :cond_23
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/2addr v9, v2

    goto :goto_8

    :cond_25
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbde;->zzcn:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 124
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v5

    .line 125
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_26

    new-instance v5, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "All demuxed URLs are empty for playback: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_26
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v8, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    .line 129
    :catch_5
    const-string v5, "Malformed demuxed URL list for playback: "

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    new-array v5, v2, [Ljava/lang/String;

    aput-object v4, v5, v12

    :cond_27
    :goto_9
    if-eqz v7, :cond_28

    .line 131
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzccb;->zzA(I)V

    .line 132
    :cond_28
    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzcbp;->zzE(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 133
    :cond_29
    const-string v5, "touchMove"

    .line 134
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 135
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "dx"

    .line 136
    invoke-static {v4, v1, v5, v12}, Lcom/google/android/gms/internal/ads/zzcdb;->zzb(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    const-string v7, "dy"

    .line 137
    invoke-static {v4, v1, v7, v12}, Lcom/google/android/gms/internal/ads/zzcdb;->zzb(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    int-to-float v4, v5

    int-to-float v1, v1

    .line 138
    invoke-virtual {v6, v4, v1}, Lcom/google/android/gms/internal/ads/zzcbp;->zzH(FF)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcdb;->zza:Z

    if-nez v1, :cond_35

    .line 139
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->zzdi()V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzcdb;->zza:Z

    return-void

    .line 140
    :cond_2a
    const-string v2, "volume"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 141
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2b

    const-string v1, "Level parameter missing from volume video GMSG."

    .line 142
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 143
    :cond_2b
    :try_start_6
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 144
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzcbp;->zzG(F)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    return-void

    .line 145
    :catch_6
    const-string v2, "Could not parse volume parameter from volume video GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 147
    :cond_2c
    const-string v1, "watermark"

    .line 148
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 149
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcbp;->zzp()V

    return-void

    :cond_2d
    const-string v1, "Unknown video action: "

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 151
    :cond_2e
    :goto_a
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 152
    invoke-static {v2, v1, v15, v12}, Lcom/google/android/gms/internal/ads/zzcdb;->zzb(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v13

    .line 153
    invoke-static {v2, v1, v14, v12}, Lcom/google/android/gms/internal/ads/zzcdb;->zzb(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v14

    const-string v4, "w"

    const/4 v5, -0x1

    .line 154
    invoke-static {v2, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzcdb;->zzb(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    .line 155
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zzeg:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 156
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v8

    .line 157
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v10, "."

    if-eqz v8, :cond_30

    if-ne v4, v5, :cond_2f

    .line 158
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->zzh()I

    move-result v4

    :goto_b
    move v15, v4

    goto :goto_c

    .line 159
    :cond_2f
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->zzh()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_b

    .line 160
    :cond_30
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v8

    if-eqz v8, :cond_31

    .line 161
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->zzh()I

    move-result v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Calculate width with original width "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", videoHost.getVideoBoundingWidth() "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", x "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 162
    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 163
    :cond_31
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->zzh()I

    move-result v8

    sub-int/2addr v8, v13

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_b

    .line 164
    :goto_c
    const-string v4, "h"

    .line 165
    invoke-static {v2, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzcdb;->zzb(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v2

    .line 166
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v4

    .line 167
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_33

    if-ne v2, v5, :cond_32

    .line 168
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->zzg()I

    move-result v2

    goto :goto_d

    .line 169
    :cond_32
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->zzg()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_d

    .line 170
    :cond_33
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 171
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->zzg()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calculate height with original height "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", videoHost.getVideoBoundingHeight() "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", y "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 173
    :cond_34
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzccb;->zzg()I

    move-result v3

    sub-int/2addr v3, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 174
    :goto_d
    :try_start_7
    const-string v3, "player"

    .line 175
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    move/from16 v17, v12

    const-string v3, "spherical"

    .line 176
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v9, :cond_36

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcbq;->zza()Lcom/google/android/gms/internal/ads/zzcbp;

    move-result-object v3

    if-nez v3, :cond_36

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcca;

    .line 177
    const-string v4, "flags"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzcca;-><init>(Ljava/lang/String;)V

    move-object v12, v6

    move/from16 v16, v2

    move-object/from16 v19, v3

    .line 178
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/gms/internal/ads/zzcbq;->zzd(IIIIIZLcom/google/android/gms/internal/ads/zzcca;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcbq;->zza()Lcom/google/android/gms/internal/ads/zzcbp;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 179
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcdb;->zzc(Lcom/google/android/gms/internal/ads/zzcbp;Ljava/util/Map;)V

    :cond_35
    return-void

    .line 180
    :cond_36
    invoke-virtual {v6, v13, v14, v15, v2}, Lcom/google/android/gms/internal/ads/zzcbq;->zzc(IIII)V

    return-void
.end method
