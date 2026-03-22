.class public final Lcom/google/android/gms/internal/ads/zzbxh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


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

.method public static final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpq;)Lcom/google/android/gms/internal/ads/zzbwv;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    const-string v2, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl"

    .line 7
    .line 8
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbxg;

    .line 9
    .line 10
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbxg;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zzs;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzq;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbwz;

    .line 18
    .line 19
    const v2, 0xf0d4d50

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbwz;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpq;I)Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const-string p1, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    .line 30
    .line 31
    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzbwv;

    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbwv;

    .line 40
    .line 41
    :goto_0
    move-object v1, p1

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :catch_1
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbwt;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzbwt;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/util/client/zzr; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    return-object v1

    .line 54
    :goto_2
    const-string p1, "#007 Could not call remote method."

    .line 55
    .line 56
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    return-object v1
.end method
