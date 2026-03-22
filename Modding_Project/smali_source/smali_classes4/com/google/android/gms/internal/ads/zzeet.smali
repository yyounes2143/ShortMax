.class public final synthetic Lcom/google/android/gms/internal/ads/zzeet;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqy;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzedp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzedp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeet;->zza:Lcom/google/android/gms/internal/ads/zzedp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzed;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeet;->zza:Lcom/google/android/gms/internal/ads/zzedp;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzedp;->zzb:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbrp;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbrp;->zze()Lcom/google/android/gms/ads/internal/client/zzed;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfdd;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfdd;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v1
.end method
