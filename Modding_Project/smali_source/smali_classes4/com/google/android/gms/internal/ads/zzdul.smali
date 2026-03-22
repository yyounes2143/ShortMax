.class final Lcom/google/android/gms/internal/ads/zzdul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdun;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdun;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdul;->zza:Lcom/google/android/gms/internal/ads/zzdun;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdul;->zza:Lcom/google/android/gms/internal/ads/zzdun;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdun;->zzn(Lcom/google/android/gms/internal/ads/zzdun;Z)V

    .line 6
    .line 7
    .line 8
    const-string v0, "com.google.android.gms.ads.MobileAds"

    .line 9
    .line 10
    const-string v1, "Internal Error."

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdun;->zza(Lcom/google/android/gms/internal/ads/zzdun;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    sub-long/2addr v2, v4

    .line 25
    long-to-int v2, v2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {p1, v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdun;->zzp(Lcom/google/android/gms/internal/ads/zzdun;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdun;->zzb(Lcom/google/android/gms/internal/ads/zzdun;)Lcom/google/android/gms/internal/ads/zzcak;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Ljava/lang/Exception;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzd(Ljava/lang/Throwable;)Z

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdul;->zza:Lcom/google/android/gms/internal/ads/zzdun;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdun;->zzn(Lcom/google/android/gms/internal/ads/zzdun;Z)V

    .line 8
    .line 9
    .line 10
    const-string v2, "com.google.android.gms.ads.MobileAds"

    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdun;->zza(Lcom/google/android/gms/internal/ads/zzdun;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    sub-long/2addr v4, v6

    .line 27
    long-to-int v4, v4

    .line 28
    invoke-static {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdun;->zzp(Lcom/google/android/gms/internal/ads/zzdun;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdun;->zzh(Lcom/google/android/gms/internal/ads/zzdun;)Ljava/util/concurrent/Executor;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/google/android/gms/internal/ads/zzduk;

    .line 36
    .line 37
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzduk;-><init>(Lcom/google/android/gms/internal/ads/zzdul;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1
.end method
