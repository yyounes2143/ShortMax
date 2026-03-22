.class public final Lcom/google/android/gms/internal/ads/zzbvm;
.super Lcom/google/android/gms/internal/ads/zzbvk;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Landroid/content/Context;

.field private zzc:Landroid/content/SharedPreferences;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbom;

.field private final zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbom;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvk;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zza:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzb:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzd:Lcom/google/android/gms/internal/ads/zzbom;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbvm;Lorg/json/JSONObject;)Ljava/lang/Void;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zza:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb()Lcom/google/android/gms/internal/ads/zzbcx;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzb:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcx;->zza(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zza()Lcom/google/android/gms/internal/ads/zzbcw;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    sget v1, Lcom/google/android/gms/internal/ads/zzbeu;->zza:I

    .line 27
    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zza()Lcom/google/android/gms/internal/ads/zzbcw;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v1, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzbcw;->zzf(Landroid/content/SharedPreferences$Editor;ILorg/json/JSONObject;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb()Lcom/google/android/gms/internal/ads/zzbcx;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzc:Landroid/content/SharedPreferences;

    .line 43
    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    const-string p1, "js_last_update"

    .line 59
    .line 60
    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method public static zzc(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfe;->zzb:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v1, "package_name"

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string v1, "js"

    .line 30
    .line 31
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    const-string p1, "mf"

    .line 37
    .line 38
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfe;->zzc:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    const-string p1, "cl"

    .line 48
    .line 49
    const-string v1, "785558560"

    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    const-string p1, "rapid_rc"

    .line 55
    .line 56
    const-string v1, "dev"

    .line 57
    .line 58
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    const-string p1, "rapid_rollup"

    .line 62
    .line 63
    const-string v1, "HEAD"

    .line 64
    .line 65
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    const-string p1, "admob_module_version"

    .line 69
    .line 70
    const v1, 0xbdfcb8

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string p1, "dynamite_local_version"

    .line 77
    .line 78
    const v2, 0xf0d4d50

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    const-string p1, "dynamite_version"

    .line 85
    .line 86
    const-string v2, "com.google.android.gms.ads.dynamite"

    .line 87
    .line 88
    invoke-static {p0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    const-string p0, "container_version"

    .line 96
    .line 97
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    :catch_0
    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/e;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzc:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzb:Landroid/content/Context;

    .line 13
    .line 14
    const-string v2, "google_ads_flags_meta"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzc:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzc:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    const-wide/16 v1, 0x0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const-string v3, "js_last_update"

    .line 32
    .line 33
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    sub-long/2addr v3, v1

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfe;->zzd:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/Long;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    cmp-long v0, v3, v0

    .line 59
    .line 60
    if-gez v0, :cond_2

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzb:Landroid/content/Context;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zze:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvm;->zzd:Lcom/google/android/gms/internal/ads/zzbom;

    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbvm;->zzc(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzbom;->zzb(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbvl;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbvl;-><init>(Lcom/google/android/gms/internal/ads/zzbvm;)V

    .line 85
    .line 86
    .line 87
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 88
    .line 89
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw v1
.end method
