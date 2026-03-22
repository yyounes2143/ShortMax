.class final Lcom/google/android/gms/internal/consent_sdk/zzp;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

.field private final zzb:Landroid/app/Activity;

.field private final zzc:Lcom/google/android/ump/ConsentDebugSettings;

.field private final zzd:Lcom/google/android/ump/ConsentRequestParameters;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzn;Landroid/app/Activity;Lcom/google/android/ump/ConsentDebugSettings;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/gms/internal/consent_sdk/zzo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzb:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzd:Lcom/google/android/ump/ConsentRequestParameters;

    .line 11
    .line 12
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/consent_sdk/zzp;)Lcom/google/android/gms/internal/consent_sdk/zzcj;
    .locals 10

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzcj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzcj;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzd:Lcom/google/android/ump/ConsentRequestParameters;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/ump/ConsentRequestParameters;->zza()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/16 v6, 0x80

    .line 40
    .line 41
    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-object v2, v4

    .line 49
    :goto_0
    if-eqz v2, :cond_1

    .line 50
    .line 51
    const-string v1, "com.google.android.gms.ads.APPLICATION_ID"

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_12

    .line 62
    .line 63
    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zza:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/google/android/ump/ConsentDebugSettings;->isTestDevice()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/4 v5, 0x2

    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_3

    .line 79
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/google/android/ump/ConsentDebugSettings;->getDebugGeography()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v6, 0x1

    .line 89
    if-eq v1, v6, :cond_6

    .line 90
    .line 91
    if-eq v1, v5, :cond_5

    .line 92
    .line 93
    if-eq v1, v3, :cond_4

    .line 94
    .line 95
    const/4 v3, 0x4

    .line 96
    if-eq v1, v3, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzce;->zze:Lcom/google/android/gms/internal/consent_sdk/zzce;

    .line 100
    .line 101
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzce;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzce;

    .line 106
    .line 107
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzce;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzce;

    .line 112
    .line 113
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzce;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzce;

    .line 118
    .line 119
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzce;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzce;

    .line 123
    .line 124
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-object v1, v2

    .line 128
    :goto_3
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzi:Ljava/util/List;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    .line 131
    .line 132
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzn;)Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzaq;->zzc()Ljava/util/Map;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zze:Ljava/util/Map;

    .line 141
    .line 142
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzd:Lcom/google/android/ump/ConsentRequestParameters;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/google/android/ump/ConsentRequestParameters;->isTagForUnderAgeOfConsent()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzd:Ljava/lang/Boolean;

    .line 153
    .line 154
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzc:Ljava/lang/String;

    .line 163
    .line 164
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzcf;

    .line 165
    .line 166
    invoke-direct {v2}, Lcom/google/android/gms/internal/consent_sdk/zzcf;-><init>()V

    .line 167
    .line 168
    .line 169
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 170
    .line 171
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    iput-object v6, v2, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zzb:Ljava/lang/Integer;

    .line 176
    .line 177
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 178
    .line 179
    iput-object v6, v2, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zza:Ljava/lang/String;

    .line 180
    .line 181
    iput v5, v2, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zzc:I

    .line 182
    .line 183
    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzcf;

    .line 184
    .line 185
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 206
    .line 207
    .line 208
    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzch;

    .line 209
    .line 210
    invoke-direct {v5}, Lcom/google/android/gms/internal/consent_sdk/zzch;-><init>()V

    .line 211
    .line 212
    .line 213
    iget v6, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 214
    .line 215
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    iput-object v6, v5, Lcom/google/android/gms/internal/consent_sdk/zzch;->zza:Ljava/lang/Integer;

    .line 220
    .line 221
    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 222
    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    iput-object v2, v5, Lcom/google/android/gms/internal/consent_sdk/zzch;->zzb:Ljava/lang/Integer;

    .line 228
    .line 229
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 242
    .line 243
    float-to-double v6, v2

    .line 244
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    iput-object v2, v5, Lcom/google/android/gms/internal/consent_sdk/zzch;->zzc:Ljava/lang/Double;

    .line 249
    .line 250
    const/16 v2, 0x1c

    .line 251
    .line 252
    if-ge v3, v2, :cond_7

    .line 253
    .line 254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    goto/16 :goto_9

    .line 259
    .line 260
    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzb:Landroid/app/Activity;

    .line 261
    .line 262
    if-nez v3, :cond_8

    .line 263
    .line 264
    move-object v3, v4

    .line 265
    goto :goto_4

    .line 266
    :cond_8
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    :goto_4
    if-nez v3, :cond_9

    .line 271
    .line 272
    move-object v3, v4

    .line 273
    goto :goto_5

    .line 274
    :cond_9
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    :goto_5
    if-nez v3, :cond_a

    .line 279
    .line 280
    move-object v3, v4

    .line 281
    goto :goto_6

    .line 282
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    :goto_6
    if-nez v3, :cond_b

    .line 287
    .line 288
    move-object v3, v4

    .line 289
    goto :goto_7

    .line 290
    :cond_b
    invoke-static {v3}, Landroidx/core/view/o1;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    :goto_7
    if-nez v3, :cond_c

    .line 295
    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    goto :goto_9

    .line 301
    :cond_c
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/activity/e;->a(Landroid/view/DisplayCutout;)I

    .line 302
    .line 303
    .line 304
    new-instance v6, Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/activity/a;->a(Landroid/view/DisplayCutout;)Ljava/util/List;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    :cond_d
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    .line 319
    .line 320
    move-result v7

    .line 321
    if-eqz v7, :cond_e

    .line 322
    .line 323
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    check-cast v7, Landroid/graphics/Rect;

    .line 328
    .line 329
    if-eqz v7, :cond_d

    .line 330
    .line 331
    new-instance v8, Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 332
    .line 333
    invoke-direct {v8}, Lcom/google/android/gms/internal/consent_sdk/zzcg;-><init>()V

    .line 334
    .line 335
    .line 336
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 337
    .line 338
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v9

    .line 342
    iput-object v9, v8, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzb:Ljava/lang/Integer;

    .line 343
    .line 344
    iget v9, v7, Landroid/graphics/Rect;->right:I

    .line 345
    .line 346
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    iput-object v9, v8, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzc:Ljava/lang/Integer;

    .line 351
    .line 352
    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 353
    .line 354
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v9

    .line 358
    iput-object v9, v8, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zza:Ljava/lang/Integer;

    .line 359
    .line 360
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 361
    .line 362
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    iput-object v7, v8, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzd:Ljava/lang/Integer;

    .line 367
    .line 368
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    goto :goto_8

    .line 372
    :cond_e
    move-object v3, v6

    .line 373
    :goto_9
    iput-object v3, v5, Lcom/google/android/gms/internal/consent_sdk/zzch;->zzd:Ljava/util/List;

    .line 374
    .line 375
    iput-object v5, v0, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzch;

    .line 376
    .line 377
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    const/4 v6, 0x0

    .line 394
    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 395
    .line 396
    .line 397
    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 398
    goto :goto_a

    .line 399
    :catch_1
    move-object v1, v4

    .line 400
    :goto_a
    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzcd;

    .line 401
    .line 402
    invoke-direct {v5}, Lcom/google/android/gms/internal/consent_sdk/zzcd;-><init>()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    iput-object v3, v5, Lcom/google/android/gms/internal/consent_sdk/zzcd;->zza:Ljava/lang/String;

    .line 410
    .line 411
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    .line 412
    .line 413
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    invoke-virtual {v3, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    if-eqz p0, :cond_f

    .line 434
    .line 435
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    :cond_f
    iput-object v4, v5, Lcom/google/android/gms/internal/consent_sdk/zzcd;->zzb:Ljava/lang/String;

    .line 440
    .line 441
    if-eqz v1, :cond_11

    .line 442
    .line 443
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 444
    .line 445
    if-lt p0, v2, :cond_10

    .line 446
    .line 447
    invoke-static {v1}, Lcom/appsflyer/internal/z;->a(Landroid/content/pm/PackageInfo;)J

    .line 448
    .line 449
    .line 450
    move-result-wide v1

    .line 451
    goto :goto_b

    .line 452
    :cond_10
    iget p0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 453
    .line 454
    int-to-long v1, p0

    .line 455
    :goto_b
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object p0

    .line 459
    iput-object p0, v5, Lcom/google/android/gms/internal/consent_sdk/zzcd;->zzc:Ljava/lang/String;

    .line 460
    .line 461
    :cond_11
    iput-object v5, v0, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzcd;

    .line 462
    .line 463
    new-instance p0, Lcom/google/android/gms/internal/consent_sdk/zzci;

    .line 464
    .line 465
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzci;-><init>()V

    .line 466
    .line 467
    .line 468
    const-string v1, "3.2.0"

    .line 469
    .line 470
    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzci;->zza:Ljava/lang/String;

    .line 471
    .line 472
    iput-object p0, v0, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzci;

    .line 473
    .line 474
    return-object v0

    .line 475
    :cond_12
    new-instance p0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 476
    .line 477
    const-string v0, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">"

    .line 478
    .line 479
    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw p0
.end method
