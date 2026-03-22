.class public final Lcom/google/android/gms/internal/ads/zzegb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzefv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdhb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdln;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfdv;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdoe;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdsd;

.field private final zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzh:Landroid/content/Context;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzbxw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdhb;Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzdln;Lcom/google/android/gms/internal/ads/zzfdv;Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzdsd;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbxw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 5
    .line 6
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzh:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzi:Lcom/google/android/gms/internal/ads/zzbxw;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegb;->zza:Lcom/google/android/gms/internal/ads/zzdhb;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzc:Lcom/google/android/gms/internal/ads/zzdln;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzd:Lcom/google/android/gms/internal/ads/zzfdv;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegb;->zze:Lcom/google/android/gms/internal/ads/zzdoe;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzf:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/android/gms/internal/ads/zzdio;
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdit;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/google/android/gms/internal/ads/zzdny;

    .line 12
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzct:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzf:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrr;->zzC:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegb;->zza:Lcom/google/android/gms/internal/ads/zzdhb;

    .line 55
    .line 56
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrq;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-direct {v2, p3, p4, v3}, Lcom/google/android/gms/internal/ads/zzcrq;-><init>(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdjf;

    .line 63
    .line 64
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzdjf;-><init>(Lcom/google/android/gms/internal/ads/zzdit;)V

    .line 65
    .line 66
    .line 67
    new-instance p4, Lcom/google/android/gms/internal/ads/zzdhp;

    .line 68
    .line 69
    invoke-direct {p4, p5, p2, p6, p7}, Lcom/google/android/gms/internal/ads/zzdhp;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzdny;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdhb;->zzd(Lcom/google/android/gms/internal/ads/zzcrq;Lcom/google/android/gms/internal/ads/zzdjf;Lcom/google/android/gms/internal/ads/zzdhp;)Lcom/google/android/gms/internal/ads/zzdiu;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    check-cast p4, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result p4

    .line 90
    if-eqz p4, :cond_1

    .line 91
    .line 92
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide p4

    .line 100
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzf:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 101
    .line 102
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 103
    .line 104
    .line 105
    move-result-object p7

    .line 106
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zzD:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p7, v1, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 116
    .line 117
    .line 118
    move-result-object p6

    .line 119
    sget-object p7, Lcom/google/android/gms/internal/ads/zzdrr;->zzE:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 120
    .line 121
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p7

    .line 125
    invoke-virtual {p6, p7, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 126
    .line 127
    .line 128
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdiu;->zzh()Lcom/google/android/gms/internal/ads/zzdnk;

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzdnk;->zzb()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdiu;->zzi()Lcom/google/android/gms/internal/ads/zzdnu;

    .line 136
    .line 137
    .line 138
    move-result-object p4

    .line 139
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzdnu;->zza(Lcom/google/android/gms/internal/ads/zzdny;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdiu;->zzg()Lcom/google/android/gms/internal/ads/zzdmt;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzs()Lcom/google/android/gms/internal/ads/zzcfg;

    .line 147
    .line 148
    .line 149
    move-result-object p4

    .line 150
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/zzdmt;->zzc(Lcom/google/android/gms/internal/ads/zzcfg;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdiu;->zzl()Lcom/google/android/gms/internal/ads/zzdod;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzegb;->zze:Lcom/google/android/gms/internal/ads/zzdoe;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzq()Lcom/google/android/gms/internal/ads/zzcfg;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzdod;->zza(Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzcfg;)V

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Ljava/lang/Boolean;

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_2

    .line 181
    .line 182
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzf:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdrr;->zzF:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 199
    .line 200
    .line 201
    move-result-wide p4

    .line 202
    invoke-virtual {p0, p1, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 203
    .line 204
    .line 205
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdiw;->zza()Lcom/google/android/gms/internal/ads/zzdio;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONArray;)Lcom/google/common/util/concurrent/e;
    .locals 7

    .line 1
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 9
    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcn;->zza:Lcom/google/android/gms/internal/ads/zzfck;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfck;->zza:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 21
    .line 22
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfcw;->zzk:I

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    if-le v0, v3, :cond_4

    .line 27
    .line 28
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzcu:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzf:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-string v6, "nsl"

    .line 57
    .line 58
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzdsd;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzd:Lcom/google/android/gms/internal/ads/zzfdv;

    .line 62
    .line 63
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfdv;->zzc(I)V

    .line 68
    .line 69
    .line 70
    new-instance v4, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .line 74
    .line 75
    :goto_0
    if-ge v2, v0, :cond_3

    .line 76
    .line 77
    if-ge v2, v3, :cond_2

    .line 78
    .line 79
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-direct {p0, p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzegb;->zzg(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/e;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 92
    .line 93
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgdn;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzegb;->zzg(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/e;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance p2, Lcom/google/android/gms/internal/ads/zzega;

    .line 120
    .line 121
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzega;-><init>()V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 125
    .line 126
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    :goto_2
    return-object p0
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzdny;)Lcom/google/common/util/concurrent/e;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcs:Lcom/google/android/gms/internal/ads/zzbcv;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzf:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zzx:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v1, "isNonagon"

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzjb:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 54
    .line 55
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    const-string v1, "skipDeepLinkValidation"

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    .line 83
    .line 84
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzs:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcf;->zzc:Lorg/json/JSONObject;

    .line 90
    .line 91
    const-string v2, "response"

    .line 92
    .line 93
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    const-string p1, "sdk_params"

    .line 97
    .line 98
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    const-string p1, "google.afma.nativeAds.preProcessJson"

    .line 102
    .line 103
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzdny;->zzg(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/e;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefx;

    .line 108
    .line 109
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzefx;-><init>(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/android/gms/internal/ads/zzdny;)V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 113
    .line 114
    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/android/gms/internal/ads/zzdny;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzd:Lcom/google/android/gms/internal/ads/zzfdv;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfdv;->zzb(Lcom/google/common/util/concurrent/e;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "success"

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzcs:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzf:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdrr;->zzy:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 57
    .line 58
    .line 59
    :cond_0
    const-string p0, "json"

    .line 60
    .line 61
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string p1, "ads"

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbol;

    .line 77
    .line 78
    const-string p1, "process json failed"

    .line 79
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbol;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/e;
    .locals 16

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzct:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzegb;->zzf:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zzB:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzegb;->zzd:Lcom/google/android/gms/internal/ads/zzfdv;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfdv;->zza()Lcom/google/common/util/concurrent/e;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zznP:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 51
    .line 52
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v1, 0x0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzegb;->zzh:Landroid/content/Context;

    .line 70
    .line 71
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzegb;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 72
    .line 73
    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzegb;->zzi:Lcom/google/android/gms/internal/ads/zzbxw;

    .line 74
    .line 75
    move-object/from16 v5, p2

    .line 76
    .line 77
    invoke-static {v0, v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzcvt;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzbxw;)Lcom/google/android/gms/internal/ads/zzbya;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    new-instance v4, Lcom/google/android/gms/ads/internal/zzb;

    .line 82
    .line 83
    invoke-direct {v4, v0, v2, v1}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbya;Lcom/google/android/gms/internal/ads/zzbuy;)V

    .line 84
    .line 85
    .line 86
    move-object v8, v2

    .line 87
    move-object v7, v4

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    move-object/from16 v5, p2

    .line 90
    .line 91
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzegb;->zzh:Landroid/content/Context;

    .line 92
    .line 93
    new-instance v2, Lcom/google/android/gms/ads/internal/zzb;

    .line 94
    .line 95
    invoke-direct {v2, v0, v1, v1}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbya;Lcom/google/android/gms/internal/ads/zzbuy;)V

    .line 96
    .line 97
    .line 98
    move-object v8, v1

    .line 99
    move-object v7, v2

    .line 100
    :goto_0
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzegb;->zzc:Lcom/google/android/gms/internal/ads/zzdln;

    .line 101
    .line 102
    move-object/from16 v11, p1

    .line 103
    .line 104
    move-object/from16 v12, p2

    .line 105
    .line 106
    move-object/from16 v13, p3

    .line 107
    .line 108
    move-object v14, v7

    .line 109
    move-object v15, v8

    .line 110
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzdln;->zzd(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/common/util/concurrent/e;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    const/4 v0, 0x2

    .line 115
    new-array v0, v0, [Lcom/google/common/util/concurrent/e;

    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    aput-object v3, v0, v1

    .line 119
    .line 120
    const/4 v1, 0x1

    .line 121
    aput-object v2, v0, v1

    .line 122
    .line 123
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzc([Lcom/google/common/util/concurrent/e;)Lcom/google/android/gms/internal/ads/zzgdl;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    new-instance v11, Lcom/google/android/gms/internal/ads/zzefw;

    .line 128
    .line 129
    move-object v0, v11

    .line 130
    move-object/from16 v1, p0

    .line 131
    .line 132
    move-object/from16 v4, p1

    .line 133
    .line 134
    move-object/from16 v5, p2

    .line 135
    .line 136
    move-object/from16 v6, p3

    .line 137
    .line 138
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzefw;-><init>(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzegb;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 142
    .line 143
    invoke-virtual {v10, v11, v0}, Lcom/google/android/gms/internal/ads/zzgdl;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Lcom/google/common/util/concurrent/e;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcs:Lcom/google/android/gms/internal/ads/zzbcv;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzf:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zzw:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzd:Lcom/google/android/gms/internal/ads/zzfdv;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfdv;->zza()Lcom/google/common/util/concurrent/e;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/google/android/gms/internal/ads/zzefy;

    .line 49
    .line 50
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/android/gms/internal/ads/zzfca;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegb;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 54
    .line 55
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lcom/google/android/gms/internal/ads/zzefz;

    .line 60
    .line 61
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzefz;-><init>(Lcom/google/android/gms/internal/ads/zzegb;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfca;->zzs:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcf;->zzc:Lorg/json/JSONObject;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method
