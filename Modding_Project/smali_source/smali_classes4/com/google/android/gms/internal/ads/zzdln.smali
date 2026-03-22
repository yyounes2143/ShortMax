.class public final Lcom/google/android/gms/internal/ads/zzdln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdmc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdmh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdsd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/internal/ads/zzdmh;Lcom/google/android/gms/internal/ads/zzdsd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdln;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdln;->zzb:Lcom/google/android/gms/internal/ads/zzdmc;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdln;->zzc:Lcom/google/android/gms/internal/ads/zzdmh;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdln;->zzd:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdln;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lorg/json/JSONObject;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;)Lcom/google/android/gms/internal/ads/zzdit;
    .locals 3

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
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdln;->zzd:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrr;->zzA:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/google/android/gms/internal/ads/zzdit;

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/util/List;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzP(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgp;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzM(Lcom/google/android/gms/internal/ads/zzbgp;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgp;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzQ(Lcom/google/android/gms/internal/ads/zzbgp;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgi;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzJ(Lcom/google/android/gms/internal/ads/zzbgi;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzdmc;->zzl(Lorg/json/JSONObject;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzS(Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzdmc;->zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/client/zzfa;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzL(Lcom/google/android/gms/ads/internal/client/zzfa;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfg;

    .line 103
    .line 104
    if-eqz p1, :cond_1

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzad(Lcom/google/android/gms/internal/ads/zzcfg;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzF()Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdit;->zzac(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzq()Lcom/google/android/gms/internal/ads/zzcgi;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzab(Lcom/google/android/gms/ads/internal/client/zzed;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdit;->zzd()Landroid/os/Bundle;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-interface {p8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    check-cast p2, Landroid/os/Bundle;

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {p9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfg;

    .line 141
    .line 142
    if-eqz p1, :cond_2

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzO(Lcom/google/android/gms/internal/ads/zzcfg;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzF()Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzae(Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzfG:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 155
    .line 156
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Ljava/lang/Boolean;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_3

    .line 171
    .line 172
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzdln;->zzf(Lorg/json/JSONObject;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-nez p1, :cond_3

    .line 177
    .line 178
    invoke-virtual {p0, p10}, Lcom/google/android/gms/internal/ads/zzdit;->zzU(Lcom/google/common/util/concurrent/e;)V

    .line 179
    .line 180
    .line 181
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcak;

    .line 182
    .line 183
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcak;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzX(Lcom/google/android/gms/internal/ads/zzcak;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_3
    invoke-interface {p10}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfg;

    .line 195
    .line 196
    if-eqz p1, :cond_4

    .line 197
    .line 198
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzT(Lcom/google/android/gms/internal/ads/zzcfg;)V

    .line 199
    .line 200
    .line 201
    :cond_4
    :goto_0
    invoke-interface {p11}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-eqz p2, :cond_6

    .line 216
    .line 217
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    check-cast p2, Lcom/google/android/gms/internal/ads/zzdmg;

    .line 222
    .line 223
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzdmg;->zza:I

    .line 224
    .line 225
    const/4 p4, 0x1

    .line 226
    if-eq p3, p4, :cond_5

    .line 227
    .line 228
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Ljava/lang/String;

    .line 229
    .line 230
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmg;->zzd:Lcom/google/android/gms/internal/ads/zzbgc;

    .line 231
    .line 232
    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzdit;->zzN(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbgc;)V

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_5
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Ljava/lang/String;

    .line 237
    .line 238
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmg;->zzc:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzdit;->zzZ(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_6
    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdln;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdit;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcx:Lcom/google/android/gms/internal/ads/zzbcv;

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
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdln;->zzd:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrr;->zzS:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdit;

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdit;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v0, "template_id"

    .line 48
    .line 49
    const/4 v1, -0x1

    .line 50
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdit;->zzaa(I)V

    .line 55
    .line 56
    .line 57
    const-string v0, "custom_template_id"

    .line 58
    .line 59
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdit;->zzK(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "omid_settings"

    .line 67
    .line 68
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    const-string v2, "omid_partner_name"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move-object v0, v1

    .line 83
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdit;->zzV(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcn;->zza:Lcom/google/android/gms/internal/ads/zzfck;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfck;->zza:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdit;->zzc()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzg:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/4 v2, 0x1

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdit;->zzc()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/4 v3, 0x3

    .line 112
    if-ne v0, v3, :cond_4

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdit;->zzA()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzh:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdit;->zzA()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_2

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzehf;

    .line 134
    .line 135
    const-string p1, "Unexpected custom template id in the response."

    .line 136
    .line 137
    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzehf;

    .line 142
    .line 143
    const-string p1, "No custom template id for custom template ad response."

    .line 144
    .line 145
    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_4
    :goto_1
    const-string p1, "rating"

    .line 150
    .line 151
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 152
    .line 153
    invoke-virtual {p3, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 154
    .line 155
    .line 156
    move-result-wide v2

    .line 157
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdit;->zzY(D)V

    .line 158
    .line 159
    .line 160
    const-string p1, "headline"

    .line 161
    .line 162
    invoke-virtual {p3, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzfca;->zzM:Z

    .line 167
    .line 168
    if-eqz p2, :cond_5

    .line 169
    .line 170
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzz()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string p2, " : "

    .line 186
    .line 187
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdit;->zzZ(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string p1, "body"

    .line 201
    .line 202
    invoke-virtual {p3, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdit;->zzZ(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string p1, "call_to_action"

    .line 210
    .line 211
    invoke-virtual {p3, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdit;->zzZ(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string p1, "store"

    .line 219
    .line 220
    invoke-virtual {p3, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdit;->zzZ(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string p1, "price"

    .line 228
    .line 229
    invoke-virtual {p3, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdit;->zzZ(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string p1, "advertiser"

    .line 237
    .line 238
    invoke-virtual {p3, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdit;->zzZ(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    return-object p0

    .line 246
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehf;

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdit;->zzc()I

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string p3, "Invalid template ID: "

    .line 258
    .line 259
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-direct {p1, v2, p0}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw p1
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzdln;)Lcom/google/android/gms/internal/ads/zzdsd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdln;->zzd:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 2
    .line 3
    return-object p0
.end method

.method private final zze(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcx:Lcom/google/android/gms/internal/ads/zzbcv;

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
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlm;

    .line 20
    .line 21
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzdlm;-><init>(Lcom/google/android/gms/internal/ads/zzdln;Lcom/google/android/gms/internal/ads/zzdrr;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdln;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 25
    .line 26
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzr(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgdj;Ljava/util/concurrent/Executor;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object p1
.end method

.method private static final zzf(Lorg/json/JSONObject;)Z
    .locals 1

    .line 1
    const-string v0, "template_id"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/common/util/concurrent/e;
    .locals 17
    .param p4    # Lcom/google/android/gms/ads/internal/zzb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzbya;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v7, p3

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzcs:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzdln;->zzd:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrr;->zzz:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzdln;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 49
    .line 50
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdlk;

    .line 51
    .line 52
    move-object/from16 v8, p2

    .line 53
    .line 54
    invoke-direct {v2, v13, v0, v8, v7}, Lcom/google/android/gms/internal/ads/zzdlk;-><init>(Lcom/google/android/gms/internal/ads/zzdln;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONObject;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/e;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zzT:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 62
    .line 63
    invoke-direct {v13, v9, v1}, Lcom/google/android/gms/internal/ads/zzdln;->zze(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 64
    .line 65
    .line 66
    iget-object v10, v13, Lcom/google/android/gms/internal/ads/zzdln;->zzb:Lcom/google/android/gms/internal/ads/zzdmc;

    .line 67
    .line 68
    const-string v1, "images"

    .line 69
    .line 70
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrr;->zzU:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 71
    .line 72
    invoke-virtual {v10, v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzdmc;->zzf(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zzV:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 77
    .line 78
    invoke-direct {v13, v11, v1}, Lcom/google/android/gms/internal/ads/zzdln;->zze(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 79
    .line 80
    .line 81
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcn;->zzb:Lcom/google/android/gms/internal/ads/zzfcm;

    .line 82
    .line 83
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzfcm;->zzb:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 84
    .line 85
    const-string v2, "images"

    .line 86
    .line 87
    move-object v0, v10

    .line 88
    move-object/from16 v1, p3

    .line 89
    .line 90
    move-object/from16 v3, p2

    .line 91
    .line 92
    move-object v4, v12

    .line 93
    move-object/from16 v5, p4

    .line 94
    .line 95
    move-object/from16 v6, p5

    .line 96
    .line 97
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdmc;->zzg(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/common/util/concurrent/e;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrr;->zzX:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 102
    .line 103
    invoke-direct {v13, v14, v0}, Lcom/google/android/gms/internal/ads/zzdln;->zze(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 104
    .line 105
    .line 106
    const-string v0, "secondary_image"

    .line 107
    .line 108
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zzY:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 109
    .line 110
    invoke-virtual {v10, v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzdmc;->zze(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrr;->zzZ:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 115
    .line 116
    invoke-direct {v13, v6, v0}, Lcom/google/android/gms/internal/ads/zzdln;->zze(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 117
    .line 118
    .line 119
    const-string v0, "app_icon"

    .line 120
    .line 121
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zzaa:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 122
    .line 123
    invoke-virtual {v10, v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzdmc;->zze(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrr;->zzab:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 128
    .line 129
    invoke-direct {v13, v15, v0}, Lcom/google/android/gms/internal/ads/zzdln;->zze(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 130
    .line 131
    .line 132
    const-string v0, "attribution"

    .line 133
    .line 134
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zzac:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 135
    .line 136
    invoke-virtual {v10, v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzd(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrr;->zzad:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 141
    .line 142
    invoke-direct {v13, v5, v0}, Lcom/google/android/gms/internal/ads/zzdln;->zze(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 143
    .line 144
    .line 145
    move-object v0, v10

    .line 146
    move-object/from16 v1, p3

    .line 147
    .line 148
    move-object/from16 v2, p2

    .line 149
    .line 150
    move-object v3, v12

    .line 151
    move-object/from16 v4, p4

    .line 152
    .line 153
    move-object v8, v5

    .line 154
    move-object/from16 v5, p5

    .line 155
    .line 156
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdmc;->zzj(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/common/util/concurrent/e;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrr;->zzaf:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 161
    .line 162
    invoke-direct {v13, v10, v0}, Lcom/google/android/gms/internal/ads/zzdln;->zze(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 163
    .line 164
    .line 165
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zznr:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 166
    .line 167
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_3

    .line 182
    .line 183
    const-string v0, "video"

    .line 184
    .line 185
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_3

    .line 190
    .line 191
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const-string v1, "flags"

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_3

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-nez v0, :cond_1

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_1
    const/4 v1, 0x0

    .line 211
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-ge v1, v2, :cond_3

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    if-eqz v2, :cond_2

    .line 222
    .line 223
    const-string v3, "key"

    .line 224
    .line 225
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    const-string v4, "afma_video_player_type"

    .line 230
    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_2

    .line 236
    .line 237
    :try_start_0
    const-string v0, "value"

    .line 238
    .line 239
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    const/4 v1, 0x3

    .line 248
    if-ne v0, v1, :cond_3

    .line 249
    .line 250
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzdln;->zzb:Lcom/google/android/gms/internal/ads/zzdmc;

    .line 251
    .line 252
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzdmc;->zzh(Lcom/google/common/util/concurrent/e;)Lcom/google/common/util/concurrent/e;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zzai:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 257
    .line 258
    invoke-direct {v13, v0, v1}, Lcom/google/android/gms/internal/ads/zzdln;->zze(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 259
    .line 260
    .line 261
    :goto_1
    move-object v12, v0

    .line 262
    goto :goto_3

    .line 263
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 264
    .line 265
    goto :goto_0

    .line 266
    :catch_0
    :cond_3
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    .line 267
    .line 268
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    goto :goto_1

    .line 276
    :goto_3
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzdln;->zzc:Lcom/google/android/gms/internal/ads/zzdmh;

    .line 277
    .line 278
    const-string v1, "custom_assets"

    .line 279
    .line 280
    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzdmh;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/common/util/concurrent/e;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrr;->zzak:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 285
    .line 286
    invoke-direct {v13, v5, v0}, Lcom/google/android/gms/internal/ads/zzdln;->zze(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 287
    .line 288
    .line 289
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzdln;->zzb:Lcom/google/android/gms/internal/ads/zzdmc;

    .line 290
    .line 291
    move-object/from16 v1, p4

    .line 292
    .line 293
    move-object/from16 v2, p5

    .line 294
    .line 295
    invoke-virtual {v0, v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzdmc;->zzi(Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;)Lcom/google/common/util/concurrent/e;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrr;->zzam:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 300
    .line 301
    invoke-direct {v13, v4, v0}, Lcom/google/android/gms/internal/ads/zzdln;->zze(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzdrr;)Lcom/google/common/util/concurrent/e;

    .line 302
    .line 303
    .line 304
    new-instance v0, Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzfG:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 337
    .line 338
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    check-cast v1, Ljava/lang/Boolean;

    .line 347
    .line 348
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_4

    .line 353
    .line 354
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzdln;->zzf(Lorg/json/JSONObject;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_5

    .line 359
    .line 360
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgdl;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdll;

    .line 368
    .line 369
    move-object v0, v2

    .line 370
    move-object/from16 v1, p0

    .line 371
    .line 372
    move-object/from16 v16, v2

    .line 373
    .line 374
    move-object v2, v9

    .line 375
    move-object v9, v3

    .line 376
    move-object v3, v11

    .line 377
    move-object v11, v4

    .line 378
    move-object v4, v15

    .line 379
    move-object v15, v5

    .line 380
    move-object v5, v6

    .line 381
    move-object v6, v8

    .line 382
    move-object/from16 v7, p3

    .line 383
    .line 384
    move-object v8, v10

    .line 385
    move-object v10, v9

    .line 386
    move-object v9, v12

    .line 387
    move-object v12, v10

    .line 388
    move-object v10, v14

    .line 389
    move-object v14, v12

    .line 390
    move-object v12, v15

    .line 391
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzdll;-><init>(Lcom/google/android/gms/internal/ads/zzdln;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lorg/json/JSONObject;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;Lcom/google/common/util/concurrent/e;)V

    .line 392
    .line 393
    .line 394
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzdln;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 395
    .line 396
    move-object/from16 v1, v16

    .line 397
    .line 398
    invoke-virtual {v14, v1, v0}, Lcom/google/android/gms/internal/ads/zzgdl;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    return-object v0
.end method
