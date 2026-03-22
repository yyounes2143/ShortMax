.class public final Lcom/google/android/gms/internal/ads/zzdwf;
.super Lcom/google/android/gms/ads/internal/client/zzdv;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final zza:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/ref/WeakReference;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdvt;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgdy;

.field private zzf:Lcom/google/android/gms/internal/ads/zzdvi;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Lcom/google/android/gms/internal/ads/zzdvt;Lcom/google/android/gms/internal/ads/zzdwh;Lcom/google/android/gms/internal/ads/zzgdy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzdv;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p4, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zza:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzb:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzc:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzd:Lcom/google/android/gms/internal/ads/zzdvt;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zze:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 18
    .line 19
    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzdwf;)Lcom/google/android/gms/internal/ads/zzdvt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzd:Lcom/google/android/gms/internal/ads/zzdvt;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzc(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzk(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdwf;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwf;->zzl(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zzj()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzc:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzb:Landroid/content/Context;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method private static zzk(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/ads/LoadAdError;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/google/android/gms/ads/LoadAdError;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/ads/LoadAdError;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p0, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    check-cast p0, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    check-cast p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    instance-of v0, p0, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    check-cast p0, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    instance-of v0, p0, Lcom/google/android/gms/ads/AdView;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    check-cast p0, Lcom/google/android/gms/ads/AdView;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/ads/BaseAdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto :goto_0

    .line 67
    :cond_5
    instance-of v0, p0, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 68
    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    check-cast p0, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :goto_0
    if-nez p0, :cond_6

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/ads/ResponseInfo;->zzc()Lcom/google/android/gms/ads/internal/client/zzea;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    if-eqz p0, :cond_7

    .line 85
    .line 86
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzea;->zzh()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-object p0

    .line 91
    :catch_0
    :cond_7
    :goto_1
    const-string p0, ""

    .line 92
    .line 93
    return-object p0
.end method

.method private final declared-synchronized zzl(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzf:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdvi;->zzb(Ljava/lang/String;)Lcom/google/common/util/concurrent/e;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwd;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdwd;-><init>(Lcom/google/android/gms/internal/ads/zzdwf;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zze:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzr(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgdj;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    :try_start_2
    const-string v0, "OutOfContextTester.setAdAsOutOfContext"

    .line 24
    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzd:Lcom/google/android/gms/internal/ads/zzdvt;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdvt;->zzk()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    throw p1
.end method

.method private final declared-synchronized zzm(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzf:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdvi;->zzb(Ljava/lang/String;)Lcom/google/common/util/concurrent/e;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwe;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdwe;-><init>(Lcom/google/android/gms/internal/ads/zzdwf;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zze:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzr(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgdj;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    :try_start_2
    const-string v0, "OutOfContextTester.setAdAsShown"

    .line 24
    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzd:Lcom/google/android/gms/internal/ads/zzdvt;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdvt;->zzk()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    throw p1
.end method


# virtual methods
.method public final zze(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    check-cast p3, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz p2, :cond_3

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zza:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_1
    instance-of p1, v1, Lcom/google/android/gms/ads/AdView;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    check-cast v1, Lcom/google/android/gms/ads/AdView;

    .line 34
    .line 35
    invoke-static {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/AdView;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    instance-of p1, v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 44
    .line 45
    invoke-static {p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zzb(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzdvi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzf:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 2
    .line 3
    return-void
.end method

.method protected final declared-synchronized zzg(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zza:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdwf;->zzk(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwf;->zzl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p1
.end method

.method public final declared-synchronized zzh(Lcom/google/android/gms/internal/ads/zzdwg;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zzf()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x4

    .line 13
    const/4 v5, 0x5

    .line 14
    const/4 v6, 0x1

    .line 15
    sparse-switch v1, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v1, "BANNER"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    move v0, v6

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :sswitch_1
    const-string v1, "REWARDED_INTERSTITIAL"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    move v0, v5

    .line 41
    goto :goto_1

    .line 42
    :sswitch_2
    const-string v1, "REWARDED"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    move v0, v4

    .line 51
    goto :goto_1

    .line 52
    :sswitch_3
    const-string v1, "APP_OPEN_AD"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    goto :goto_1

    .line 62
    :sswitch_4
    const-string v1, "INTERSTITIAL"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    move v0, v3

    .line 71
    goto :goto_1

    .line 72
    :sswitch_5
    const-string v1, "NATIVE"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    move v0, v2

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 83
    :goto_1
    if-eqz v0, :cond_9

    .line 84
    .line 85
    if-eq v0, v6, :cond_6

    .line 86
    .line 87
    if-eq v0, v3, :cond_5

    .line 88
    .line 89
    if-eq v0, v2, :cond_3

    .line 90
    .line 91
    if-eq v0, v4, :cond_2

    .line 92
    .line 93
    if-eq v0, v5, :cond_1

    .line 94
    .line 95
    monitor-exit p0

    .line 96
    return-void

    .line 97
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zze()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzj()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zza()Lcom/google/android/gms/ads/AdRequest;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdwb;

    .line 110
    .line 111
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdwb;-><init>(Lcom/google/android/gms/internal/ads/zzdwf;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAdLoadCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    monitor-exit p0

    .line 118
    return-void

    .line 119
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zze()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzj()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zza()Lcom/google/android/gms/ads/AdRequest;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdwa;

    .line 132
    .line 133
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdwa;-><init>(Lcom/google/android/gms/internal/ads/zzdwf;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .line 138
    .line 139
    monitor-exit p0

    .line 140
    return-void

    .line 141
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zze()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v1, Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 146
    .line 147
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzj()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdvw;

    .line 155
    .line 156
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdvw;-><init>(Lcom/google/android/gms/internal/ads/zzdwf;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 160
    .line 161
    .line 162
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwc;

    .line 163
    .line 164
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdwc;-><init>(Lcom/google/android/gms/internal/ads/zzdwf;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zzd()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzjP:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 175
    .line 176
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    check-cast v2, Ljava/lang/Boolean;

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eqz v2, :cond_4

    .line 191
    .line 192
    if-eqz v0, :cond_4

    .line 193
    .line 194
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 195
    .line 196
    .line 197
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zza()Lcom/google/android/gms/ads/AdRequest;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    .line 207
    .line 208
    monitor-exit p0

    .line 209
    return-void

    .line 210
    :cond_5
    :try_start_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zze()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzj()Landroid/content/Context;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zza()Lcom/google/android/gms/ads/AdRequest;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdvz;

    .line 223
    .line 224
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdvz;-><init>(Lcom/google/android/gms/internal/ads/zzdwf;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    .line 229
    .line 230
    monitor-exit p0

    .line 231
    return-void

    .line 232
    :cond_6
    :try_start_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zze()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzjP:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 237
    .line 238
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    check-cast v2, Ljava/lang/Boolean;

    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_7

    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zzn()Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_7

    .line 259
    .line 260
    new-instance v2, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 261
    .line 262
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzj()Landroid/content/Context;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_7
    new-instance v2, Lcom/google/android/gms/ads/AdView;

    .line 271
    .line 272
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzj()Landroid/content/Context;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 277
    .line 278
    .line 279
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zzb()Lcom/google/android/gms/ads/AdSize;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdvy;

    .line 290
    .line 291
    invoke-direct {v3, p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzdvy;-><init>(Lcom/google/android/gms/internal/ads/zzdwf;Ljava/lang/String;Lcom/google/android/gms/ads/BaseAdView;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zzc()Lcom/google/android/gms/ads/VideoOptions;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Ljava/lang/Boolean;

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_8

    .line 316
    .line 317
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zzn()Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_8

    .line 322
    .line 323
    if-eqz v0, :cond_8

    .line 324
    .line 325
    move-object v1, v2

    .line 326
    check-cast v1, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 327
    .line 328
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V

    .line 329
    .line 330
    .line 331
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zza()Lcom/google/android/gms/ads/AdRequest;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-virtual {v2, p1}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 336
    .line 337
    .line 338
    monitor-exit p0

    .line 339
    return-void

    .line 340
    :cond_9
    :try_start_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zze()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzj()Landroid/content/Context;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdwg;->zza()Lcom/google/android/gms/ads/AdRequest;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdvx;

    .line 353
    .line 354
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdvx;-><init>(Lcom/google/android/gms/internal/ads/zzdwf;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 358
    .line 359
    .line 360
    monitor-exit p0

    .line 361
    return-void

    .line 362
    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 363
    throw p1

    .line 364
    nop

    .line 365
    :sswitch_data_0
    .sparse-switch
        -0x772abbe9 -> :sswitch_5
        -0x51d5b0d4 -> :sswitch_4
        -0x1987ba06 -> :sswitch_3
        0x205e3c0e -> :sswitch_2
        0x6e8e03bd -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch
.end method

.method public final declared-synchronized zzi(Ljava/lang/String;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zzd:Lcom/google/android/gms/internal/ads/zzdvt;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvt;->zzg()Landroid/app/Activity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwf;->zza:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_8

    .line 19
    .line 20
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzjO:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    instance-of v4, v2, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    instance-of v4, v2, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 43
    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    instance-of v4, v2, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 47
    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    instance-of v4, v2, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdwf;->zzk(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdwf;->zzm(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    instance-of v1, v2, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    check-cast v2, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :cond_3
    :try_start_1
    instance-of v1, v2, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    check-cast v2, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 83
    .line 84
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 89
    :cond_4
    :try_start_2
    instance-of v1, v2, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 90
    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    check-cast v2, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 94
    .line 95
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdvu;

    .line 96
    .line 97
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdvu;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .line 102
    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 105
    :cond_5
    :try_start_3
    instance-of v1, v2, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    check-cast v2, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;

    .line 110
    .line 111
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdvv;

    .line 112
    .line 113
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdvv;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .line 118
    .line 119
    monitor-exit p0

    .line 120
    return-void

    .line 121
    :cond_6
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_8

    .line 136
    .line 137
    instance-of v0, v2, Lcom/google/android/gms/ads/AdView;

    .line 138
    .line 139
    if-nez v0, :cond_7

    .line 140
    .line 141
    instance-of v0, v2, Lcom/google/android/gms/ads/nativead/NativeAd;

    .line 142
    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    :cond_7
    new-instance v0, Landroid/content/Intent;

    .line 146
    .line 147
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwf;->zzj()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v2, "com.google.android.gms.ads.OutOfContextTestingActivity"

    .line 155
    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    const-string v2, "adUnit"

    .line 160
    .line 161
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 165
    .line 166
    .line 167
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzU(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    .line 169
    .line 170
    monitor-exit p0

    .line 171
    return-void

    .line 172
    :cond_8
    :goto_1
    monitor-exit p0

    .line 173
    return-void

    .line 174
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 175
    throw p1
.end method
