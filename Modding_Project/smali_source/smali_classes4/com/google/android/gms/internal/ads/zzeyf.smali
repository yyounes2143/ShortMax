.class final Lcom/google/android/gms/internal/ads/zzeyf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeln;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeyg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeyg;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyf;->zza:Lcom/google/android/gms/internal/ads/zzeyg;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyf;->zza:Lcom/google/android/gms/internal/ads/zzeyg;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzeyg;->zza:Lcom/google/android/gms/internal/ads/zzcom;

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcom;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyf;->zza:Lcom/google/android/gms/internal/ads/zzeyg;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeyg;->zza:Lcom/google/android/gms/internal/ads/zzcom;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcra;->zzb()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzeyg;->zza:Lcom/google/android/gms/internal/ads/zzcom;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcom;->zzc(Lcom/google/android/gms/internal/ads/zzbaq;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeyg;->zzi(Lcom/google/android/gms/internal/ads/zzeyg;)Lcom/google/android/gms/internal/ads/zzexy;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcon;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeyg;->zzi(Lcom/google/android/gms/internal/ads/zzeyg;)Lcom/google/android/gms/internal/ads/zzexy;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeyg;->zzg(Lcom/google/android/gms/internal/ads/zzeyg;)Lcom/google/android/gms/internal/ads/zzdsj;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {v2, p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcon;-><init>(Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/ads/internal/client/zzbx;Lcom/google/android/gms/internal/ads/zzexy;Lcom/google/android/gms/internal/ads/zzdsj;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzexy;->zzk(Lcom/google/android/gms/internal/ads/zzbaw;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcra;->zzk()V

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1
.end method
