.class final Lcom/google/android/gms/internal/ads/zzqq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzqp;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzqr;

.field private zzd:I

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqp;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzqp;-><init>(Landroid/media/AudioTrack;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zza:Lcom/google/android/gms/internal/ads/zzqp;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzb:I

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzqr;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final zzf(JF)J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zza:Lcom/google/android/gms/internal/ads/zzqp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqp;->zza()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqp;->zzb()J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    move-object v1, p0

    .line 12
    move-wide v6, p1

    .line 13
    move v8, p3

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzqq;->zzg(JJJF)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method

.method private final zzg(JJJF)J
    .locals 0

    .line 1
    sub-long/2addr p5, p3

    .line 2
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzb:I

    .line 3
    .line 4
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzex;->zzt(JI)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    invoke-static {p5, p6, p7}, Lcom/google/android/gms/internal/ads/zzex;->zzq(JF)J

    .line 9
    .line 10
    .line 11
    move-result-wide p3

    .line 12
    add-long/2addr p1, p3

    .line 13
    return-wide p1
.end method

.method private final zzh(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:I

    .line 2
    .line 3
    const-wide/16 v0, 0x2710

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq p1, v2, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    const-wide/32 v0, 0x7a120

    .line 17
    .line 18
    .line 19
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzf:J

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-wide/32 v0, 0x989680

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzf:J

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzg:J

    .line 32
    .line 33
    const-wide/16 v2, -0x1

    .line 34
    .line 35
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzh:J

    .line 36
    .line 37
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzi:J

    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    const-wide/16 v4, 0x3e8

    .line 49
    .line 50
    div-long/2addr v2, v4

    .line 51
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zze:J

    .line 52
    .line 53
    goto :goto_0
.end method


# virtual methods
.method public final zza(JF)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzqq;->zzf(JF)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public final zzb(JFJ)V
    .locals 18

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-wide/from16 v5, p1

    .line 4
    .line 5
    iget-wide v0, v8, Lcom/google/android/gms/internal/ads/zzqq;->zzg:J

    .line 6
    .line 7
    sub-long v0, v5, v0

    .line 8
    .line 9
    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/zzqq;->zzf:J

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-gez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    iput-wide v5, v8, Lcom/google/android/gms/internal/ads/zzqq;->zzg:J

    .line 18
    .line 19
    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzqq;->zza:Lcom/google/android/gms/internal/ads/zzqp;

    .line 20
    .line 21
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzqp;->zzc()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzqp;->zzb()J

    .line 29
    .line 30
    .line 31
    move-result-wide v12

    .line 32
    invoke-direct/range {p0 .. p3}, Lcom/google/android/gms/internal/ads/zzqq;->zzf(JF)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    sub-long v9, v12, v5

    .line 37
    .line 38
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v9

    .line 42
    const-wide/32 v14, 0x4c4b40

    .line 43
    .line 44
    .line 45
    cmp-long v4, v9, v14

    .line 46
    .line 47
    const/4 v10, 0x4

    .line 48
    if-lez v4, :cond_1

    .line 49
    .line 50
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzqr;

    .line 51
    .line 52
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzqp;->zza()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    move v4, v10

    .line 57
    move-wide v10, v2

    .line 58
    move-wide/from16 v14, p1

    .line 59
    .line 60
    move-wide/from16 v16, p4

    .line 61
    .line 62
    invoke-interface/range {v9 .. v17}, Lcom/google/android/gms/internal/ads/zzqr;->zzd(JJJJ)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move v4, v10

    .line 70
    sub-long v2, v2, p4

    .line 71
    .line 72
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    cmp-long v2, v2, v14

    .line 77
    .line 78
    if-lez v2, :cond_2

    .line 79
    .line 80
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzqq;->zzc:Lcom/google/android/gms/internal/ads/zzqr;

    .line 81
    .line 82
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzqp;->zza()J

    .line 83
    .line 84
    .line 85
    move-result-wide v10

    .line 86
    move-wide/from16 v14, p1

    .line 87
    .line 88
    move-wide/from16 v16, p4

    .line 89
    .line 90
    invoke-interface/range {v9 .. v17}, Lcom/google/android/gms/internal/ads/zzqr;->zzc(JJJJ)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzqq;->zzd:I

    .line 98
    .line 99
    if-ne v2, v4, :cond_3

    .line 100
    .line 101
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(I)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_0
    iget v2, v8, Lcom/google/android/gms/internal/ads/zzqq;->zzd:I

    .line 105
    .line 106
    const/4 v3, 0x1

    .line 107
    const/4 v9, 0x3

    .line 108
    if-eqz v2, :cond_b

    .line 109
    .line 110
    const/4 v10, 0x2

    .line 111
    if-eq v2, v3, :cond_6

    .line 112
    .line 113
    if-eq v2, v10, :cond_5

    .line 114
    .line 115
    if-eq v2, v9, :cond_4

    .line 116
    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :cond_4
    if-eqz v0, :cond_d

    .line 120
    .line 121
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(I)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_5
    if-nez v0, :cond_d

    .line 126
    .line 127
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(I)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_6
    if-eqz v0, :cond_a

    .line 132
    .line 133
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzqp;->zza()J

    .line 134
    .line 135
    .line 136
    move-result-wide v0

    .line 137
    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/zzqq;->zzh:J

    .line 138
    .line 139
    cmp-long v0, v0, v2

    .line 140
    .line 141
    if-gtz v0, :cond_7

    .line 142
    .line 143
    move-object v11, v7

    .line 144
    goto :goto_1

    .line 145
    :cond_7
    iget-wide v11, v8, Lcom/google/android/gms/internal/ads/zzqq;->zzi:J

    .line 146
    .line 147
    move-object/from16 v0, p0

    .line 148
    .line 149
    move-wide v1, v2

    .line 150
    move-wide v3, v11

    .line 151
    move-wide/from16 v5, p1

    .line 152
    .line 153
    move-object v11, v7

    .line 154
    move/from16 v7, p3

    .line 155
    .line 156
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzqq;->zzg(JJJF)J

    .line 157
    .line 158
    .line 159
    move-result-wide v0

    .line 160
    invoke-direct/range {p0 .. p3}, Lcom/google/android/gms/internal/ads/zzqq;->zzf(JF)J

    .line 161
    .line 162
    .line 163
    move-result-wide v2

    .line 164
    sub-long/2addr v2, v0

    .line 165
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 166
    .line 167
    .line 168
    move-result-wide v0

    .line 169
    const-wide/16 v2, 0x3e8

    .line 170
    .line 171
    cmp-long v0, v0, v2

    .line 172
    .line 173
    if-gez v0, :cond_8

    .line 174
    .line 175
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(I)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_8
    :goto_1
    iget-wide v0, v8, Lcom/google/android/gms/internal/ads/zzqq;->zze:J

    .line 180
    .line 181
    sub-long v0, p1, v0

    .line 182
    .line 183
    const-wide/32 v2, 0x1e8480

    .line 184
    .line 185
    .line 186
    cmp-long v0, v0, v2

    .line 187
    .line 188
    if-lez v0, :cond_9

    .line 189
    .line 190
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(I)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_9
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzqp;->zza()J

    .line 195
    .line 196
    .line 197
    move-result-wide v0

    .line 198
    iput-wide v0, v8, Lcom/google/android/gms/internal/ads/zzqq;->zzh:J

    .line 199
    .line 200
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzqp;->zzb()J

    .line 201
    .line 202
    .line 203
    move-result-wide v0

    .line 204
    iput-wide v0, v8, Lcom/google/android/gms/internal/ads/zzqq;->zzi:J

    .line 205
    .line 206
    return-void

    .line 207
    :cond_a
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(I)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_b
    move-object v11, v7

    .line 212
    if-eqz v0, :cond_c

    .line 213
    .line 214
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzqp;->zzb()J

    .line 215
    .line 216
    .line 217
    move-result-wide v0

    .line 218
    iget-wide v4, v8, Lcom/google/android/gms/internal/ads/zzqq;->zze:J

    .line 219
    .line 220
    cmp-long v0, v0, v4

    .line 221
    .line 222
    if-ltz v0, :cond_d

    .line 223
    .line 224
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzqp;->zza()J

    .line 225
    .line 226
    .line 227
    move-result-wide v0

    .line 228
    iput-wide v0, v8, Lcom/google/android/gms/internal/ads/zzqq;->zzh:J

    .line 229
    .line 230
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzqp;->zzb()J

    .line 231
    .line 232
    .line 233
    move-result-wide v0

    .line 234
    iput-wide v0, v8, Lcom/google/android/gms/internal/ads/zzqq;->zzi:J

    .line 235
    .line 236
    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(I)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :cond_c
    iget-wide v0, v8, Lcom/google/android/gms/internal/ads/zzqq;->zze:J

    .line 241
    .line 242
    sub-long v0, p1, v0

    .line 243
    .line 244
    const-wide/32 v2, 0x7a120

    .line 245
    .line 246
    .line 247
    cmp-long v0, v0, v2

    .line 248
    .line 249
    if-lez v0, :cond_d

    .line 250
    .line 251
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(I)V

    .line 252
    .line 253
    .line 254
    :cond_d
    :goto_2
    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqq;->zzh(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final zzd()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final zze()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzd:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    :goto_0
    return v1
.end method
