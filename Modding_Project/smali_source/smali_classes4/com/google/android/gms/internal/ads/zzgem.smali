.class final Lcom/google/android/gms/internal/ads/zzgem;
.super Lcom/google/android/gms/internal/ads/zzgdv;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgeo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgeo;Lcom/google/android/gms/internal/ads/zzgct;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgem;->zza:Lcom/google/android/gms/internal/ads/zzgeo;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgdv;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzb:Lcom/google/android/gms/internal/ads/zzgct;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method final bridge synthetic zza()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzb:Lcom/google/android/gms/internal/ads/zzgct;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgct;->zza()Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 8
    .line 9
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfvp;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-object v1
.end method

.method final zzb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzb:Lcom/google/android/gms/internal/ads/zzgct;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method final zzd(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zza:Lcom/google/android/gms/internal/ads/zzgeo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcb;->zzd(Ljava/lang/Throwable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method final synthetic zze(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zza:Lcom/google/android/gms/internal/ads/zzgeo;

    .line 2
    .line 3
    check-cast p1, Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcb;->zzn(Lcom/google/common/util/concurrent/e;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method final zzg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zza:Lcom/google/android/gms/internal/ads/zzgeo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcb;->isDone()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
