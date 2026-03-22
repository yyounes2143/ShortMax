.class public final Lcom/google/android/gms/internal/ads/zzcdf;
.super Lcom/google/android/gms/ads/internal/util/zzb;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzccb;

.field final zzb:Lcom/google/android/gms/internal/ads/zzcdn;

.field private final zzc:Ljava/lang/String;

.field private final zzd:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzccb;Lcom/google/android/gms/internal/ads/zzcdn;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzb;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zza:Lcom/google/android/gms/internal/ads/zzccb;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzb:Lcom/google/android/gms/internal/ads/zzcdn;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzc:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzd:[Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzA()Lcom/google/android/gms/internal/ads/zzcdg;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcdg;->zzb(Lcom/google/android/gms/internal/ads/zzcdf;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzcdf;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzb:Lcom/google/android/gms/internal/ads/zzcdn;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzc:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzd:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzw(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcdf;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzb:Lcom/google/android/gms/internal/ads/zzcdn;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzc:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzd:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdn;->zzu(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfrw;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcde;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcde;-><init>(Lcom/google/android/gms/internal/ads/zzcdf;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfrw;

    .line 23
    .line 24
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcde;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcde;-><init>(Lcom/google/android/gms/internal/ads/zzcdf;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzci:Lcom/google/android/gms/internal/ads/zzbcv;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzb:Lcom/google/android/gms/internal/ads/zzcdn;

    .line 20
    .line 21
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzcdw;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaf;->zzf:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 26
    .line 27
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdd;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdd;-><init>(Lcom/google/android/gms/internal/ads/zzcdf;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/e;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/util/zzb;->zzb()Lcom/google/common/util/concurrent/e;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdf;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
