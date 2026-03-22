.class final Lcom/google/android/gms/internal/ads/zzanu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzen;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzanv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanu;->zza:Lcom/google/android/gms/internal/ads/zzeu;

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanu;->zzb:Lcom/google/android/gms/internal/ads/zzen;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzadw;J)Lcom/google/android/gms/internal/ads/zzade;
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
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzd()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    sub-long/2addr v3, v1

    .line 12
    const-wide/16 v5, 0x4e20

    .line 13
    .line 14
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    long-to-int v3, v3

    .line 19
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanu;->zzb:Lcom/google/android/gms/internal/ads/zzen;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzI(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const/4 v6, 0x0

    .line 29
    move-object/from16 v7, p1

    .line 30
    .line 31
    invoke-interface {v7, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzh([BII)V

    .line 32
    .line 33
    .line 34
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    const/4 v3, -0x1

    .line 40
    move v7, v3

    .line 41
    move-wide v8, v5

    .line 42
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    const/4 v11, 0x4

    .line 47
    if-lt v10, v11, :cond_c

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    invoke-static {v10, v12}, Lcom/google/android/gms/internal/ads/zzanw;->zzh([BI)I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    const/4 v12, 0x1

    .line 62
    const/16 v13, 0x1ba

    .line 63
    .line 64
    if-eq v10, v13, :cond_0

    .line 65
    .line 66
    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 71
    .line 72
    .line 73
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzanx;->zzc(Lcom/google/android/gms/internal/ads/zzen;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v14

    .line 77
    cmp-long v3, v14, v5

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanu;->zza:Lcom/google/android/gms/internal/ads/zzeu;

    .line 82
    .line 83
    invoke-virtual {v3, v14, v15}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v14

    .line 87
    cmp-long v3, v14, p2

    .line 88
    .line 89
    if-lez v3, :cond_2

    .line 90
    .line 91
    cmp-long v3, v8, v5

    .line 92
    .line 93
    if-nez v3, :cond_1

    .line 94
    .line 95
    invoke-static {v14, v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzade;->zzd(JJ)Lcom/google/android/gms/internal/ads/zzade;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :cond_1
    int-to-long v3, v7

    .line 102
    :goto_1
    add-long/2addr v1, v3

    .line 103
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzade;->zze(J)Lcom/google/android/gms/internal/ads/zzade;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_2
    const-wide/32 v7, 0x186a0

    .line 110
    .line 111
    .line 112
    add-long/2addr v7, v14

    .line 113
    cmp-long v3, v7, p2

    .line 114
    .line 115
    if-lez v3, :cond_3

    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    int-to-long v3, v3

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    move v7, v3

    .line 128
    move-wide v8, v14

    .line 129
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    const/16 v14, 0xa

    .line 138
    .line 139
    if-ge v10, v14, :cond_5

    .line 140
    .line 141
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_3

    .line 145
    .line 146
    :cond_5
    const/16 v10, 0x9

    .line 147
    .line 148
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    and-int/lit8 v10, v10, 0x7

    .line 156
    .line 157
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    if-ge v14, v10, :cond_6

    .line 162
    .line 163
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_3

    .line 167
    .line 168
    :cond_6
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    if-ge v10, v11, :cond_7

    .line 176
    .line 177
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 186
    .line 187
    .line 188
    move-result v14

    .line 189
    invoke-static {v10, v14}, Lcom/google/android/gms/internal/ads/zzanw;->zzh([BI)I

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    const/16 v14, 0x1bb

    .line 194
    .line 195
    if-eq v10, v14, :cond_8

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_8
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    if-ge v14, v10, :cond_9

    .line 210
    .line 211
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_9
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 216
    .line 217
    .line 218
    :goto_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    if-lt v10, v11, :cond_b

    .line 223
    .line 224
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 229
    .line 230
    .line 231
    move-result v14

    .line 232
    invoke-static {v10, v14}, Lcom/google/android/gms/internal/ads/zzanw;->zzh([BI)I

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    if-eq v10, v13, :cond_b

    .line 237
    .line 238
    const/16 v14, 0x1b9

    .line 239
    .line 240
    if-eq v10, v14, :cond_b

    .line 241
    .line 242
    ushr-int/lit8 v10, v10, 0x8

    .line 243
    .line 244
    if-ne v10, v12, :cond_b

    .line 245
    .line 246
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    const/4 v14, 0x2

    .line 254
    if-ge v10, v14, :cond_a

    .line 255
    .line 256
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_a
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 261
    .line 262
    .line 263
    move-result v10

    .line 264
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 265
    .line 266
    .line 267
    move-result v14

    .line 268
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 269
    .line 270
    .line 271
    move-result v15

    .line 272
    add-int/2addr v15, v10

    .line 273
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_b
    :goto_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :cond_c
    cmp-long v4, v8, v5

    .line 288
    .line 289
    if-eqz v4, :cond_d

    .line 290
    .line 291
    int-to-long v3, v3

    .line 292
    add-long/2addr v1, v3

    .line 293
    invoke-static {v8, v9, v1, v2}, Lcom/google/android/gms/internal/ads/zzade;->zzf(JJ)Lcom/google/android/gms/internal/ads/zzade;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    goto :goto_4

    .line 298
    :cond_d
    sget-object v1, Lcom/google/android/gms/internal/ads/zzade;->zza:Lcom/google/android/gms/internal/ads/zzade;

    .line 299
    .line 300
    :goto_4
    return-object v1
.end method

.method public final zzb()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zzb:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanu;->zzb:Lcom/google/android/gms/internal/ads/zzen;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzJ([BI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
