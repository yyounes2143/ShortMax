.class final Lcom/google/android/gms/internal/ads/zzbnx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcao;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzboh;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfhj;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzboi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzboh;Lcom/google/android/gms/internal/ads/zzfhj;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnx;->zza:Lcom/google/android/gms/internal/ads/zzboh;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbnx;->zzb:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnx;->zzc:Lcom/google/android/gms/internal/ads/zzboi;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnd;

    .line 2
    .line 3
    const-string p1, "loadNewJavascriptEngine (success): Trying to acquire lock"

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnx;->zzc:Lcom/google/android/gms/internal/ads/zzboi;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzboi;->zzf(Lcom/google/android/gms/internal/ads/zzboi;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    const-string v1, "loadNewJavascriptEngine (success): Lock acquired"

    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzboi;->zzk(Lcom/google/android/gms/internal/ads/zzboi;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzboi;->zzc(Lcom/google/android/gms/internal/ads/zzboi;)Lcom/google/android/gms/internal/ads/zzboh;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnx;->zza:Lcom/google/android/gms/internal/ads/zzboh;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzboi;->zzc(Lcom/google/android/gms/internal/ads/zzboi;)Lcom/google/android/gms/internal/ads/zzboh;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eq v1, v2, :cond_0

    .line 37
    .line 38
    const-string v1, "New JS engine is loaded, marking previous one as destroyable."

    .line 39
    .line 40
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzboi;->zzc(Lcom/google/android/gms/internal/ads/zzboi;)Lcom/google/android/gms/internal/ads/zzboh;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzboh;->zzb()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnx;->zza:Lcom/google/android/gms/internal/ads/zzboh;

    .line 54
    .line 55
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzboi;->zzj(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzboh;)V

    .line 56
    .line 57
    .line 58
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbex;->zzd:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzboi;->zze(Lcom/google/android/gms/internal/ads/zzboi;)Lcom/google/android/gms/internal/ads/zzfhx;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzboi;->zze(Lcom/google/android/gms/internal/ads/zzboi;)Lcom/google/android/gms/internal/ads/zzfhx;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnx;->zzb:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 83
    .line 84
    const/4 v2, 0x1

    .line 85
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfhj;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 86
    .line 87
    .line 88
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfhj;->zzm()Lcom/google/android/gms/internal/ads/zzfhn;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfhx;->zzc(Lcom/google/android/gms/internal/ads/zzfhn;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    const-string p1, "loadNewJavascriptEngine (success): Lock released"

    .line 97
    .line 98
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    throw p1
.end method
