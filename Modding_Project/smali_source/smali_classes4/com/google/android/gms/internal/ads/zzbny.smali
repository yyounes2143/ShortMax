.class final Lcom/google/android/gms/internal/ads/zzbny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcam;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzboh;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfhj;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzboi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzboh;Lcom/google/android/gms/internal/ads/zzfhj;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbny;->zza:Lcom/google/android/gms/internal/ads/zzboh;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbny;->zzb:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbny;->zzc:Lcom/google/android/gms/internal/ads/zzboi;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    const-string v0, "loadNewJavascriptEngine (failure): Trying to acquire lock"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbny;->zzc:Lcom/google/android/gms/internal/ads/zzboi;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzboi;->zzf(Lcom/google/android/gms/internal/ads/zzboi;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    const-string v2, "loadNewJavascriptEngine (failure): Lock acquired"

    .line 14
    .line 15
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzboi;->zzk(Lcom/google/android/gms/internal/ads/zzboi;I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "Failed loading new engine. Marking new engine destroyable."

    .line 23
    .line 24
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbny;->zza:Lcom/google/android/gms/internal/ads/zzboh;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzboh;->zzb()V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbex;->zzd:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzboi;->zze(Lcom/google/android/gms/internal/ads/zzboi;)Lcom/google/android/gms/internal/ads/zzfhx;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzboi;->zze(Lcom/google/android/gms/internal/ads/zzboi;)Lcom/google/android/gms/internal/ads/zzfhx;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbny;->zzb:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 57
    .line 58
    const-string v3, "Failed loading new engine"

    .line 59
    .line 60
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 61
    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhj;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 65
    .line 66
    .line 67
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfhj;->zzm()Lcom/google/android/gms/internal/ads/zzfhn;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfhx;->zzc(Lcom/google/android/gms/internal/ads/zzfhn;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    const-string v0, "loadNewJavascriptEngine (failure): Lock released"

    .line 79
    .line 80
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw v0
.end method
