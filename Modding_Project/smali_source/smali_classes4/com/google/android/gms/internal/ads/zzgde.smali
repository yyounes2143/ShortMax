.class public Lcom/google/android/gms/internal/ads/zzgde;
.super Lcom/google/android/gms/internal/ads/zzgdo;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgdo;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zzw(Lcom/google/common/util/concurrent/e;)Lcom/google/android/gms/internal/ads/zzgde;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgde;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/google/android/gms/internal/ads/zzgde;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdf;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgdf;-><init>(Lcom/google/common/util/concurrent/e;)V

    .line 11
    .line 12
    .line 13
    move-object p0, v0

    .line 14
    :goto_0
    return-object p0
.end method
