.class public final Lcom/google/android/gms/internal/ads/zzfmv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfmx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfmw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmx;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfmx;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmv;->zza:Lcom/google/android/gms/internal/ads/zzfmx;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfmw;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfmw;-><init>(Lcom/google/android/gms/internal/ads/zzfmu;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmv;->zzb:Lcom/google/android/gms/internal/ads/zzfmw;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfmu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmv;->zzb:Lcom/google/android/gms/internal/ads/zzfmw;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfmu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmv;->zza:Lcom/google/android/gms/internal/ads/zzfmx;

    .line 2
    .line 3
    return-object v0
.end method
