.class final Lcom/google/android/gms/internal/ads/zzbly;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzblq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbmc;Lcom/google/android/gms/internal/ads/zzblq;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbly;->zza:Lcom/google/android/gms/internal/ads/zzblq;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzblw;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcak;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcak;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzblx;

    .line 9
    .line 10
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzblx;-><init>(Lcom/google/android/gms/internal/ads/zzbly;Lcom/google/android/gms/internal/ads/zzcak;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbly;->zza:Lcom/google/android/gms/internal/ads/zzblq;

    .line 14
    .line 15
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzblw;->zze(Lcom/google/android/gms/internal/ads/zzblq;Lcom/google/android/gms/internal/ads/zzblv;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
