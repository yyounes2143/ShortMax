.class public final Lcom/google/android/gms/internal/ads/zzqt;
.super Lcom/google/android/gms/internal/ads/zzco;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zzd:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzco;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zze(Ljava/nio/ByteBuffer;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqt;->zze:[I

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    sub-int v5, v4, v3

    .line 19
    .line 20
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzco;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 21
    .line 22
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzcl;->zze:I

    .line 23
    .line 24
    div-int/2addr v5, v6

    .line 25
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzco;->zzc:Lcom/google/android/gms/internal/ads/zzcl;

    .line 26
    .line 27
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzcl;->zze:I

    .line 28
    .line 29
    mul-int/2addr v5, v6

    .line 30
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzco;->zzj(I)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    :goto_0
    if-ge v3, v4, :cond_e

    .line 35
    .line 36
    array-length v6, v2

    .line 37
    const/4 v8, 0x0

    .line 38
    :goto_1
    if-ge v8, v6, :cond_d

    .line 39
    .line 40
    aget v9, v2, v8

    .line 41
    .line 42
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzco;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 43
    .line 44
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    .line 45
    .line 46
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzex;->zzk(I)I

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    mul-int/2addr v10, v9

    .line 51
    add-int/2addr v10, v3

    .line 52
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzco;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 53
    .line 54
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    .line 55
    .line 56
    const/4 v11, 0x2

    .line 57
    if-eq v9, v11, :cond_c

    .line 58
    .line 59
    const/4 v11, 0x3

    .line 60
    if-eq v9, v11, :cond_b

    .line 61
    .line 62
    const/4 v12, 0x4

    .line 63
    if-eq v9, v12, :cond_a

    .line 64
    .line 65
    const/16 v12, 0x15

    .line 66
    .line 67
    if-eq v9, v12, :cond_2

    .line 68
    .line 69
    const/16 v12, 0x16

    .line 70
    .line 71
    if-eq v9, v12, :cond_1

    .line 72
    .line 73
    const/high16 v12, 0x10000000

    .line 74
    .line 75
    if-eq v9, v12, :cond_c

    .line 76
    .line 77
    const/high16 v12, 0x50000000

    .line 78
    .line 79
    if-eq v9, v12, :cond_2

    .line 80
    .line 81
    const/high16 v11, 0x60000000

    .line 82
    .line 83
    if-ne v9, v11, :cond_0

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v3, "Unexpected encoding: "

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v1

    .line 109
    :cond_1
    :goto_2
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    .line 116
    goto/16 :goto_a

    .line 117
    .line 118
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 123
    .line 124
    if-ne v9, v12, :cond_3

    .line 125
    .line 126
    move v9, v10

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    add-int/lit8 v9, v10, 0x2

    .line 129
    .line 130
    :goto_3
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    add-int/lit8 v13, v10, 0x1

    .line 135
    .line 136
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get(I)B

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 141
    .line 142
    .line 143
    move-result-object v14

    .line 144
    if-ne v14, v12, :cond_4

    .line 145
    .line 146
    add-int/lit8 v10, v10, 0x2

    .line 147
    .line 148
    :cond_4
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    shl-int/lit8 v9, v9, 0x18

    .line 153
    .line 154
    shl-int/lit8 v13, v13, 0x10

    .line 155
    .line 156
    shl-int/lit8 v10, v10, 0x8

    .line 157
    .line 158
    const/high16 v14, -0x1000000

    .line 159
    .line 160
    and-int/2addr v9, v14

    .line 161
    const/high16 v15, 0xff0000

    .line 162
    .line 163
    and-int/2addr v13, v15

    .line 164
    or-int/2addr v9, v13

    .line 165
    const v13, 0xff00

    .line 166
    .line 167
    .line 168
    and-int/2addr v10, v13

    .line 169
    or-int/2addr v9, v10

    .line 170
    shr-int/lit8 v10, v9, 0x8

    .line 171
    .line 172
    and-int v13, v10, v14

    .line 173
    .line 174
    const/4 v14, 0x1

    .line 175
    if-eqz v13, :cond_5

    .line 176
    .line 177
    const/high16 v13, -0x800000    # Float.NEGATIVE_INFINITY

    .line 178
    .line 179
    and-int v15, v10, v13

    .line 180
    .line 181
    if-ne v15, v13, :cond_6

    .line 182
    .line 183
    :cond_5
    move v13, v14

    .line 184
    goto :goto_4

    .line 185
    :cond_6
    const/4 v13, 0x0

    .line 186
    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v15

    .line 190
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v15

    .line 194
    const-string v7, "Value out of range of 24-bit integer: "

    .line 195
    .line 196
    invoke-virtual {v7, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-static {v13, v7}, Lcom/google/android/gms/internal/ads/zzdd;->zze(ZLjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-lt v7, v11, :cond_7

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_7
    const/4 v14, 0x0

    .line 211
    :goto_5
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(Z)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    if-ne v7, v12, :cond_8

    .line 219
    .line 220
    shr-int/lit8 v7, v9, 0x18

    .line 221
    .line 222
    and-int/lit16 v7, v7, 0xff

    .line 223
    .line 224
    :goto_6
    int-to-byte v7, v7

    .line 225
    goto :goto_7

    .line 226
    :cond_8
    and-int/lit16 v7, v10, 0xff

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :goto_7
    shr-int/lit8 v11, v9, 0x10

    .line 230
    .line 231
    and-int/lit16 v11, v11, 0xff

    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 234
    .line 235
    .line 236
    move-result-object v13

    .line 237
    if-ne v13, v12, :cond_9

    .line 238
    .line 239
    and-int/lit16 v9, v10, 0xff

    .line 240
    .line 241
    :goto_8
    int-to-byte v9, v9

    .line 242
    goto :goto_9

    .line 243
    :cond_9
    shr-int/lit8 v9, v9, 0x18

    .line 244
    .line 245
    and-int/lit16 v9, v9, 0xff

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :goto_9
    int-to-byte v10, v11

    .line 249
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 258
    .line 259
    .line 260
    goto :goto_a

    .line 261
    :cond_a
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->getFloat(I)F

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 266
    .line 267
    .line 268
    goto :goto_a

    .line 269
    :cond_b
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 274
    .line 275
    .line 276
    goto :goto_a

    .line 277
    :cond_c
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 282
    .line 283
    .line 284
    :goto_a
    add-int/lit8 v8, v8, 0x1

    .line 285
    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :cond_d
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzco;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 289
    .line 290
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzcl;->zze:I

    .line 291
    .line 292
    add-int/2addr v3, v6

    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :cond_e
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 299
    .line 300
    .line 301
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcm;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzd:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzex;->zzK(I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_6

    .line 15
    .line 16
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzcl;->zzc:I

    .line 17
    .line 18
    array-length v3, v0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eq v2, v3, :cond_1

    .line 22
    .line 23
    move v3, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v3, v4

    .line 26
    :goto_0
    move v6, v4

    .line 27
    :goto_1
    array-length v7, v0

    .line 28
    if-ge v6, v7, :cond_4

    .line 29
    .line 30
    aget v7, v0, v6

    .line 31
    .line 32
    if-ge v7, v2, :cond_3

    .line 33
    .line 34
    if-eq v7, v6, :cond_2

    .line 35
    .line 36
    move v7, v5

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v7, v4

    .line 39
    :goto_2
    or-int/2addr v3, v7

    .line 40
    add-int/lit8 v6, v6, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcm;

    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v3, "Channel map ("

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ") trying to access non-existent input channel."

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcl;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_4
    if-eqz v3, :cond_5

    .line 76
    .line 77
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcl;

    .line 78
    .line 79
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcl;->zzb:I

    .line 80
    .line 81
    invoke-direct {v0, p1, v7, v1}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(III)V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    .line 86
    .line 87
    :goto_3
    return-object v0

    .line 88
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    .line 89
    .line 90
    const-string v1, "Unhandled input format:"

    .line 91
    .line 92
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcl;)V

    .line 93
    .line 94
    .line 95
    throw v0
.end method

.method protected final zzk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzd:[I

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zze:[I

    .line 4
    .line 5
    return-void
.end method

.method protected final zzm()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zze:[I

    .line 3
    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzd:[I

    .line 5
    .line 6
    return-void
.end method

.method public final zzo([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzd:[I

    .line 2
    .line 3
    return-void
.end method
