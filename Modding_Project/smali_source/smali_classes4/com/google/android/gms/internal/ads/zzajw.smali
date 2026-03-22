.class final Lcom/google/android/gms/internal/ads/zzajw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzakb;

.field private final zzb:J

.field private final zzc:J

.field private final zzd:Lcom/google/android/gms/internal/ads/zzakh;

.field private zze:I

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:J

.field private zzl:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakh;JJJJZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p2, v0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    cmp-long v0, p4, p2

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(Z)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzd:Lcom/google/android/gms/internal/ads/zzakh;

    .line 22
    .line 23
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzb:J

    .line 24
    .line 25
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzc:J

    .line 26
    .line 27
    sub-long/2addr p4, p2

    .line 28
    cmp-long p1, p6, p4

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    if-eqz p10, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zze:I

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzf:J

    .line 39
    .line 40
    const/4 p1, 0x4

    .line 41
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zze:I

    .line 42
    .line 43
    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakb;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzakb;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zza:Lcom/google/android/gms/internal/ads/zzakb;

    .line 49
    .line 50
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzajw;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzc:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzajw;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzb:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzajw;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzf:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzajw;)Lcom/google/android/gms/internal/ads/zzakh;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzd:Lcom/google/android/gms/internal/ads/zzakh;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzadw;)J
    .locals 22
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
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajw;->zze:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x4

    .line 10
    const-wide/16 v6, -0x1

    .line 11
    .line 12
    if-eqz v2, :cond_b

    .line 13
    .line 14
    if-eq v2, v4, :cond_c

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    const/4 v10, 0x3

    .line 18
    if-eq v2, v4, :cond_0

    .line 19
    .line 20
    if-eq v2, v10, :cond_9

    .line 21
    .line 22
    return-wide v6

    .line 23
    :cond_0
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzi:J

    .line 24
    .line 25
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzj:J

    .line 26
    .line 27
    cmp-long v2, v11, v13

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    :goto_0
    move-wide v13, v6

    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    .line 35
    .line 36
    .line 37
    move-result-wide v11

    .line 38
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajw;->zza:Lcom/google/android/gms/internal/ads/zzakb;

    .line 39
    .line 40
    invoke-virtual {v2, v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Lcom/google/android/gms/internal/ads/zzadw;J)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_3

    .line 45
    .line 46
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzi:J

    .line 47
    .line 48
    cmp-long v2, v13, v11

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 55
    .line 56
    const-string v2, "No ogg page can be found."

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_3
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Lcom/google/android/gms/internal/ads/zzadw;Z)Z

    .line 63
    .line 64
    .line 65
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    .line 66
    .line 67
    .line 68
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzh:J

    .line 69
    .line 70
    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzakb;->zzb:J

    .line 71
    .line 72
    sub-long/2addr v13, v8

    .line 73
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzakb;->zzd:I

    .line 74
    .line 75
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzakb;->zze:I

    .line 76
    .line 77
    add-int/2addr v4, v2

    .line 78
    const-wide/16 v15, 0x0

    .line 79
    .line 80
    cmp-long v2, v13, v15

    .line 81
    .line 82
    if-ltz v2, :cond_4

    .line 83
    .line 84
    const-wide/32 v15, 0x11940

    .line 85
    .line 86
    .line 87
    cmp-long v15, v13, v15

    .line 88
    .line 89
    if-gez v15, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    if-gez v2, :cond_5

    .line 93
    .line 94
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzj:J

    .line 95
    .line 96
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzl:J

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    int-to-long v11, v4

    .line 100
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    .line 101
    .line 102
    .line 103
    move-result-wide v15

    .line 104
    add-long/2addr v11, v15

    .line 105
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzi:J

    .line 106
    .line 107
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzk:J

    .line 108
    .line 109
    :goto_1
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzj:J

    .line 110
    .line 111
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzi:J

    .line 112
    .line 113
    sub-long v15, v8, v11

    .line 114
    .line 115
    const-wide/32 v17, 0x186a0

    .line 116
    .line 117
    .line 118
    cmp-long v17, v15, v17

    .line 119
    .line 120
    if-gez v17, :cond_6

    .line 121
    .line 122
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzj:J

    .line 123
    .line 124
    move-wide v13, v11

    .line 125
    goto :goto_3

    .line 126
    :cond_6
    int-to-long v3, v4

    .line 127
    if-gtz v2, :cond_7

    .line 128
    .line 129
    const-wide/16 v18, 0x2

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    const-wide/16 v18, 0x1

    .line 133
    .line 134
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    .line 135
    .line 136
    .line 137
    move-result-wide v20

    .line 138
    mul-long v3, v3, v18

    .line 139
    .line 140
    sub-long v20, v20, v3

    .line 141
    .line 142
    mul-long/2addr v13, v15

    .line 143
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzl:J

    .line 144
    .line 145
    move-wide v15, v11

    .line 146
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzk:J

    .line 147
    .line 148
    sub-long/2addr v2, v10

    .line 149
    div-long/2addr v13, v2

    .line 150
    add-long v2, v20, v13

    .line 151
    .line 152
    add-long/2addr v8, v6

    .line 153
    sget-object v10, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 156
    .line 157
    .line 158
    move-result-wide v2

    .line 159
    move-wide v8, v15

    .line 160
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 161
    .line 162
    .line 163
    move-result-wide v13

    .line 164
    :goto_3
    cmp-long v2, v13, v6

    .line 165
    .line 166
    if-eqz v2, :cond_8

    .line 167
    .line 168
    return-wide v13

    .line 169
    :cond_8
    const/4 v2, 0x3

    .line 170
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajw;->zze:I

    .line 171
    .line 172
    :cond_9
    :goto_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajw;->zza:Lcom/google/android/gms/internal/ads/zzakb;

    .line 173
    .line 174
    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Lcom/google/android/gms/internal/ads/zzadw;J)Z

    .line 175
    .line 176
    .line 177
    const/4 v3, 0x0

    .line 178
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Lcom/google/android/gms/internal/ads/zzadw;Z)Z

    .line 179
    .line 180
    .line 181
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzakb;->zzb:J

    .line 182
    .line 183
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzh:J

    .line 184
    .line 185
    cmp-long v3, v3, v8

    .line 186
    .line 187
    if-lez v3, :cond_a

    .line 188
    .line 189
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    .line 190
    .line 191
    .line 192
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajw;->zze:I

    .line 193
    .line 194
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzk:J

    .line 195
    .line 196
    const-wide/16 v8, 0x2

    .line 197
    .line 198
    add-long/2addr v1, v8

    .line 199
    neg-long v1, v1

    .line 200
    return-wide v1

    .line 201
    :cond_a
    const-wide/16 v8, 0x2

    .line 202
    .line 203
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzakb;->zzd:I

    .line 204
    .line 205
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzakb;->zze:I

    .line 206
    .line 207
    add-int/2addr v3, v4

    .line 208
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 209
    .line 210
    .line 211
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    .line 212
    .line 213
    .line 214
    move-result-wide v3

    .line 215
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzi:J

    .line 216
    .line 217
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzakb;->zzb:J

    .line 218
    .line 219
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzk:J

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    .line 223
    .line 224
    .line 225
    move-result-wide v2

    .line 226
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzg:J

    .line 227
    .line 228
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajw;->zze:I

    .line 229
    .line 230
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzc:J

    .line 231
    .line 232
    const-wide/32 v10, -0xff1b

    .line 233
    .line 234
    .line 235
    add-long/2addr v8, v10

    .line 236
    cmp-long v2, v8, v2

    .line 237
    .line 238
    if-lez v2, :cond_c

    .line 239
    .line 240
    return-wide v8

    .line 241
    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajw;->zza:Lcom/google/android/gms/internal/ads/zzakb;

    .line 242
    .line 243
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzakb;->zza()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Lcom/google/android/gms/internal/ads/zzadw;J)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_f

    .line 251
    .line 252
    const/4 v3, 0x0

    .line 253
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Lcom/google/android/gms/internal/ads/zzadw;Z)Z

    .line 254
    .line 255
    .line 256
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzakb;->zzd:I

    .line 257
    .line 258
    iget v8, v2, Lcom/google/android/gms/internal/ads/zzakb;->zze:I

    .line 259
    .line 260
    add-int/2addr v3, v8

    .line 261
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 262
    .line 263
    .line 264
    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzakb;->zzb:J

    .line 265
    .line 266
    :goto_5
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzakb;->zza:I

    .line 267
    .line 268
    and-int/2addr v3, v5

    .line 269
    if-eq v3, v5, :cond_e

    .line 270
    .line 271
    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Lcom/google/android/gms/internal/ads/zzadw;J)Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-eqz v3, :cond_e

    .line 276
    .line 277
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    .line 278
    .line 279
    .line 280
    move-result-wide v10

    .line 281
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzc:J

    .line 282
    .line 283
    cmp-long v3, v10, v12

    .line 284
    .line 285
    if-gez v3, :cond_e

    .line 286
    .line 287
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Lcom/google/android/gms/internal/ads/zzadw;Z)Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_e

    .line 292
    .line 293
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzakb;->zzd:I

    .line 294
    .line 295
    iget v10, v2, Lcom/google/android/gms/internal/ads/zzakb;->zze:I

    .line 296
    .line 297
    add-int/2addr v3, v10

    .line 298
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzadz;->zzf(Lcom/google/android/gms/internal/ads/zzadw;I)Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-nez v3, :cond_d

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_d
    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzakb;->zzb:J

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_e
    :goto_6
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzf:J

    .line 309
    .line 310
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajw;->zze:I

    .line 311
    .line 312
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajw;->zzg:J

    .line 313
    .line 314
    return-wide v1

    .line 315
    :cond_f
    new-instance v1, Ljava/io/EOFException;

    .line 316
    .line 317
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 318
    .line 319
    .line 320
    throw v1
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/internal/ads/zzaeu;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzf:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaju;

    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzaju;-><init>(Lcom/google/android/gms/internal/ads/zzajw;Lcom/google/android/gms/internal/ads/zzajv;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    return-object v1
.end method

.method public final zzg(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzf:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzh:J

    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zze:I

    .line 22
    .line 23
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzb:J

    .line 24
    .line 25
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzi:J

    .line 26
    .line 27
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzc:J

    .line 28
    .line 29
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzj:J

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzk:J

    .line 32
    .line 33
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzf:J

    .line 34
    .line 35
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzl:J

    .line 36
    .line 37
    return-void
.end method
