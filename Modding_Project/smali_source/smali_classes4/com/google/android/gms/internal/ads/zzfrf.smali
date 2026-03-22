.class public abstract Lcom/google/android/gms/internal/ads/zzfrf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfrr;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrr;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfrr;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzfrq;)Lcom/google/android/gms/internal/ads/zzfrr;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrr;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfrd;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfrd;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfre;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfre;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfrr;-><init>(Lcom/google/android/gms/internal/ads/zzfwh;Lcom/google/android/gms/internal/ads/zzfwh;Lcom/google/android/gms/internal/ads/zzfrq;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfwh;Lcom/google/android/gms/internal/ads/zzfwh;Lcom/google/android/gms/internal/ads/zzfrq;)Lcom/google/android/gms/internal/ads/zzfrr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfwh<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfwh<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfrq;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfrr;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrr;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfrr;-><init>(Lcom/google/android/gms/internal/ads/zzfwh;Lcom/google/android/gms/internal/ads/zzfwh;Lcom/google/android/gms/internal/ads/zzfrq;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static synthetic zzd(I)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic zze()Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method
