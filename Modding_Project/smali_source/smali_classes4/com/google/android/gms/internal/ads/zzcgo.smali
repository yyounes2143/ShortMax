.class public Lcom/google/android/gms/internal/ads/zzcgo;
.super Lcom/google/android/gms/internal/ads/zzcfo;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzbcc;ZLcom/google/android/gms/internal/ads/zzecl;)V
    .locals 7
    .param p4    # Lcom/google/android/gms/internal/ads/zzecl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbst;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzE()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcm;

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbcm;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v4, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbst;-><init>(Lcom/google/android/gms/internal/ads/zzcfg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbcm;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    move-object v0, p0

    .line 21
    move-object v1, p1

    .line 22
    move-object v2, p2

    .line 23
    move v3, p3

    .line 24
    move-object v6, p4

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzcfo;-><init>(Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzbcc;ZLcom/google/android/gms/internal/ads/zzbst;Lcom/google/android/gms/internal/ads/zzbso;Lcom/google/android/gms/internal/ads/zzecl;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method protected final zzY(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 6
    .line 7
    const-string p1, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfg;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfo;->zza:Lcom/google/android/gms/internal/ads/zzbya;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzbya;->zze(Ljava/lang/String;Ljava/util/Map;I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqs;->zza()Lcom/google/android/gms/internal/ads/zzfqu;

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfqy;->zza:Lcom/google/android/gms/internal/ads/zzfqy;

    .line 30
    .line 31
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "mraid.js"

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    if-nez p3, :cond_2

    .line 47
    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    :cond_2
    invoke-super {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzcfo;->zzc(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcgy;->zzI()V

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzO()Lcom/google/android/gms/internal/ads/zzchd;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzchd;->zzi()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_5

    .line 79
    .line 80
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbde;->zzaf:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 81
    .line 82
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Ljava/lang/String;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaF()Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_6

    .line 98
    .line 99
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbde;->zzae:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 100
    .line 101
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    check-cast p2, Ljava/lang/String;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbde;->zzad:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 113
    .line 114
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    check-cast p2, Ljava/lang/String;

    .line 123
    .line 124
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 125
    .line 126
    .line 127
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {p3, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1
.end method
