.class public final Lcom/google/android/gms/internal/ads/zzbby;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzbbn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Z

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzd:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzc:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzbby;)Lcom/google/android/gms/internal/ads/zzbbn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zza:Lcom/google/android/gms/internal/ads/zzbbn;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzbby;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzd:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzbby;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzb:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzbby;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzd:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbby;->zza:Lcom/google/android/gms/internal/ads/zzbbn;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbby;->zza:Lcom/google/android/gms/internal/ads/zzbbn;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzbby;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzb:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method final zzc(Lcom/google/android/gms/internal/ads/zzbbo;)Ljava/util/concurrent/Future;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbs;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbs;-><init>(Lcom/google/android/gms/internal/ads/zzbby;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbw;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbbw;-><init>(Lcom/google/android/gms/internal/ads/zzbby;Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzcak;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbx;

    .line 12
    .line 13
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbbx;-><init>(Lcom/google/android/gms/internal/ads/zzbby;Lcom/google/android/gms/internal/ads/zzcak;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzd:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbbn;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbby;->zzc:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzv()Lcom/google/android/gms/ads/internal/util/zzbt;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/util/zzbt;->zzb()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-direct {v3, v4, v5, v1, p1}, Lcom/google/android/gms/internal/ads/zzbbn;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    .line 32
    .line 33
    .line 34
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbby;->zza:Lcom/google/android/gms/internal/ads/zzbbn;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    .line 37
    .line 38
    .line 39
    monitor-exit v2

    .line 40
    return-object v0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method
