.class final Lcom/google/android/gms/internal/ads/zzeun;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zzb:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgdy;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeun;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeun;->zzb:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzeun;)Lcom/google/android/gms/internal/ads/zzeul;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "com.google.unity.ads.UNITY_VERSION"

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeun;->zzb:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-string v5, "geo:0,0?q=donuts"

    .line 16
    .line 17
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzeun;->zzd(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string v6, "http://www.google.com"

    .line 22
    .line 23
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzeun;->zzd(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v10

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzw()Z

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    invoke-static {v2}, Lcom/google/android/gms/common/util/DeviceProperties;->isLatchsky(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    invoke-static {v2}, Lcom/google/android/gms/common/util/DeviceProperties;->isSidewinder(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v13

    .line 49
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v14

    .line 53
    new-instance v15, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const/4 v7, 0x0

    .line 63
    move v8, v7

    .line 64
    :goto_0
    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-ge v8, v9, :cond_0

    .line 69
    .line 70
    invoke-virtual {v4, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    add-int/lit8 v8, v8, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const-string v4, "market://details?id=com.google.android.gms.ads"

    .line 85
    .line 86
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzeun;->zzd(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const-string v8, "."

    .line 91
    .line 92
    if-nez v4, :cond_2

    .line 93
    .line 94
    :catch_0
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 97
    .line 98
    if-nez v4, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v2, v9, v7}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_1

    .line 112
    .line 113
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 114
    .line 115
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 116
    .line 117
    new-instance v9, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeun;->zzb:Landroid/content/Context;

    .line 136
    .line 137
    const/16 v9, 0x80

    .line 138
    .line 139
    :try_start_1
    invoke-static {v4}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    const-string v7, "com.android.vending"

    .line 144
    .line 145
    invoke-virtual {v4, v7, v9}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    if-eqz v4, :cond_4

    .line 150
    .line 151
    iget v7, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 152
    .line 153
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 154
    .line 155
    new-instance v9, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    goto :goto_3

    .line 174
    :catch_1
    :cond_4
    const/4 v4, 0x0

    .line 175
    :goto_3
    sget-object v19, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbde;->zznI:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 186
    .line 187
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    check-cast v8, Ljava/lang/Boolean;

    .line 196
    .line 197
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    if-eqz v8, :cond_5

    .line 202
    .line 203
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 204
    .line 205
    const/16 v9, 0x21

    .line 206
    .line 207
    if-lt v8, v9, :cond_6

    .line 208
    .line 209
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzeun;->zzb:Landroid/content/Context;

    .line 210
    .line 211
    invoke-static {}, Lcom/google/android/gms/internal/ads/m;->a()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/n;->a(Ljava/lang/Object;)Landroid/app/LocaleManager;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    if-eqz v8, :cond_5

    .line 224
    .line 225
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/o;->a(Landroid/app/LocaleManager;)Landroid/os/LocaleList;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    const/4 v8, 0x0

    .line 230
    invoke-virtual {v7, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    :cond_5
    :goto_4
    move-object/from16 v26, v7

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_6
    const/4 v8, 0x0

    .line 242
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzeun;->zzb:Landroid/content/Context;

    .line 243
    .line 244
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    invoke-virtual {v7, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    goto :goto_4

    .line 265
    :goto_5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeun;->zzb:Landroid/content/Context;

    .line 266
    .line 267
    if-nez v3, :cond_8

    .line 268
    .line 269
    :cond_7
    const/4 v3, 0x0

    .line 270
    goto :goto_7

    .line 271
    :cond_8
    new-instance v7, Landroid/content/Intent;

    .line 272
    .line 273
    const-string v8, "android.intent.action.VIEW"

    .line 274
    .line 275
    const-string v9, "http://www.example.com"

    .line 276
    .line 277
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 282
    .line 283
    .line 284
    const/4 v8, 0x0

    .line 285
    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    const/high16 v8, 0x10000

    .line 290
    .line 291
    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    if-eqz v3, :cond_7

    .line 296
    .line 297
    if-eqz v9, :cond_7

    .line 298
    .line 299
    const/4 v8, 0x0

    .line 300
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    if-ge v8, v7, :cond_7

    .line 305
    .line 306
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 311
    .line 312
    move-object/from16 p0, v3

    .line 313
    .line 314
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 315
    .line 316
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 317
    .line 318
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 319
    .line 320
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    if-eqz v3, :cond_9

    .line 327
    .line 328
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 329
    .line 330
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 331
    .line 332
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhh;->zza(Landroid/content/Context;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    goto :goto_7

    .line 341
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 342
    .line 343
    move-object/from16 v3, p0

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :goto_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 347
    .line 348
    .line 349
    new-instance v7, Landroid/os/StatFs;

    .line 350
    .line 351
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 352
    .line 353
    .line 354
    move-result-object v8

    .line 355
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v8

    .line 359
    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 363
    .line 364
    .line 365
    move-result-wide v7

    .line 366
    const-wide/16 v20, 0x400

    .line 367
    .line 368
    div-long v21, v7, v20

    .line 369
    .line 370
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zzlN:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 371
    .line 372
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 373
    .line 374
    .line 375
    move-result-object v8

    .line 376
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    check-cast v7, Ljava/lang/Boolean;

    .line 381
    .line 382
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    const/4 v8, 0x1

    .line 387
    if-eqz v7, :cond_a

    .line 388
    .line 389
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 390
    .line 391
    .line 392
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzC(Landroid/content/Context;)Z

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    if-eqz v7, :cond_a

    .line 397
    .line 398
    move/from16 v23, v8

    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_a
    const/16 v23, 0x0

    .line 402
    .line 403
    :goto_8
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zzlR:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 404
    .line 405
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 406
    .line 407
    .line 408
    move-result-object v9

    .line 409
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v7

    .line 413
    check-cast v7, Ljava/lang/Boolean;

    .line 414
    .line 415
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 416
    .line 417
    .line 418
    move-result v7

    .line 419
    if-eqz v7, :cond_c

    .line 420
    .line 421
    :try_start_2
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    const/16 v9, 0x80

    .line 430
    .line 431
    invoke-virtual {v7, v0, v9}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 436
    .line 437
    if-eqz v0, :cond_b

    .line 438
    .line 439
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 440
    .line 441
    .line 442
    move-result v7

    .line 443
    if-eqz v7, :cond_b

    .line 444
    .line 445
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 449
    :goto_9
    move-object/from16 v24, v0

    .line 450
    .line 451
    goto :goto_a

    .line 452
    :catch_2
    :cond_b
    const/16 v24, 0x0

    .line 453
    .line 454
    goto :goto_a

    .line 455
    :cond_c
    const-string v0, ""

    .line 456
    .line 457
    goto :goto_9

    .line 458
    :goto_a
    if-eqz v6, :cond_d

    .line 459
    .line 460
    move v9, v8

    .line 461
    goto :goto_b

    .line 462
    :cond_d
    const/4 v9, 0x0

    .line 463
    :goto_b
    if-eqz v5, :cond_e

    .line 464
    .line 465
    goto :goto_c

    .line 466
    :cond_e
    const/4 v8, 0x0

    .line 467
    :goto_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeul;

    .line 468
    .line 469
    move-object v7, v0

    .line 470
    sget-object v20, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 471
    .line 472
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 473
    .line 474
    move-object/from16 v16, v2

    .line 475
    .line 476
    move-object/from16 v17, v4

    .line 477
    .line 478
    move-object/from16 v18, v19

    .line 479
    .line 480
    move/from16 v19, v3

    .line 481
    .line 482
    invoke-direct/range {v7 .. v26}, Lcom/google/android/gms/internal/ads/zzeul;-><init>(ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JZLjava/lang/String;ILjava/lang/String;)V

    .line 483
    .line 484
    .line 485
    return-object v0
.end method

.method private static zzd(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    const/high16 p1, 0x10000

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/16 v0, 0x26

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeum;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeum;-><init>(Lcom/google/android/gms/internal/ads/zzeun;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeun;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

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
