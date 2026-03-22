.class final Lcom/google/android/gms/internal/ads/zzakj;
.super Lcom/google/android/gms/internal/ads/zzakh;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzaki;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:I

.field private zzc:Z

.field private zzd:Lcom/google/android/gms/internal/ads/zzafg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzafe;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzakh;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzen;)J
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    aget-byte v0, v0, v1

    .line 20
    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzakj;->zza:Lcom/google/android/gms/internal/ads/zzaki;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzaki;->zze:I

    .line 27
    .line 28
    shr-int/2addr v0, v2

    .line 29
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzaki;->zzd:[Lcom/google/android/gms/internal/ads/zzaff;

    .line 30
    .line 31
    const/16 v6, 0xff

    .line 32
    .line 33
    const/16 v7, 0x8

    .line 34
    .line 35
    rsub-int/lit8 v4, v4, 0x8

    .line 36
    .line 37
    ushr-int v4, v6, v4

    .line 38
    .line 39
    and-int/2addr v0, v4

    .line 40
    aget-object v0, v5, v0

    .line 41
    .line 42
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaff;->zza:Z

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzaki;->zza:Lcom/google/android/gms/internal/ads/zzafg;

    .line 47
    .line 48
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzafg;->zze:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzaki;->zza:Lcom/google/android/gms/internal/ads/zzafg;

    .line 52
    .line 53
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzafg;->zzf:I

    .line 54
    .line 55
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzc:Z

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzb:I

    .line 60
    .line 61
    add-int/2addr v1, v0

    .line 62
    div-int/lit8 v1, v1, 0x4

    .line 63
    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzb()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    add-int/lit8 v4, v4, 0x4

    .line 73
    .line 74
    if-ge v3, v4, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    add-int/lit8 v4, v4, 0x4

    .line 85
    .line 86
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    array-length v4, v3

    .line 91
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzJ([BI)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    add-int/lit8 v3, v3, 0x4

    .line 100
    .line 101
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzK(I)V

    .line 102
    .line 103
    .line 104
    :goto_1
    int-to-long v3, v1

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    add-int/lit8 v5, v5, -0x4

    .line 114
    .line 115
    const-wide/16 v8, 0xff

    .line 116
    .line 117
    and-long v10, v3, v8

    .line 118
    .line 119
    long-to-int v6, v10

    .line 120
    int-to-byte v6, v6

    .line 121
    aput-byte v6, v1, v5

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    add-int/lit8 v5, v5, -0x3

    .line 128
    .line 129
    ushr-long v6, v3, v7

    .line 130
    .line 131
    and-long/2addr v6, v8

    .line 132
    long-to-int v6, v6

    .line 133
    int-to-byte v6, v6

    .line 134
    aput-byte v6, v1, v5

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    add-int/lit8 v5, v5, -0x2

    .line 141
    .line 142
    const/16 v6, 0x10

    .line 143
    .line 144
    ushr-long v6, v3, v6

    .line 145
    .line 146
    and-long/2addr v6, v8

    .line 147
    long-to-int v6, v6

    .line 148
    int-to-byte v6, v6

    .line 149
    aput-byte v6, v1, v5

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    add-int/lit8 p1, p1, -0x1

    .line 156
    .line 157
    const/16 v5, 0x18

    .line 158
    .line 159
    ushr-long v5, v3, v5

    .line 160
    .line 161
    and-long/2addr v5, v8

    .line 162
    long-to-int v5, v5

    .line 163
    int-to-byte v5, v5

    .line 164
    aput-byte v5, v1, p1

    .line 165
    .line 166
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzc:Z

    .line 167
    .line 168
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzb:I

    .line 169
    .line 170
    return-wide v3
.end method

.method protected final zzb(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzakh;->zzb(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->zza:Lcom/google/android/gms/internal/ads/zzaki;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzd:Lcom/google/android/gms/internal/ads/zzafg;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzb:I

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzc:Z

    .line 17
    .line 18
    return-void
.end method

.method protected final zzc(Lcom/google/android/gms/internal/ads/zzen;JLcom/google/android/gms/internal/ads/zzake;)Z
    .locals 25
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
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzakj;->zza:Lcom/google/android/gms/internal/ads/zzaki;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzake;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzakj;->zzd:Lcom/google/android/gms/internal/ads/zzafg;

    .line 19
    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v11, 0x1

    .line 22
    if-nez v6, :cond_5

    .line 23
    .line 24
    invoke-static {v11, v1, v4}, Lcom/google/android/gms/internal/ads/zzafh;->zzd(ILcom/google/android/gms/internal/ads/zzen;Z)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzj()I

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 32
    .line 33
    .line 34
    move-result v14

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzj()I

    .line 36
    .line 37
    .line 38
    move-result v15

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzi()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-gtz v6, :cond_1

    .line 44
    .line 45
    const/16 v16, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move/from16 v16, v6

    .line 49
    .line 50
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzi()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-gtz v6, :cond_2

    .line 55
    .line 56
    const/16 v17, -0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move/from16 v17, v6

    .line 60
    .line 61
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzi()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-gtz v6, :cond_3

    .line 66
    .line 67
    const/16 v18, -0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move/from16 v18, v6

    .line 71
    .line 72
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    and-int/lit8 v6, v3, 0xf

    .line 77
    .line 78
    int-to-double v8, v6

    .line 79
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 80
    .line 81
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 82
    .line 83
    .line 84
    move-result-wide v8

    .line 85
    double-to-int v6, v8

    .line 86
    and-int/lit16 v3, v3, 0xf0

    .line 87
    .line 88
    shr-int/2addr v3, v5

    .line 89
    int-to-double v8, v3

    .line 90
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 91
    .line 92
    .line 93
    move-result-wide v8

    .line 94
    double-to-int v3, v8

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    const/4 v8, 0x1

    .line 100
    and-int/2addr v5, v8

    .line 101
    if-eq v8, v5, :cond_4

    .line 102
    .line 103
    move/from16 v21, v4

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    const/16 v21, 0x1

    .line 107
    .line 108
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 117
    .line 118
    .line 119
    move-result-object v22

    .line 120
    new-instance v1, Lcom/google/android/gms/internal/ads/zzafg;

    .line 121
    .line 122
    move-object v12, v1

    .line 123
    move/from16 v19, v6

    .line 124
    .line 125
    move/from16 v20, v3

    .line 126
    .line 127
    invoke-direct/range {v12 .. v22}, Lcom/google/android/gms/internal/ads/zzafg;-><init>(IIIIIIIIZ[B)V

    .line 128
    .line 129
    .line 130
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzakj;->zzd:Lcom/google/android/gms/internal/ads/zzafg;

    .line 131
    .line 132
    :goto_4
    const/4 v7, 0x0

    .line 133
    goto/16 :goto_21

    .line 134
    .line 135
    :cond_5
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzakj;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 136
    .line 137
    if-nez v8, :cond_6

    .line 138
    .line 139
    const/4 v9, 0x1

    .line 140
    invoke-static {v1, v9, v9}, Lcom/google/android/gms/internal/ads/zzafh;->zzc(Lcom/google/android/gms/internal/ads/zzen;ZZ)Lcom/google/android/gms/internal/ads/zzafe;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzakj;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    new-array v9, v9, [B

    .line 152
    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    invoke-static {v10, v4, v9, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    .line 163
    .line 164
    iget v10, v6, Lcom/google/android/gms/internal/ads/zzafg;->zza:I

    .line 165
    .line 166
    const/4 v11, 0x5

    .line 167
    invoke-static {v11, v1, v4}, Lcom/google/android/gms/internal/ads/zzafh;->zzd(ILcom/google/android/gms/internal/ads/zzen;Z)Z

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    const/4 v13, 0x1

    .line 175
    add-int/2addr v12, v13

    .line 176
    new-instance v13, Lcom/google/android/gms/internal/ads/zzafd;

    .line 177
    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    invoke-direct {v13, v14}, Lcom/google/android/gms/internal/ads/zzafd;-><init>([B)V

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    const/16 v14, 0x8

    .line 190
    .line 191
    mul-int/2addr v1, v14

    .line 192
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 193
    .line 194
    .line 195
    move v1, v4

    .line 196
    :goto_5
    const/16 v15, 0x18

    .line 197
    .line 198
    const/4 v3, 0x2

    .line 199
    const/16 v4, 0x10

    .line 200
    .line 201
    if-ge v1, v12, :cond_11

    .line 202
    .line 203
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 204
    .line 205
    .line 206
    move-result v14

    .line 207
    const v7, 0x564342

    .line 208
    .line 209
    .line 210
    if-ne v14, v7, :cond_10

    .line 211
    .line 212
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzafd;->zzd()Z

    .line 221
    .line 222
    .line 223
    move-result v14

    .line 224
    if-nez v14, :cond_9

    .line 225
    .line 226
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzafd;->zzd()Z

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    const/4 v15, 0x0

    .line 231
    :goto_6
    if-ge v15, v7, :cond_a

    .line 232
    .line 233
    if-eqz v14, :cond_7

    .line 234
    .line 235
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzafd;->zzd()Z

    .line 236
    .line 237
    .line 238
    move-result v18

    .line 239
    if-eqz v18, :cond_8

    .line 240
    .line 241
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_7
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 246
    .line 247
    .line 248
    :cond_8
    :goto_7
    add-int/lit8 v15, v15, 0x1

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_9
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 252
    .line 253
    .line 254
    const/4 v14, 0x0

    .line 255
    :goto_8
    if-ge v14, v7, :cond_a

    .line 256
    .line 257
    sub-int v15, v7, v14

    .line 258
    .line 259
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzafh;->zza(I)I

    .line 260
    .line 261
    .line 262
    move-result v15

    .line 263
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 264
    .line 265
    .line 266
    move-result v15

    .line 267
    add-int/2addr v14, v15

    .line 268
    goto :goto_8

    .line 269
    :cond_a
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 270
    .line 271
    .line 272
    move-result v14

    .line 273
    if-gt v14, v3, :cond_f

    .line 274
    .line 275
    const/4 v15, 0x1

    .line 276
    if-eq v14, v15, :cond_c

    .line 277
    .line 278
    if-ne v14, v3, :cond_b

    .line 279
    .line 280
    goto :goto_9

    .line 281
    :cond_b
    move-object/from16 v18, v6

    .line 282
    .line 283
    goto :goto_b

    .line 284
    :cond_c
    move v3, v14

    .line 285
    :goto_9
    const/16 v14, 0x20

    .line 286
    .line 287
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 294
    .line 295
    .line 296
    move-result v14

    .line 297
    add-int/2addr v14, v15

    .line 298
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 299
    .line 300
    .line 301
    if-ne v3, v15, :cond_e

    .line 302
    .line 303
    if-eqz v4, :cond_d

    .line 304
    .line 305
    move-object/from16 v18, v6

    .line 306
    .line 307
    int-to-long v5, v7

    .line 308
    int-to-long v3, v4

    .line 309
    long-to-double v3, v3

    .line 310
    long-to-double v5, v5

    .line 311
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 312
    .line 313
    div-double v3, v20, v3

    .line 314
    .line 315
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 316
    .line 317
    .line 318
    move-result-wide v3

    .line 319
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 320
    .line 321
    .line 322
    move-result-wide v3

    .line 323
    double-to-long v3, v3

    .line 324
    goto :goto_a

    .line 325
    :cond_d
    move-object/from16 v18, v6

    .line 326
    .line 327
    const-wide/16 v3, 0x0

    .line 328
    .line 329
    goto :goto_a

    .line 330
    :cond_e
    move-object/from16 v18, v6

    .line 331
    .line 332
    int-to-long v3, v4

    .line 333
    int-to-long v5, v7

    .line 334
    mul-long/2addr v3, v5

    .line 335
    :goto_a
    int-to-long v5, v14

    .line 336
    mul-long/2addr v3, v5

    .line 337
    long-to-int v3, v3

    .line 338
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 339
    .line 340
    .line 341
    :goto_b
    add-int/lit8 v1, v1, 0x1

    .line 342
    .line 343
    move-object/from16 v6, v18

    .line 344
    .line 345
    const/4 v4, 0x0

    .line 346
    const/4 v5, 0x4

    .line 347
    const/16 v14, 0x8

    .line 348
    .line 349
    goto/16 :goto_5

    .line 350
    .line 351
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string v2, "lookup type greater than 2 not decodable: "

    .line 357
    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    const/4 v2, 0x0

    .line 369
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    throw v1

    .line 374
    :cond_10
    const/4 v2, 0x0

    .line 375
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzafd;->zza()I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .line 383
    .line 384
    const-string v4, "expected code book to start with [0x56, 0x43, 0x42] at "

    .line 385
    .line 386
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    throw v1

    .line 401
    :cond_11
    move-object/from16 v18, v6

    .line 402
    .line 403
    const/4 v1, 0x6

    .line 404
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    const/4 v6, 0x1

    .line 409
    add-int/2addr v5, v6

    .line 410
    const/4 v6, 0x0

    .line 411
    :goto_c
    if-ge v6, v5, :cond_13

    .line 412
    .line 413
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 414
    .line 415
    .line 416
    move-result v7

    .line 417
    if-nez v7, :cond_12

    .line 418
    .line 419
    add-int/lit8 v6, v6, 0x1

    .line 420
    .line 421
    goto :goto_c

    .line 422
    :cond_12
    const-string v1, "placeholder of time domain transforms not zeroed out"

    .line 423
    .line 424
    const/4 v2, 0x0

    .line 425
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    throw v1

    .line 430
    :cond_13
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    const/4 v6, 0x1

    .line 435
    add-int/2addr v5, v6

    .line 436
    const/4 v7, 0x0

    .line 437
    :goto_d
    const/4 v12, 0x3

    .line 438
    if-ge v7, v5, :cond_1d

    .line 439
    .line 440
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 441
    .line 442
    .line 443
    move-result v14

    .line 444
    if-eqz v14, :cond_1b

    .line 445
    .line 446
    if-ne v14, v6, :cond_1a

    .line 447
    .line 448
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 449
    .line 450
    .line 451
    move-result v6

    .line 452
    new-array v14, v6, [I

    .line 453
    .line 454
    const/4 v11, 0x0

    .line 455
    const/4 v15, -0x1

    .line 456
    :goto_e
    if-ge v11, v6, :cond_15

    .line 457
    .line 458
    const/4 v1, 0x4

    .line 459
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    aput v4, v14, v11

    .line 464
    .line 465
    if-le v4, v15, :cond_14

    .line 466
    .line 467
    move v15, v4

    .line 468
    :cond_14
    add-int/lit8 v11, v11, 0x1

    .line 469
    .line 470
    const/4 v1, 0x6

    .line 471
    const/16 v4, 0x10

    .line 472
    .line 473
    goto :goto_e

    .line 474
    :cond_15
    add-int/lit8 v15, v15, 0x1

    .line 475
    .line 476
    new-array v1, v15, [I

    .line 477
    .line 478
    const/4 v4, 0x0

    .line 479
    :goto_f
    if-ge v4, v15, :cond_18

    .line 480
    .line 481
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 482
    .line 483
    .line 484
    move-result v11

    .line 485
    const/16 v23, 0x1

    .line 486
    .line 487
    add-int/lit8 v11, v11, 0x1

    .line 488
    .line 489
    aput v11, v1, v4

    .line 490
    .line 491
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 492
    .line 493
    .line 494
    move-result v11

    .line 495
    if-lez v11, :cond_16

    .line 496
    .line 497
    const/16 v12, 0x8

    .line 498
    .line 499
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 500
    .line 501
    .line 502
    :goto_10
    move/from16 v24, v5

    .line 503
    .line 504
    const/4 v3, 0x0

    .line 505
    goto :goto_11

    .line 506
    :cond_16
    const/16 v12, 0x8

    .line 507
    .line 508
    goto :goto_10

    .line 509
    :goto_11
    shl-int v5, v23, v11

    .line 510
    .line 511
    if-ge v3, v5, :cond_17

    .line 512
    .line 513
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 514
    .line 515
    .line 516
    add-int/lit8 v3, v3, 0x1

    .line 517
    .line 518
    const/16 v12, 0x8

    .line 519
    .line 520
    const/16 v23, 0x1

    .line 521
    .line 522
    goto :goto_11

    .line 523
    :cond_17
    add-int/lit8 v4, v4, 0x1

    .line 524
    .line 525
    move/from16 v5, v24

    .line 526
    .line 527
    const/4 v3, 0x2

    .line 528
    const/4 v12, 0x3

    .line 529
    goto :goto_f

    .line 530
    :cond_18
    move/from16 v24, v5

    .line 531
    .line 532
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 533
    .line 534
    .line 535
    const/4 v3, 0x4

    .line 536
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 537
    .line 538
    .line 539
    move-result v4

    .line 540
    const/4 v3, 0x0

    .line 541
    const/4 v5, 0x0

    .line 542
    const/4 v11, 0x0

    .line 543
    :goto_12
    if-ge v3, v6, :cond_1c

    .line 544
    .line 545
    aget v12, v14, v3

    .line 546
    .line 547
    aget v12, v1, v12

    .line 548
    .line 549
    add-int/2addr v5, v12

    .line 550
    :goto_13
    if-ge v11, v5, :cond_19

    .line 551
    .line 552
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 553
    .line 554
    .line 555
    add-int/lit8 v11, v11, 0x1

    .line 556
    .line 557
    goto :goto_13

    .line 558
    :cond_19
    add-int/lit8 v3, v3, 0x1

    .line 559
    .line 560
    goto :goto_12

    .line 561
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .line 565
    .line 566
    const-string v2, "floor type greater than 1 not decodable: "

    .line 567
    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    const/4 v2, 0x0

    .line 579
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    throw v1

    .line 584
    :cond_1b
    move/from16 v24, v5

    .line 585
    .line 586
    const/16 v1, 0x8

    .line 587
    .line 588
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 589
    .line 590
    .line 591
    const/16 v3, 0x10

    .line 592
    .line 593
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 597
    .line 598
    .line 599
    const/4 v3, 0x6

    .line 600
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 604
    .line 605
    .line 606
    const/4 v3, 0x4

    .line 607
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 608
    .line 609
    .line 610
    move-result v4

    .line 611
    const/4 v3, 0x1

    .line 612
    add-int/2addr v4, v3

    .line 613
    const/4 v3, 0x0

    .line 614
    :goto_14
    if-ge v3, v4, :cond_1c

    .line 615
    .line 616
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 617
    .line 618
    .line 619
    add-int/lit8 v3, v3, 0x1

    .line 620
    .line 621
    const/16 v1, 0x8

    .line 622
    .line 623
    goto :goto_14

    .line 624
    :cond_1c
    add-int/lit8 v7, v7, 0x1

    .line 625
    .line 626
    move/from16 v5, v24

    .line 627
    .line 628
    const/4 v1, 0x6

    .line 629
    const/4 v3, 0x2

    .line 630
    const/16 v4, 0x10

    .line 631
    .line 632
    const/4 v6, 0x1

    .line 633
    const/4 v11, 0x5

    .line 634
    const/16 v15, 0x18

    .line 635
    .line 636
    goto/16 :goto_d

    .line 637
    .line 638
    :cond_1d
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    const/4 v4, 0x1

    .line 643
    add-int/2addr v3, v4

    .line 644
    const/4 v5, 0x0

    .line 645
    :goto_15
    if-ge v5, v3, :cond_24

    .line 646
    .line 647
    const/16 v6, 0x10

    .line 648
    .line 649
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 650
    .line 651
    .line 652
    move-result v7

    .line 653
    const/4 v6, 0x2

    .line 654
    if-gt v7, v6, :cond_23

    .line 655
    .line 656
    const/16 v6, 0x18

    .line 657
    .line 658
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 668
    .line 669
    .line 670
    move-result v7

    .line 671
    add-int/2addr v7, v4

    .line 672
    const/16 v1, 0x8

    .line 673
    .line 674
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 675
    .line 676
    .line 677
    new-array v4, v7, [I

    .line 678
    .line 679
    const/4 v11, 0x0

    .line 680
    :goto_16
    if-ge v11, v7, :cond_1f

    .line 681
    .line 682
    const/4 v12, 0x3

    .line 683
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 684
    .line 685
    .line 686
    move-result v14

    .line 687
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzafd;->zzd()Z

    .line 688
    .line 689
    .line 690
    move-result v15

    .line 691
    if-eqz v15, :cond_1e

    .line 692
    .line 693
    const/4 v15, 0x5

    .line 694
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 695
    .line 696
    .line 697
    move-result v20

    .line 698
    goto :goto_17

    .line 699
    :cond_1e
    const/4 v15, 0x5

    .line 700
    const/16 v20, 0x0

    .line 701
    .line 702
    :goto_17
    mul-int/lit8 v20, v20, 0x8

    .line 703
    .line 704
    add-int v20, v20, v14

    .line 705
    .line 706
    aput v20, v4, v11

    .line 707
    .line 708
    add-int/lit8 v11, v11, 0x1

    .line 709
    .line 710
    goto :goto_16

    .line 711
    :cond_1f
    const/4 v12, 0x3

    .line 712
    const/4 v15, 0x5

    .line 713
    const/4 v11, 0x0

    .line 714
    :goto_18
    if-ge v11, v7, :cond_22

    .line 715
    .line 716
    const/4 v14, 0x0

    .line 717
    :goto_19
    if-ge v14, v1, :cond_21

    .line 718
    .line 719
    aget v20, v4, v11

    .line 720
    .line 721
    const/16 v21, 0x1

    .line 722
    .line 723
    shl-int v23, v21, v14

    .line 724
    .line 725
    and-int v20, v20, v23

    .line 726
    .line 727
    if-eqz v20, :cond_20

    .line 728
    .line 729
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 730
    .line 731
    .line 732
    :cond_20
    add-int/lit8 v14, v14, 0x1

    .line 733
    .line 734
    const/16 v1, 0x8

    .line 735
    .line 736
    goto :goto_19

    .line 737
    :cond_21
    add-int/lit8 v11, v11, 0x1

    .line 738
    .line 739
    const/16 v1, 0x8

    .line 740
    .line 741
    goto :goto_18

    .line 742
    :cond_22
    add-int/lit8 v5, v5, 0x1

    .line 743
    .line 744
    const/4 v1, 0x6

    .line 745
    const/4 v4, 0x1

    .line 746
    goto :goto_15

    .line 747
    :cond_23
    const-string v1, "residueType greater than 2 is not decodable"

    .line 748
    .line 749
    const/4 v2, 0x0

    .line 750
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    throw v1

    .line 755
    :cond_24
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 756
    .line 757
    .line 758
    move-result v3

    .line 759
    const/4 v1, 0x1

    .line 760
    add-int/2addr v3, v1

    .line 761
    const/4 v1, 0x0

    .line 762
    :goto_1a
    if-ge v1, v3, :cond_2b

    .line 763
    .line 764
    const/16 v4, 0x10

    .line 765
    .line 766
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 767
    .line 768
    .line 769
    move-result v5

    .line 770
    if-eqz v5, :cond_25

    .line 771
    .line 772
    new-instance v4, Ljava/lang/StringBuilder;

    .line 773
    .line 774
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
    .line 776
    .line 777
    const-string v6, "mapping type other than 0 not supported: "

    .line 778
    .line 779
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v4

    .line 789
    const-string v5, "VorbisUtil"

    .line 790
    .line 791
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzea;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    const/4 v4, 0x2

    .line 795
    const/4 v7, 0x4

    .line 796
    goto :goto_1f

    .line 797
    :cond_25
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzafd;->zzd()Z

    .line 798
    .line 799
    .line 800
    move-result v4

    .line 801
    if-eqz v4, :cond_26

    .line 802
    .line 803
    const/4 v4, 0x4

    .line 804
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 805
    .line 806
    .line 807
    move-result v5

    .line 808
    const/4 v4, 0x1

    .line 809
    add-int/2addr v5, v4

    .line 810
    goto :goto_1b

    .line 811
    :cond_26
    const/4 v4, 0x1

    .line 812
    move v5, v4

    .line 813
    :goto_1b
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzafd;->zzd()Z

    .line 814
    .line 815
    .line 816
    move-result v6

    .line 817
    if-eqz v6, :cond_27

    .line 818
    .line 819
    const/16 v6, 0x8

    .line 820
    .line 821
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 822
    .line 823
    .line 824
    move-result v7

    .line 825
    add-int/2addr v7, v4

    .line 826
    const/4 v4, 0x0

    .line 827
    :goto_1c
    if-ge v4, v7, :cond_27

    .line 828
    .line 829
    add-int/lit8 v6, v10, -0x1

    .line 830
    .line 831
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzafh;->zza(I)I

    .line 832
    .line 833
    .line 834
    move-result v11

    .line 835
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 836
    .line 837
    .line 838
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzafh;->zza(I)I

    .line 839
    .line 840
    .line 841
    move-result v6

    .line 842
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 843
    .line 844
    .line 845
    add-int/lit8 v4, v4, 0x1

    .line 846
    .line 847
    goto :goto_1c

    .line 848
    :cond_27
    const/4 v4, 0x2

    .line 849
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 850
    .line 851
    .line 852
    move-result v6

    .line 853
    if-nez v6, :cond_2a

    .line 854
    .line 855
    const/4 v6, 0x1

    .line 856
    if-le v5, v6, :cond_28

    .line 857
    .line 858
    const/4 v6, 0x0

    .line 859
    :goto_1d
    if-ge v6, v10, :cond_28

    .line 860
    .line 861
    const/4 v7, 0x4

    .line 862
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 863
    .line 864
    .line 865
    add-int/lit8 v6, v6, 0x1

    .line 866
    .line 867
    goto :goto_1d

    .line 868
    :cond_28
    const/4 v7, 0x4

    .line 869
    const/4 v6, 0x0

    .line 870
    :goto_1e
    if-ge v6, v5, :cond_29

    .line 871
    .line 872
    const/16 v11, 0x8

    .line 873
    .line 874
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzafd;->zzc(I)V

    .line 881
    .line 882
    .line 883
    add-int/lit8 v6, v6, 0x1

    .line 884
    .line 885
    goto :goto_1e

    .line 886
    :cond_29
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    .line 887
    .line 888
    goto :goto_1a

    .line 889
    :cond_2a
    const-string v1, "to reserved bits must be zero after mapping coupling steps"

    .line 890
    .line 891
    const/4 v2, 0x0

    .line 892
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    throw v1

    .line 897
    :cond_2b
    const/4 v1, 0x6

    .line 898
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 899
    .line 900
    .line 901
    move-result v1

    .line 902
    add-int/lit8 v3, v1, 0x1

    .line 903
    .line 904
    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzaff;

    .line 905
    .line 906
    const/4 v5, 0x0

    .line 907
    :goto_20
    if-ge v5, v3, :cond_2c

    .line 908
    .line 909
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzafd;->zzd()Z

    .line 910
    .line 911
    .line 912
    move-result v6

    .line 913
    const/16 v7, 0x10

    .line 914
    .line 915
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 916
    .line 917
    .line 918
    move-result v10

    .line 919
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 920
    .line 921
    .line 922
    move-result v11

    .line 923
    const/16 v12, 0x8

    .line 924
    .line 925
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzafd;->zzb(I)I

    .line 926
    .line 927
    .line 928
    move-result v14

    .line 929
    new-instance v15, Lcom/google/android/gms/internal/ads/zzaff;

    .line 930
    .line 931
    invoke-direct {v15, v6, v10, v11, v14}, Lcom/google/android/gms/internal/ads/zzaff;-><init>(ZIII)V

    .line 932
    .line 933
    .line 934
    aput-object v15, v4, v5

    .line 935
    .line 936
    add-int/lit8 v5, v5, 0x1

    .line 937
    .line 938
    goto :goto_20

    .line 939
    :cond_2c
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzafd;->zzd()Z

    .line 940
    .line 941
    .line 942
    move-result v3

    .line 943
    if-eqz v3, :cond_2e

    .line 944
    .line 945
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaki;

    .line 946
    .line 947
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzafh;->zza(I)I

    .line 948
    .line 949
    .line 950
    move-result v10

    .line 951
    move-object v5, v3

    .line 952
    move-object/from16 v6, v18

    .line 953
    .line 954
    move-object v7, v8

    .line 955
    move-object v8, v9

    .line 956
    move-object v9, v4

    .line 957
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzaki;-><init>(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzafe;[B[Lcom/google/android/gms/internal/ads/zzaff;I)V

    .line 958
    .line 959
    .line 960
    move-object v7, v3

    .line 961
    :goto_21
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzakj;->zza:Lcom/google/android/gms/internal/ads/zzaki;

    .line 962
    .line 963
    if-nez v7, :cond_2d

    .line 964
    .line 965
    const/4 v1, 0x1

    .line 966
    return v1

    .line 967
    :cond_2d
    new-instance v1, Ljava/util/ArrayList;

    .line 968
    .line 969
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 970
    .line 971
    .line 972
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzaki;->zza:Lcom/google/android/gms/internal/ads/zzafg;

    .line 973
    .line 974
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzafg;->zzg:[B

    .line 975
    .line 976
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    .line 978
    .line 979
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzaki;->zzc:[B

    .line 980
    .line 981
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    .line 983
    .line 984
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzaki;->zzb:Lcom/google/android/gms/internal/ads/zzafe;

    .line 985
    .line 986
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzafe;->zza:[Ljava/lang/String;

    .line 987
    .line 988
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfyq;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 989
    .line 990
    .line 991
    move-result-object v4

    .line 992
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzafh;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzav;

    .line 993
    .line 994
    .line 995
    move-result-object v4

    .line 996
    new-instance v5, Lcom/google/android/gms/internal/ads/zzx;

    .line 997
    .line 998
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 999
    .line 1000
    .line 1001
    const-string v6, "audio/ogg"

    .line 1002
    .line 1003
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1004
    .line 1005
    .line 1006
    const-string v6, "audio/vorbis"

    .line 1007
    .line 1008
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1009
    .line 1010
    .line 1011
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzafg;->zzd:I

    .line 1012
    .line 1013
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1014
    .line 1015
    .line 1016
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzafg;->zzc:I

    .line 1017
    .line 1018
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzac(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1019
    .line 1020
    .line 1021
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzafg;->zza:I

    .line 1022
    .line 1023
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzD(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1024
    .line 1025
    .line 1026
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzafg;->zzb:I

    .line 1027
    .line 1028
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzT(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzaa(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v1

    .line 1041
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzake;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 1042
    .line 1043
    const/4 v1, 0x1

    .line 1044
    return v1

    .line 1045
    :cond_2e
    const-string v1, "framing bit after modes not set as expected"

    .line 1046
    .line 1047
    const/4 v2, 0x0

    .line 1048
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    throw v1
.end method

.method protected final zzi(J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakh;->zzi(J)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long p1, p1, v0

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, p2

    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzc:Z

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzd:Lcom/google/android/gms/internal/ads/zzafg;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzafg;->zze:I

    .line 21
    .line 22
    :cond_1
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzakj;->zzb:I

    .line 23
    .line 24
    return-void
.end method
