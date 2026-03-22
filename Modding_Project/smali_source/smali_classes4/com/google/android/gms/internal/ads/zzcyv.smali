.class public final Lcom/google/android/gms/internal/ads/zzcyv;
.super Lcom/google/android/gms/internal/ads/zzdbt;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzc:Lcom/google/android/gms/common/util/Clock;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdsj;

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:Z

.field private zzj:Ljava/util/concurrent/ScheduledFuture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:Ljava/util/concurrent/ScheduledFuture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbt;-><init>(Ljava/util/Set;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zze:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzf:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzg:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzh:J

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzi:Z

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzc:Lcom/google/android/gms/common/util/Clock;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzd:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 26
    .line 27
    return-void
.end method

.method private final declared-synchronized zzf(J)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzj:Ljava/util/concurrent/ScheduledFuture;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzj:Ljava/util/concurrent/ScheduledFuture;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzc:Lcom/google/android/gms/common/util/Clock;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    add-long/2addr v0, p1

    .line 28
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zze:J

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    .line 32
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcys;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzcys;-><init>(Lcom/google/android/gms/internal/ads/zzcyv;Lcom/google/android/gms/internal/ads/zzcyu;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    .line 40
    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzj:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method

.method private final declared-synchronized zzg(J)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzk:Ljava/util/concurrent/ScheduledFuture;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzk:Ljava/util/concurrent/ScheduledFuture;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzc:Lcom/google/android/gms/common/util/Clock;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    add-long/2addr v0, p1

    .line 28
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzf:J

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    .line 32
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcyt;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzcyt;-><init>(Lcom/google/android/gms/internal/ads/zzcyv;Lcom/google/android/gms/internal/ads/zzcyu;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    .line 40
    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzk:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method


# virtual methods
.method public final declared-synchronized zza()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzi:Z

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcyv;->zzf(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public final declared-synchronized zzb()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzi:Z

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzj:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    .line 8
    const-wide/16 v1, -0x1

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzj:Ljava/util/concurrent/ScheduledFuture;

    .line 20
    .line 21
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 22
    .line 23
    .line 24
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zze:J

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzc:Lcom/google/android/gms/common/util/Clock;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    sub-long/2addr v4, v6

    .line 33
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzg:J

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzg:J

    .line 39
    .line 40
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzk:Ljava/util/concurrent/ScheduledFuture;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzk:Ljava/util/concurrent/ScheduledFuture;

    .line 51
    .line 52
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 53
    .line 54
    .line 55
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzf:J

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzc:Lcom/google/android/gms/common/util/Clock;

    .line 58
    .line 59
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    sub-long/2addr v0, v2

    .line 64
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzh:J

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzh:J

    .line 68
    .line 69
    :goto_1
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :cond_2
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw v0
.end method

.method public final declared-synchronized zzc()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzi:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzg:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzj:Ljava/util/concurrent/ScheduledFuture;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzg:J

    .line 25
    .line 26
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcyv;->zzf(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzh:J

    .line 33
    .line 34
    cmp-long v0, v0, v2

    .line 35
    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzk:Ljava/util/concurrent/ScheduledFuture;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzh:J

    .line 49
    .line 50
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcyv;->zzg(J)V

    .line 51
    .line 52
    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzi:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :cond_2
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw v0
.end method

.method public final declared-synchronized zzd(I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "In scheduleRefresh: "

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-gtz p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    int-to-long v1, p1

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzi:Z

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzg:J

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    cmp-long p1, v2, v4

    .line 42
    .line 43
    if-lez p1, :cond_1

    .line 44
    .line 45
    cmp-long p1, v0, v2

    .line 46
    .line 47
    if-gez p1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-wide v0, v2

    .line 51
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzg:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_3

    .line 57
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzc:Lcom/google/android/gms/common/util/Clock;

    .line 58
    .line 59
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zznE:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 64
    .line 65
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zze:J

    .line 82
    .line 83
    cmp-long p1, v2, v4

    .line 84
    .line 85
    if-gez p1, :cond_3

    .line 86
    .line 87
    sub-long/2addr v4, v2

    .line 88
    cmp-long p1, v4, v0

    .line 89
    .line 90
    if-lez p1, :cond_5

    .line 91
    .line 92
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcyv;->zzf(J)V

    .line 93
    .line 94
    .line 95
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zznQ:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 96
    .line 97
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzd:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsj;->zza()Lcom/google/android/gms/internal/ads/zzdsi;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v0, "action"

    .line 120
    .line 121
    const-string v1, "rtnc"

    .line 122
    .line 123
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsi;->zzi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 131
    :cond_4
    :try_start_2
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zze:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .line 133
    cmp-long p1, v2, v4

    .line 134
    .line 135
    if-gtz p1, :cond_6

    .line 136
    .line 137
    sub-long/2addr v4, v2

    .line 138
    cmp-long p1, v4, v0

    .line 139
    .line 140
    if-lez p1, :cond_5

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_5
    :goto_1
    monitor-exit p0

    .line 144
    return-void

    .line 145
    :cond_6
    :goto_2
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcyv;->zzf(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    .line 147
    .line 148
    monitor-exit p0

    .line 149
    return-void

    .line 150
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    throw p1
.end method

.method public final declared-synchronized zze(I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "In scheduleShowRefreshedAd: "

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-gtz p1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    int-to-long v1, p1

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzi:Z

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzh:J

    .line 37
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    cmp-long p1, v2, v4

    .line 41
    .line 42
    if-lez p1, :cond_1

    .line 43
    .line 44
    cmp-long p1, v0, v2

    .line 45
    .line 46
    if-gez p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-wide v0, v2

    .line 50
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzh:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzc:Lcom/google/android/gms/common/util/Clock;

    .line 57
    .line 58
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zznE:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 63
    .line 64
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzf:J

    .line 81
    .line 82
    cmp-long p1, v2, v4

    .line 83
    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    const-string p1, "In scheduleShowRefreshedAd: currentTimeMs = scheduledShowTimeMs"

    .line 87
    .line 88
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzf:J

    .line 92
    .line 93
    cmp-long p1, v2, v4

    .line 94
    .line 95
    if-gez p1, :cond_4

    .line 96
    .line 97
    sub-long/2addr v4, v2

    .line 98
    cmp-long p1, v4, v0

    .line 99
    .line 100
    if-lez p1, :cond_6

    .line 101
    .line 102
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcyv;->zzg(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 107
    :cond_5
    :try_start_2
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcyv;->zzf:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .line 109
    cmp-long p1, v2, v4

    .line 110
    .line 111
    if-gtz p1, :cond_7

    .line 112
    .line 113
    sub-long/2addr v4, v2

    .line 114
    cmp-long p1, v4, v0

    .line 115
    .line 116
    if-lez p1, :cond_6

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    :goto_1
    monitor-exit p0

    .line 120
    return-void

    .line 121
    :cond_7
    :goto_2
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcyv;->zzg(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    .line 123
    .line 124
    monitor-exit p0

    .line 125
    return-void

    .line 126
    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    throw p1
.end method
