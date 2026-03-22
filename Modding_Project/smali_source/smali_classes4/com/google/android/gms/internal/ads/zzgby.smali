.class final Lcom/google/android/gms/internal/ads/zzgby;
.super Lcom/google/android/gms/internal/ads/zzgca;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/e;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgcu;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgca;-><init>(Lcom/google/common/util/concurrent/e;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method final bridge synthetic zze(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgcu;

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzgcu;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 8
    .line 9
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzfvp;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-object p2
.end method

.method final synthetic zzf(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgcb;->zzn(Lcom/google/common/util/concurrent/e;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
