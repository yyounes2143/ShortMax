.class final Lcom/google/android/gms/internal/ads/zzbbj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbbk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbk;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zza:Lcom/google/android/gms/internal/ads/zzbbk;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zza:Lcom/google/android/gms/internal/ads/zzbbk;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbk;->zze(Lcom/google/android/gms/internal/ads/zzbbk;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbbk;->zzk(Lcom/google/android/gms/internal/ads/zzbbk;Lcom/google/android/gms/internal/ads/zzbbq;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbk;->zzc(Lcom/google/android/gms/internal/ads/zzbbk;)Lcom/google/android/gms/internal/ads/zzbbn;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbbk;->zzf(Lcom/google/android/gms/internal/ads/zzbbk;Lcom/google/android/gms/internal/ads/zzbbn;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbk;->zze(Lcom/google/android/gms/internal/ads/zzbbk;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method
