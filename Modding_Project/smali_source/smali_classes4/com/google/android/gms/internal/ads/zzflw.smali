.class public final Lcom/google/android/gms/internal/ads/zzflw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfly;

.field private final zzb:Landroid/webkit/WebView;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfnz;

.field private final zzd:Ljava/util/HashMap;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfmm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfly;Landroid/webkit/WebView;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzflw;->zzd:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmm;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfmm;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzflw;->zze:Lcom/google/android/gms/internal/ads/zzfmm;

    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfni;->zza()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflw;->zza:Lcom/google/android/gms/internal/ads/zzfly;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflw;->zzb:Landroid/webkit/WebView;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzflw;->zza()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-ne p1, p2, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    check-cast p3, Lcom/google/android/gms/internal/ads/zzfll;

    .line 51
    .line 52
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzfll;->zzd(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfnz;

    .line 57
    .line 58
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfnz;-><init>(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflw;->zzc:Lcom/google/android/gms/internal/ads/zzfnz;

    .line 62
    .line 63
    :goto_1
    const-string p1, "WEB_MESSAGE_LISTENER"

    .line 64
    .line 65
    invoke-static {p1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzflw;->zzh()V

    .line 72
    .line 73
    .line 74
    new-instance p1, Lcom/google/android/gms/internal/ads/zzflv;

    .line 75
    .line 76
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzflv;-><init>(Lcom/google/android/gms/internal/ads/zzflw;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzflw;->zzb:Landroid/webkit/WebView;

    .line 80
    .line 81
    new-instance p3, Ljava/util/HashSet;

    .line 82
    .line 83
    const-string v0, "*"

    .line 84
    .line 85
    filled-new-array {v0}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "omidJsSessionService"

    .line 97
    .line 98
    invoke-static {p2, v0, p3, p1}, Landroidx/webkit/WebViewCompat;->addWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Set;Landroidx/webkit/WebViewCompat$WebMessageListener;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 103
    .line 104
    const-string p2, "The JavaScriptSessionService cannot be supported in this WebView version."

    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzfly;Landroid/webkit/WebView;Z)Lcom/google/android/gms/internal/ads/zzflw;
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzflw;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzflw;-><init>(Lcom/google/android/gms/internal/ads/zzfly;Landroid/webkit/WebView;Z)V

    .line 5
    .line 6
    .line 7
    return-object p2
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzflw;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzflw;->zzd:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfll;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfll;->zzc()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzflw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzflw;->zzh()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzflw;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzflp;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzflq;->zza:Lcom/google/android/gms/internal/ads/zzflq;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzflt;->zza:Lcom/google/android/gms/internal/ads/zzflt;

    .line 6
    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzflx;->zzb:Lcom/google/android/gms/internal/ads/zzflx;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v1, v2, v3, v3, v4}, Lcom/google/android/gms/internal/ads/zzflm;->zza(Lcom/google/android/gms/internal/ads/zzflq;Lcom/google/android/gms/internal/ads/zzflt;Lcom/google/android/gms/internal/ads/zzflx;Lcom/google/android/gms/internal/ads/zzflx;Z)Lcom/google/android/gms/internal/ads/zzflm;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflw;->zza:Lcom/google/android/gms/internal/ads/zzfly;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzflw;->zzb:Landroid/webkit/WebView;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v2, v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzfln;->zzb(Lcom/google/android/gms/internal/ads/zzfly;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfln;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzflp;-><init>(Lcom/google/android/gms/internal/ads/zzflm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflw;->zzd:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzflw;->zza()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfll;->zzd(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzflw;->zze:Lcom/google/android/gms/internal/ads/zzfmm;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfmm;->zza()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfml;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfml;->zzb()Lcom/google/android/gms/internal/ads/zzfnz;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfml;->zza()Lcom/google/android/gms/internal/ads/zzfls;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfml;->zzc()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfll;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfls;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfll;->zze()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflw;->zzb:Landroid/webkit/WebView;

    .line 2
    .line 3
    const-string v1, "omidJsSessionService"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/webkit/WebViewCompat;->removeWebMessageListener(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method final zza()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflw;->zzc:Lcom/google/android/gms/internal/ads/zzfnz;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    return-object v0
.end method

.method public final zzf(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfls;Ljava/lang/String;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzflw;->zzd:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "Ad overlay"

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfll;

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfll;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfls;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzflw;->zze:Lcom/google/android/gms/internal/ads/zzfmm;

    .line 30
    .line 31
    invoke-virtual {p3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfmm;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfls;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzcfx;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflw;->zzd:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfll;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfll;->zzc()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Ljava/util/Timer;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/google/android/gms/internal/ads/zzflu;

    .line 33
    .line 34
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzflu;-><init>(Lcom/google/android/gms/internal/ads/zzflw;Lcom/google/android/gms/internal/ads/zzcfx;Ljava/util/Timer;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v2, 0x3e8

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
