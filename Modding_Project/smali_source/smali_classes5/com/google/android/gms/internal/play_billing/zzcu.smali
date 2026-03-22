.class public final Lcom/google/android/gms/internal/play_billing/zzcu;
.super Lcom/google/android/gms/internal/play_billing/zzcw;
.source "com.android.billingclient:billing@@8.0.0"


# direct methods
.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcz;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcx;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzcx;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/play_billing/zzcz;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/zzcz;
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-wide/16 p1, 0x6f54

    .line 9
    .line 10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzde;->zzs(Lcom/google/android/gms/internal/play_billing/zzcz;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/play_billing/zzcz;Lcom/google/android/gms/internal/play_billing/zzcs;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzct;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzct;-><init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/play_billing/zzcs;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzcz;->zzb(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
