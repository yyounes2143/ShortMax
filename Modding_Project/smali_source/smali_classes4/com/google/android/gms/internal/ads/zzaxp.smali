.class public final Lcom/google/android/gms/internal/ads/zzaxp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzawx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzast;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawx;Lcom/google/android/gms/internal/ads/zzast;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zza:Lcom/google/android/gms/internal/ads/zzawx;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzb:Lcom/google/android/gms/internal/ads/zzast;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zza:Lcom/google/android/gms/internal/ads/zzawx;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawx;->zzk()Ljava/util/concurrent/Future;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawx;->zzk()Ljava/util/concurrent/Future;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawx;->zzc()Lcom/google/android/gms/internal/ads/zzatq;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxp;->zzb:Lcom/google/android/gms/internal/ads/zzast;

    .line 23
    .line 24
    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxi;->zzaV()[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyr;->zza()Lcom/google/android/gms/internal/ads/zzgyr;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgxh;->zzaM([BLcom/google/android/gms/internal/ads/zzgyr;)Lcom/google/android/gms/internal/ads/zzgxh;

    .line 34
    .line 35
    .line 36
    monitor-exit v1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzgzw; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 42
    return-object v0
.end method
