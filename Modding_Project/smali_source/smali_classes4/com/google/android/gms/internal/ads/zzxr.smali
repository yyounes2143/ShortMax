.class public final Lcom/google/android/gms/internal/ads/zzxr;
.super Lcom/google/android/gms/internal/ads/zzxt;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzbm;[IILcom/google/android/gms/internal/ads/zzzl;JJJIIFFLjava/util/List;Lcom/google/android/gms/internal/ads/zzdj;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    move-object v2, p1

    .line 4
    move-object v3, p2

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzxt;-><init>(Lcom/google/android/gms/internal/ads/zzbm;[II)V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p15 .. p15}, Lcom/google/android/gms/internal/ads/zzfyq;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method static bridge synthetic zzd([Lcom/google/android/gms/internal/ads/zzyv;)Lcom/google/android/gms/internal/ads/zzfyq;
    .locals 22

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    if-ge v3, v6, :cond_1

    .line 13
    .line 14
    aget-object v6, p0, v3

    .line 15
    .line 16
    if-eqz v6, :cond_0

    .line 17
    .line 18
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzyv;->zzb:[I

    .line 19
    .line 20
    array-length v6, v6

    .line 21
    if-le v6, v0, :cond_0

    .line 22
    .line 23
    sget v6, Lcom/google/android/gms/internal/ads/zzfyq;->zzd:I

    .line 24
    .line 25
    new-instance v6, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 26
    .line 27
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v7, Lcom/google/android/gms/internal/ads/zzxp;

    .line 31
    .line 32
    invoke-direct {v7, v4, v5, v4, v5}, Lcom/google/android/gms/internal/ads/zzxp;-><init>(JJ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfyn;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/4 v4, 0x0

    .line 43
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :goto_1
    add-int/2addr v3, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-array v3, v6, [[J

    .line 49
    .line 50
    move v7, v2

    .line 51
    :goto_2
    const-wide/16 v8, -0x1

    .line 52
    .line 53
    if-ge v7, v6, :cond_5

    .line 54
    .line 55
    aget-object v10, p0, v7

    .line 56
    .line 57
    if-nez v10, :cond_2

    .line 58
    .line 59
    new-array v8, v2, [J

    .line 60
    .line 61
    aput-object v8, v3, v7

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_2
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzyv;->zzb:[I

    .line 65
    .line 66
    array-length v12, v11

    .line 67
    new-array v12, v12, [J

    .line 68
    .line 69
    aput-object v12, v3, v7

    .line 70
    .line 71
    move v12, v2

    .line 72
    :goto_3
    array-length v13, v11

    .line 73
    if-ge v12, v13, :cond_4

    .line 74
    .line 75
    iget-object v13, v10, Lcom/google/android/gms/internal/ads/zzyv;->zza:Lcom/google/android/gms/internal/ads/zzbm;

    .line 76
    .line 77
    aget v14, v11, v12

    .line 78
    .line 79
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzbm;->zzb(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    iget v13, v13, Lcom/google/android/gms/internal/ads/zzz;->zzj:I

    .line 84
    .line 85
    int-to-long v13, v13

    .line 86
    aget-object v15, v3, v7

    .line 87
    .line 88
    cmp-long v16, v13, v8

    .line 89
    .line 90
    if-nez v16, :cond_3

    .line 91
    .line 92
    move-wide v13, v4

    .line 93
    :cond_3
    aput-wide v13, v15, v12

    .line 94
    .line 95
    add-int/2addr v12, v0

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    aget-object v8, v3, v7

    .line 98
    .line 99
    invoke-static {v8}, Ljava/util/Arrays;->sort([J)V

    .line 100
    .line 101
    .line 102
    :goto_4
    add-int/2addr v7, v0

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    new-array v7, v6, [I

    .line 105
    .line 106
    new-array v10, v6, [J

    .line 107
    .line 108
    move v11, v2

    .line 109
    :goto_5
    if-ge v11, v6, :cond_7

    .line 110
    .line 111
    aget-object v12, v3, v11

    .line 112
    .line 113
    array-length v13, v12

    .line 114
    if-nez v13, :cond_6

    .line 115
    .line 116
    move-wide v13, v4

    .line 117
    goto :goto_6

    .line 118
    :cond_6
    aget-wide v13, v12, v2

    .line 119
    .line 120
    :goto_6
    aput-wide v13, v10, v11

    .line 121
    .line 122
    add-int/2addr v11, v0

    .line 123
    goto :goto_5

    .line 124
    :cond_7
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/ads/zzxr;->zzi(Ljava/util/List;[J)V

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgab;->zzc()Lcom/google/android/gms/internal/ads/zzgab;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfzw;->zzc(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzu;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzfzu;->zzb(I)Lcom/google/android/gms/internal/ads/zzfzs;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfzs;->zza()Lcom/google/android/gms/internal/ads/zzfzb;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    move v5, v2

    .line 144
    :goto_7
    if-ge v5, v6, :cond_d

    .line 145
    .line 146
    aget-object v11, v3, v5

    .line 147
    .line 148
    array-length v11, v11

    .line 149
    if-gt v11, v0, :cond_8

    .line 150
    .line 151
    move-object/from16 p0, v7

    .line 152
    .line 153
    goto :goto_c

    .line 154
    :cond_8
    new-array v12, v11, [D

    .line 155
    .line 156
    move v13, v2

    .line 157
    :goto_8
    aget-object v14, v3, v5

    .line 158
    .line 159
    array-length v15, v14

    .line 160
    const-wide/16 v16, 0x0

    .line 161
    .line 162
    if-ge v13, v15, :cond_a

    .line 163
    .line 164
    move-object/from16 p0, v7

    .line 165
    .line 166
    aget-wide v6, v14, v13

    .line 167
    .line 168
    cmp-long v14, v6, v8

    .line 169
    .line 170
    if-nez v14, :cond_9

    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_9
    long-to-double v6, v6

    .line 174
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    .line 175
    .line 176
    .line 177
    move-result-wide v16

    .line 178
    :goto_9
    aput-wide v16, v12, v13

    .line 179
    .line 180
    add-int/2addr v13, v0

    .line 181
    move-object/from16 v7, p0

    .line 182
    .line 183
    const/4 v6, 0x2

    .line 184
    goto :goto_8

    .line 185
    :cond_a
    move-object/from16 p0, v7

    .line 186
    .line 187
    add-int/lit8 v11, v11, -0x1

    .line 188
    .line 189
    aget-wide v6, v12, v11

    .line 190
    .line 191
    aget-wide v13, v12, v2

    .line 192
    .line 193
    sub-double/2addr v6, v13

    .line 194
    move v13, v2

    .line 195
    :goto_a
    if-ge v13, v11, :cond_c

    .line 196
    .line 197
    aget-wide v18, v12, v13

    .line 198
    .line 199
    add-int/2addr v13, v0

    .line 200
    aget-wide v20, v12, v13

    .line 201
    .line 202
    add-double v18, v18, v20

    .line 203
    .line 204
    cmpl-double v14, v6, v16

    .line 205
    .line 206
    if-nez v14, :cond_b

    .line 207
    .line 208
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 209
    .line 210
    goto :goto_b

    .line 211
    :cond_b
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    .line 212
    .line 213
    mul-double v18, v18, v20

    .line 214
    .line 215
    aget-wide v20, v12, v2

    .line 216
    .line 217
    sub-double v18, v18, v20

    .line 218
    .line 219
    div-double v18, v18, v6

    .line 220
    .line 221
    :goto_b
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-interface {v4, v14, v2}, Lcom/google/android/gms/internal/ads/zzfzo;->zzq(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    const/4 v2, 0x0

    .line 233
    goto :goto_a

    .line 234
    :cond_c
    :goto_c
    add-int/2addr v5, v0

    .line 235
    move-object/from16 v7, p0

    .line 236
    .line 237
    const/4 v2, 0x0

    .line 238
    const/4 v6, 0x2

    .line 239
    goto :goto_7

    .line 240
    :cond_d
    move-object/from16 p0, v7

    .line 241
    .line 242
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfzo;->zzr()Ljava/util/Collection;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfyq;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    const/4 v4, 0x0

    .line 251
    :goto_d
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-ge v4, v5, :cond_e

    .line 256
    .line 257
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    check-cast v5, Ljava/lang/Integer;

    .line 262
    .line 263
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    aget v6, p0, v5

    .line 268
    .line 269
    add-int/2addr v6, v0

    .line 270
    aput v6, p0, v5

    .line 271
    .line 272
    aget-object v7, v3, v5

    .line 273
    .line 274
    aget-wide v6, v7, v6

    .line 275
    .line 276
    aput-wide v6, v10, v5

    .line 277
    .line 278
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/ads/zzxr;->zzi(Ljava/util/List;[J)V

    .line 279
    .line 280
    .line 281
    add-int/2addr v4, v0

    .line 282
    goto :goto_d

    .line 283
    :cond_e
    const/4 v2, 0x2

    .line 284
    const/4 v3, 0x0

    .line 285
    :goto_e
    if-ge v3, v2, :cond_10

    .line 286
    .line 287
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    if-eqz v4, :cond_f

    .line 292
    .line 293
    aget-wide v4, v10, v3

    .line 294
    .line 295
    add-long/2addr v4, v4

    .line 296
    aput-wide v4, v10, v3

    .line 297
    .line 298
    :cond_f
    add-int/2addr v3, v0

    .line 299
    goto :goto_e

    .line 300
    :cond_10
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/ads/zzxr;->zzi(Ljava/util/List;[J)V

    .line 301
    .line 302
    .line 303
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 304
    .line 305
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>()V

    .line 306
    .line 307
    .line 308
    const/4 v3, 0x0

    .line 309
    :goto_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    if-ge v3, v4, :cond_12

    .line 314
    .line 315
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    check-cast v4, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 320
    .line 321
    if-nez v4, :cond_11

    .line 322
    .line 323
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    goto :goto_10

    .line 328
    :cond_11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfyn;->zzi()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    :goto_10
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfyn;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 333
    .line 334
    .line 335
    add-int/2addr v3, v0

    .line 336
    goto :goto_f

    .line 337
    :cond_12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfyn;->zzi()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    return-object v0
.end method

.method private static zzi(Ljava/util/List;[J)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    move v3, v0

    .line 5
    :goto_0
    const/4 v4, 0x2

    .line 6
    if-ge v3, v4, :cond_0

    .line 7
    .line 8
    aget-wide v4, p1, v3

    .line 9
    .line 10
    add-long/2addr v1, v4

    .line 11
    add-int/lit8 v3, v3, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v0, v3, :cond_2

    .line 19
    .line 20
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    new-instance v4, Lcom/google/android/gms/internal/ads/zzxp;

    .line 29
    .line 30
    aget-wide v5, p1, v0

    .line 31
    .line 32
    invoke-direct {v4, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzxp;-><init>(JJ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfyn;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 36
    .line 37
    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    return-void
.end method
