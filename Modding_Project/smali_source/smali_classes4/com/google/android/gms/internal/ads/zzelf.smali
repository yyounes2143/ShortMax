.class final Lcom/google/android/gms/internal/ads/zzelf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeln;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzelg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzelg;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelf;->zza:Lcom/google/android/gms/internal/ads/zzelg;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelf;->zza:Lcom/google/android/gms/internal/ads/zzelg;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzelg;->zzd(Lcom/google/android/gms/internal/ads/zzelg;Lcom/google/android/gms/internal/ads/zzdfb;)V

    .line 6
    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelf;->zza:Lcom/google/android/gms/internal/ads/zzelg;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdfb;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzelg;->zzd(Lcom/google/android/gms/internal/ads/zzelg;Lcom/google/android/gms/internal/ads/zzdfb;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzelg;->zzb(Lcom/google/android/gms/internal/ads/zzelg;)Lcom/google/android/gms/internal/ads/zzdfb;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcra;->zzk()V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method
