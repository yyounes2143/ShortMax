.class public abstract Lcom/google/android/gms/internal/ads/zzegq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedm;


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

.method private static zzd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    move-object p0, v0

    .line 15
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Lcom/google/common/util/concurrent/e;
    .locals 38

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfca;->zzv:Lorg/json/JSONObject;

    .line 6
    .line 7
    const-string v3, "pubid"

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfcn;->zza:Lcom/google/android/gms/internal/ads/zzfck;

    .line 16
    .line 17
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfck;->zza:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 18
    .line 19
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfcu;

    .line 20
    .line 21
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfcu;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfcu;->zzr(Lcom/google/android/gms/internal/ads/zzfcw;)Lcom/google/android/gms/internal/ads/zzfcu;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzfcu;->zzu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfcu;

    .line 28
    .line 29
    .line 30
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzfcw;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 31
    .line 32
    iget-object v6, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzegq;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-string v7, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 39
    .line 40
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzegq;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    const-string v8, "gw"

    .line 49
    .line 50
    const/4 v9, 0x1

    .line 51
    invoke-virtual {v11, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    const-string v8, "mad_hac"

    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    if-eqz v12, :cond_0

    .line 62
    .line 63
    invoke-virtual {v11, v8, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    const-string v8, "adJson"

    .line 67
    .line 68
    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    const-string v8, "_ad"

    .line 75
    .line 76
    invoke-virtual {v11, v8, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    const-string v2, "_noRefresh"

    .line 80
    .line 81
    invoke-virtual {v11, v2, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfca;->zzD:Lorg/json/JSONObject;

    .line 85
    .line 86
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eqz v9, :cond_3

    .line 95
    .line 96
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    check-cast v9, Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    if-eqz v9, :cond_2

    .line 107
    .line 108
    invoke-virtual {v11, v9, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {v6, v7, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    iget v8, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zza:I

    .line 116
    .line 117
    iget-wide v9, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzb:J

    .line 118
    .line 119
    iget v12, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzd:I

    .line 120
    .line 121
    iget-object v13, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zze:Ljava/util/List;

    .line 122
    .line 123
    iget-boolean v14, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    .line 124
    .line 125
    iget v15, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    .line 126
    .line 127
    iget-boolean v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzh:Z

    .line 128
    .line 129
    move/from16 v16, v2

    .line 130
    .line 131
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzi:Ljava/lang/String;

    .line 132
    .line 133
    move-object/from16 v17, v2

    .line 134
    .line 135
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzj:Lcom/google/android/gms/ads/internal/client/zzfz;

    .line 136
    .line 137
    move-object/from16 v18, v2

    .line 138
    .line 139
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    .line 140
    .line 141
    move-object/from16 v19, v2

    .line 142
    .line 143
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzl:Ljava/lang/String;

    .line 144
    .line 145
    move-object/from16 v20, v2

    .line 146
    .line 147
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzn:Landroid/os/Bundle;

    .line 148
    .line 149
    move-object/from16 v22, v2

    .line 150
    .line 151
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzo:Ljava/util/List;

    .line 152
    .line 153
    move-object/from16 v23, v2

    .line 154
    .line 155
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 156
    .line 157
    move-object/from16 v24, v2

    .line 158
    .line 159
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzq:Ljava/lang/String;

    .line 160
    .line 161
    move-object/from16 v25, v2

    .line 162
    .line 163
    iget-boolean v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzr:Z

    .line 164
    .line 165
    move/from16 v26, v2

    .line 166
    .line 167
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    .line 168
    .line 169
    move-object/from16 v27, v2

    .line 170
    .line 171
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 172
    .line 173
    move/from16 v28, v2

    .line 174
    .line 175
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzu:Ljava/lang/String;

    .line 176
    .line 177
    move-object/from16 v29, v2

    .line 178
    .line 179
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzv:Ljava/util/List;

    .line 180
    .line 181
    move-object/from16 v30, v2

    .line 182
    .line 183
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzw:I

    .line 184
    .line 185
    move/from16 v31, v2

    .line 186
    .line 187
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    .line 188
    .line 189
    move-object/from16 v32, v2

    .line 190
    .line 191
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzy:I

    .line 192
    .line 193
    move/from16 v33, v2

    .line 194
    .line 195
    iget-wide v1, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    .line 196
    .line 197
    move-wide/from16 v34, v1

    .line 198
    .line 199
    iget-wide v1, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzA:J

    .line 200
    .line 201
    move-wide/from16 v36, v1

    .line 202
    .line 203
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzm;

    .line 204
    .line 205
    move-object v7, v1

    .line 206
    move-object/from16 v21, v6

    .line 207
    .line 208
    invoke-direct/range {v7 .. v37}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfz;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/ads/internal/client/zzc;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJJ)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzfcu;->zzJ(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfcu;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfcu;->zzL()Lcom/google/android/gms/internal/ads/zzfcw;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    new-instance v2, Landroid/os/Bundle;

    .line 219
    .line 220
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 221
    .line 222
    .line 223
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfcn;->zzb:Lcom/google/android/gms/internal/ads/zzfcm;

    .line 224
    .line 225
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfcm;->zzb:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 226
    .line 227
    new-instance v5, Landroid/os/Bundle;

    .line 228
    .line 229
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 230
    .line 231
    .line 232
    new-instance v6, Ljava/util/ArrayList;

    .line 233
    .line 234
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Ljava/util/List;

    .line 235
    .line 236
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    .line 238
    .line 239
    const-string v7, "nofill_urls"

    .line 240
    .line 241
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 242
    .line 243
    .line 244
    const-string v6, "refresh_interval"

    .line 245
    .line 246
    iget v7, v3, Lcom/google/android/gms/internal/ads/zzfcd;->zzc:I

    .line 247
    .line 248
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    const-string v6, "gws_query_id"

    .line 252
    .line 253
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v5, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const-string v3, "parent_common_config"

    .line 259
    .line 260
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 261
    .line 262
    .line 263
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzfcw;->zzf:Ljava/lang/String;

    .line 264
    .line 265
    new-instance v4, Landroid/os/Bundle;

    .line 266
    .line 267
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v5, "initial_ad_unit_id"

    .line 271
    .line 272
    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    move-object/from16 v3, p2

    .line 276
    .line 277
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzw:Ljava/lang/String;

    .line 278
    .line 279
    const-string v6, "allocation_id"

    .line 280
    .line 281
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzF:Ljava/lang/String;

    .line 285
    .line 286
    const-string v6, "ad_source_name"

    .line 287
    .line 288
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    new-instance v5, Ljava/util/ArrayList;

    .line 292
    .line 293
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzc:Ljava/util/List;

    .line 294
    .line 295
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 296
    .line 297
    .line 298
    const-string v6, "click_urls"

    .line 299
    .line 300
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 301
    .line 302
    .line 303
    new-instance v5, Ljava/util/ArrayList;

    .line 304
    .line 305
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzd:Ljava/util/List;

    .line 306
    .line 307
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 308
    .line 309
    .line 310
    const-string v6, "imp_urls"

    .line 311
    .line 312
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 313
    .line 314
    .line 315
    new-instance v5, Ljava/util/ArrayList;

    .line 316
    .line 317
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzp:Ljava/util/List;

    .line 318
    .line 319
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 320
    .line 321
    .line 322
    const-string v6, "manual_tracking_urls"

    .line 323
    .line 324
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 325
    .line 326
    .line 327
    new-instance v5, Ljava/util/ArrayList;

    .line 328
    .line 329
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzm:Ljava/util/List;

    .line 330
    .line 331
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 332
    .line 333
    .line 334
    const-string v6, "fill_urls"

    .line 335
    .line 336
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 337
    .line 338
    .line 339
    new-instance v5, Ljava/util/ArrayList;

    .line 340
    .line 341
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzg:Ljava/util/List;

    .line 342
    .line 343
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 344
    .line 345
    .line 346
    const-string v6, "video_start_urls"

    .line 347
    .line 348
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 349
    .line 350
    .line 351
    new-instance v5, Ljava/util/ArrayList;

    .line 352
    .line 353
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzh:Ljava/util/List;

    .line 354
    .line 355
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 356
    .line 357
    .line 358
    const-string v6, "video_reward_urls"

    .line 359
    .line 360
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 361
    .line 362
    .line 363
    new-instance v5, Ljava/util/ArrayList;

    .line 364
    .line 365
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzi:Ljava/util/List;

    .line 366
    .line 367
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 368
    .line 369
    .line 370
    const-string v6, "video_complete_urls"

    .line 371
    .line 372
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 373
    .line 374
    .line 375
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzj:Ljava/lang/String;

    .line 376
    .line 377
    const-string v6, "transaction_id"

    .line 378
    .line 379
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzk:Ljava/lang/String;

    .line 383
    .line 384
    const-string v6, "valid_from_timestamp"

    .line 385
    .line 386
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzP:Z

    .line 390
    .line 391
    const-string v6, "is_closable_area_disabled"

    .line 392
    .line 393
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    .line 395
    .line 396
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzao:Ljava/lang/String;

    .line 397
    .line 398
    const-string v6, "recursive_server_response_data"

    .line 399
    .line 400
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzW:Z

    .line 404
    .line 405
    const-string v6, "is_analytics_logging_enabled"

    .line 406
    .line 407
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    .line 409
    .line 410
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzl:Lcom/google/android/gms/internal/ads/zzbwo;

    .line 411
    .line 412
    if-eqz v5, :cond_4

    .line 413
    .line 414
    new-instance v6, Landroid/os/Bundle;

    .line 415
    .line 416
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 417
    .line 418
    .line 419
    const-string v7, "rb_amount"

    .line 420
    .line 421
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzbwo;->zzb:I

    .line 422
    .line 423
    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 424
    .line 425
    .line 426
    const-string v7, "rb_type"

    .line 427
    .line 428
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbwo;->zza:Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {v6, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    filled-new-array {v6}, [Landroid/os/Bundle;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    const-string v6, "rewards"

    .line 438
    .line 439
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 440
    .line 441
    .line 442
    :cond_4
    const-string v5, "parent_ad_config"

    .line 443
    .line 444
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 445
    .line 446
    .line 447
    move-object/from16 v4, p0

    .line 448
    .line 449
    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzegq;->zzc(Lcom/google/android/gms/internal/ads/zzfcw;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcn;)Lcom/google/common/util/concurrent/e;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Z
    .locals 1

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfca;->zzv:Lorg/json/JSONObject;

    .line 2
    .line 3
    const-string p2, "pubid"

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method protected abstract zzc(Lcom/google/android/gms/internal/ads/zzfcw;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcn;)Lcom/google/common/util/concurrent/e;
.end method
