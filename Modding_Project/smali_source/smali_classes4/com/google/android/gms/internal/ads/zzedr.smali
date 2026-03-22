.class public final Lcom/google/android/gms/internal/ads/zzedr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfcd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzfca;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/ads/internal/client/zzv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzd:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zze:Lcom/google/android/gms/internal/ads/zzfca;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzf:Lcom/google/android/gms/ads/internal/client/zzv;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzb:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zza:Ljava/util/List;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzc:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzfca;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzdR:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfca;->zzap:Ljava/lang/String;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfca;->zzw:Ljava/lang/String;

    .line 23
    .line 24
    return-object p0
.end method

.method private final declared-synchronized zzk(Lcom/google/android/gms/internal/ads/zzfca;I)V
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzb:Ljava/util/Map;

    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzedr;->zzj(Lcom/google/android/gms/internal/ads/zzfca;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_1
    new-instance v7, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzv:Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :catch_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    :try_start_2
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v7, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :try_start_3
    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzF:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzG:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v10, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzH:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v11, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzI:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzv;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzE:Ljava/lang/String;

    .line 60
    .line 61
    const-wide/16 v4, 0x0

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    move-object v2, v0

    .line 65
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/ads/internal/client/zzv;-><init>(Ljava/lang/String;JLcom/google/android/gms/ads/internal/client/zze;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    .line 67
    .line 68
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedr;->zza:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_1
    move-exception p1

    .line 75
    :try_start_5
    const-string p2, "AdapterResponseInfoCollector.addAdapterResponseInfoEntryAtLocation"

    .line 76
    .line 77
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzb:Ljava/util/Map;

    .line 85
    .line 86
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    .line 88
    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 92
    throw p1
.end method

.method private final zzl(Lcom/google/android/gms/internal/ads/zzfca;JLcom/google/android/gms/ads/internal/client/zze;Z)V
    .locals 3
    .param p4    # Lcom/google/android/gms/ads/internal/client/zze;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzb:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzedr;->zzj(Lcom/google/android/gms/internal/ads/zzfca;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzedr;->zze:Lcom/google/android/gms/internal/ads/zzfca;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedr;->zze:Lcom/google/android/gms/internal/ads/zzfca;

    .line 19
    .line 20
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzv;

    .line 25
    .line 26
    iput-wide p2, p1, Lcom/google/android/gms/ads/internal/client/zzv;->zzb:J

    .line 27
    .line 28
    iput-object p4, p1, Lcom/google/android/gms/ads/internal/client/zzv;->zzc:Lcom/google/android/gms/ads/internal/client/zze;

    .line 29
    .line 30
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbde;->zzgX:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    if-eqz p5, :cond_2

    .line 49
    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzf:Lcom/google/android/gms/ads/internal/client/zzv;

    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzv;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzf:Lcom/google/android/gms/ads/internal/client/zzv;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcvr;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcvr;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedr;->zze:Lcom/google/android/gms/internal/ads/zzfca;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzd:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzc:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v3, p0

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcvr;-><init>(Lcom/google/android/gms/internal/ads/zzfca;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzedr;Lcom/google/android/gms/internal/ads/zzfcd;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

.method public final zzc()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zza:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzfca;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zza:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzedr;->zzk(Lcom/google/android/gms/internal/ads/zzfca;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzfca;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzb:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzedr;->zzj(Lcom/google/android/gms/internal/ads/zzfca;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedr;->zza:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lt p1, v2, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzf:Lcom/google/android/gms/ads/internal/client/zzv;

    .line 26
    .line 27
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :cond_1
    if-ltz p1, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-lt p1, v0, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzv;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzf:Lcom/google/android/gms/ads/internal/client/zzv;

    .line 47
    .line 48
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-ge p1, v0, :cond_3

    .line 55
    .line 56
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzv;

    .line 61
    .line 62
    const-wide/16 v2, 0x0

    .line 63
    .line 64
    iput-wide v2, v0, Lcom/google/android/gms/ads/internal/client/zzv;->zzb:J

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    iput-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzv;->zzc:Lcom/google/android/gms/ads/internal/client/zze;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :goto_1
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzfca;JLcom/google/android/gms/ads/internal/client/zze;)V
    .locals 6
    .param p4    # Lcom/google/android/gms/ads/internal/client/zze;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p2

    .line 5
    move-object v4, p4

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzedr;->zzl(Lcom/google/android/gms/internal/ads/zzfca;JLcom/google/android/gms/ads/internal/client/zze;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzfca;JLcom/google/android/gms/ads/internal/client/zze;)V
    .locals 6
    .param p4    # Lcom/google/android/gms/ads/internal/client/zze;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x1

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzedr;->zzl(Lcom/google/android/gms/internal/ads/zzfca;JLcom/google/android/gms/ads/internal/client/zze;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final declared-synchronized zzh(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzb:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzv;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedr;->zza:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_3

    .line 29
    :catch_0
    move-exception v1

    .line 30
    :try_start_2
    const-string v2, "AdapterResponseInfoCollector.replaceAdapterResponseInfoEntry"

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzb:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lcom/google/android/gms/internal/ads/zzfca;

    .line 59
    .line 60
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzedr;->zzk(Lcom/google/android/gms/internal/ads/zzfca;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_2
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    throw p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzfcd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedr;->zzd:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 2
    .line 3
    return-void
.end method
