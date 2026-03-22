.class public final Lcom/google/android/gms/internal/ads/zzaek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:I

.field public final zzj:I

.field public final zzk:I

.field public final zzl:F

.field public final zzm:I

.field public final zzn:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzo:Lcom/google/android/gms/internal/ads/zzfs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfs;)V
    .locals 2
    .param p16    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p17    # Lcom/google/android/gms/internal/ads/zzfs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zza:Ljava/util/List;

    .line 7
    .line 8
    move v1, p2

    .line 9
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:I

    .line 10
    .line 11
    move v1, p3

    .line 12
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:I

    .line 13
    .line 14
    move v1, p6

    .line 15
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzd:I

    .line 16
    .line 17
    move v1, p7

    .line 18
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zze:I

    .line 19
    .line 20
    move v1, p8

    .line 21
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzf:I

    .line 22
    .line 23
    move v1, p9

    .line 24
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    .line 25
    .line 26
    move v1, p10

    .line 27
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzh:I

    .line 28
    .line 29
    move v1, p11

    .line 30
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:I

    .line 31
    .line 32
    move v1, p12

    .line 33
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzj:I

    .line 34
    .line 35
    move v1, p13

    .line 36
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzk:I

    .line 37
    .line 38
    move/from16 v1, p14

    .line 39
    .line 40
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzl:F

    .line 41
    .line 42
    move/from16 v1, p15

    .line 43
    .line 44
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzm:I

    .line 45
    .line 46
    move-object/from16 v1, p16

    .line 47
    .line 48
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzn:Ljava/lang/String;

    .line 49
    .line 50
    move-object/from16 v1, p17

    .line 51
    .line 52
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzo:Lcom/google/android/gms/internal/ads/zzfs;

    .line 53
    .line 54
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzaek;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaek;->zzc(Lcom/google/android/gms/internal/ads/zzen;ZLcom/google/android/gms/internal/ads/zzfs;)Lcom/google/android/gms/internal/ads/zzaek;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzfs;)Lcom/google/android/gms/internal/ads/zzaek;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzaek;->zzc(Lcom/google/android/gms/internal/ads/zzen;ZLcom/google/android/gms/internal/ads/zzfs;)Lcom/google/android/gms/internal/ads/zzaek;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzen;ZLcom/google/android/gms/internal/ads/zzfs;)Lcom/google/android/gms/internal/ads/zzaek;
    .locals 50
    .param p2    # Lcom/google/android/gms/internal/ads/zzfs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    move v2, v3

    .line 15
    goto/16 :goto_17

    .line 16
    .line 17
    :cond_0
    const/16 v4, 0x15

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    and-int/lit8 v4, v4, 0x3

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 33
    .line 34
    .line 35
    move-result v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    const/4 v7, 0x0

    .line 37
    move v8, v7

    .line 38
    move v9, v8

    .line 39
    :goto_1
    if-ge v8, v5, :cond_2

    .line 40
    .line 41
    :try_start_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    move v11, v7

    .line 49
    :goto_2
    if-ge v11, v10, :cond_1

    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 52
    .line 53
    .line 54
    move-result v12

    .line 55
    add-int/lit8 v13, v12, 0x4

    .line 56
    .line 57
    add-int/2addr v9, v13

    .line 58
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    .line 60
    .line 61
    add-int/lit8 v11, v11, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :try_start_3
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 68
    .line 69
    .line 70
    new-array v6, v9, [B

    .line 71
    .line 72
    const/high16 v11, 0x3f800000    # 1.0f

    .line 73
    .line 74
    move-object/from16 v29, p2

    .line 75
    .line 76
    move v12, v7

    .line 77
    move/from16 v26, v11

    .line 78
    .line 79
    const/4 v15, -0x1

    .line 80
    const/16 v16, -0x1

    .line 81
    .line 82
    const/16 v17, -0x1

    .line 83
    .line 84
    const/16 v18, -0x1

    .line 85
    .line 86
    const/16 v19, -0x1

    .line 87
    .line 88
    const/16 v20, -0x1

    .line 89
    .line 90
    const/16 v21, -0x1

    .line 91
    .line 92
    const/16 v22, -0x1

    .line 93
    .line 94
    const/16 v23, -0x1

    .line 95
    .line 96
    const/16 v24, -0x1

    .line 97
    .line 98
    const/16 v25, -0x1

    .line 99
    .line 100
    const/16 v27, -0x1

    .line 101
    .line 102
    const/16 v28, 0x0

    .line 103
    .line 104
    move v11, v12

    .line 105
    :goto_3
    if-ge v11, v5, :cond_1b

    .line 106
    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    const/16 v14, 0x3f

    .line 112
    .line 113
    and-int/2addr v13, v14

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    move v10, v7

    .line 119
    move-object/from16 v14, v29

    .line 120
    .line 121
    :goto_4
    if-ge v10, v8, :cond_1a

    .line 122
    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    move/from16 v30, v5

    .line 128
    .line 129
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfv;->zza:[B

    .line 130
    .line 131
    invoke-static {v5, v7, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v5, v12, 0x4

    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    invoke-static {v2, v7, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    .line 146
    .line 147
    const/16 v2, 0x20

    .line 148
    .line 149
    if-ne v13, v2, :cond_3

    .line 150
    .line 151
    if-nez v10, :cond_4

    .line 152
    .line 153
    add-int v2, v5, v3

    .line 154
    .line 155
    invoke-static {v6, v5, v2}, Lcom/google/android/gms/internal/ads/zzfv;->zze([BII)Lcom/google/android/gms/internal/ads/zzfs;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    move/from16 v31, v8

    .line 160
    .line 161
    move/from16 v38, v13

    .line 162
    .line 163
    const/4 v8, 0x0

    .line 164
    const/4 v10, 0x0

    .line 165
    goto/16 :goto_14

    .line 166
    .line 167
    :catch_1
    move-exception v0

    .line 168
    const/4 v2, 0x1

    .line 169
    goto/16 :goto_17

    .line 170
    .line 171
    :cond_3
    move v2, v13

    .line 172
    :cond_4
    const/16 v7, 0x21

    .line 173
    .line 174
    move/from16 v31, v8

    .line 175
    .line 176
    if-ne v2, v7, :cond_9

    .line 177
    .line 178
    if-nez v10, :cond_6

    .line 179
    .line 180
    add-int v2, v5, v3

    .line 181
    .line 182
    invoke-static {v6, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzfv;->zzd([BIILcom/google/android/gms/internal/ads/zzfs;)Lcom/google/android/gms/internal/ads/zzfp;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfp;->zza:I

    .line 187
    .line 188
    const/4 v12, 0x1

    .line 189
    add-int/2addr v7, v12

    .line 190
    iget v12, v2, Lcom/google/android/gms/internal/ads/zzfp;->zze:I

    .line 191
    .line 192
    iget v15, v2, Lcom/google/android/gms/internal/ads/zzfp;->zzf:I

    .line 193
    .line 194
    iget v8, v2, Lcom/google/android/gms/internal/ads/zzfp;->zzg:I

    .line 195
    .line 196
    move/from16 v16, v7

    .line 197
    .line 198
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfp;->zzh:I

    .line 199
    .line 200
    move/from16 v17, v7

    .line 201
    .line 202
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfp;->zzc:I

    .line 203
    .line 204
    const/16 v18, 0x8

    .line 205
    .line 206
    add-int/lit8 v7, v7, 0x8

    .line 207
    .line 208
    move/from16 v19, v7

    .line 209
    .line 210
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfp;->zzd:I

    .line 211
    .line 212
    add-int/lit8 v7, v7, 0x8

    .line 213
    .line 214
    move/from16 v18, v7

    .line 215
    .line 216
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfp;->zzk:I

    .line 217
    .line 218
    move/from16 v20, v7

    .line 219
    .line 220
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfp;->zzl:I

    .line 221
    .line 222
    move/from16 v21, v7

    .line 223
    .line 224
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfp;->zzm:I

    .line 225
    .line 226
    move/from16 v22, v7

    .line 227
    .line 228
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfp;->zzi:F

    .line 229
    .line 230
    move/from16 v23, v7

    .line 231
    .line 232
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfp;->zzj:I

    .line 233
    .line 234
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfp;->zzb:Lcom/google/android/gms/internal/ads/zzfk;

    .line 235
    .line 236
    if-eqz v2, :cond_5

    .line 237
    .line 238
    move/from16 v24, v7

    .line 239
    .line 240
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfk;->zza:I

    .line 241
    .line 242
    move/from16 v26, v8

    .line 243
    .line 244
    iget-boolean v8, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzb:Z

    .line 245
    .line 246
    move/from16 v27, v12

    .line 247
    .line 248
    iget v12, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzc:I

    .line 249
    .line 250
    move/from16 v38, v13

    .line 251
    .line 252
    iget v13, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzd:I

    .line 253
    .line 254
    move/from16 v29, v15

    .line 255
    .line 256
    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zzfk;->zze:[I

    .line 257
    .line 258
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzf:I

    .line 259
    .line 260
    move/from16 v32, v7

    .line 261
    .line 262
    move/from16 v33, v8

    .line 263
    .line 264
    move/from16 v34, v12

    .line 265
    .line 266
    move/from16 v35, v13

    .line 267
    .line 268
    move-object/from16 v36, v15

    .line 269
    .line 270
    move/from16 v37, v2

    .line 271
    .line 272
    invoke-static/range {v32 .. v37}, Lcom/google/android/gms/internal/ads/zzdk;->zzd(IZII[II)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    move-object/from16 v28, v2

    .line 277
    .line 278
    :goto_5
    move/from16 v15, v16

    .line 279
    .line 280
    move/from16 v16, v27

    .line 281
    .line 282
    const/4 v8, 0x0

    .line 283
    move/from16 v27, v24

    .line 284
    .line 285
    move/from16 v24, v22

    .line 286
    .line 287
    move/from16 v22, v20

    .line 288
    .line 289
    move/from16 v20, v19

    .line 290
    .line 291
    move/from16 v19, v17

    .line 292
    .line 293
    move/from16 v17, v29

    .line 294
    .line 295
    move/from16 v49, v21

    .line 296
    .line 297
    move/from16 v21, v18

    .line 298
    .line 299
    move/from16 v18, v26

    .line 300
    .line 301
    move/from16 v26, v23

    .line 302
    .line 303
    move/from16 v23, v49

    .line 304
    .line 305
    goto/16 :goto_14

    .line 306
    .line 307
    :cond_5
    move/from16 v24, v7

    .line 308
    .line 309
    move/from16 v26, v8

    .line 310
    .line 311
    move/from16 v27, v12

    .line 312
    .line 313
    move/from16 v38, v13

    .line 314
    .line 315
    move/from16 v29, v15

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_6
    move/from16 v38, v13

    .line 319
    .line 320
    :cond_7
    move/from16 v29, v10

    .line 321
    .line 322
    move/from16 v33, v15

    .line 323
    .line 324
    :cond_8
    const/4 v8, 0x0

    .line 325
    goto/16 :goto_13

    .line 326
    .line 327
    :cond_9
    move/from16 v38, v13

    .line 328
    .line 329
    const/16 v7, 0x27

    .line 330
    .line 331
    if-ne v2, v7, :cond_7

    .line 332
    .line 333
    if-nez v10, :cond_7

    .line 334
    .line 335
    add-int v2, v5, v3

    .line 336
    .line 337
    add-int/lit8 v12, v12, 0x6

    .line 338
    .line 339
    const/4 v7, -0x1

    .line 340
    add-int/2addr v2, v7

    .line 341
    :goto_6
    aget-byte v8, v6, v2

    .line 342
    .line 343
    if-nez v8, :cond_b

    .line 344
    .line 345
    if-le v2, v12, :cond_a

    .line 346
    .line 347
    add-int/lit8 v2, v2, -0x1

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_a
    :goto_7
    move/from16 v29, v10

    .line 351
    .line 352
    :goto_8
    move/from16 v33, v15

    .line 353
    .line 354
    :goto_9
    const/4 v2, 0x0

    .line 355
    goto/16 :goto_12

    .line 356
    .line 357
    :cond_b
    if-eqz v8, :cond_a

    .line 358
    .line 359
    if-gt v2, v12, :cond_c

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_c
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfw;

    .line 363
    .line 364
    add-int/lit8 v2, v2, 0x1

    .line 365
    .line 366
    invoke-direct {v8, v6, v12, v2}, Lcom/google/android/gms/internal/ads/zzfw;-><init>([BII)V

    .line 367
    .line 368
    .line 369
    :goto_a
    const/16 v2, 0x10

    .line 370
    .line 371
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzfw;->zzg(I)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-eqz v2, :cond_a

    .line 376
    .line 377
    const/16 v2, 0x8

    .line 378
    .line 379
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzfw;->zza(I)I

    .line 380
    .line 381
    .line 382
    move-result v12

    .line 383
    const/4 v13, 0x0

    .line 384
    :goto_b
    const/16 v7, 0xff

    .line 385
    .line 386
    if-ne v12, v7, :cond_d

    .line 387
    .line 388
    add-int/lit16 v13, v13, 0xff

    .line 389
    .line 390
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzfw;->zza(I)I

    .line 391
    .line 392
    .line 393
    move-result v12

    .line 394
    goto :goto_b

    .line 395
    :cond_d
    add-int/2addr v13, v12

    .line 396
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzfw;->zza(I)I

    .line 397
    .line 398
    .line 399
    move-result v12

    .line 400
    const/4 v2, 0x0

    .line 401
    :goto_c
    if-ne v12, v7, :cond_e

    .line 402
    .line 403
    add-int/lit16 v2, v2, 0xff

    .line 404
    .line 405
    const/16 v12, 0x8

    .line 406
    .line 407
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzfw;->zza(I)I

    .line 408
    .line 409
    .line 410
    move-result v29

    .line 411
    move/from16 v12, v29

    .line 412
    .line 413
    goto :goto_c

    .line 414
    :cond_e
    const/16 v7, 0x8

    .line 415
    .line 416
    add-int/2addr v2, v12

    .line 417
    if-eqz v2, :cond_a

    .line 418
    .line 419
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzfw;->zzg(I)Z

    .line 420
    .line 421
    .line 422
    move-result v12

    .line 423
    if-nez v12, :cond_f

    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_f
    const/16 v12, 0xb0

    .line 427
    .line 428
    if-ne v13, v12, :cond_18

    .line 429
    .line 430
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfw;->zzc()I

    .line 431
    .line 432
    .line 433
    move-result v40

    .line 434
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfw;->zzh()Z

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-eqz v2, :cond_10

    .line 439
    .line 440
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfw;->zzc()I

    .line 441
    .line 442
    .line 443
    move-result v7

    .line 444
    move/from16 v41, v7

    .line 445
    .line 446
    goto :goto_d

    .line 447
    :cond_10
    const/16 v41, 0x0

    .line 448
    .line 449
    :goto_d
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfw;->zzc()I

    .line 450
    .line 451
    .line 452
    move-result v7

    .line 453
    const/4 v12, 0x0

    .line 454
    const/16 v43, -0x1

    .line 455
    .line 456
    const/16 v44, -0x1

    .line 457
    .line 458
    const/16 v45, -0x1

    .line 459
    .line 460
    const/16 v46, -0x1

    .line 461
    .line 462
    const/16 v47, -0x1

    .line 463
    .line 464
    const/16 v48, -0x1

    .line 465
    .line 466
    :goto_e
    if-gt v12, v7, :cond_17

    .line 467
    .line 468
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfw;->zzc()I

    .line 469
    .line 470
    .line 471
    move-result v43

    .line 472
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfw;->zzc()I

    .line 473
    .line 474
    .line 475
    move-result v44

    .line 476
    const/4 v13, 0x6

    .line 477
    move/from16 v29, v10

    .line 478
    .line 479
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzfw;->zza(I)I

    .line 480
    .line 481
    .line 482
    move-result v10

    .line 483
    const/16 v13, 0x3f

    .line 484
    .line 485
    if-ne v10, v13, :cond_11

    .line 486
    .line 487
    goto/16 :goto_8

    .line 488
    .line 489
    :cond_11
    if-nez v10, :cond_12

    .line 490
    .line 491
    add-int/lit8 v13, v40, -0x1e

    .line 492
    .line 493
    move/from16 v33, v15

    .line 494
    .line 495
    const/4 v15, 0x0

    .line 496
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    .line 497
    .line 498
    .line 499
    move-result v13

    .line 500
    goto :goto_f

    .line 501
    :cond_12
    move/from16 v33, v15

    .line 502
    .line 503
    const/4 v15, 0x0

    .line 504
    add-int v13, v10, v40

    .line 505
    .line 506
    add-int/lit8 v13, v13, -0x1f

    .line 507
    .line 508
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    .line 509
    .line 510
    .line 511
    move-result v13

    .line 512
    :goto_f
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzfw;->zza(I)I

    .line 513
    .line 514
    .line 515
    move-result v46

    .line 516
    if-eqz v2, :cond_15

    .line 517
    .line 518
    const/4 v13, 0x6

    .line 519
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzfw;->zza(I)I

    .line 520
    .line 521
    .line 522
    move-result v13

    .line 523
    const/16 v15, 0x3f

    .line 524
    .line 525
    if-ne v13, v15, :cond_13

    .line 526
    .line 527
    goto/16 :goto_9

    .line 528
    .line 529
    :cond_13
    if-nez v13, :cond_14

    .line 530
    .line 531
    add-int/lit8 v15, v41, -0x1e

    .line 532
    .line 533
    move/from16 v32, v2

    .line 534
    .line 535
    const/4 v2, 0x0

    .line 536
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    .line 537
    .line 538
    .line 539
    move-result v15

    .line 540
    goto :goto_10

    .line 541
    :cond_14
    move/from16 v32, v2

    .line 542
    .line 543
    const/4 v2, 0x0

    .line 544
    add-int v15, v13, v41

    .line 545
    .line 546
    add-int/lit8 v15, v15, -0x1f

    .line 547
    .line 548
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    .line 549
    .line 550
    .line 551
    move-result v15

    .line 552
    :goto_10
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzfw;->zza(I)I

    .line 553
    .line 554
    .line 555
    move-result v48

    .line 556
    move/from16 v47, v13

    .line 557
    .line 558
    goto :goto_11

    .line 559
    :cond_15
    move/from16 v32, v2

    .line 560
    .line 561
    :goto_11
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfw;->zzh()Z

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    if-eqz v2, :cond_16

    .line 566
    .line 567
    const/16 v2, 0xa

    .line 568
    .line 569
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzfw;->zzf(I)V

    .line 570
    .line 571
    .line 572
    :cond_16
    add-int/lit8 v12, v12, 0x1

    .line 573
    .line 574
    move/from16 v45, v10

    .line 575
    .line 576
    move/from16 v10, v29

    .line 577
    .line 578
    move/from16 v2, v32

    .line 579
    .line 580
    move/from16 v15, v33

    .line 581
    .line 582
    goto :goto_e

    .line 583
    :cond_17
    move/from16 v29, v10

    .line 584
    .line 585
    move/from16 v33, v15

    .line 586
    .line 587
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfo;

    .line 588
    .line 589
    add-int/lit8 v42, v7, 0x1

    .line 590
    .line 591
    move-object/from16 v39, v2

    .line 592
    .line 593
    invoke-direct/range {v39 .. v48}, Lcom/google/android/gms/internal/ads/zzfo;-><init>(IIIIIIIII)V

    .line 594
    .line 595
    .line 596
    goto :goto_12

    .line 597
    :cond_18
    move/from16 v29, v10

    .line 598
    .line 599
    move/from16 v33, v15

    .line 600
    .line 601
    mul-int/lit8 v2, v2, 0x8

    .line 602
    .line 603
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzfw;->zzf(I)V

    .line 604
    .line 605
    .line 606
    move/from16 v10, v29

    .line 607
    .line 608
    move/from16 v15, v33

    .line 609
    .line 610
    const/4 v7, -0x1

    .line 611
    goto/16 :goto_a

    .line 612
    .line 613
    :goto_12
    if-eqz v2, :cond_8

    .line 614
    .line 615
    if-eqz v14, :cond_8

    .line 616
    .line 617
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfo;->zza:I

    .line 618
    .line 619
    iget-object v7, v14, Lcom/google/android/gms/internal/ads/zzfs;->zza:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 620
    .line 621
    const/4 v8, 0x0

    .line 622
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v7

    .line 626
    check-cast v7, Lcom/google/android/gms/internal/ads/zzfi;

    .line 627
    .line 628
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzfi;->zzb:I

    .line 629
    .line 630
    if-ne v2, v7, :cond_19

    .line 631
    .line 632
    move/from16 v10, v29

    .line 633
    .line 634
    move/from16 v15, v33

    .line 635
    .line 636
    const/16 v25, 0x4

    .line 637
    .line 638
    goto :goto_14

    .line 639
    :cond_19
    const/4 v2, 0x5

    .line 640
    move/from16 v25, v2

    .line 641
    .line 642
    :goto_13
    move/from16 v10, v29

    .line 643
    .line 644
    move/from16 v15, v33

    .line 645
    .line 646
    :goto_14
    add-int v12, v5, v3

    .line 647
    .line 648
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 649
    .line 650
    .line 651
    const/4 v2, 0x1

    .line 652
    add-int/2addr v10, v2

    .line 653
    move v3, v2

    .line 654
    move v7, v8

    .line 655
    move/from16 v5, v30

    .line 656
    .line 657
    move/from16 v8, v31

    .line 658
    .line 659
    move/from16 v13, v38

    .line 660
    .line 661
    const/4 v2, 0x4

    .line 662
    goto/16 :goto_4

    .line 663
    .line 664
    :cond_1a
    move/from16 v30, v5

    .line 665
    .line 666
    move v8, v7

    .line 667
    move/from16 v33, v15

    .line 668
    .line 669
    add-int/lit8 v11, v11, 0x1

    .line 670
    .line 671
    move-object/from16 v29, v14

    .line 672
    .line 673
    const/4 v2, 0x4

    .line 674
    const/4 v3, 0x1

    .line 675
    goto/16 :goto_3

    .line 676
    .line 677
    :cond_1b
    if-nez v9, :cond_1c

    .line 678
    .line 679
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    :goto_15
    move-object v13, v0

    .line 684
    goto :goto_16

    .line 685
    :cond_1c
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    goto :goto_15

    .line 690
    :goto_16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaek;

    .line 691
    .line 692
    const/4 v2, 0x1

    .line 693
    add-int/lit8 v14, v4, 0x1

    .line 694
    .line 695
    move-object v12, v0

    .line 696
    invoke-direct/range {v12 .. v29}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(Ljava/util/List;IIIIIIIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfs;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 697
    .line 698
    .line 699
    return-object v0

    .line 700
    :goto_17
    if-eq v2, v1, :cond_1d

    .line 701
    .line 702
    const-string v1, "HEVC config"

    .line 703
    .line 704
    goto :goto_18

    .line 705
    :cond_1d
    const-string v1, "L-HEVC config"

    .line 706
    .line 707
    :goto_18
    const-string v2, "Error parsing"

    .line 708
    .line 709
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    throw v0
.end method
