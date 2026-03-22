.class final Lcom/google/android/gms/internal/ads/zzgel;
.super Lcom/google/android/gms/internal/ads/zzgdd;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Lcom/google/common/util/concurrent/e;

.field private zzb:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgdd;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgel;->zza:Lcom/google/common/util/concurrent/e;

    .line 8
    .line 9
    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzgel;)Lcom/google/common/util/concurrent/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zza:Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static zzf(Lcom/google/common/util/concurrent/e;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgel;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgel;-><init>(Lcom/google/common/util/concurrent/e;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgei;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgei;-><init>(Lcom/google/android/gms/internal/ads/zzgel;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzgel;->zzb:Ljava/util/concurrent/ScheduledFuture;

    .line 16
    .line 17
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgdb;->zza:Lcom/google/android/gms/internal/ads/zzgdb;

    .line 18
    .line 19
    invoke-interface {p0, v1, p1}, Lcom/google/common/util/concurrent/e;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method static bridge synthetic zzx(Lcom/google/android/gms/internal/ads/zzgel;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzb:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/internal/ads/zzgel;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzb:Ljava/util/concurrent/ScheduledFuture;

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final zza()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zza:Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzb:Ljava/util/concurrent/ScheduledFuture;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "inputFuture=["

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, "]"

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    .line 37
    invoke-interface {v1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    cmp-long v3, v1, v3

    .line 44
    .line 45
    if-lez v3, :cond_0

    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, ", remaining delay=["

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " ms]"

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_0
    return-object v0

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    return-object v0
.end method

.method protected final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zza:Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgcb;->zzl(Ljava/util/concurrent/Future;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzb:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zza:Lcom/google/common/util/concurrent/e;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgel;->zzb:Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    return-void
.end method
