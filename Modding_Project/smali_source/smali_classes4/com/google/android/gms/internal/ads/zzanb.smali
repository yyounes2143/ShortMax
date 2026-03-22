.class public final Lcom/google/android/gms/internal/ads/zzanb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamz;


# static fields
.field private static final zza:[D


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/ads/zzafb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzen;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/internal/ads/zzanr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzh:[Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzana;

.field private zzj:J

.field private zzk:Z

.field private zzl:Z

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:Z

.field private zzr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [D

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzanb;->zza:[D

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaor;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/ads/zzaor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzd:Lcom/google/android/gms/internal/ads/zzaor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzanb;->zze:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p2, 0x4

    .line 9
    new-array p2, p2, [Z

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzh:[Z

    .line 12
    .line 13
    new-instance p2, Lcom/google/android/gms/internal/ads/zzana;

    .line 14
    .line 15
    const/16 v0, 0x80

    .line 16
    .line 17
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzana;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzi:Lcom/google/android/gms/internal/ads/zzana;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanr;

    .line 25
    .line 26
    const/16 p2, 0xb2

    .line 27
    .line 28
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzanr;-><init>(II)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzg:Lcom/google/android/gms/internal/ads/zzanr;

    .line 32
    .line 33
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    .line 36
    .line 37
    .line 38
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzf:Lcom/google/android/gms/internal/ads/zzen;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzg:Lcom/google/android/gms/internal/ads/zzanr;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzn:J

    .line 51
    .line 52
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzp:J

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzen;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v4, 0x3

    .line 5
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzc:Lcom/google/android/gms/internal/ads/zzafb;

    .line 6
    .line 7
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzj:J

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    int-to-long v10, v10

    .line 29
    add-long/2addr v8, v10

    .line 30
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzj:J

    .line 31
    .line 32
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzc:Lcom/google/android/gms/internal/ads/zzafb;

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    move-object/from16 v10, p1

    .line 39
    .line 40
    invoke-interface {v8, v10, v9}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzh:[Z

    .line 44
    .line 45
    invoke-static {v7, v5, v6, v8}, Lcom/google/android/gms/internal/ads/zzfv;->zza([BII[Z)I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-ne v8, v6, :cond_2

    .line 50
    .line 51
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzl:Z

    .line 52
    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzi:Lcom/google/android/gms/internal/ads/zzana;

    .line 56
    .line 57
    invoke-virtual {v1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzana;->zza([BII)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzg:Lcom/google/android/gms/internal/ads/zzanr;

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzanr;->zza([BII)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    add-int/lit8 v11, v8, 0x3

    .line 73
    .line 74
    aget-byte v9, v9, v11

    .line 75
    .line 76
    and-int/lit16 v9, v9, 0xff

    .line 77
    .line 78
    sub-int v12, v8, v5

    .line 79
    .line 80
    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzl:Z

    .line 81
    .line 82
    if-nez v13, :cond_a

    .line 83
    .line 84
    if-lez v12, :cond_3

    .line 85
    .line 86
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzi:Lcom/google/android/gms/internal/ads/zzana;

    .line 87
    .line 88
    invoke-virtual {v13, v7, v5, v8}, Lcom/google/android/gms/internal/ads/zzana;->zza([BII)V

    .line 89
    .line 90
    .line 91
    :cond_3
    if-gez v12, :cond_4

    .line 92
    .line 93
    neg-int v13, v12

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const/4 v13, 0x0

    .line 96
    :goto_1
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzi:Lcom/google/android/gms/internal/ads/zzana;

    .line 97
    .line 98
    invoke-virtual {v15, v9, v13}, Lcom/google/android/gms/internal/ads/zzana;->zzc(II)Z

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    if-eqz v13, :cond_a

    .line 103
    .line 104
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzb:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzanb;->zze:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzana;->zzc:[B

    .line 112
    .line 113
    iget v4, v15, Lcom/google/android/gms/internal/ads/zzana;->zza:I

    .line 114
    .line 115
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    aget-byte v4, v3, v2

    .line 120
    .line 121
    and-int/lit16 v4, v4, 0xff

    .line 122
    .line 123
    const/16 v17, 0x5

    .line 124
    .line 125
    aget-byte v1, v3, v17

    .line 126
    .line 127
    and-int/lit16 v2, v1, 0xff

    .line 128
    .line 129
    const/16 v18, 0x6

    .line 130
    .line 131
    aget-byte v10, v3, v18

    .line 132
    .line 133
    and-int/lit16 v10, v10, 0xff

    .line 134
    .line 135
    const/16 v18, 0x7

    .line 136
    .line 137
    move/from16 v19, v11

    .line 138
    .line 139
    aget-byte v11, v3, v18

    .line 140
    .line 141
    and-int/lit16 v11, v11, 0xf0

    .line 142
    .line 143
    and-int/lit8 v1, v1, 0xf

    .line 144
    .line 145
    move/from16 v20, v6

    .line 146
    .line 147
    const/4 v6, 0x4

    .line 148
    shl-int/2addr v4, v6

    .line 149
    shr-int/2addr v2, v6

    .line 150
    or-int/2addr v2, v4

    .line 151
    shr-int/lit8 v4, v11, 0x4

    .line 152
    .line 153
    const/16 v11, 0x8

    .line 154
    .line 155
    shl-int/2addr v1, v11

    .line 156
    or-int/2addr v1, v10

    .line 157
    const/4 v10, 0x2

    .line 158
    if-eq v4, v10, :cond_7

    .line 159
    .line 160
    const/4 v10, 0x3

    .line 161
    if-eq v4, v10, :cond_6

    .line 162
    .line 163
    if-eq v4, v6, :cond_5

    .line 164
    .line 165
    const/high16 v4, 0x3f800000    # 1.0f

    .line 166
    .line 167
    :goto_2
    const/4 v10, 0x3

    .line 168
    goto :goto_4

    .line 169
    :cond_5
    mul-int/lit8 v4, v1, 0x79

    .line 170
    .line 171
    mul-int/lit8 v6, v2, 0x64

    .line 172
    .line 173
    :goto_3
    int-to-float v4, v4

    .line 174
    int-to-float v6, v6

    .line 175
    div-float/2addr v4, v6

    .line 176
    goto :goto_2

    .line 177
    :cond_6
    mul-int/lit8 v4, v1, 0x10

    .line 178
    .line 179
    mul-int/lit8 v6, v2, 0x9

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_7
    move v4, v6

    .line 183
    mul-int/lit8 v6, v1, 0x4

    .line 184
    .line 185
    const/4 v10, 0x3

    .line 186
    mul-int/lit8 v4, v2, 0x3

    .line 187
    .line 188
    int-to-float v6, v6

    .line 189
    int-to-float v4, v4

    .line 190
    div-float v4, v6, v4

    .line 191
    .line 192
    :goto_4
    new-instance v6, Lcom/google/android/gms/internal/ads/zzx;

    .line 193
    .line 194
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 201
    .line 202
    .line 203
    const-string v13, "video/mpeg2"

    .line 204
    .line 205
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzam(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzQ(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzad(F)Lcom/google/android/gms/internal/ads/zzx;

    .line 215
    .line 216
    .line 217
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzT(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    aget-byte v2, v3, v18

    .line 229
    .line 230
    and-int/lit8 v2, v2, 0xf

    .line 231
    .line 232
    add-int/lit8 v2, v2, -0x1

    .line 233
    .line 234
    const-wide/16 v13, 0x0

    .line 235
    .line 236
    if-ltz v2, :cond_9

    .line 237
    .line 238
    if-ge v2, v11, :cond_9

    .line 239
    .line 240
    sget-object v4, Lcom/google/android/gms/internal/ads/zzanb;->zza:[D

    .line 241
    .line 242
    aget-wide v13, v4, v2

    .line 243
    .line 244
    iget v2, v15, Lcom/google/android/gms/internal/ads/zzana;->zzb:I

    .line 245
    .line 246
    add-int/lit8 v2, v2, 0x9

    .line 247
    .line 248
    aget-byte v2, v3, v2

    .line 249
    .line 250
    and-int/lit8 v3, v2, 0x60

    .line 251
    .line 252
    shr-int/lit8 v3, v3, 0x5

    .line 253
    .line 254
    and-int/lit8 v2, v2, 0x1f

    .line 255
    .line 256
    if-eq v3, v2, :cond_8

    .line 257
    .line 258
    int-to-double v3, v3

    .line 259
    const/4 v6, 0x1

    .line 260
    add-int/2addr v2, v6

    .line 261
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 262
    .line 263
    add-double v3, v3, v16

    .line 264
    .line 265
    int-to-double v10, v2

    .line 266
    div-double/2addr v3, v10

    .line 267
    mul-double/2addr v13, v3

    .line 268
    :cond_8
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    div-double/2addr v2, v13

    .line 274
    double-to-long v13, v2

    .line 275
    :cond_9
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzc:Lcom/google/android/gms/internal/ads/zzafb;

    .line 284
    .line 285
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v3, Lcom/google/android/gms/internal/ads/zzz;

    .line 288
    .line 289
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 290
    .line 291
    .line 292
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v1, Ljava/lang/Long;

    .line 295
    .line 296
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 297
    .line 298
    .line 299
    move-result-wide v1

    .line 300
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzm:J

    .line 301
    .line 302
    const/4 v1, 0x1

    .line 303
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzl:Z

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_a
    move/from16 v20, v6

    .line 307
    .line 308
    move/from16 v19, v11

    .line 309
    .line 310
    :goto_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzg:Lcom/google/android/gms/internal/ads/zzanr;

    .line 311
    .line 312
    if-eqz v1, :cond_e

    .line 313
    .line 314
    if-lez v12, :cond_b

    .line 315
    .line 316
    invoke-virtual {v1, v7, v5, v8}, Lcom/google/android/gms/internal/ads/zzanr;->zza([BII)V

    .line 317
    .line 318
    .line 319
    const/4 v2, 0x0

    .line 320
    goto :goto_6

    .line 321
    :cond_b
    neg-int v2, v12

    .line 322
    :goto_6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzanr;->zzd(I)Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_c

    .line 327
    .line 328
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzanr;->zza:[B

    .line 329
    .line 330
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzanr;->zzb:I

    .line 331
    .line 332
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfv;->zzc([BI)I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzf:Lcom/google/android/gms/internal/ads/zzen;

    .line 337
    .line 338
    sget-object v4, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 339
    .line 340
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzanr;->zza:[B

    .line 341
    .line 342
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzJ([BI)V

    .line 343
    .line 344
    .line 345
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzd:Lcom/google/android/gms/internal/ads/zzaor;

    .line 346
    .line 347
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzp:J

    .line 348
    .line 349
    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzaor;->zzb(JLcom/google/android/gms/internal/ads/zzen;)V

    .line 350
    .line 351
    .line 352
    :cond_c
    const/16 v2, 0xb2

    .line 353
    .line 354
    if-ne v9, v2, :cond_e

    .line 355
    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    const/4 v4, 0x2

    .line 361
    add-int/lit8 v5, v8, 0x2

    .line 362
    .line 363
    aget-byte v3, v3, v5

    .line 364
    .line 365
    const/4 v5, 0x1

    .line 366
    if-ne v3, v5, :cond_d

    .line 367
    .line 368
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzanr;->zzc(I)V

    .line 369
    .line 370
    .line 371
    :cond_d
    move v9, v2

    .line 372
    goto :goto_7

    .line 373
    :cond_e
    const/4 v4, 0x2

    .line 374
    :goto_7
    if-eqz v9, :cond_11

    .line 375
    .line 376
    const/16 v1, 0xb3

    .line 377
    .line 378
    if-ne v9, v1, :cond_f

    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_f
    const/16 v1, 0xb8

    .line 382
    .line 383
    if-ne v9, v1, :cond_10

    .line 384
    .line 385
    const/4 v1, 0x1

    .line 386
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzq:Z

    .line 387
    .line 388
    move v2, v1

    .line 389
    goto/16 :goto_d

    .line 390
    .line 391
    :cond_10
    const/4 v2, 0x1

    .line 392
    goto/16 :goto_d

    .line 393
    .line 394
    :cond_11
    :goto_8
    sub-int v6, v20, v8

    .line 395
    .line 396
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzr:Z

    .line 397
    .line 398
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    if-eqz v1, :cond_12

    .line 404
    .line 405
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzl:Z

    .line 406
    .line 407
    if-eqz v1, :cond_12

    .line 408
    .line 409
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzp:J

    .line 410
    .line 411
    cmp-long v1, v10, v2

    .line 412
    .line 413
    if-eqz v1, :cond_12

    .line 414
    .line 415
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzq:Z

    .line 416
    .line 417
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzj:J

    .line 418
    .line 419
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzo:J

    .line 420
    .line 421
    sub-long/2addr v12, v14

    .line 422
    long-to-int v5, v12

    .line 423
    sub-int v25, v5, v6

    .line 424
    .line 425
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzc:Lcom/google/android/gms/internal/ads/zzafb;

    .line 426
    .line 427
    const/16 v27, 0x0

    .line 428
    .line 429
    move-object/from16 v21, v5

    .line 430
    .line 431
    move-wide/from16 v22, v10

    .line 432
    .line 433
    move/from16 v24, v1

    .line 434
    .line 435
    move/from16 v26, v6

    .line 436
    .line 437
    invoke-interface/range {v21 .. v27}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    .line 438
    .line 439
    .line 440
    :cond_12
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzk:Z

    .line 441
    .line 442
    if-eqz v1, :cond_14

    .line 443
    .line 444
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzr:Z

    .line 445
    .line 446
    if-eqz v1, :cond_13

    .line 447
    .line 448
    goto :goto_9

    .line 449
    :cond_13
    const/4 v1, 0x0

    .line 450
    const/4 v2, 0x1

    .line 451
    goto :goto_b

    .line 452
    :cond_14
    :goto_9
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzj:J

    .line 453
    .line 454
    int-to-long v5, v6

    .line 455
    sub-long/2addr v10, v5

    .line 456
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzo:J

    .line 457
    .line 458
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzn:J

    .line 459
    .line 460
    cmp-long v1, v5, v2

    .line 461
    .line 462
    if-eqz v1, :cond_15

    .line 463
    .line 464
    goto :goto_a

    .line 465
    :cond_15
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzp:J

    .line 466
    .line 467
    cmp-long v1, v5, v2

    .line 468
    .line 469
    if-eqz v1, :cond_16

    .line 470
    .line 471
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzm:J

    .line 472
    .line 473
    add-long/2addr v5, v10

    .line 474
    goto :goto_a

    .line 475
    :cond_16
    move-wide v5, v2

    .line 476
    :goto_a
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzp:J

    .line 477
    .line 478
    const/4 v1, 0x0

    .line 479
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzq:Z

    .line 480
    .line 481
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzn:J

    .line 482
    .line 483
    const/4 v2, 0x1

    .line 484
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzk:Z

    .line 485
    .line 486
    :goto_b
    if-nez v9, :cond_17

    .line 487
    .line 488
    move v14, v2

    .line 489
    goto :goto_c

    .line 490
    :cond_17
    move v14, v1

    .line 491
    :goto_c
    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzanb;->zzr:Z

    .line 492
    .line 493
    :goto_d
    move-object/from16 v10, p1

    .line 494
    .line 495
    move/from16 v5, v19

    .line 496
    .line 497
    move/from16 v6, v20

    .line 498
    .line 499
    const/4 v2, 0x4

    .line 500
    const/4 v4, 0x3

    .line 501
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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzb:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzc:Lcom/google/android/gms/internal/ads/zzafb;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzd:Lcom/google/android/gms/internal/ads/zzaor;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaor;->zzc(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzaon;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final zzc(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzc:Lcom/google/android/gms/internal/ads/zzafb;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzq:Z

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzj:J

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzo:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzc:Lcom/google/android/gms/internal/ads/zzafb;

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzp:J

    .line 18
    .line 19
    long-to-int v5, v0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    move-object v1, p1

    .line 23
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzn:J

    .line 2
    .line 3
    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzh:[Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfv;->zzi([Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzi:Lcom/google/android/gms/internal/ads/zzana;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzana;->zzb()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzg:Lcom/google/android/gms/internal/ads/zzanr;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanr;->zzb()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzj:J

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzk:Z

    .line 24
    .line 25
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzn:J

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzanb;->zzp:J

    .line 33
    .line 34
    return-void
.end method
