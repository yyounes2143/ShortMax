.class public final Lcom/google/android/gms/internal/ads/zzane;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamz;


# static fields
.field private static final zza:[F


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzaor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzen;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:[Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzanc;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzanr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/ads/zzand;

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/ads/zzafb;

.field private zzk:Z

.field private zzl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzane;->zza:[F

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaor;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzaor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzane;->zzb:Lcom/google/android/gms/internal/ads/zzaor;

    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    new-array p1, p1, [Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzane;->zzd:[Z

    .line 10
    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanc;

    .line 12
    .line 13
    const/16 p2, 0x80

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzanc;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzane;->zze:Lcom/google/android/gms/internal/ads/zzanc;

    .line 19
    .line 20
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzane;->zzl:J

    .line 26
    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanr;

    .line 28
    .line 29
    const/16 v0, 0xb2

    .line 30
    .line 31
    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzanr;-><init>(II)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzane;->zzf:Lcom/google/android/gms/internal/ads/zzanr;

    .line 35
    .line 36
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    .line 37
    .line 38
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzane;->zzc:Lcom/google/android/gms/internal/ads/zzen;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzen;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzane;->zzg:Lcom/google/android/gms/internal/ads/zzand;

    .line 5
    .line 6
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzane;->zzj:Lcom/google/android/gms/internal/ads/zzafb;

    .line 10
    .line 11
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzane;->zzh:J

    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    int-to-long v9, v9

    .line 33
    add-long/2addr v7, v9

    .line 34
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzane;->zzh:J

    .line 35
    .line 36
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzane;->zzj:Lcom/google/android/gms/internal/ads/zzafb;

    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    move-object/from16 v9, p1

    .line 43
    .line 44
    invoke-interface {v7, v9, v8}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzane;->zzd:[Z

    .line 48
    .line 49
    invoke-static {v6, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzfv;->zza([BII[Z)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-ne v7, v5, :cond_1

    .line 54
    .line 55
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzane;->zzk:Z

    .line 56
    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzane;->zze:Lcom/google/android/gms/internal/ads/zzanc;

    .line 60
    .line 61
    invoke-virtual {v1, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzanc;->zza([BII)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzane;->zzg:Lcom/google/android/gms/internal/ads/zzand;

    .line 65
    .line 66
    invoke-virtual {v1, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzand;->zza([BII)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzane;->zzf:Lcom/google/android/gms/internal/ads/zzanr;

    .line 70
    .line 71
    invoke-virtual {v1, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzanr;->zza([BII)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    add-int/lit8 v10, v7, 0x3

    .line 80
    .line 81
    aget-byte v8, v8, v10

    .line 82
    .line 83
    and-int/lit16 v8, v8, 0xff

    .line 84
    .line 85
    sub-int v11, v7, v4

    .line 86
    .line 87
    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzane;->zzk:Z

    .line 88
    .line 89
    if-nez v12, :cond_d

    .line 90
    .line 91
    if-lez v11, :cond_2

    .line 92
    .line 93
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzane;->zze:Lcom/google/android/gms/internal/ads/zzanc;

    .line 94
    .line 95
    invoke-virtual {v12, v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzanc;->zza([BII)V

    .line 96
    .line 97
    .line 98
    :cond_2
    if-gez v11, :cond_3

    .line 99
    .line 100
    neg-int v12, v11

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const/4 v12, 0x0

    .line 103
    :goto_1
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzane;->zze:Lcom/google/android/gms/internal/ads/zzanc;

    .line 104
    .line 105
    invoke-virtual {v14, v8, v12}, Lcom/google/android/gms/internal/ads/zzanc;->zzc(II)Z

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    if-eqz v12, :cond_d

    .line 110
    .line 111
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzane;->zzj:Lcom/google/android/gms/internal/ads/zzafb;

    .line 112
    .line 113
    iget v15, v14, Lcom/google/android/gms/internal/ads/zzanc;->zzb:I

    .line 114
    .line 115
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzane;->zzi:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object v3, v14, Lcom/google/android/gms/internal/ads/zzanc;->zzc:[B

    .line 121
    .line 122
    iget v14, v14, Lcom/google/android/gms/internal/ads/zzanc;->zza:I

    .line 123
    .line 124
    invoke-static {v3, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    new-instance v14, Lcom/google/android/gms/internal/ads/zzem;

    .line 129
    .line 130
    array-length v1, v3

    .line 131
    invoke-direct {v14, v3, v1}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    .line 135
    .line 136
    .line 137
    const/4 v1, 0x4

    .line 138
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 142
    .line 143
    .line 144
    const/16 v15, 0x8

    .line 145
    .line 146
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 150
    .line 151
    .line 152
    move-result v16

    .line 153
    if-eqz v16, :cond_4

    .line 154
    .line 155
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 159
    .line 160
    .line 161
    :cond_4
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    const/high16 v16, 0x3f800000    # 1.0f

    .line 166
    .line 167
    const-string v2, "Invalid aspect ratio"

    .line 168
    .line 169
    const-string v15, "H263Reader"

    .line 170
    .line 171
    const/16 v9, 0xf

    .line 172
    .line 173
    if-ne v1, v9, :cond_6

    .line 174
    .line 175
    const/16 v9, 0x8

    .line 176
    .line 177
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-nez v9, :cond_5

    .line 186
    .line 187
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :goto_2
    move/from16 v1, v16

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_5
    int-to-float v1, v1

    .line 194
    int-to-float v2, v9

    .line 195
    div-float v16, v1, v2

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_6
    const/4 v9, 0x7

    .line 199
    if-ge v1, v9, :cond_7

    .line 200
    .line 201
    sget-object v2, Lcom/google/android/gms/internal/ads/zzane;->zza:[F

    .line 202
    .line 203
    aget v16, v2, v1

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_7
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :goto_3
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-eqz v2, :cond_8

    .line 215
    .line 216
    const/4 v2, 0x2

    .line 217
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 218
    .line 219
    .line 220
    const/4 v2, 0x1

    .line 221
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_8

    .line 229
    .line 230
    const/16 v2, 0xf

    .line 231
    .line 232
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 248
    .line 249
    .line 250
    const/4 v9, 0x3

    .line 251
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 252
    .line 253
    .line 254
    const/16 v9, 0xb

    .line 255
    .line 256
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 266
    .line 267
    .line 268
    :cond_8
    const/4 v2, 0x2

    .line 269
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 270
    .line 271
    .line 272
    move-result v9

    .line 273
    if-eqz v9, :cond_9

    .line 274
    .line 275
    const-string v2, "Unhandled video object layer shape"

    .line 276
    .line 277
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :cond_9
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 281
    .line 282
    .line 283
    const/16 v2, 0x10

    .line 284
    .line 285
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    if-eqz v9, :cond_c

    .line 297
    .line 298
    if-nez v2, :cond_a

    .line 299
    .line 300
    const-string v2, "Invalid vop_increment_time_resolution"

    .line 301
    .line 302
    invoke-static {v15, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_a
    add-int/lit8 v2, v2, -0x1

    .line 307
    .line 308
    const/4 v9, 0x0

    .line 309
    :goto_4
    if-lez v2, :cond_b

    .line 310
    .line 311
    const/4 v15, 0x1

    .line 312
    shr-int/2addr v2, v15

    .line 313
    add-int/2addr v9, v15

    .line 314
    goto :goto_4

    .line 315
    :cond_b
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 316
    .line 317
    .line 318
    :cond_c
    :goto_5
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 319
    .line 320
    .line 321
    const/16 v2, 0xd

    .line 322
    .line 323
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 324
    .line 325
    .line 326
    move-result v9

    .line 327
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 338
    .line 339
    .line 340
    new-instance v14, Lcom/google/android/gms/internal/ads/zzx;

    .line 341
    .line 342
    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 346
    .line 347
    .line 348
    const-string v13, "video/mp2t"

    .line 349
    .line 350
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 351
    .line 352
    .line 353
    const-string v13, "video/mp4v-es"

    .line 354
    .line 355
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzx;->zzam(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzQ(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzad(F)Lcom/google/android/gms/internal/ads/zzx;

    .line 365
    .line 366
    .line 367
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzT(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-interface {v12, v1}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 379
    .line 380
    .line 381
    const/4 v1, 0x1

    .line 382
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzane;->zzk:Z

    .line 383
    .line 384
    :cond_d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzane;->zzg:Lcom/google/android/gms/internal/ads/zzand;

    .line 385
    .line 386
    invoke-virtual {v1, v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzand;->zza([BII)V

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzane;->zzf:Lcom/google/android/gms/internal/ads/zzanr;

    .line 390
    .line 391
    if-lez v11, :cond_e

    .line 392
    .line 393
    invoke-virtual {v1, v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzanr;->zza([BII)V

    .line 394
    .line 395
    .line 396
    const/4 v13, 0x0

    .line 397
    goto :goto_6

    .line 398
    :cond_e
    neg-int v13, v11

    .line 399
    :goto_6
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzanr;->zzd(I)Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_f

    .line 404
    .line 405
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzanr;->zza:[B

    .line 406
    .line 407
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzanr;->zzb:I

    .line 408
    .line 409
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfv;->zzc([BI)I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzane;->zzc:Lcom/google/android/gms/internal/ads/zzen;

    .line 414
    .line 415
    sget-object v4, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 416
    .line 417
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzanr;->zza:[B

    .line 418
    .line 419
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzJ([BI)V

    .line 420
    .line 421
    .line 422
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzane;->zzb:Lcom/google/android/gms/internal/ads/zzaor;

    .line 423
    .line 424
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzane;->zzl:J

    .line 425
    .line 426
    invoke-virtual {v2, v11, v12, v3}, Lcom/google/android/gms/internal/ads/zzaor;->zzb(JLcom/google/android/gms/internal/ads/zzen;)V

    .line 427
    .line 428
    .line 429
    :cond_f
    const/16 v2, 0xb2

    .line 430
    .line 431
    if-ne v8, v2, :cond_11

    .line 432
    .line 433
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    const/4 v4, 0x2

    .line 438
    add-int/lit8 v8, v7, 0x2

    .line 439
    .line 440
    aget-byte v3, v3, v8

    .line 441
    .line 442
    const/4 v9, 0x1

    .line 443
    if-ne v3, v9, :cond_10

    .line 444
    .line 445
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzanr;->zzc(I)V

    .line 446
    .line 447
    .line 448
    :cond_10
    move v8, v2

    .line 449
    goto :goto_7

    .line 450
    :cond_11
    const/4 v4, 0x2

    .line 451
    const/4 v9, 0x1

    .line 452
    :goto_7
    sub-int v1, v5, v7

    .line 453
    .line 454
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzane;->zzh:J

    .line 455
    .line 456
    int-to-long v11, v1

    .line 457
    sub-long/2addr v2, v11

    .line 458
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzane;->zzg:Lcom/google/android/gms/internal/ads/zzand;

    .line 459
    .line 460
    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzane;->zzk:Z

    .line 461
    .line 462
    invoke-virtual {v7, v2, v3, v1, v11}, Lcom/google/android/gms/internal/ads/zzand;->zzb(JIZ)V

    .line 463
    .line 464
    .line 465
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzane;->zzg:Lcom/google/android/gms/internal/ads/zzand;

    .line 466
    .line 467
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzane;->zzl:J

    .line 468
    .line 469
    invoke-virtual {v1, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzand;->zzc(IJ)V

    .line 470
    .line 471
    .line 472
    move-object/from16 v9, p1

    .line 473
    .line 474
    move v4, v10

    .line 475
    const/4 v2, 0x3

    .line 476
    goto/16 :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzaon;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaon;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaon;->zzb()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzane;->zzi:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaon;->zza()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzane;->zzj:Lcom/google/android/gms/internal/ads/zzafb;

    .line 20
    .line 21
    new-instance v1, Lcom/google/android/gms/internal/ads/zzand;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzand;-><init>(Lcom/google/android/gms/internal/ads/zzafb;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzane;->zzg:Lcom/google/android/gms/internal/ads/zzand;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzane;->zzb:Lcom/google/android/gms/internal/ads/zzaor;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaor;->zzc(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzaon;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final zzc(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzane;->zzg:Lcom/google/android/gms/internal/ads/zzand;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzane;->zzg:Lcom/google/android/gms/internal/ads/zzand;

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzane;->zzh:J

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzane;->zzk:Z

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzand;->zzb(JIZ)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzane;->zzg:Lcom/google/android/gms/internal/ads/zzand;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzand;->zzd()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzane;->zzl:J

    .line 2
    .line 3
    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzane;->zzd:[Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfv;->zzi([Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzane;->zze:Lcom/google/android/gms/internal/ads/zzanc;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanc;->zzb()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzane;->zzg:Lcom/google/android/gms/internal/ads/zzand;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzand;->zzd()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzane;->zzf:Lcom/google/android/gms/internal/ads/zzanr;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanr;->zzb()V

    .line 21
    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzane;->zzh:J

    .line 26
    .line 27
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzane;->zzl:J

    .line 33
    .line 34
    return-void
.end method
