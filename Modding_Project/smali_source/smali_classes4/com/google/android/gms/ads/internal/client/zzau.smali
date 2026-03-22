.class final Lcom/google/android/gms/ads/internal/client/zzau;
.super Lcom/google/android/gms/ads/internal/client/zzba;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzb:Lcom/google/android/gms/ads/internal/client/zzaz;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzba;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "mobile_ads_settings"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzaz;->zzv(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzfo;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzfo;-><init>()V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/ads/internal/client/zzcr;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0xf0d4d50

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzcr;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/ads/internal/client/zzdb;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final bridge synthetic zzc()Ljava/lang/Object;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbde;->zza(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzle:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl"

    .line 30
    .line 31
    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzat;

    .line 32
    .line 33
    invoke-direct {v4}, Lcom/google/android/gms/ads/internal/client/zzat;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/ads/internal/util/client/zzs;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzq;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzdc;

    .line 41
    .line 42
    const v3, 0xf0d4d50

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzdc;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    .line 53
    .line 54
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    instance-of v3, v2, Lcom/google/android/gms/ads/internal/client/zzdb;

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    check-cast v2, Lcom/google/android/gms/ads/internal/client/zzdb;

    .line 63
    .line 64
    :goto_0
    move-object v1, v2

    .line 65
    goto :goto_2

    .line 66
    :catch_0
    move-exception v0

    .line 67
    goto :goto_1

    .line 68
    :catch_1
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :catch_2
    move-exception v0

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzcz;

    .line 73
    .line 74
    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/internal/client/zzcz;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/util/client/zzr; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzb:Lcom/google/android/gms/ads/internal/client/zzaz;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbun;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbup;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/client/zzaz;->zzu(Lcom/google/android/gms/ads/internal/client/zzaz;Lcom/google/android/gms/internal/ads/zzbup;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/zzaz;->zzr(Lcom/google/android/gms/ads/internal/client/zzaz;)Lcom/google/android/gms/internal/ads/zzbup;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v3, "ClientApiBroker.getMobileAdsSettingsManager"

    .line 94
    .line 95
    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbup;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zzb:Lcom/google/android/gms/ads/internal/client/zzaz;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzau;->zza:Landroid/content/Context;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzaz;->zzi(Lcom/google/android/gms/ads/internal/client/zzaz;)Lcom/google/android/gms/ads/internal/client/zzfg;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzfg;->zza(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzdb;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :goto_2
    return-object v1
.end method
