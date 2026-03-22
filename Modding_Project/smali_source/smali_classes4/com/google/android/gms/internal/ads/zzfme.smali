.class public final Lcom/google/android/gms/internal/ads/zzfme;
.super Landroid/database/ContentObserver;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Landroid/media/AudioManager;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zze:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzf:Ljava/util/concurrent/ExecutorService;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfmq;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfma;Lcom/google/android/gms/internal/ads/zzfmq;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfme;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzf:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfme;->zza:Landroid/os/Handler;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzb:Landroid/content/Context;

    .line 34
    .line 35
    const-string p1, "audio"

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/media/AudioManager;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzc:Landroid/media/AudioManager;

    .line 44
    .line 45
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzg:Lcom/google/android/gms/internal/ads/zzfmq;

    .line 46
    .line 47
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfme;)F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzc:Landroid/media/AudioManager;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-lez p0, :cond_1

    .line 14
    .line 15
    if-gtz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    int-to-float v0, v1

    .line 19
    int-to-float p0, p0

    .line 20
    div-float/2addr v0, p0

    .line 21
    const/high16 p0, 0x3f800000    # 1.0f

    .line 22
    .line 23
    cmpl-float v1, v0, p0

    .line 24
    .line 25
    if-lez v1, :cond_1

    .line 26
    .line 27
    move v0, p0

    .line 28
    nop

    .line 29
    :cond_1
    :goto_0
    return v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfme;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zza:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfme;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzfme;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzfme;)Lcom/google/android/gms/internal/ads/zzfmq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzg:Lcom/google/android/gms/internal/ads/zzfmq;

    .line 2
    .line 3
    return-object p0
.end method

.method private final zzh()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmd;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfmd;-><init>(Lcom/google/android/gms/internal/ads/zzfme;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzf:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfme;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfme;->zzh()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zze()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfme;->zzh()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzb:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfme;->zzb:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
