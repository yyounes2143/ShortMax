.class public final synthetic Lcom/google/android/gms/internal/ads/zzfhi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public static zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfhj;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhx;->zza()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    add-int/lit8 v0, p1, -0x2

    .line 8
    .line 9
    const/16 v1, 0x14

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x15

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x6e

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbex;->zzb:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbex;->zzd:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbex;->zzc:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbex;->zzf:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbex;->zze:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    :goto_0
    if-eqz v0, :cond_2

    .line 90
    .line 91
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhl;

    .line 92
    .line 93
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfhl;-><init>(Landroid/content/Context;I)V

    .line 94
    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_2
    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfiq;

    .line 98
    .line 99
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfiq;-><init>()V

    .line 100
    .line 101
    .line 102
    return-object p0

    .line 103
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static zzb(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfhj;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfhi;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of p1, p0, Lcom/google/android/gms/internal/ads/zzfhl;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzfhj;->zzi()Lcom/google/android/gms/internal/ads/zzfhj;

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/ads/zzfhj;->zzn(I)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 14
    .line 15
    .line 16
    iget-object p1, p3, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zza(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfhz;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzfhj;->zzf(Lcom/google/android/gms/internal/ads/zzfhz;)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 23
    .line 24
    .line 25
    iget-object p1, p3, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfht;->zze(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzfhj;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-object p0
.end method
