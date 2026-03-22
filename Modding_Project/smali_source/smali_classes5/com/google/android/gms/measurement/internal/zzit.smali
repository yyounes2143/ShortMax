.class final Lcom/google/android/gms/measurement/internal/zzit;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@23.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzbg;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzjd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzbg;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjd;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "_r"

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjd;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjd;->zzL()Lcom/google/android/gms/measurement/internal/zzpg;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzZ()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjd;->zzL()Lcom/google/android/gms/measurement/internal/zzpg;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzn()Lcom/google/android/gms/measurement/internal/zzlp;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 23
    .line 24
    .line 25
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzic;->zzL()V

    .line 28
    .line 29
    .line 30
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 31
    .line 32
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    .line 41
    .line 42
    const-string v6, "_iap"

    .line 43
    .line 44
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const/4 v15, 0x0

    .line 49
    if-nez v6, :cond_0

    .line 50
    .line 51
    const-string v6, "_iapx"

    .line 52
    .line 53
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_0

    .line 58
    .line 59
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v2, "Generating a payload for this event is not available. package_name, event_name"

    .line 70
    .line 71
    invoke-virtual {v0, v2, v14, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_d

    .line 75
    .line 76
    :cond_0
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 77
    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()Lcom/google/android/gms/internal/measurement/zzhz;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzav;->zzb()V

    .line 87
    .line 88
    .line 89
    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v6, v14}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    const/4 v12, 0x0

    .line 98
    if-nez v6, :cond_1

    .line 99
    .line 100
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v3, "Log and bundle not available. package_name"

    .line 111
    .line 112
    invoke-virtual {v0, v3, v14}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    new-array v15, v12, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    :goto_0
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_d

    .line 125
    .line 126
    :catchall_0
    move-exception v0

    .line 127
    move-object v4, v2

    .line 128
    goto/16 :goto_e

    .line 129
    .line 130
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-nez v8, :cond_2

    .line 135
    .line 136
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v3, "Log and bundle disabled. package_name"

    .line 147
    .line 148
    invoke-virtual {v0, v3, v14}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    new-array v15, v12, [B

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzid;->zzaE()Lcom/google/android/gms/internal/measurement/zzic;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    const/4 v10, 0x1

    .line 159
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/measurement/zzic;->zza(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 160
    .line 161
    .line 162
    const-string v8, "android"

    .line 163
    .line 164
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-nez v8, :cond_3

    .line 176
    .line 177
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 182
    .line 183
    .line 184
    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-nez v8, :cond_4

    .line 193
    .line 194
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    check-cast v8, Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 205
    .line 206
    .line 207
    :cond_4
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    if-nez v8, :cond_5

    .line 216
    .line 217
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    check-cast v8, Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 228
    .line 229
    .line 230
    :cond_5
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    .line 231
    .line 232
    .line 233
    move-result-wide v8

    .line 234
    const-wide/32 v16, -0x80000000

    .line 235
    .line 236
    .line 237
    cmp-long v8, v8, v16

    .line 238
    .line 239
    if-eqz v8, :cond_6

    .line 240
    .line 241
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    .line 242
    .line 243
    .line 244
    move-result-wide v8

    .line 245
    long-to-int v8, v8

    .line 246
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzaj(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 247
    .line 248
    .line 249
    :cond_6
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()J

    .line 250
    .line 251
    .line 252
    move-result-wide v8

    .line 253
    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzN(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzB()J

    .line 257
    .line 258
    .line 259
    move-result-wide v8

    .line 260
    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzar(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzf()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    if-nez v9, :cond_7

    .line 272
    .line 273
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 274
    .line 275
    .line 276
    :cond_7
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzak()J

    .line 277
    .line 278
    .line 279
    move-result-wide v8

    .line 280
    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/measurement/zzic;->zzay(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 281
    .line 282
    .line 283
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 284
    .line 285
    invoke-virtual {v8, v14}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()J

    .line 290
    .line 291
    .line 292
    move-result-wide v10

    .line 293
    invoke-virtual {v13, v10, v11}, Lcom/google/android/gms/internal/measurement/zzic;->zzY(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzB()Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_8

    .line 301
    .line 302
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 303
    .line 304
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v9

    .line 312
    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zzC(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eqz v3, :cond_8

    .line 317
    .line 318
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 319
    .line 320
    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-eqz v3, :cond_8

    .line 325
    .line 326
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    if-nez v3, :cond_8

    .line 331
    .line 332
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/measurement/zzic;->zzam(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 333
    .line 334
    .line 335
    :cond_8
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzjl;->zzk()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzat(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 340
    .line 341
    .line 342
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 343
    .line 344
    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    if-eqz v3, :cond_9

    .line 349
    .line 350
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Z

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    if-eqz v3, :cond_9

    .line 355
    .line 356
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzq()Lcom/google/android/gms/measurement/internal/zznn;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-virtual {v3, v5, v8}, Lcom/google/android/gms/measurement/internal/zznn;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjl;)Landroid/util/Pair;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Z

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    if-eqz v5, :cond_9

    .line 373
    .line 374
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast v5, Ljava/lang/CharSequence;

    .line 377
    .line 378
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 379
    .line 380
    .line 381
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    if-nez v5, :cond_9

    .line 383
    .line 384
    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast v5, Ljava/lang/String;

    .line 387
    .line 388
    iget-wide v9, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    .line 389
    .line 390
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    invoke-static {v5, v9}, Lcom/google/android/gms/measurement/internal/zzlp;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    .line 400
    .line 401
    :try_start_3
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 402
    .line 403
    if-eqz v3, :cond_9

    .line 404
    .line 405
    check-cast v3, Ljava/lang/Boolean;

    .line 406
    .line 407
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzT(Z)Lcom/google/android/gms/internal/measurement/zzic;

    .line 412
    .line 413
    .line 414
    goto :goto_3

    .line 415
    :catch_0
    move-exception v0

    .line 416
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 417
    .line 418
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    const-string v4, "Resettable device id encryption failed"

    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    new-array v15, v12, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    .line 437
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 438
    .line 439
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    goto/16 :goto_1

    .line 444
    .line 445
    :cond_9
    :goto_3
    :try_start_4
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 446
    .line 447
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzu()Lcom/google/android/gms/measurement/internal/zzba;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjf;->zzw()V

    .line 452
    .line 453
    .line 454
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 455
    .line 456
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzF(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzu()Lcom/google/android/gms/measurement/internal/zzba;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjf;->zzw()V

    .line 464
    .line 465
    .line 466
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 467
    .line 468
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzu()Lcom/google/android/gms/measurement/internal/zzba;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzba;->zzb()J

    .line 476
    .line 477
    .line 478
    move-result-wide v9

    .line 479
    long-to-int v5, v9

    .line 480
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzI(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzu()Lcom/google/android/gms/measurement/internal/zzba;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzba;->zzc()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 492
    .line 493
    .line 494
    :try_start_5
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 495
    .line 496
    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    if-eqz v3, :cond_a

    .line 501
    .line 502
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzd()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    if-eqz v3, :cond_a

    .line 507
    .line 508
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzd()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    check-cast v3, Ljava/lang/String;

    .line 517
    .line 518
    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    .line 519
    .line 520
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v5

    .line 524
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzlp;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 529
    .line 530
    .line 531
    goto :goto_4

    .line 532
    :catch_1
    move-exception v0

    .line 533
    move-object v4, v2

    .line 534
    move v3, v12

    .line 535
    goto/16 :goto_c

    .line 536
    .line 537
    :cond_a
    :goto_4
    :try_start_6
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzl()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    if-nez v3, :cond_b

    .line 546
    .line 547
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzl()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    check-cast v3, Ljava/lang/String;

    .line 556
    .line 557
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 558
    .line 559
    .line 560
    :cond_b
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 565
    .line 566
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 567
    .line 568
    .line 569
    move-result-object v8

    .line 570
    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzn(Ljava/lang/String;)Ljava/util/List;

    .line 571
    .line 572
    .line 573
    move-result-object v8

    .line 574
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 575
    .line 576
    .line 577
    move-result-object v9

    .line 578
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 579
    .line 580
    .line 581
    move-result v10

    .line 582
    if-eqz v10, :cond_d

    .line 583
    .line 584
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v10

    .line 588
    check-cast v10, Lcom/google/android/gms/measurement/internal/zzpn;

    .line 589
    .line 590
    const-string v11, "_lte"

    .line 591
    .line 592
    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    .line 593
    .line 594
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v11

    .line 598
    if-eqz v11, :cond_c

    .line 599
    .line 600
    goto :goto_6

    .line 601
    :cond_c
    const/4 v12, 0x0

    .line 602
    goto :goto_5

    .line 603
    :cond_d
    move-object v10, v15

    .line 604
    :goto_6
    const-wide/16 v24, 0x0

    .line 605
    .line 606
    if-eqz v10, :cond_e

    .line 607
    .line 608
    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 609
    .line 610
    if-nez v9, :cond_f

    .line 611
    .line 612
    :cond_e
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzpn;

    .line 613
    .line 614
    const-string v19, "auto"

    .line 615
    .line 616
    const-string v20, "_lte"

    .line 617
    .line 618
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 619
    .line 620
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    .line 621
    .line 622
    .line 623
    move-result-object v10

    .line 624
    invoke-interface {v10}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 625
    .line 626
    .line 627
    move-result-wide v21

    .line 628
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 629
    .line 630
    .line 631
    move-result-object v23

    .line 632
    move-object/from16 v17, v9

    .line 633
    .line 634
    move-object/from16 v18, v3

    .line 635
    .line 636
    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/measurement/internal/zzpn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 643
    .line 644
    .line 645
    move-result-object v3

    .line 646
    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/zzav;->zzl(Lcom/google/android/gms/measurement/internal/zzpn;)Z

    .line 647
    .line 648
    .line 649
    :cond_f
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 650
    .line 651
    .line 652
    move-result v3

    .line 653
    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zziu;

    .line 654
    .line 655
    const/4 v9, 0x0

    .line 656
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 657
    .line 658
    .line 659
    move-result v10

    .line 660
    if-ge v9, v10, :cond_10

    .line 661
    .line 662
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->zzm()Lcom/google/android/gms/internal/measurement/zzit;

    .line 663
    .line 664
    .line 665
    move-result-object v10

    .line 666
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v11

    .line 670
    check-cast v11, Lcom/google/android/gms/measurement/internal/zzpn;

    .line 671
    .line 672
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    .line 673
    .line 674
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzit;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzit;

    .line 675
    .line 676
    .line 677
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v11

    .line 681
    check-cast v11, Lcom/google/android/gms/measurement/internal/zzpn;

    .line 682
    .line 683
    iget-wide v11, v11, Lcom/google/android/gms/measurement/internal/zzpn;->zzd:J

    .line 684
    .line 685
    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzit;->zza(J)Lcom/google/android/gms/internal/measurement/zzit;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    .line 689
    .line 690
    .line 691
    move-result-object v11

    .line 692
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v12

    .line 696
    check-cast v12, Lcom/google/android/gms/measurement/internal/zzpn;

    .line 697
    .line 698
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 699
    .line 700
    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/zzpk;->zzc(Lcom/google/android/gms/internal/measurement/zzit;Ljava/lang/Object;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    .line 704
    .line 705
    .line 706
    move-result-object v10

    .line 707
    check-cast v10, Lcom/google/android/gms/internal/measurement/zziu;

    .line 708
    .line 709
    aput-object v10, v3, v9

    .line 710
    .line 711
    add-int/lit8 v9, v9, 0x1

    .line 712
    .line 713
    goto :goto_7

    .line 714
    :cond_10
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 715
    .line 716
    .line 717
    move-result-object v3

    .line 718
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzq(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 719
    .line 720
    .line 721
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 722
    .line 723
    invoke-virtual {v3, v6, v13}, Lcom/google/android/gms/measurement/internal/zzpg;->zzI(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzic;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v3, v6, v13}, Lcom/google/android/gms/measurement/internal/zzpg;->zzJ(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzic;)V

    .line 727
    .line 728
    .line 729
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgv;->zza(Lcom/google/android/gms/measurement/internal/zzbg;)Lcom/google/android/gms/measurement/internal/zzgv;

    .line 730
    .line 731
    .line 732
    move-result-object v8

    .line 733
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 734
    .line 735
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    .line 736
    .line 737
    .line 738
    move-result-object v9

    .line 739
    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzgv;->zzd:Landroid/os/Bundle;

    .line 740
    .line 741
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 742
    .line 743
    .line 744
    move-result-object v11

    .line 745
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzav;->zzU(Ljava/lang/String;)Landroid/os/Bundle;

    .line 746
    .line 747
    .line 748
    move-result-object v11

    .line 749
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzpp;->zzI(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    .line 753
    .line 754
    .line 755
    move-result-object v9

    .line 756
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 757
    .line 758
    .line 759
    move-result-object v11

    .line 760
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;)I

    .line 761
    .line 762
    .line 763
    move-result v11

    .line 764
    invoke-virtual {v9, v8, v11}, Lcom/google/android/gms/measurement/internal/zzpp;->zzG(Lcom/google/android/gms/measurement/internal/zzgv;I)V

    .line 765
    .line 766
    .line 767
    const-string v8, "_c"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 768
    .line 769
    move-object/from16 v22, v2

    .line 770
    .line 771
    const-wide/16 v1, 0x1

    .line 772
    .line 773
    :try_start_7
    invoke-virtual {v10, v8, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 777
    .line 778
    .line 779
    move-result-object v8

    .line 780
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 781
    .line 782
    .line 783
    move-result-object v8

    .line 784
    const-string v9, "Marking in-app purchase as real-time"

    .line 785
    .line 786
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v10, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 790
    .line 791
    .line 792
    const-string v8, "_o"

    .line 793
    .line 794
    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zzc:Ljava/lang/String;

    .line 795
    .line 796
    invoke-virtual {v10, v8, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    .line 800
    .line 801
    .line 802
    move-result-object v8

    .line 803
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v9

    .line 807
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzh;->zzay()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v15

    .line 811
    invoke-virtual {v8, v9, v15}, Lcom/google/android/gms/measurement/internal/zzpp;->zzaa(Ljava/lang/String;Ljava/lang/String;)Z

    .line 812
    .line 813
    .line 814
    move-result v8

    .line 815
    if-eqz v8, :cond_11

    .line 816
    .line 817
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    .line 818
    .line 819
    .line 820
    move-result-object v8

    .line 821
    const-string v9, "_dbg"

    .line 822
    .line 823
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-virtual {v8, v10, v9, v1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzM(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    .line 831
    .line 832
    .line 833
    move-result-object v2

    .line 834
    invoke-virtual {v2, v10, v0, v1}, Lcom/google/android/gms/measurement/internal/zzpp;->zzM(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 835
    .line 836
    .line 837
    goto :goto_8

    .line 838
    :catchall_1
    move-exception v0

    .line 839
    move-object/from16 v4, v22

    .line 840
    .line 841
    goto/16 :goto_e

    .line 842
    .line 843
    :cond_11
    :goto_8
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    .line 848
    .line 849
    invoke-virtual {v0, v14, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbc;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    if-nez v0, :cond_12

    .line 854
    .line 855
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbc;

    .line 856
    .line 857
    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    .line 858
    .line 859
    const/16 v20, 0x0

    .line 860
    .line 861
    const/16 v21, 0x0

    .line 862
    .line 863
    const-wide/16 v17, 0x0

    .line 864
    .line 865
    move-wide/from16 v26, v8

    .line 866
    .line 867
    move-wide/from16 v8, v17

    .line 868
    .line 869
    move-object/from16 v28, v10

    .line 870
    .line 871
    move-object/from16 v29, v11

    .line 872
    .line 873
    const/4 v2, 0x1

    .line 874
    move-wide/from16 v10, v17

    .line 875
    .line 876
    const-wide/16 v15, 0x0

    .line 877
    .line 878
    move-object/from16 v30, v12

    .line 879
    .line 880
    move-object v2, v13

    .line 881
    move-wide v12, v15

    .line 882
    const-wide/16 v16, 0x0

    .line 883
    .line 884
    const/16 v18, 0x0

    .line 885
    .line 886
    const/16 v19, 0x0

    .line 887
    .line 888
    move-object/from16 v31, v5

    .line 889
    .line 890
    move-object v5, v0

    .line 891
    move-object v15, v6

    .line 892
    move-object v6, v14

    .line 893
    move-object/from16 v32, v7

    .line 894
    .line 895
    move-object v7, v1

    .line 896
    move-object/from16 v33, v14

    .line 897
    .line 898
    move-object/from16 v34, v15

    .line 899
    .line 900
    const/16 v23, 0x0

    .line 901
    .line 902
    move-wide/from16 v14, v26

    .line 903
    .line 904
    invoke-direct/range {v5 .. v21}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 905
    .line 906
    .line 907
    move-wide/from16 v12, v24

    .line 908
    .line 909
    goto :goto_9

    .line 910
    :cond_12
    move-object/from16 v31, v5

    .line 911
    .line 912
    move-object/from16 v34, v6

    .line 913
    .line 914
    move-object/from16 v32, v7

    .line 915
    .line 916
    move-object/from16 v28, v10

    .line 917
    .line 918
    move-object/from16 v29, v11

    .line 919
    .line 920
    move-object/from16 v30, v12

    .line 921
    .line 922
    move-object v2, v13

    .line 923
    move-object/from16 v33, v14

    .line 924
    .line 925
    const/16 v23, 0x0

    .line 926
    .line 927
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:J

    .line 928
    .line 929
    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    .line 930
    .line 931
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzbc;->zza(J)Lcom/google/android/gms/measurement/internal/zzbc;

    .line 932
    .line 933
    .line 934
    move-result-object v0

    .line 935
    move-wide v12, v5

    .line 936
    :goto_9
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 937
    .line 938
    .line 939
    move-result-object v5

    .line 940
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzh(Lcom/google/android/gms/measurement/internal/zzbc;)V

    .line 941
    .line 942
    .line 943
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzbb;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 944
    .line 945
    move-object/from16 v14, v22

    .line 946
    .line 947
    :try_start_8
    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 948
    .line 949
    iget-wide v10, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 950
    .line 951
    move-object v5, v15

    .line 952
    move-object/from16 v7, v29

    .line 953
    .line 954
    move-object/from16 v8, v33

    .line 955
    .line 956
    move-object v9, v1

    .line 957
    move-object v4, v14

    .line 958
    move-object/from16 v14, v28

    .line 959
    .line 960
    :try_start_9
    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 961
    .line 962
    .line 963
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhs;->zzk()Lcom/google/android/gms/internal/measurement/zzhr;

    .line 964
    .line 965
    .line 966
    move-result-object v5

    .line 967
    iget-wide v6, v15, Lcom/google/android/gms/measurement/internal/zzbb;->zzd:J

    .line 968
    .line 969
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzhr;->zzo(J)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 970
    .line 971
    .line 972
    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzbb;->zzb:Ljava/lang/String;

    .line 973
    .line 974
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzhr;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 975
    .line 976
    .line 977
    iget-wide v6, v15, Lcom/google/android/gms/measurement/internal/zzbb;->zze:J

    .line 978
    .line 979
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzhr;->zzq(J)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 980
    .line 981
    .line 982
    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzbb;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    .line 983
    .line 984
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzbd;

    .line 985
    .line 986
    invoke-direct {v7, v6}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzbe;)V

    .line 987
    .line 988
    .line 989
    :cond_13
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 990
    .line 991
    .line 992
    move-result v8

    .line 993
    if-eqz v8, :cond_14

    .line 994
    .line 995
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbd;->zza()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v8

    .line 999
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v9

    .line 1003
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzbe;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v8

    .line 1010
    if-eqz v8, :cond_13

    .line 1011
    .line 1012
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v10

    .line 1016
    invoke-virtual {v10, v9, v8}, Lcom/google/android/gms/measurement/internal/zzpk;->zzd(Lcom/google/android/gms/internal/measurement/zzhv;Ljava/lang/Object;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/zzhr;->zzg(Lcom/google/android/gms/internal/measurement/zzhv;)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 1020
    .line 1021
    .line 1022
    goto :goto_a

    .line 1023
    :catchall_2
    move-exception v0

    .line 1024
    goto/16 :goto_e

    .line 1025
    .line 1026
    :cond_14
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzg(Lcom/google/android/gms/internal/measurement/zzhr;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1027
    .line 1028
    .line 1029
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Lcom/google/android/gms/internal/measurement/zzie;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v6

    .line 1033
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhu;->zza()Lcom/google/android/gms/internal/measurement/zzht;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v7

    .line 1037
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:J

    .line 1038
    .line 1039
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzht;->zzb(J)Lcom/google/android/gms/internal/measurement/zzht;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/measurement/zzht;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzht;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzie;->zza(Lcom/google/android/gms/internal/measurement/zzht;)Lcom/google/android/gms/internal/measurement/zzie;

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzic;->zzap(Lcom/google/android/gms/internal/measurement/zzie;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzpg;->zzm()Lcom/google/android/gms/measurement/internal/zzad;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v10

    .line 1055
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v11

    .line 1059
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v12

    .line 1063
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzk()Ljava/util/List;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v13

    .line 1067
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    .line 1068
    .line 1069
    .line 1070
    move-result-wide v0

    .line 1071
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v14

    .line 1075
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    .line 1076
    .line 1077
    .line 1078
    move-result-wide v0

    .line 1079
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v15

    .line 1083
    const/16 v16, 0x0

    .line 1084
    .line 1085
    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v0

    .line 1089
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzaf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zzm()Z

    .line 1093
    .line 1094
    .line 1095
    move-result v0

    .line 1096
    if-eqz v0, :cond_15

    .line 1097
    .line 1098
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    .line 1099
    .line 1100
    .line 1101
    move-result-wide v0

    .line 1102
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzv(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    .line 1106
    .line 1107
    .line 1108
    move-result-wide v0

    .line 1109
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzx(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1110
    .line 1111
    .line 1112
    :cond_15
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/zzh;->zzp()J

    .line 1113
    .line 1114
    .line 1115
    move-result-wide v0

    .line 1116
    cmp-long v5, v0, v24

    .line 1117
    .line 1118
    if-eqz v5, :cond_16

    .line 1119
    .line 1120
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzA(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1121
    .line 1122
    .line 1123
    :cond_16
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/zzh;->zzn()J

    .line 1124
    .line 1125
    .line 1126
    move-result-wide v6

    .line 1127
    cmp-long v8, v6, v24

    .line 1128
    .line 1129
    if-eqz v8, :cond_17

    .line 1130
    .line 1131
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzic;->zzy(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1132
    .line 1133
    .line 1134
    goto :goto_b

    .line 1135
    :cond_17
    if-eqz v5, :cond_18

    .line 1136
    .line 1137
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzy(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1138
    .line 1139
    .line 1140
    :cond_18
    :goto_b
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/zzh;->zzh()Ljava/lang/String;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrb;->zza()Z

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v1

    .line 1151
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->zzaM:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 1152
    .line 1153
    move-object/from16 v6, v33

    .line 1154
    .line 1155
    invoke-virtual {v1, v6, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    .line 1156
    .line 1157
    .line 1158
    move-result v1

    .line 1159
    if-eqz v1, :cond_19

    .line 1160
    .line 1161
    if-eqz v0, :cond_19

    .line 1162
    .line 1163
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzau(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1164
    .line 1165
    .line 1166
    :cond_19
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/zzh;->zzL()V

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/zzh;->zzG()J

    .line 1170
    .line 1171
    .line 1172
    move-result-wide v0

    .line 1173
    long-to-int v0, v0

    .line 1174
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzZ(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v0

    .line 1181
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzi()J

    .line 1182
    .line 1183
    .line 1184
    const-wide/32 v0, 0x2078d

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzO(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v0

    .line 1194
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 1195
    .line 1196
    .line 1197
    move-result-wide v0

    .line 1198
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzs(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1199
    .line 1200
    .line 1201
    const/4 v0, 0x1

    .line 1202
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzae(Z)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v0

    .line 1209
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzS(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzic;)V

    .line 1210
    .line 1211
    .line 1212
    move-object/from16 v0, v32

    .line 1213
    .line 1214
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzhz;->zze(Lcom/google/android/gms/internal/measurement/zzic;)Lcom/google/android/gms/internal/measurement/zzhz;

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzu()J

    .line 1218
    .line 1219
    .line 1220
    move-result-wide v7

    .line 1221
    move-object/from16 v1, v34

    .line 1222
    .line 1223
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/measurement/internal/zzh;->zzo(J)V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzw()J

    .line 1227
    .line 1228
    .line 1229
    move-result-wide v2

    .line 1230
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzh;->zzq(J)V

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v2

    .line 1237
    const/4 v3, 0x0

    .line 1238
    invoke-virtual {v2, v1, v3, v3}, Lcom/google/android/gms/measurement/internal/zzav;->zzv(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v1

    .line 1245
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v1

    .line 1252
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 1253
    .line 1254
    .line 1255
    :try_start_a
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v1

    .line 1259
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v0

    .line 1263
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    .line 1264
    .line 1265
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzks;->zzcc()[B

    .line 1266
    .line 1267
    .line 1268
    move-result-object v0

    .line 1269
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->zzv([B)[B

    .line 1270
    .line 1271
    .line 1272
    move-result-object v15
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 1273
    goto :goto_d

    .line 1274
    :catch_2
    move-exception v0

    .line 1275
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 1276
    .line 1277
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v1

    .line 1281
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v1

    .line 1285
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v2

    .line 1289
    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    .line 1290
    .line 1291
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1292
    .line 1293
    .line 1294
    move-object/from16 v15, v23

    .line 1295
    .line 1296
    goto :goto_d

    .line 1297
    :catchall_3
    move-exception v0

    .line 1298
    move-object v4, v14

    .line 1299
    goto :goto_e

    .line 1300
    :goto_c
    :try_start_b
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 1301
    .line 1302
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v1

    .line 1306
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v1

    .line 1310
    const-string v2, "app instance id encryption failed"

    .line 1311
    .line 1312
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v0

    .line 1316
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1317
    .line 1318
    .line 1319
    new-array v15, v3, [B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1320
    .line 1321
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 1322
    .line 1323
    goto/16 :goto_2

    .line 1324
    .line 1325
    :goto_d
    return-object v15

    .line 1326
    :goto_e
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 1327
    .line 1328
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v1

    .line 1332
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 1333
    .line 1334
    .line 1335
    throw v0
.end method
