.class public final Lcom/google/android/gms/ads/internal/overlay/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


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

.method public static final zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 6
    .param p3    # Lcom/google/android/gms/internal/ads/zzdsj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzk:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_4

    .line 5
    .line 6
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 7
    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzb:Lcom/google/android/gms/ads/internal/client/zza;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzu:Lcom/google/android/gms/internal/ads/zzded;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzded;->zzdf()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 25
    .line 26
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcfg;->zzi()Landroid/app/Activity;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza:Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-boolean v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzj:Z

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    move-object v0, p2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object v0, p0

    .line 43
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzi()Lcom/google/android/gms/ads/internal/overlay/zza;

    .line 44
    .line 45
    .line 46
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzi:Lcom/google/android/gms/ads/internal/overlay/zzad;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    iget-object p0, v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzi:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    .line 51
    .line 52
    :goto_1
    move-object v3, p0

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const/4 p0, 0x0

    .line 55
    goto :goto_1

    .line 56
    :goto_2
    iget-object v5, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzq:Ljava/lang/String;

    .line 57
    .line 58
    move-object v4, p3

    .line 59
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/zza;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/ads/internal/overlay/zzaa;Lcom/google/android/gms/internal/ads/zzdsj;Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .line 64
    .line 65
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v1, "com.google.android.gms.ads.AdActivity"

    .line 69
    .line 70
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 74
    .line 75
    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->isClientJar:Z

    .line 76
    .line 77
    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    .line 78
    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const-string v1, "shouldCallOnOverlayOpened"

    .line 83
    .line 84
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    new-instance p2, Landroid/os/Bundle;

    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    invoke-direct {p2, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 91
    .line 92
    .line 93
    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    .line 94
    .line 95
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-nez p2, :cond_5

    .line 106
    .line 107
    const/high16 p2, 0x80000

    .line 108
    .line 109
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    :cond_5
    instance-of p2, p0, Landroid/app/Activity;

    .line 113
    .line 114
    if-nez p2, :cond_6

    .line 115
    .line 116
    const/high16 p2, 0x10000000

    .line 117
    .line 118
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    :cond_6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbde;->zznx:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 122
    .line 123
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    check-cast p2, Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    if-eqz p2, :cond_7

    .line 138
    .line 139
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 140
    .line 141
    .line 142
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzq:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {p0, v0, p3, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzY(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zzdsj;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 149
    .line 150
    .line 151
    invoke-static {p0, v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzU(Landroid/content/Context;Landroid/content/Intent;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method
