.class final Lcom/google/android/gms/internal/play_billing/zzde;
.super Lcom/google/android/gms/internal/play_billing/zzcq;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field private zzd:Lcom/google/android/gms/internal/play_billing/zzcz;

.field private zze:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/play_billing/zzcz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcq;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzd:Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic zzr(Lcom/google/android/gms/internal/play_billing/zzde;)Lcom/google/android/gms/internal/play_billing/zzcz;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzd:Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 2
    .line 3
    return-object p0
.end method

.method static zzs(Lcom/google/android/gms/internal/play_billing/zzcz;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/zzcz;
    .locals 2

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzde;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzde;-><init>(Lcom/google/android/gms/internal/play_billing/zzcz;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/google/android/gms/internal/play_billing/zzdb;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzdb;-><init>(Lcom/google/android/gms/internal/play_billing/zzde;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x6f54

    .line 12
    .line 13
    invoke-interface {p4, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzde;->zze:Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzcp;->zza:Lcom/google/android/gms/internal/play_billing/zzcp;

    .line 20
    .line 21
    invoke-interface {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzcz;->zzb(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method

.method static bridge synthetic zzt(Lcom/google/android/gms/internal/play_billing/zzde;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zze:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzu(Lcom/google/android/gms/internal/play_billing/zzde;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zze:Ljava/util/concurrent/ScheduledFuture;

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final zzd()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzd:Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zze:Ljava/util/concurrent/ScheduledFuture;

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

.method protected final zzg()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzd:Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 4
    .line 5
    instance-of v1, v1, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v4, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v4, v3

    .line 14
    :goto_0
    and-int/2addr v1, v4

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzck;->valueField:Ljava/lang/Object;

    .line 18
    .line 19
    instance-of v4, v1, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzcj$zza;

    .line 24
    .line 25
    iget-boolean v1, v1, Lcom/google/android/gms/internal/play_billing/zzcj$zza;->zzc:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v2, v3

    .line 31
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zze:Ljava/util/concurrent/ScheduledFuture;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 39
    .line 40
    .line 41
    :cond_3
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzd:Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zze:Ljava/util/concurrent/ScheduledFuture;

    .line 45
    .line 46
    return-void
.end method
