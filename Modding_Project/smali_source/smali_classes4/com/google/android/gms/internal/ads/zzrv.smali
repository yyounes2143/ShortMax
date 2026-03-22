.class public final Lcom/google/android/gms/internal/ads/zzrv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field private static final zza:[B

.field private static final zzb:[B


# instance fields
.field private zzc:Ljava/nio/ByteBuffer;

.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzrv;->zza:[B

    .line 9
    .line 10
    const/16 v0, 0x2c

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/internal/ads/zzrv;->zzb:[B

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ct
        -0x2bt
        -0x3bt
        -0x9t
        0x1t
        0x13t
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
        0x1t
        0x2t
        0x38t
        0x1t
        -0x80t
        -0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    :array_1
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbt
        -0x67t
        0x57t
        0x53t
        0x1t
        0x10t
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcn;->zza:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzc:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->zze:I

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzd:I

    .line 13
    .line 14
    return-void
.end method

.method private static final zzc(Ljava/nio/ByteBuffer;JIIZ)V
    .locals 2

    .line 1
    const/16 v0, 0x4f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x67

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x53

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v1, p5, :cond_0

    .line 25
    .line 26
    move p5, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p5, 0x2

    .line 29
    :goto_0
    invoke-virtual {p0, p5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    int-to-long p1, p4

    .line 45
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgbx;->zza(J)B

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhs;Ljava/util/List;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhs;->zzc:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzhs;->zzc:Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sub-int/2addr v2, v3

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzd:I

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x2

    .line 29
    const/4 v6, 0x0

    .line 30
    if-ne v2, v5, :cond_2

    .line 31
    .line 32
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eq v2, v4, :cond_1

    .line 37
    .line 38
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v7, 0x3

    .line 43
    if-ne v2, v7, :cond_2

    .line 44
    .line 45
    :cond_1
    move-object/from16 v2, p2

    .line 46
    .line 47
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    move-object v3, v2

    .line 52
    check-cast v3, [B

    .line 53
    .line 54
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhs;->zzc:Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    sub-int v9, v8, v7

    .line 65
    .line 66
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzd:I

    .line 67
    .line 68
    add-int/lit16 v11, v9, 0xff

    .line 69
    .line 70
    const/16 v12, 0xff

    .line 71
    .line 72
    div-int/2addr v11, v12

    .line 73
    add-int/lit8 v13, v11, 0x1b

    .line 74
    .line 75
    add-int/2addr v13, v9

    .line 76
    if-ne v10, v5, :cond_4

    .line 77
    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    array-length v10, v3

    .line 81
    add-int/lit8 v10, v10, 0x1c

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const/16 v10, 0x2f

    .line 85
    .line 86
    :goto_0
    add-int/lit8 v14, v10, 0x2c

    .line 87
    .line 88
    add-int/2addr v13, v14

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    move v10, v6

    .line 91
    :goto_1
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzc:Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    invoke-virtual {v14}, Ljava/nio/Buffer;->capacity()I

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    if-ge v14, v13, :cond_5

    .line 98
    .line 99
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 104
    .line 105
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    iput-object v13, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzc:Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzc:Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 115
    .line 116
    .line 117
    :goto_2
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzc:Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzd:I

    .line 120
    .line 121
    const/16 v15, 0x16

    .line 122
    .line 123
    if-ne v14, v5, :cond_7

    .line 124
    .line 125
    if-eqz v3, :cond_6

    .line 126
    .line 127
    const/16 v18, 0x1

    .line 128
    .line 129
    const/16 v19, 0x1

    .line 130
    .line 131
    const-wide/16 v16, 0x0

    .line 132
    .line 133
    const/16 v20, 0x0

    .line 134
    .line 135
    move-object v14, v13

    .line 136
    move v4, v15

    .line 137
    move-wide/from16 v15, v16

    .line 138
    .line 139
    move/from16 v17, v20

    .line 140
    .line 141
    invoke-static/range {v14 .. v19}, Lcom/google/android/gms/internal/ads/zzrv;->zzc(Ljava/nio/ByteBuffer;JIIZ)V

    .line 142
    .line 143
    .line 144
    array-length v14, v3

    .line 145
    int-to-long v4, v14

    .line 146
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgbx;->zza(J)B

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-virtual {v13, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v13, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    add-int/lit8 v14, v14, 0x1c

    .line 165
    .line 166
    invoke-static {v3, v4, v14, v6}, Lcom/google/android/gms/internal/ads/zzex;->zzf([BIII)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    const/16 v4, 0x16

    .line 171
    .line 172
    invoke-virtual {v13, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_6
    sget-object v3, Lcom/google/android/gms/internal/ads/zzrv;->zza:[B

    .line 180
    .line 181
    invoke-virtual {v13, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 182
    .line 183
    .line 184
    :goto_3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzrv;->zzb:[B

    .line 185
    .line 186
    invoke-virtual {v13, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 187
    .line 188
    .line 189
    :cond_7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaeq;->zzc(Ljava/nio/ByteBuffer;)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzrv;->zze:I

    .line 194
    .line 195
    add-int/2addr v4, v3

    .line 196
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzrv;->zze:I

    .line 197
    .line 198
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzd:I

    .line 199
    .line 200
    int-to-long v14, v4

    .line 201
    const/16 v18, 0x0

    .line 202
    .line 203
    move-object v4, v13

    .line 204
    move/from16 v16, v3

    .line 205
    .line 206
    move/from16 v17, v11

    .line 207
    .line 208
    invoke-static/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/zzrv;->zzc(Ljava/nio/ByteBuffer;JIIZ)V

    .line 209
    .line 210
    .line 211
    move v3, v6

    .line 212
    :goto_4
    if-ge v3, v11, :cond_9

    .line 213
    .line 214
    if-lt v9, v12, :cond_8

    .line 215
    .line 216
    const/4 v5, -0x1

    .line 217
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 218
    .line 219
    .line 220
    add-int/lit16 v9, v9, -0xff

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_8
    int-to-byte v5, v9

    .line 224
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 225
    .line 226
    .line 227
    move v9, v6

    .line 228
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_9
    :goto_6
    if-ge v7, v8, :cond_a

    .line 232
    .line 233
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 238
    .line 239
    .line 240
    add-int/lit8 v7, v7, 0x1

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_a
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 251
    .line 252
    .line 253
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzd:I

    .line 254
    .line 255
    const/4 v3, 0x2

    .line 256
    if-ne v2, v3, :cond_b

    .line 257
    .line 258
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    add-int/2addr v3, v10

    .line 267
    add-int/lit8 v3, v3, 0x2c

    .line 268
    .line 269
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    sub-int/2addr v5, v7

    .line 278
    invoke-static {v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzex;->zzf([BIII)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    add-int/lit8 v10, v10, 0x42

    .line 283
    .line 284
    invoke-virtual {v4, v10, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 285
    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_b
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    sub-int/2addr v5, v7

    .line 305
    invoke-static {v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzex;->zzf([BIII)I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    const/16 v3, 0x16

    .line 310
    .line 311
    invoke-virtual {v4, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 312
    .line 313
    .line 314
    :goto_7
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzd:I

    .line 315
    .line 316
    const/4 v3, 0x1

    .line 317
    add-int/2addr v2, v3

    .line 318
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzd:I

    .line 319
    .line 320
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzc:Ljava/nio/ByteBuffer;

    .line 321
    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    .line 323
    .line 324
    .line 325
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzc:Ljava/nio/ByteBuffer;

    .line 326
    .line 327
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhs;->zzj(I)V

    .line 332
    .line 333
    .line 334
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhs;->zzc:Ljava/nio/ByteBuffer;

    .line 335
    .line 336
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrv;->zzc:Ljava/nio/ByteBuffer;

    .line 337
    .line 338
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 339
    .line 340
    .line 341
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhs;->zzk()V

    .line 342
    .line 343
    .line 344
    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcn;->zza:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzc:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->zze:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzd:I

    .line 10
    .line 11
    return-void
.end method
