.class public final Lcom/google/android/gms/internal/ads/zzant;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaoo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzem;

.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzeu;

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:I

.field private zzj:I

.field private zzk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzant;->zza:Lcom/google/android/gms/internal/ads/zzamz;

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzem;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzant;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzant;->zzc:I

    .line 19
    .line 20
    return-void
.end method

.method private final zze(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzant;->zzc:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzant;->zzd:I

    .line 5
    .line 6
    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzen;[BI)Z
    .locals 3
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzant;->zzd:I

    .line 6
    .line 7
    sub-int v1, p3, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzant;->zzd:I

    .line 24
    .line 25
    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzant;->zzd:I

    .line 29
    .line 30
    add-int/2addr p1, v0

    .line 31
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzant;->zzd:I

    .line 32
    .line 33
    if-ne p1, p3, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    return p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzen;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzant;->zze:Lcom/google/android/gms/internal/ads/zzeu;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    and-int/lit8 v2, p2, 0x1

    .line 11
    .line 12
    const-string v3, "PesReader"

    .line 13
    .line 14
    const/4 v4, -0x1

    .line 15
    const/4 v5, 0x2

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzant;->zzc:I

    .line 21
    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    if-eq v2, v7, :cond_3

    .line 25
    .line 26
    if-eq v2, v5, :cond_2

    .line 27
    .line 28
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzant;->zzj:I

    .line 29
    .line 30
    if-eq v2, v4, :cond_0

    .line 31
    .line 32
    new-instance v8, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v9, "Unexpected start indicator: expected "

    .line 38
    .line 39
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, " more bytes"

    .line 46
    .line 47
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    move v2, v7

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v2, v6

    .line 66
    :goto_0
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzant;->zza:Lcom/google/android/gms/internal/ads/zzamz;

    .line 67
    .line 68
    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/ads/zzamz;->zzc(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const-string v2, "Unexpected start indicator reading extended header"

    .line 73
    .line 74
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_1
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzant;->zze(I)V

    .line 78
    .line 79
    .line 80
    :cond_4
    move/from16 v2, p2

    .line 81
    .line 82
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-lez v8, :cond_13

    .line 87
    .line 88
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzant;->zzc:I

    .line 89
    .line 90
    if-eqz v8, :cond_12

    .line 91
    .line 92
    if-eq v8, v7, :cond_d

    .line 93
    .line 94
    if-eq v8, v5, :cond_8

    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzant;->zzj:I

    .line 101
    .line 102
    if-ne v9, v4, :cond_5

    .line 103
    .line 104
    move v9, v6

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    sub-int v9, v8, v9

    .line 107
    .line 108
    :goto_3
    if-lez v9, :cond_6

    .line 109
    .line 110
    sub-int/2addr v8, v9

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    add-int/2addr v9, v8

    .line 116
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzK(I)V

    .line 117
    .line 118
    .line 119
    :cond_6
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzant;->zza:Lcom/google/android/gms/internal/ads/zzamz;

    .line 120
    .line 121
    invoke-interface {v9, v1}, Lcom/google/android/gms/internal/ads/zzamz;->zza(Lcom/google/android/gms/internal/ads/zzen;)V

    .line 122
    .line 123
    .line 124
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzant;->zzj:I

    .line 125
    .line 126
    if-eq v10, v4, :cond_7

    .line 127
    .line 128
    sub-int/2addr v10, v8

    .line 129
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzant;->zzj:I

    .line 130
    .line 131
    if-nez v10, :cond_7

    .line 132
    .line 133
    invoke-interface {v9, v6}, Lcom/google/android/gms/internal/ads/zzamz;->zzc(Z)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzant;->zze(I)V

    .line 137
    .line 138
    .line 139
    :cond_7
    move/from16 v17, v2

    .line 140
    .line 141
    move v8, v5

    .line 142
    move v2, v6

    .line 143
    move v6, v7

    .line 144
    move-object v5, v1

    .line 145
    move v1, v4

    .line 146
    goto/16 :goto_9

    .line 147
    .line 148
    :cond_8
    const/16 v8, 0xa

    .line 149
    .line 150
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzant;->zzi:I

    .line 151
    .line 152
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzant;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    .line 157
    .line 158
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzem;->zza:[B

    .line 159
    .line 160
    invoke-direct {v0, v1, v10, v8}, Lcom/google/android/gms/internal/ads/zzant;->zzf(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_c

    .line 165
    .line 166
    const/4 v8, 0x0

    .line 167
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzant;->zzi:I

    .line 168
    .line 169
    invoke-direct {v0, v1, v8, v10}, Lcom/google/android/gms/internal/ads/zzant;->zzf(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_c

    .line 174
    .line 175
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzem;->zzl(I)V

    .line 176
    .line 177
    .line 178
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzant;->zzf:Z

    .line 179
    .line 180
    const/4 v10, 0x3

    .line 181
    const/4 v11, 0x4

    .line 182
    if-eqz v8, :cond_a

    .line 183
    .line 184
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    int-to-long v12, v8

    .line 192
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 193
    .line 194
    .line 195
    const/16 v8, 0xf

    .line 196
    .line 197
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 198
    .line 199
    .line 200
    move-result v14

    .line 201
    shl-int/2addr v14, v8

    .line 202
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 206
    .line 207
    .line 208
    move-result v15

    .line 209
    int-to-long v4, v15

    .line 210
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 211
    .line 212
    .line 213
    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzant;->zzh:Z

    .line 214
    .line 215
    const/16 v16, 0x1e

    .line 216
    .line 217
    if-nez v15, :cond_9

    .line 218
    .line 219
    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzant;->zzg:Z

    .line 220
    .line 221
    if-eqz v15, :cond_9

    .line 222
    .line 223
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    int-to-long v10, v15

    .line 231
    shl-long v10, v10, v16

    .line 232
    .line 233
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 237
    .line 238
    .line 239
    move-result v15

    .line 240
    shl-int/2addr v15, v8

    .line 241
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 245
    .line 246
    .line 247
    move-result v8

    .line 248
    move/from16 v17, v2

    .line 249
    .line 250
    int-to-long v1, v8

    .line 251
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 252
    .line 253
    .line 254
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzant;->zze:Lcom/google/android/gms/internal/ads/zzeu;

    .line 255
    .line 256
    int-to-long v6, v15

    .line 257
    or-long/2addr v6, v10

    .line 258
    or-long/2addr v1, v6

    .line 259
    invoke-virtual {v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(J)J

    .line 260
    .line 261
    .line 262
    const/4 v1, 0x1

    .line 263
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzant;->zzh:Z

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_9
    move/from16 v17, v2

    .line 267
    .line 268
    :goto_4
    shl-long v1, v12, v16

    .line 269
    .line 270
    int-to-long v6, v14

    .line 271
    or-long/2addr v1, v6

    .line 272
    or-long/2addr v1, v4

    .line 273
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzant;->zze:Lcom/google/android/gms/internal/ads/zzeu;

    .line 274
    .line 275
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(J)J

    .line 276
    .line 277
    .line 278
    move-result-wide v1

    .line 279
    goto :goto_5

    .line 280
    :cond_a
    move/from16 v17, v2

    .line 281
    .line 282
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :goto_5
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzant;->zzk:Z

    .line 288
    .line 289
    const/4 v5, 0x1

    .line 290
    if-eq v5, v4, :cond_b

    .line 291
    .line 292
    const/4 v11, 0x0

    .line 293
    goto :goto_6

    .line 294
    :cond_b
    const/4 v11, 0x4

    .line 295
    :goto_6
    or-int v4, v17, v11

    .line 296
    .line 297
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzant;->zza:Lcom/google/android/gms/internal/ads/zzamz;

    .line 298
    .line 299
    invoke-interface {v5, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzamz;->zzd(JI)V

    .line 300
    .line 301
    .line 302
    const/4 v1, 0x3

    .line 303
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzant;->zze(I)V

    .line 304
    .line 305
    .line 306
    move-object/from16 v1, p1

    .line 307
    .line 308
    move v2, v4

    .line 309
    const/4 v4, -0x1

    .line 310
    const/4 v5, 0x2

    .line 311
    const/4 v6, 0x0

    .line 312
    const/4 v7, 0x1

    .line 313
    goto/16 :goto_2

    .line 314
    .line 315
    :cond_c
    move/from16 v17, v2

    .line 316
    .line 317
    move v1, v4

    .line 318
    move v8, v5

    .line 319
    move v2, v6

    .line 320
    move v6, v7

    .line 321
    move-object/from16 v5, p1

    .line 322
    .line 323
    goto/16 :goto_9

    .line 324
    .line 325
    :cond_d
    move/from16 v17, v2

    .line 326
    .line 327
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzant;->zzb:Lcom/google/android/gms/internal/ads/zzem;

    .line 328
    .line 329
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzem;->zza:[B

    .line 330
    .line 331
    const/16 v4, 0x9

    .line 332
    .line 333
    move-object/from16 v5, p1

    .line 334
    .line 335
    invoke-direct {v0, v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzant;->zzf(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-eqz v2, :cond_11

    .line 340
    .line 341
    const/4 v2, 0x0

    .line 342
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzl(I)V

    .line 343
    .line 344
    .line 345
    const/16 v4, 0x18

    .line 346
    .line 347
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    const/4 v6, 0x1

    .line 352
    if-eq v4, v6, :cond_e

    .line 353
    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    const-string v7, "Unexpected start code prefix: "

    .line 360
    .line 361
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    const/4 v1, -0x1

    .line 375
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzant;->zzj:I

    .line 376
    .line 377
    move v4, v2

    .line 378
    const/4 v8, 0x2

    .line 379
    goto :goto_8

    .line 380
    :cond_e
    const/16 v4, 0x8

    .line 381
    .line 382
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 383
    .line 384
    .line 385
    const/16 v7, 0x10

    .line 386
    .line 387
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    const/4 v8, 0x5

    .line 392
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 396
    .line 397
    .line 398
    move-result v8

    .line 399
    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzant;->zzk:Z

    .line 400
    .line 401
    const/4 v8, 0x2

    .line 402
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 406
    .line 407
    .line 408
    move-result v9

    .line 409
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzant;->zzf:Z

    .line 410
    .line 411
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzant;->zzg:Z

    .line 416
    .line 417
    const/4 v9, 0x6

    .line 418
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzant;->zzi:I

    .line 426
    .line 427
    if-nez v7, :cond_f

    .line 428
    .line 429
    const/4 v4, -0x1

    .line 430
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzant;->zzj:I

    .line 431
    .line 432
    move v1, v4

    .line 433
    :goto_7
    move v4, v8

    .line 434
    goto :goto_8

    .line 435
    :cond_f
    add-int/lit8 v7, v7, -0x3

    .line 436
    .line 437
    sub-int/2addr v7, v1

    .line 438
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzant;->zzj:I

    .line 439
    .line 440
    if-gez v7, :cond_10

    .line 441
    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    const-string v4, "Found negative packet payload size: "

    .line 448
    .line 449
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    const/4 v1, -0x1

    .line 463
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzant;->zzj:I

    .line 464
    .line 465
    goto :goto_7

    .line 466
    :cond_10
    const/4 v1, -0x1

    .line 467
    goto :goto_7

    .line 468
    :goto_8
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzant;->zze(I)V

    .line 469
    .line 470
    .line 471
    goto :goto_9

    .line 472
    :cond_11
    const/4 v1, -0x1

    .line 473
    const/4 v2, 0x0

    .line 474
    const/4 v6, 0x1

    .line 475
    const/4 v8, 0x2

    .line 476
    goto :goto_9

    .line 477
    :cond_12
    move/from16 v17, v2

    .line 478
    .line 479
    move v8, v5

    .line 480
    move v2, v6

    .line 481
    move v6, v7

    .line 482
    move-object v5, v1

    .line 483
    move v1, v4

    .line 484
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 485
    .line 486
    .line 487
    move-result v4

    .line 488
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 489
    .line 490
    .line 491
    :goto_9
    move v4, v1

    .line 492
    move-object v1, v5

    .line 493
    move v7, v6

    .line 494
    move v5, v8

    .line 495
    move v6, v2

    .line 496
    move/from16 v2, v17

    .line 497
    .line 498
    goto/16 :goto_2

    .line 499
    .line 500
    :cond_13
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzaon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzant;->zze:Lcom/google/android/gms/internal/ads/zzeu;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzant;->zza:Lcom/google/android/gms/internal/ads/zzamz;

    .line 4
    .line 5
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamz;->zzb(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzaon;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzant;->zzc:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzant;->zzd:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzant;->zzh:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzant;->zza:Lcom/google/android/gms/internal/ads/zzamz;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamz;->zze()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzd(Z)Z
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzant;->zzc:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzant;->zzj:I

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method
