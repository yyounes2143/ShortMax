.class public final Lcom/google/android/gms/internal/ads/zzanz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeu;

.field private final zzb:Landroid/util/SparseArray;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzanx;

.field private zze:Z

.field private zzf:Z

.field private zzg:Z

.field private zzh:J

.field private zzi:Lcom/google/android/gms/internal/ads/zzanw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/ads/zzady;

.field private zzk:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeu;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(J)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanz;->zza:Lcom/google/android/gms/internal/ads/zzeu;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 14
    .line 15
    const/16 v1, 0x1000

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzc:Lcom/google/android/gms/internal/ads/zzen;

    .line 21
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzb:Landroid/util/SparseArray;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanx;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanx;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzd:Lcom/google/android/gms/internal/ads/zzanx;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzj:Lcom/google/android/gms/internal/ads/zzady;

    .line 8
    .line 9
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzd()J

    .line 13
    .line 14
    .line 15
    move-result-wide v10

    .line 16
    const-wide/16 v12, -0x1

    .line 17
    .line 18
    cmp-long v3, v10, v12

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzd:Lcom/google/android/gms/internal/ads/zzanx;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzanx;->zze()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    return v1

    .line 36
    :cond_1
    :goto_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzk:Z

    .line 37
    .line 38
    const/4 v14, 0x1

    .line 39
    if-nez v4, :cond_3

    .line 40
    .line 41
    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzk:Z

    .line 42
    .line 43
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzd:Lcom/google/android/gms/internal/ads/zzanx;

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzanx;->zzb()J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    cmp-long v5, v5, v7

    .line 55
    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    new-instance v15, Lcom/google/android/gms/internal/ads/zzanw;

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzanx;->zzd()Lcom/google/android/gms/internal/ads/zzeu;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzanx;->zzb()J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    move-object v4, v15

    .line 69
    move-wide v8, v10

    .line 70
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzanw;-><init>(Lcom/google/android/gms/internal/ads/zzeu;JJ)V

    .line 71
    .line 72
    .line 73
    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzi:Lcom/google/android/gms/internal/ads/zzanw;

    .line 74
    .line 75
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzj:Lcom/google/android/gms/internal/ads/zzady;

    .line 76
    .line 77
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzadg;->zzb()Lcom/google/android/gms/internal/ads/zzaeu;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzj:Lcom/google/android/gms/internal/ads/zzady;

    .line 86
    .line 87
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaet;

    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzanx;->zzb()J

    .line 90
    .line 91
    .line 92
    move-result-wide v7

    .line 93
    const-wide/16 v14, 0x0

    .line 94
    .line 95
    invoke-direct {v6, v7, v8, v14, v15}, Lcom/google/android/gms/internal/ads/zzaet;-><init>(JJ)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzi:Lcom/google/android/gms/internal/ads/zzanw;

    .line 102
    .line 103
    if-eqz v5, :cond_5

    .line 104
    .line 105
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzadg;->zze()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-nez v6, :cond_4

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzadg;->zza(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    return v1

    .line 117
    :cond_5
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    .line 118
    .line 119
    .line 120
    if-eqz v3, :cond_6

    .line 121
    .line 122
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zze()J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    sub-long/2addr v10, v2

    .line 127
    goto :goto_3

    .line 128
    :cond_6
    move-wide v10, v12

    .line 129
    :goto_3
    cmp-long v2, v10, v12

    .line 130
    .line 131
    const/4 v3, -0x1

    .line 132
    if-eqz v2, :cond_8

    .line 133
    .line 134
    const-wide/16 v5, 0x4

    .line 135
    .line 136
    cmp-long v2, v10, v5

    .line 137
    .line 138
    if-ltz v2, :cond_7

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_7
    return v3

    .line 142
    :cond_8
    :goto_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzc:Lcom/google/android/gms/internal/ads/zzen;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    const/4 v6, 0x4

    .line 149
    const/4 v7, 0x0

    .line 150
    const/4 v4, 0x1

    .line 151
    invoke-interface {v1, v5, v7, v6, v4}, Lcom/google/android/gms/internal/ads/zzadw;->zzm([BIIZ)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-nez v5, :cond_9

    .line 156
    .line 157
    return v3

    .line 158
    :cond_9
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    const/16 v6, 0x1b9

    .line 166
    .line 167
    if-ne v5, v6, :cond_a

    .line 168
    .line 169
    return v3

    .line 170
    :cond_a
    const/16 v3, 0x1ba

    .line 171
    .line 172
    if-ne v5, v3, :cond_b

    .line 173
    .line 174
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    const/16 v4, 0xa

    .line 179
    .line 180
    invoke-interface {v1, v3, v7, v4}, Lcom/google/android/gms/internal/ads/zzadw;->zzh([BII)V

    .line 181
    .line 182
    .line 183
    const/16 v3, 0x9

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    and-int/lit8 v2, v2, 0x7

    .line 193
    .line 194
    add-int/lit8 v2, v2, 0xe

    .line 195
    .line 196
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 197
    .line 198
    .line 199
    return v7

    .line 200
    :cond_b
    const/16 v3, 0x1bb

    .line 201
    .line 202
    const/4 v6, 0x2

    .line 203
    const/4 v8, 0x6

    .line 204
    if-ne v5, v3, :cond_c

    .line 205
    .line 206
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-interface {v1, v3, v7, v6}, Lcom/google/android/gms/internal/ads/zzadw;->zzh([BII)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    add-int/2addr v2, v8

    .line 221
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 222
    .line 223
    .line 224
    return v7

    .line 225
    :cond_c
    shr-int/lit8 v3, v5, 0x8

    .line 226
    .line 227
    const/4 v4, 0x1

    .line 228
    if-eq v3, v4, :cond_d

    .line 229
    .line 230
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 231
    .line 232
    .line 233
    return v7

    .line 234
    :cond_d
    and-int/lit16 v3, v5, 0xff

    .line 235
    .line 236
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzb:Landroid/util/SparseArray;

    .line 237
    .line 238
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    check-cast v10, Lcom/google/android/gms/internal/ads/zzany;

    .line 243
    .line 244
    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzanz;->zze:Z

    .line 245
    .line 246
    if-nez v11, :cond_13

    .line 247
    .line 248
    if-nez v10, :cond_11

    .line 249
    .line 250
    const/16 v11, 0xbd

    .line 251
    .line 252
    const-string v12, "video/mp2p"

    .line 253
    .line 254
    const/4 v13, 0x0

    .line 255
    if-ne v3, v11, :cond_e

    .line 256
    .line 257
    new-instance v5, Lcom/google/android/gms/internal/ads/zzamr;

    .line 258
    .line 259
    invoke-direct {v5, v13, v7, v12}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 260
    .line 261
    .line 262
    const/4 v4, 0x1

    .line 263
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzf:Z

    .line 264
    .line 265
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    .line 266
    .line 267
    .line 268
    move-result-wide v11

    .line 269
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzh:J

    .line 270
    .line 271
    :goto_5
    move-object v13, v5

    .line 272
    goto :goto_6

    .line 273
    :cond_e
    const/4 v4, 0x1

    .line 274
    and-int/lit16 v11, v5, 0xe0

    .line 275
    .line 276
    const/16 v14, 0xc0

    .line 277
    .line 278
    if-ne v11, v14, :cond_f

    .line 279
    .line 280
    new-instance v5, Lcom/google/android/gms/internal/ads/zzanl;

    .line 281
    .line 282
    invoke-direct {v5, v13, v7, v12}, Lcom/google/android/gms/internal/ads/zzanl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzf:Z

    .line 286
    .line 287
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    .line 288
    .line 289
    .line 290
    move-result-wide v11

    .line 291
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzh:J

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_f
    and-int/lit16 v5, v5, 0xf0

    .line 295
    .line 296
    const/16 v11, 0xe0

    .line 297
    .line 298
    if-ne v5, v11, :cond_10

    .line 299
    .line 300
    new-instance v5, Lcom/google/android/gms/internal/ads/zzanb;

    .line 301
    .line 302
    invoke-direct {v5, v13, v12}, Lcom/google/android/gms/internal/ads/zzanb;-><init>(Lcom/google/android/gms/internal/ads/zzaor;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzg:Z

    .line 306
    .line 307
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    .line 308
    .line 309
    .line 310
    move-result-wide v11

    .line 311
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzh:J

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_10
    :goto_6
    if-eqz v13, :cond_11

    .line 315
    .line 316
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaon;

    .line 317
    .line 318
    const/high16 v10, -0x80000000

    .line 319
    .line 320
    const/16 v11, 0x100

    .line 321
    .line 322
    invoke-direct {v5, v10, v3, v11}, Lcom/google/android/gms/internal/ads/zzaon;-><init>(III)V

    .line 323
    .line 324
    .line 325
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzj:Lcom/google/android/gms/internal/ads/zzady;

    .line 326
    .line 327
    invoke-interface {v13, v10, v5}, Lcom/google/android/gms/internal/ads/zzamz;->zzb(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzaon;)V

    .line 328
    .line 329
    .line 330
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanz;->zza:Lcom/google/android/gms/internal/ads/zzeu;

    .line 331
    .line 332
    new-instance v10, Lcom/google/android/gms/internal/ads/zzany;

    .line 333
    .line 334
    invoke-direct {v10, v13, v5}, Lcom/google/android/gms/internal/ads/zzany;-><init>(Lcom/google/android/gms/internal/ads/zzamz;Lcom/google/android/gms/internal/ads/zzeu;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :cond_11
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzf:Z

    .line 341
    .line 342
    const-wide/32 v11, 0x100000

    .line 343
    .line 344
    .line 345
    if-eqz v3, :cond_12

    .line 346
    .line 347
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzg:Z

    .line 348
    .line 349
    if-eqz v3, :cond_12

    .line 350
    .line 351
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzh:J

    .line 352
    .line 353
    const-wide/16 v13, 0x2000

    .line 354
    .line 355
    add-long/2addr v11, v13

    .line 356
    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    .line 357
    .line 358
    .line 359
    move-result-wide v13

    .line 360
    cmp-long v3, v13, v11

    .line 361
    .line 362
    if-lez v3, :cond_13

    .line 363
    .line 364
    const/4 v3, 0x1

    .line 365
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanz;->zze:Z

    .line 366
    .line 367
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanz;->zzj:Lcom/google/android/gms/internal/ads/zzady;

    .line 368
    .line 369
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzady;->zzG()V

    .line 370
    .line 371
    .line 372
    :cond_13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    invoke-interface {v1, v3, v7, v6}, Lcom/google/android/gms/internal/ads/zzadw;->zzh([BII)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    add-int/2addr v3, v8

    .line 387
    if-nez v10, :cond_14

    .line 388
    .line 389
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 390
    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_14
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzI(I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-interface {v1, v4, v7, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzany;->zza(Lcom/google/android/gms/internal/ads/zzen;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzb()I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzK(I)V

    .line 414
    .line 415
    .line 416
    :goto_7
    return v7
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadv;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzady;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzj:Lcom/google/android/gms/internal/ads/zzady;

    .line 2
    .line 3
    return-void
.end method

.method public final zzf(JJ)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanz;->zza:Lcom/google/android/gms/internal/ads/zzeu;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzf()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long p2, v0, v2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzd()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    cmp-long p2, v0, v2

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    cmp-long p2, v0, v2

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    cmp-long p2, v0, p3

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzeu;->zzi(J)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzi:Lcom/google/android/gms/internal/ads/zzanw;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzadg;->zzd(J)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanz;->zzb:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    if-ge p2, p3, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/google/android/gms/internal/ads/zzany;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzany;->zzb()V

    .line 60
    .line 61
    .line 62
    add-int/lit8 p2, p2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadw;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzadl;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v1, v2, v0, v2}, Lcom/google/android/gms/internal/ads/zzadl;->zzm([BIIZ)Z

    .line 9
    .line 10
    .line 11
    aget-byte v0, v1, v2

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0xff

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    aget-byte v4, v1, v3

    .line 17
    .line 18
    and-int/lit16 v4, v4, 0xff

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    aget-byte v6, v1, v5

    .line 22
    .line 23
    and-int/lit16 v6, v6, 0xff

    .line 24
    .line 25
    const/4 v7, 0x3

    .line 26
    aget-byte v8, v1, v7

    .line 27
    .line 28
    and-int/lit16 v8, v8, 0xff

    .line 29
    .line 30
    shl-int/lit8 v0, v0, 0x18

    .line 31
    .line 32
    shl-int/lit8 v4, v4, 0x10

    .line 33
    .line 34
    or-int/2addr v0, v4

    .line 35
    const/16 v4, 0x8

    .line 36
    .line 37
    shl-int/2addr v6, v4

    .line 38
    or-int/2addr v0, v6

    .line 39
    or-int/2addr v0, v8

    .line 40
    const/16 v6, 0x1ba

    .line 41
    .line 42
    if-eq v0, v6, :cond_0

    .line 43
    .line 44
    return v2

    .line 45
    :cond_0
    const/4 v0, 0x4

    .line 46
    aget-byte v6, v1, v0

    .line 47
    .line 48
    and-int/lit16 v6, v6, 0xc4

    .line 49
    .line 50
    const/16 v8, 0x44

    .line 51
    .line 52
    if-eq v6, v8, :cond_1

    .line 53
    .line 54
    return v2

    .line 55
    :cond_1
    const/4 v6, 0x6

    .line 56
    aget-byte v6, v1, v6

    .line 57
    .line 58
    and-int/2addr v6, v0

    .line 59
    if-eq v6, v0, :cond_2

    .line 60
    .line 61
    return v2

    .line 62
    :cond_2
    aget-byte v6, v1, v4

    .line 63
    .line 64
    and-int/2addr v6, v0

    .line 65
    if-eq v6, v0, :cond_3

    .line 66
    .line 67
    return v2

    .line 68
    :cond_3
    const/16 v0, 0x9

    .line 69
    .line 70
    aget-byte v0, v1, v0

    .line 71
    .line 72
    and-int/2addr v0, v3

    .line 73
    if-eq v0, v3, :cond_4

    .line 74
    .line 75
    return v2

    .line 76
    :cond_4
    const/16 v0, 0xc

    .line 77
    .line 78
    aget-byte v0, v1, v0

    .line 79
    .line 80
    and-int/2addr v0, v7

    .line 81
    if-eq v0, v7, :cond_5

    .line 82
    .line 83
    return v2

    .line 84
    :cond_5
    const/16 v0, 0xd

    .line 85
    .line 86
    aget-byte v0, v1, v0

    .line 87
    .line 88
    and-int/lit8 v0, v0, 0x7

    .line 89
    .line 90
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzadl;->zzl(IZ)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1, v2, v7, v2}, Lcom/google/android/gms/internal/ads/zzadl;->zzm([BIIZ)Z

    .line 94
    .line 95
    .line 96
    aget-byte p1, v1, v2

    .line 97
    .line 98
    and-int/lit16 p1, p1, 0xff

    .line 99
    .line 100
    shl-int/lit8 p1, p1, 0x10

    .line 101
    .line 102
    aget-byte v0, v1, v3

    .line 103
    .line 104
    and-int/lit16 v0, v0, 0xff

    .line 105
    .line 106
    shl-int/2addr v0, v4

    .line 107
    aget-byte v1, v1, v5

    .line 108
    .line 109
    and-int/lit16 v1, v1, 0xff

    .line 110
    .line 111
    or-int/2addr p1, v0

    .line 112
    or-int/2addr p1, v1

    .line 113
    if-ne p1, v3, :cond_6

    .line 114
    .line 115
    return v3

    .line 116
    :cond_6
    return v2
.end method
