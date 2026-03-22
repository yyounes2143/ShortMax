.class public final Lcom/google/android/gms/internal/ads/zzefb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedm;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdgf;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfbz;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdsj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdgf;Lcom/google/android/gms/internal/ads/zzfbz;Lcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefb;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefb;->zzb:Lcom/google/android/gms/internal/ads/zzdgf;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefb;->zzc:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzefb;->zzd:Lcom/google/android/gms/internal/ads/zzfbz;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzefb;->zze:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 13
    .line 14
    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzefb;)Lcom/google/android/gms/internal/ads/zzdsj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzefb;->zze:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzefb;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 10

    .line 1
    :try_start_0
    new-instance p5, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 2
    .line 3
    invoke-direct {p5}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    .line 7
    .line 8
    .line 9
    move-result-object p5

    .line 10
    iget-object v0, p5, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 16
    .line 17
    iget-object p1, p5, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 18
    .line 19
    const/4 p5, 0x0

    .line 20
    invoke-direct {v2, p1, p5}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcak;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcak;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefb;->zzb:Lcom/google/android/gms/internal/ads/zzdgf;

    .line 29
    .line 30
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcrq;

    .line 31
    .line 32
    invoke-direct {v1, p2, p3, p5}, Lcom/google/android/gms/internal/ads/zzcrq;-><init>(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdff;

    .line 36
    .line 37
    new-instance v3, Lcom/google/android/gms/internal/ads/zzefa;

    .line 38
    .line 39
    invoke-direct {v3, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzefa;-><init>(Lcom/google/android/gms/internal/ads/zzefb;Lcom/google/android/gms/internal/ads/zzcak;Lcom/google/android/gms/internal/ads/zzfca;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, v3, p5}, Lcom/google/android/gms/internal/ads/zzdff;-><init>(Lcom/google/android/gms/internal/ads/zzdgn;Lcom/google/android/gms/internal/ads/zzcfg;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzdgf;->zzd(Lcom/google/android/gms/internal/ads/zzcrq;Lcom/google/android/gms/internal/ads/zzdff;)Lcom/google/android/gms/internal/ads/zzdfc;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdfc;->zza()Lcom/google/android/gms/internal/ads/zzcye;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-instance v6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 56
    .line 57
    const/4 p5, 0x0

    .line 58
    invoke-direct {v6, p5, p5, p5}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    .line 59
    .line 60
    .line 61
    iget-object v9, p4, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Ljava/lang/String;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    move-object v1, p3

    .line 68
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzded;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzcak;->zzc(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzefb;->zzd:Lcom/google/android/gms/internal/ads/zzfbz;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfbz;->zza()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdfc;->zzg()Lcom/google/android/gms/internal/ads/zzdfb;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 84
    .line 85
    .line 86
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    return-object p0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 90
    .line 91
    const-string p1, "Error in CustomTabsAdRenderer"

    .line 92
    .line 93
    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzfca;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfca;->zzv:Lorg/json/JSONObject;

    .line 2
    .line 3
    const-string v0, "tab_url"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Lcom/google/common/util/concurrent/e;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zznw:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefb;->zze:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsj;->zza()Lcom/google/android/gms/internal/ads/zzdsi;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "action"

    .line 26
    .line 27
    const-string v2, "cstm_tbs_rndr"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsi;->zzj()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzefb;->zze(Lcom/google/android/gms/internal/ads/zzfca;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v4, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v4, v1

    .line 49
    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcn;->zzb:Lcom/google/android/gms/internal/ads/zzfcm;

    .line 50
    .line 51
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfcm;->zzb:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeez;

    .line 58
    .line 59
    move-object v2, v1

    .line 60
    move-object v3, p0

    .line 61
    move-object v5, p1

    .line 62
    move-object v6, p2

    .line 63
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzeez;-><init>(Lcom/google/android/gms/internal/ads/zzefb;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefb;->zzc:Ljava/util/concurrent/Executor;

    .line 67
    .line 68
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzefb;->zza:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v0, p1, Landroid/app/Activity;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbef;->zzg(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzefb;->zze(Lcom/google/android/gms/internal/ads/zzfca;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method
