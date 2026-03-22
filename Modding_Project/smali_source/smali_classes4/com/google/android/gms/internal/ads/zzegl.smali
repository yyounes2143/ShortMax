.class public final Lcom/google/android/gms/internal/ads/zzegl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcrd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzehb;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfju;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzgeh;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzh:Lcom/google/android/gms/internal/ads/zzegm;

.field private zzi:Lcom/google/android/gms/internal/ads/zzfcn;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzcrd;Lcom/google/android/gms/internal/ads/zzehb;Lcom/google/android/gms/internal/ads/zzfju;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgeh;->zze()Lcom/google/android/gms/internal/ads/zzgeh;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzf:Lcom/google/android/gms/internal/ads/zzgeh;

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegl;->zza:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzc:Lcom/google/android/gms/internal/ads/zzcrd;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzd:Lcom/google/android/gms/internal/ads/zzehb;

    .line 24
    .line 25
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegl;->zze:Lcom/google/android/gms/internal/ads/zzfju;

    .line 26
    .line 27
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzegl;)Lcom/google/android/gms/internal/ads/zzegm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzh:Lcom/google/android/gms/internal/ads/zzegm;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzegl;Lcom/google/android/gms/internal/ads/zzfca;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzegl;->zze(Lcom/google/android/gms/internal/ads/zzfca;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzfca;)Lcom/google/common/util/concurrent/e;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfca;->zza:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzc:Lcom/google/android/gms/internal/ads/zzcrd;

    .line 21
    .line 22
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzb:I

    .line 23
    .line 24
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzcrd;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzedm;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzi:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 31
    .line 32
    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzedm;->zzb(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzi:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 39
    .line 40
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzedm;->zza(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Lcom/google/common/util/concurrent/e;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzR:I

    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    .line 48
    int-to-long v2, p1

    .line 49
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    .line 51
    invoke-static {v0, v2, v3, p1, v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzo(Lcom/google/common/util/concurrent/e;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/e;

    .line 52
    .line 53
    .line 54
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    .line 56
    return-object p1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 60
    .line 61
    const/4 v0, 0x3

    .line 62
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 66
    .line 67
    .line 68
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    monitor-exit p0

    .line 70
    return-object p1

    .line 71
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p1
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzfca;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/ads/zzfca;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzegl;->zzd(Lcom/google/android/gms/internal/ads/zzfca;)Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegl;->zze:Lcom/google/android/gms/internal/ads/zzfju;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzd:Lcom/google/android/gms/internal/ads/zzehb;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzi:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 10
    .line 11
    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzehb;->zzf(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfju;)Lcom/google/common/util/concurrent/e;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/zzegk;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzegk;-><init>(Lcom/google/android/gms/internal/ads/zzegl;Lcom/google/android/gms/internal/ads/zzfca;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegl;->zza:Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzr(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgdj;Ljava/util/concurrent/Executor;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzfcn;)Lcom/google/common/util/concurrent/e;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcn;->zzb:Lcom/google/android/gms/internal/ads/zzfcm;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcm;->zza:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzf:Lcom/google/android/gms/internal/ads/zzgeh;

    .line 22
    .line 23
    new-instance v1, Lcom/google/android/gms/internal/ads/zzehf;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehi;->zzc(Lcom/google/android/gms/internal/ads/zzfcn;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgeh;->zzd(Ljava/lang/Throwable;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzi:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzd:Lcom/google/android/gms/internal/ads/zzehb;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzf:Lcom/google/android/gms/internal/ads/zzgeh;

    .line 44
    .line 45
    new-instance v3, Lcom/google/android/gms/internal/ads/zzegm;

    .line 46
    .line 47
    invoke-direct {v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzegm;-><init>(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzehb;Lcom/google/android/gms/internal/ads/zzgeh;)V

    .line 48
    .line 49
    .line 50
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzh:Lcom/google/android/gms/internal/ads/zzegm;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzehb;->zzk(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzh:Lcom/google/android/gms/internal/ads/zzegm;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegm;->zza()Lcom/google/android/gms/internal/ads/zzfca;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_0
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzegl;->zze(Lcom/google/android/gms/internal/ads/zzfca;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzh:Lcom/google/android/gms/internal/ads/zzegm;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegm;->zza()Lcom/google/android/gms/internal/ads/zzfca;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzf:Lcom/google/android/gms/internal/ads/zzgeh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-object p1

    .line 77
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p1
.end method
