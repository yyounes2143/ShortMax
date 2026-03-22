.class final Lcom/google/android/gms/internal/ads/zzeid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgn;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdpj;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfca;

.field private final zzf:Lcom/google/common/util/concurrent/e;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcfg;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzbki;

.field private final zzi:Z

.field private final zzj:Lcom/google/android/gms/internal/ads/zzecl;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdsd;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzdsj;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdpj;Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzbki;ZLcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzdsd;Lcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeid;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeid;->zzb:Lcom/google/android/gms/internal/ads/zzdpj;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeid;->zzc:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeid;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeid;->zze:Lcom/google/android/gms/internal/ads/zzfca;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeid;->zzf:Lcom/google/common/util/concurrent/e;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeid;->zzg:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeid;->zzh:Lcom/google/android/gms/internal/ads/zzbki;

    .line 19
    .line 20
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzeid;->zzi:Z

    .line 21
    .line 22
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzeid;->zzj:Lcom/google/android/gms/internal/ads/zzecl;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzeid;->zzk:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzeid;->zzl:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfca;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeid;->zze:Lcom/google/android/gms/internal/ads/zzfca;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwl;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzf:Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdoo;

    .line 10
    .line 11
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzeid;->zze:Lcom/google/android/gms/internal/ads/zzfca;

    .line 12
    .line 13
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzg:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 14
    .line 15
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaG()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzbb:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzb:Lcom/google/android/gms/internal/ads/zzdpj;

    .line 43
    .line 44
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzc:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 45
    .line 46
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfcw;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 47
    .line 48
    invoke-virtual {v3, v4, v6, v6}, Lcom/google/android/gms/internal/ads/zzdpj;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;)Lcom/google/android/gms/internal/ads/zzcfg;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoo;->zzg()Lcom/google/android/gms/internal/ads/zzdem;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzbkx;->zzb(Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzbkw;)V

    .line 57
    .line 58
    .line 59
    new-instance v4, Lcom/google/android/gms/internal/ads/zzdpn;

    .line 60
    .line 61
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzdpn;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzeid;->zza:Landroid/content/Context;

    .line 65
    .line 66
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfg;->zzF()Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzdpn;->zza(Landroid/content/Context;Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoo;->zzl()Lcom/google/android/gms/internal/ads/zzdpi;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzi:Z

    .line 78
    .line 79
    if-eqz v8, :cond_1

    .line 80
    .line 81
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzh:Lcom/google/android/gms/internal/ads/zzbki;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_1
    move-object v8, v6

    .line 88
    :goto_0
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzk:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 89
    .line 90
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-virtual {v7, v3, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzdpi;->zzi(Lcom/google/android/gms/internal/ads/zzcfg;ZLcom/google/android/gms/internal/ads/zzbki;Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    new-instance v8, Lcom/google/android/gms/internal/ads/zzeib;

    .line 102
    .line 103
    invoke-direct {v8, v4, v3}, Lcom/google/android/gms/internal/ads/zzeib;-><init>(Lcom/google/android/gms/internal/ads/zzdpn;Lcom/google/android/gms/internal/ads/zzcfg;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/zzcgy;->zzC(Lcom/google/android/gms/internal/ads/zzcgw;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    new-instance v7, Lcom/google/android/gms/internal/ads/zzeic;

    .line 114
    .line 115
    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/ads/zzeic;-><init>(Lcom/google/android/gms/internal/ads/zzcfg;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/ads/zzcgy;->zzK(Lcom/google/android/gms/internal/ads/zzcgx;)V

    .line 119
    .line 120
    .line 121
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzs:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 122
    .line 123
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfcf;->zzb:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfcf;->zza:Ljava/lang/String;

    .line 126
    .line 127
    invoke-interface {v3, v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzcfg;->zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcfs; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    :cond_2
    :goto_1
    move-object v11, v3

    .line 131
    invoke-interface {v11, v5}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaq(Z)V

    .line 132
    .line 133
    .line 134
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzi:Z

    .line 135
    .line 136
    new-instance v3, Lcom/google/android/gms/ads/internal/zzl;

    .line 137
    .line 138
    const/4 v4, 0x0

    .line 139
    if-eqz v2, :cond_3

    .line 140
    .line 141
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzh:Lcom/google/android/gms/internal/ads/zzbki;

    .line 142
    .line 143
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbki;->zze(Z)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    move v13, v7

    .line 148
    goto :goto_2

    .line 149
    :cond_3
    move v13, v4

    .line 150
    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 151
    .line 152
    .line 153
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzeid;->zza:Landroid/content/Context;

    .line 154
    .line 155
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzs;->zzJ(Landroid/content/Context;)Z

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    if-eqz v2, :cond_4

    .line 160
    .line 161
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzh:Lcom/google/android/gms/internal/ads/zzbki;

    .line 162
    .line 163
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbki;->zzd()Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-eqz v7, :cond_4

    .line 168
    .line 169
    move v15, v5

    .line 170
    goto :goto_3

    .line 171
    :cond_4
    move v15, v4

    .line 172
    :goto_3
    if-eqz v2, :cond_5

    .line 173
    .line 174
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzh:Lcom/google/android/gms/internal/ads/zzbki;

    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbki;->zza()F

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :goto_4
    move/from16 v16, v2

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_5
    const/4 v2, 0x0

    .line 184
    goto :goto_4

    .line 185
    :goto_5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzeid;->zze:Lcom/google/android/gms/internal/ads/zzfca;

    .line 186
    .line 187
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzO:Z

    .line 188
    .line 189
    iget-boolean v7, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzP:Z

    .line 190
    .line 191
    const/16 v17, -0x1

    .line 192
    .line 193
    move-object v12, v3

    .line 194
    move/from16 v18, p1

    .line 195
    .line 196
    move/from16 v19, v4

    .line 197
    .line 198
    move/from16 v20, v7

    .line 199
    .line 200
    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    .line 201
    .line 202
    .line 203
    if-eqz p3, :cond_6

    .line 204
    .line 205
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcwl;->zzf()V

    .line 206
    .line 207
    .line 208
    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 209
    .line 210
    .line 211
    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoo;->zzh()Lcom/google/android/gms/internal/ads/zzdgc;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    iget v12, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzQ:I

    .line 218
    .line 219
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 220
    .line 221
    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzB:Ljava/lang/String;

    .line 222
    .line 223
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzs:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 224
    .line 225
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfcf;->zzb:Ljava/lang/String;

    .line 226
    .line 227
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcf;->zza:Ljava/lang/String;

    .line 228
    .line 229
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzc:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 230
    .line 231
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfca;->zzb()Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_7

    .line 236
    .line 237
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzj:Lcom/google/android/gms/internal/ads/zzecl;

    .line 238
    .line 239
    :cond_7
    move-object/from16 v20, v6

    .line 240
    .line 241
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzfcw;->zzf:Ljava/lang/String;

    .line 242
    .line 243
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzccb;->zzr()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v21

    .line 247
    const/4 v8, 0x0

    .line 248
    const/4 v10, 0x0

    .line 249
    move-object v7, v4

    .line 250
    move-object v6, v15

    .line 251
    move-object v15, v3

    .line 252
    move-object/from16 v16, v6

    .line 253
    .line 254
    move-object/from16 v17, v0

    .line 255
    .line 256
    move-object/from16 v18, v2

    .line 257
    .line 258
    move-object/from16 v19, p3

    .line 259
    .line 260
    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/internal/ads/zzcfg;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcwl;Lcom/google/android/gms/internal/ads/zzbtj;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeid;->zzl:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 264
    .line 265
    move-object/from16 v2, p2

    .line 266
    .line 267
    invoke-static {v2, v4, v5, v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdsj;)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :goto_6
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 272
    .line 273
    const-string v2, ""

    .line 274
    .line 275
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .line 277
    .line 278
    return-void
.end method
