.class public final Lcom/google/android/gms/internal/ads/zzesw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesw;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzc:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzesw;)Lcom/google/android/gms/internal/ads/zzesx;
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesw;->zza:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzc:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfcw;->zza()Z

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfsa;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfsa;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfsa;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfsa;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v7, :cond_0

    .line 21
    .line 22
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzds:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzesx;

    .line 41
    .line 42
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzesx;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_0
    if-nez v7, :cond_1

    .line 51
    .line 52
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzdo:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 53
    .line 54
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    :cond_1
    if-eqz v7, :cond_3

    .line 71
    .line 72
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzdq:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 73
    .line 74
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_3

    .line 89
    .line 90
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfse;->zzj(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfse;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzdz:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 95
    .line 96
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/lang/Long;

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v4

    .line 110
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbzs;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-interface {v6}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfse;->zzh(JZ)Lcom/google/android/gms/internal/ads/zzfsa;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzdw:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 127
    .line 128
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_4

    .line 143
    .line 144
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 145
    .line 146
    iget v4, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 147
    .line 148
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbde;->zzdv:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 149
    .line 150
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Ljava/lang/Integer;

    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-ge v4, v5, :cond_4

    .line 165
    .line 166
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsf;->zzi(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfsf;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfsf;->zzj()V

    .line 171
    .line 172
    .line 173
    :cond_4
    if-nez v7, :cond_5

    .line 174
    .line 175
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzdp:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 176
    .line 177
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    check-cast v4, Ljava/lang/Boolean;

    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-nez v4, :cond_6

    .line 192
    .line 193
    :cond_5
    if-eqz v7, :cond_8

    .line 194
    .line 195
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzdr:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 196
    .line 197
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    check-cast v4, Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-eqz v4, :cond_8

    .line 212
    .line 213
    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsf;->zzi(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfsf;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsb;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfsb;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 222
    .line 223
    iget v5, v5, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 224
    .line 225
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbde;->zzdv:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 226
    .line 227
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    check-cast v6, Ljava/lang/Integer;

    .line 236
    .line 237
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    if-lt v5, v6, :cond_7

    .line 242
    .line 243
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzdA:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 244
    .line 245
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Ljava/lang/Long;

    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 256
    .line 257
    .line 258
    move-result-wide v2

    .line 259
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbzs;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-interface {v5}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    invoke-virtual {v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzfsf;->zzh(JZ)Lcom/google/android/gms/internal/ads/zzfsa;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsb;->zzd()Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsb;->zze()Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    move v6, v0

    .line 284
    move-object v4, v2

    .line 285
    move v5, v3

    .line 286
    goto :goto_0

    .line 287
    :cond_8
    move-object v4, v2

    .line 288
    move v5, v3

    .line 289
    move v6, v5

    .line 290
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzesx;

    .line 291
    .line 292
    move-object v2, v0

    .line 293
    move-object v3, v1

    .line 294
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzesx;-><init>(Lcom/google/android/gms/internal/ads/zzfsa;Lcom/google/android/gms/internal/ads/zzfsa;ZZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :goto_1
    const-string v1, "PerAppIdSignal"

    .line 299
    .line 300
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzc:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 308
    .line 309
    new-instance v0, Lcom/google/android/gms/internal/ads/zzesx;

    .line 310
    .line 311
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfcw;->zza()Z

    .line 312
    .line 313
    .line 314
    move-result p0

    .line 315
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzesx;-><init>(Z)V

    .line 316
    .line 317
    .line 318
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/16 v0, 0x35

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzesv;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzesv;-><init>(Lcom/google/android/gms/internal/ads/zzesw;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesw;->zzb:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
