.class public abstract Lcom/google/android/gms/internal/ads/zzbav;
.super Lcom/google/android/gms/internal/ads/zzayu;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbaw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayu;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbaw;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbaw;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbaw;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbau;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbau;-><init>(Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method


# virtual methods
.method protected final zzde(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1

    .line 6
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbaw;->zzk(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :pswitch_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbaw;->zze()J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :pswitch_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbaw;->zzh()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzds;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdt;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbaw;->zzj(Lcom/google/android/gms/ads/internal/client/zzdt;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :pswitch_4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzh(Landroid/os/Parcel;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbaw;->zzi(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbaw;->zzg()Lcom/google/android/gms/ads/internal/client/zzea;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    .line 83
    .line 84
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayv;->zzg(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    if-nez p4, :cond_0

    .line 101
    .line 102
    const/4 p4, 0x0

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback"

    .line 105
    .line 106
    invoke-interface {p4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbbd;

    .line 111
    .line 112
    if-eqz v1, :cond_1

    .line 113
    .line 114
    move-object p4, v0

    .line 115
    check-cast p4, Lcom/google/android/gms/internal/ads/zzbbd;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbb;

    .line 119
    .line 120
    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/ads/zzbbb;-><init>(Landroid/os/IBinder;)V

    .line 121
    .line 122
    .line 123
    move-object p4, v0

    .line 124
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzbaw;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbbd;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-nez p1, :cond_2

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    const-string p4, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback"

    .line 142
    .line 143
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzbba;

    .line 148
    .line 149
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :pswitch_8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbaw;->zzf()Lcom/google/android/gms/ads/internal/client/zzbx;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    .line 162
    .line 163
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayv;->zzg(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 164
    .line 165
    .line 166
    :goto_2
    const/4 p1, 0x1

    .line 167
    return p1

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
