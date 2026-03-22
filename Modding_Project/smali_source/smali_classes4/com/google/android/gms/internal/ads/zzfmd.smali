.class final Lcom/google/android/gms/internal/ads/zzfmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfme;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfme;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmd;->zza:Lcom/google/android/gms/internal/ads/zzfme;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmd;->zza:Lcom/google/android/gms/internal/ads/zzfme;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfme;->zza(Lcom/google/android/gms/internal/ads/zzfme;)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfme;->zzc(Lcom/google/android/gms/internal/ads/zzfme;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfme;->zzd(Lcom/google/android/gms/internal/ads/zzfme;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Float;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    cmpl-float v2, v2, v1

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfme;->zzb(Lcom/google/android/gms/internal/ads/zzfme;)Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfmc;

    .line 42
    .line 43
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzfmc;-><init>(Lcom/google/android/gms/internal/ads/zzfmd;F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
