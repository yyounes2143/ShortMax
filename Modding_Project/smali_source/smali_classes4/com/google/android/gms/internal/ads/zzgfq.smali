.class public final Lcom/google/android/gms/internal/ads/zzgfq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzgvi;->zza:I

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfq;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    throw v1
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggf;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqm;->zza()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzggm;->zza(Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzghi;->zza(Z)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmh;->zzb()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzggx;->zza(Z)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzght;->zza(Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgib;->zza(Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgig;->zza(Z)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgik;->zza(Z)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgjy;->zza(Z)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgjr;->zza(Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
