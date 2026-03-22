.class public final Lcom/google/android/gms/internal/ads/zzfki;
.super Lcom/google/android/gms/internal/ads/zzfld;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0
    .param p6    # Lcom/google/android/gms/ads/internal/client/zzce;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/internal/ads/zzfld;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/common/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0
    .param p7    # Lcom/google/android/gms/ads/internal/client/zzch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/internal/ads/zzfld;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkg;Lcom/google/android/gms/common/util/Clock;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzbx;

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzl()Lcom/google/android/gms/ads/internal/client/zzea;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 10
    .line 11
    const-string v0, "Failed to get response info for  the interstitial ad."

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method protected final zzb(Landroid/content/Context;)Lcom/google/common/util/concurrent/e;
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgeh;->zze()Lcom/google/android/gms/internal/ads/zzgeh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Lcom/google/android/gms/ads/internal/client/zzr;

    .line 10
    .line 11
    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfld;->zze:Lcom/google/android/gms/ads/internal/client/zzfv;

    .line 15
    .line 16
    iget-object v4, p1, Lcom/google/android/gms/ads/internal/client/zzfv;->zza:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfld;->zzd:Lcom/google/android/gms/internal/ads/zzbpq;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfld;->zza:Lcom/google/android/gms/ads/internal/ClientApi;

    .line 21
    .line 22
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzfld;->zzc:I

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/ClientApi;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpq;I)Lcom/google/android/gms/ads/internal/client/zzbx;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfld;->zze:Lcom/google/android/gms/ads/internal/client/zzfv;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/zzfv;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 34
    .line 35
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfkh;

    .line 36
    .line 37
    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfkh;-><init>(Lcom/google/android/gms/internal/ads/zzfki;Lcom/google/android/gms/internal/ads/zzgeh;Lcom/google/android/gms/ads/internal/client/zzbx;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzz(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/ads/internal/client/zzbn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    const-string v2, "Failed to load interstitial ad."

    .line 46
    .line 47
    invoke-static {v2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfka;

    .line 51
    .line 52
    const-string v2, "remote exception"

    .line 53
    .line 54
    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfka;-><init>(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgeh;->zzd(Ljava/lang/Throwable;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfka;

    .line 62
    .line 63
    const-string v2, "Failed to create an interstitial ad manager."

    .line 64
    .line 65
    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfka;-><init>(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgeh;->zzd(Ljava/lang/Throwable;)Z

    .line 69
    .line 70
    .line 71
    :goto_0
    return-object v0
.end method
