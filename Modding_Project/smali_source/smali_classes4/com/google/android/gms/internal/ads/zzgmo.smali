.class public abstract Lcom/google/android/gms/internal/ads/zzgmo;
.super Lcom/google/android/gms/internal/ads/zzgex;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgex;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgov;)Lcom/google/android/gms/internal/ads/zzgmo;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmm;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgmm;-><init>(Lcom/google/android/gms/internal/ads/zzgov;Lcom/google/android/gms/internal/ads/zzgmn;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzgmy;Lcom/google/android/gms/internal/ads/zzgnh;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
