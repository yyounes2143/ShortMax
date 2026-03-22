.class public final Lcom/google/android/gms/internal/ads/zzabs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzabr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzabw;

.field private zzc:Z

.field private zzd:I

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:Z

.field private zzj:F

.field private zzk:Lcom/google/android/gms/internal/ads/zzdj;

.field private zzl:Z

.field private zzm:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzabr;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabs;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/zzabw;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzabw;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzb:Lcom/google/android/gms/internal/ads/zzabw;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzd:I

    .line 15
    .line 16
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zze:J

    .line 22
    .line 23
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzg:J

    .line 24
    .line 25
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzh:J

    .line 26
    .line 27
    const/high16 p1, 0x3f800000    # 1.0f

    .line 28
    .line 29
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzj:F

    .line 30
    .line 31
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdj;->zza:Lcom/google/android/gms/internal/ads/zzdj;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzk:Lcom/google/android/gms/internal/ads/zzdj;

    .line 34
    .line 35
    return-void
.end method

.method private final zzo(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzd:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzd:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza(JJJJZZLcom/google/android/gms/internal/ads/zzabq;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v10, p11

    .line 8
    .line 9
    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/internal/ads/zzabq;->zzg(Lcom/google/android/gms/internal/ads/zzabq;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzc:Z

    .line 13
    .line 14
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzabs;->zze:J

    .line 22
    .line 23
    cmp-long v3, v8, v6

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzabs;->zze:J

    .line 28
    .line 29
    :cond_0
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzg:J

    .line 30
    .line 31
    cmp-long v3, v8, v1

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzb:Lcom/google/android/gms/internal/ads/zzabw;

    .line 36
    .line 37
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzabw;->zzd(J)V

    .line 38
    .line 39
    .line 40
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzg:J

    .line 41
    .line 42
    :cond_1
    sub-long/2addr v1, v4

    .line 43
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzj:F

    .line 44
    .line 45
    float-to-double v8, v3

    .line 46
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzc:Z

    .line 47
    .line 48
    long-to-double v1, v1

    .line 49
    div-double/2addr v1, v8

    .line 50
    double-to-long v1, v1

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzk:Lcom/google/android/gms/internal/ads/zzdj;

    .line 54
    .line 55
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    .line 56
    .line 57
    .line 58
    move-result-wide v8

    .line 59
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    sub-long v8, v8, p5

    .line 64
    .line 65
    sub-long/2addr v1, v8

    .line 66
    :cond_2
    invoke-static {v10, v1, v2}, Lcom/google/android/gms/internal/ads/zzabq;->zze(Lcom/google/android/gms/internal/ads/zzabq;J)V

    .line 67
    .line 68
    .line 69
    const/4 v11, 0x3

    .line 70
    if-eqz p9, :cond_4

    .line 71
    .line 72
    if-eqz p10, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    return v11

    .line 76
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzl:Z

    .line 77
    .line 78
    const/4 v12, 0x4

    .line 79
    const/4 v13, 0x5

    .line 80
    const/4 v14, 0x1

    .line 81
    if-nez v1, :cond_7

    .line 82
    .line 83
    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzm:Z

    .line 84
    .line 85
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabs;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    .line 86
    .line 87
    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/internal/ads/zzabq;->zza(Lcom/google/android/gms/internal/ads/zzabq;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    const/4 v9, 0x1

    .line 92
    move-wide/from16 v4, p3

    .line 93
    .line 94
    move-wide/from16 v6, p5

    .line 95
    .line 96
    move/from16 v8, p10

    .line 97
    .line 98
    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzabr;->zzbc(JJJZZ)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    return v12

    .line 105
    :cond_5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzc:Z

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/internal/ads/zzabq;->zza(Lcom/google/android/gms/internal/ads/zzabq;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v1

    .line 113
    const-wide/16 v3, 0x7530

    .line 114
    .line 115
    cmp-long v1, v1, v3

    .line 116
    .line 117
    if-gez v1, :cond_6

    .line 118
    .line 119
    return v11

    .line 120
    :cond_6
    return v13

    .line 121
    :cond_7
    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/internal/ads/zzabq;->zza(Lcom/google/android/gms/internal/ads/zzabq;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v1

    .line 125
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzh:J

    .line 126
    .line 127
    cmp-long v3, v8, v6

    .line 128
    .line 129
    const-wide/16 v15, -0x7530

    .line 130
    .line 131
    const/4 v9, 0x2

    .line 132
    const/4 v8, 0x0

    .line 133
    if-eqz v3, :cond_8

    .line 134
    .line 135
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzi:Z

    .line 136
    .line 137
    if-nez v3, :cond_8

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_8
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzd:I

    .line 141
    .line 142
    if-eqz v3, :cond_b

    .line 143
    .line 144
    if-eq v3, v14, :cond_c

    .line 145
    .line 146
    if-eq v3, v9, :cond_a

    .line 147
    .line 148
    if-ne v3, v11, :cond_9

    .line 149
    .line 150
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzk:Lcom/google/android/gms/internal/ads/zzdj;

    .line 151
    .line 152
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    .line 153
    .line 154
    .line 155
    move-result-wide v17

    .line 156
    invoke-static/range {v17 .. v18}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    .line 157
    .line 158
    .line 159
    move-result-wide v17

    .line 160
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzf:J

    .line 161
    .line 162
    sub-long v17, v17, v13

    .line 163
    .line 164
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzc:Z

    .line 165
    .line 166
    if-eqz v3, :cond_d

    .line 167
    .line 168
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzabs;->zze:J

    .line 169
    .line 170
    cmp-long v3, v13, v6

    .line 171
    .line 172
    if-eqz v3, :cond_d

    .line 173
    .line 174
    cmp-long v3, v13, v4

    .line 175
    .line 176
    if-eqz v3, :cond_d

    .line 177
    .line 178
    cmp-long v1, v1, v15

    .line 179
    .line 180
    if-gez v1, :cond_d

    .line 181
    .line 182
    const-wide/32 v1, 0x186a0

    .line 183
    .line 184
    .line 185
    cmp-long v1, v17, v1

    .line 186
    .line 187
    if-lez v1, :cond_d

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 191
    .line 192
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 193
    .line 194
    .line 195
    throw v1

    .line 196
    :cond_a
    cmp-long v1, v4, p7

    .line 197
    .line 198
    if-ltz v1, :cond_d

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_b
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzc:Z

    .line 202
    .line 203
    if-eqz v1, :cond_d

    .line 204
    .line 205
    :cond_c
    :goto_1
    return v8

    .line 206
    :cond_d
    :goto_2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzc:Z

    .line 207
    .line 208
    if-eqz v1, :cond_e

    .line 209
    .line 210
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabs;->zze:J

    .line 211
    .line 212
    cmp-long v1, v4, v1

    .line 213
    .line 214
    if-nez v1, :cond_f

    .line 215
    .line 216
    :cond_e
    const/4 v1, 0x5

    .line 217
    goto :goto_4

    .line 218
    :cond_f
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzk:Lcom/google/android/gms/internal/ads/zzdj;

    .line 219
    .line 220
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdj;->zzc()J

    .line 221
    .line 222
    .line 223
    move-result-wide v1

    .line 224
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzb:Lcom/google/android/gms/internal/ads/zzabw;

    .line 225
    .line 226
    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/internal/ads/zzabq;->zza(Lcom/google/android/gms/internal/ads/zzabq;)J

    .line 227
    .line 228
    .line 229
    move-result-wide v13

    .line 230
    const-wide/16 v17, 0x3e8

    .line 231
    .line 232
    mul-long v13, v13, v17

    .line 233
    .line 234
    add-long/2addr v13, v1

    .line 235
    invoke-virtual {v3, v13, v14}, Lcom/google/android/gms/internal/ads/zzabw;->zza(J)J

    .line 236
    .line 237
    .line 238
    move-result-wide v13

    .line 239
    invoke-static {v10, v13, v14}, Lcom/google/android/gms/internal/ads/zzabq;->zzf(Lcom/google/android/gms/internal/ads/zzabq;J)V

    .line 240
    .line 241
    .line 242
    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/internal/ads/zzabq;->zzb(Lcom/google/android/gms/internal/ads/zzabq;)J

    .line 243
    .line 244
    .line 245
    move-result-wide v13

    .line 246
    sub-long/2addr v13, v1

    .line 247
    div-long v13, v13, v17

    .line 248
    .line 249
    invoke-static {v10, v13, v14}, Lcom/google/android/gms/internal/ads/zzabq;->zze(Lcom/google/android/gms/internal/ads/zzabq;J)V

    .line 250
    .line 251
    .line 252
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzh:J

    .line 253
    .line 254
    cmp-long v1, v1, v6

    .line 255
    .line 256
    if-eqz v1, :cond_10

    .line 257
    .line 258
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzi:Z

    .line 259
    .line 260
    if-nez v1, :cond_10

    .line 261
    .line 262
    const/4 v13, 0x1

    .line 263
    goto :goto_3

    .line 264
    :cond_10
    move v13, v8

    .line 265
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabs;->zza:Lcom/google/android/gms/internal/ads/zzabr;

    .line 266
    .line 267
    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/internal/ads/zzabq;->zza(Lcom/google/android/gms/internal/ads/zzabq;)J

    .line 268
    .line 269
    .line 270
    move-result-wide v2

    .line 271
    move-wide/from16 v4, p3

    .line 272
    .line 273
    move-wide/from16 v6, p5

    .line 274
    .line 275
    move/from16 v8, p10

    .line 276
    .line 277
    move v14, v9

    .line 278
    move v9, v13

    .line 279
    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzabr;->zzbc(JJJZZ)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_11

    .line 284
    .line 285
    return v12

    .line 286
    :cond_11
    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/internal/ads/zzabq;->zza(Lcom/google/android/gms/internal/ads/zzabq;)J

    .line 287
    .line 288
    .line 289
    move-result-wide v1

    .line 290
    cmp-long v1, v1, v15

    .line 291
    .line 292
    if-gez v1, :cond_13

    .line 293
    .line 294
    if-nez p10, :cond_13

    .line 295
    .line 296
    if-eqz v13, :cond_12

    .line 297
    .line 298
    return v11

    .line 299
    :cond_12
    return v14

    .line 300
    :cond_13
    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/internal/ads/zzabq;->zza(Lcom/google/android/gms/internal/ads/zzabq;)J

    .line 301
    .line 302
    .line 303
    move-result-wide v1

    .line 304
    const-wide/32 v3, 0xc350

    .line 305
    .line 306
    .line 307
    cmp-long v1, v1, v3

    .line 308
    .line 309
    if-lez v1, :cond_14

    .line 310
    .line 311
    const/4 v1, 0x5

    .line 312
    return v1

    .line 313
    :cond_14
    const/4 v1, 0x1

    .line 314
    :goto_4
    return v1
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzd:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzd:I

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzc(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzi:Z

    .line 2
    .line 3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzh:J

    .line 9
    .line 10
    return-void
.end method

.method public final zzd()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzc:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzk:Lcom/google/android/gms/internal/ads/zzdj;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzf:J

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzb:Lcom/google/android/gms/internal/ads/zzabw;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabw;->zzg()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzc:Z

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzh:J

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzb:Lcom/google/android/gms/internal/ads/zzabw;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabw;->zzh()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zzf(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzo(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzd:I

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzd:I

    .line 16
    .line 17
    return-void
.end method

.method public final zzg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzb:Lcom/google/android/gms/internal/ads/zzabw;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabw;->zzf()V

    .line 4
    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzg:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zze:J

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzabs;->zzo(I)V

    .line 17
    .line 18
    .line 19
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzh:J

    .line 20
    .line 21
    return-void
.end method

.method public final zzh(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzb:Lcom/google/android/gms/internal/ads/zzabw;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabw;->zzj(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzdj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzk:Lcom/google/android/gms/internal/ads/zzdj;

    .line 2
    .line 3
    return-void
.end method

.method public final zzj(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzb:Lcom/google/android/gms/internal/ads/zzabw;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabw;->zzc(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzk(Landroid/view/Surface;)V
    .locals 3
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzl:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzm:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzb:Lcom/google/android/gms/internal/ads/zzabw;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabw;->zzi(Landroid/view/Surface;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzabs;->zzo(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final zzl(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(Z)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzj:F

    .line 13
    .line 14
    cmpl-float v0, p1, v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzj:F

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzb:Lcom/google/android/gms/internal/ads/zzabw;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabw;->zze(F)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final zzm(Z)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzd:I

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq p1, v3, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzl:Z

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzm:Z

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzh:J

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzh:J

    .line 27
    .line 28
    cmp-long p1, v3, v1

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    return v3

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzk:Lcom/google/android/gms/internal/ads/zzdj;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzh:J

    .line 41
    .line 42
    cmp-long p1, v4, v6

    .line 43
    .line 44
    if-gez p1, :cond_3

    .line 45
    .line 46
    return v0

    .line 47
    :cond_3
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzh:J

    .line 48
    .line 49
    return v3
.end method

.method public final zzn()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzd:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzd:I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzk:Lcom/google/android/gms/internal/ads/zzdj;

    .line 7
    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzabs;->zzf:J

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method
