.class public final Lcom/google/android/gms/internal/ads/zzcgm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcgn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcgl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgn;Lcom/google/android/gms/internal/ads/zzcgl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zza:Lcom/google/android/gms/internal/ads/zzcgn;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzcgm;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcgl;->zza:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/ads/zzcgf;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcgf;->zzaO()Lcom/google/android/gms/internal/ads/zzcfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 18
    .line 19
    const-string p0, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    .line 20
    .line 21
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcgy;->zzn(Landroid/net/Uri;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "Click string is empty, not proceeding."

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zza:Lcom/google/android/gms/internal/ads/zzcgn;

    .line 16
    .line 17
    move-object v2, v0

    .line 18
    check-cast v2, Lcom/google/android/gms/internal/ads/zzcgt;

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzI()Lcom/google/android/gms/internal/ads/zzavu;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    const-string p1, "Signal utils is empty, ignoring."

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzavu;->zzc()Lcom/google/android/gms/internal/ads/zzavp;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    const-string p1, "Signals object is empty, ignoring."

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgn;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    const-string p1, "Context is null, ignoring."

    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgn;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v3, v0

    .line 61
    check-cast v3, Lcom/google/android/gms/internal/ads/zzcgv;

    .line 62
    .line 63
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzF()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgn;->zzi()Landroid/app/Activity;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v2, v1, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzavp;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1
.end method

.method public getViewSignals()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->zza:Lcom/google/android/gms/internal/ads/zzcgn;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/zzcgt;

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzI()Lcom/google/android/gms/internal/ads/zzavu;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, ""

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v0, "Signal utils is empty, ignoring."

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavu;->zzc()Lcom/google/android/gms/internal/ads/zzavp;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string v0, "Signals object is empty, ignoring."

    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgn;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-nez v3, :cond_2

    .line 37
    .line 38
    const-string v0, "Context is null, ignoring."

    .line 39
    .line 40
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgn;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    move-object v3, v0

    .line 49
    check-cast v3, Lcom/google/android/gms/internal/ads/zzcgv;

    .line 50
    .line 51
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzF()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgn;->zzi()Landroid/app/Activity;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzavp;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method public notify(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 8
    .line 9
    const-string p1, "URL is empty, ignoring message"

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfrw;

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgk;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcgk;-><init>(Lcom/google/android/gms/internal/ads/zzcgm;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
