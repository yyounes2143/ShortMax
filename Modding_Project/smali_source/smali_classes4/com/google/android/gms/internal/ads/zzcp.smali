.class final Lcom/google/android/gms/internal/ads/zzcp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:F

.field private final zzd:F

.field private final zze:F

.field private final zzf:I

.field private final zzg:I

.field private final zzh:I

.field private final zzi:[S

.field private zzj:[S

.field private zzk:I

.field private zzl:[S

.field private zzm:I

.field private zzn:[S

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:I

.field private zzu:I

.field private zzv:I

.field private zzw:D


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zza:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzc:F

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzd:F

    .line 11
    .line 12
    int-to-float p3, p1

    .line 13
    int-to-float p4, p5

    .line 14
    div-float/2addr p3, p4

    .line 15
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcp;->zze:F

    .line 16
    .line 17
    div-int/lit16 p3, p1, 0x190

    .line 18
    .line 19
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzf:I

    .line 20
    .line 21
    div-int/lit8 p1, p1, 0x41

    .line 22
    .line 23
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzg:I

    .line 24
    .line 25
    add-int/2addr p1, p1

    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzh:I

    .line 27
    .line 28
    new-array p3, p1, [S

    .line 29
    .line 30
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzi:[S

    .line 31
    .line 32
    mul-int/2addr p1, p2

    .line 33
    new-array p2, p1, [S

    .line 34
    .line 35
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzj:[S

    .line 36
    .line 37
    new-array p2, p1, [S

    .line 38
    .line 39
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 40
    .line 41
    new-array p1, p1, [S

    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzn:[S

    .line 44
    .line 45
    return-void
.end method

.method private final zzg([SIII)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0xff

    .line 4
    .line 5
    move v3, v0

    .line 6
    move v4, v3

    .line 7
    :goto_0
    if-gt p3, p4, :cond_5

    .line 8
    .line 9
    move v5, v0

    .line 10
    move v6, v5

    .line 11
    :goto_1
    if-ge v5, p3, :cond_0

    .line 12
    .line 13
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:I

    .line 14
    .line 15
    mul-int/2addr v7, p2

    .line 16
    add-int v8, v7, v5

    .line 17
    .line 18
    aget-short v8, p1, v8

    .line 19
    .line 20
    add-int/2addr v7, p3

    .line 21
    add-int/2addr v7, v5

    .line 22
    aget-short v7, p1, v7

    .line 23
    .line 24
    sub-int/2addr v8, v7

    .line 25
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    add-int/2addr v6, v7

    .line 30
    add-int/lit8 v5, v5, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    mul-int v5, v6, v3

    .line 34
    .line 35
    mul-int v7, v1, p3

    .line 36
    .line 37
    if-ge v5, v7, :cond_1

    .line 38
    .line 39
    move v1, v6

    .line 40
    :cond_1
    if-ge v5, v7, :cond_2

    .line 41
    .line 42
    move v3, p3

    .line 43
    :cond_2
    mul-int v5, v6, v2

    .line 44
    .line 45
    mul-int v7, v4, p3

    .line 46
    .line 47
    if-le v5, v7, :cond_3

    .line 48
    .line 49
    move v4, v6

    .line 50
    :cond_3
    if-le v5, v7, :cond_4

    .line 51
    .line 52
    move v2, p3

    .line 53
    :cond_4
    add-int/lit8 p3, p3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    div-int/2addr v1, v3

    .line 57
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzu:I

    .line 58
    .line 59
    div-int/2addr v4, v2

    .line 60
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzv:I

    .line 61
    .line 62
    return v3
.end method

.method private final zzh([SII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzcp;->zzl([SII)[S

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 10
    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 12
    .line 13
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:I

    .line 14
    .line 15
    mul-int/2addr v1, v2

    .line 16
    mul-int v3, p3, v2

    .line 17
    .line 18
    mul-int/2addr p2, v2

    .line 19
    invoke-static {p1, p2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 23
    .line 24
    add-int/2addr p1, p3

    .line 25
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 26
    .line 27
    return-void
.end method

.method private final zzi([SII)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzh:I

    .line 4
    .line 5
    div-int/2addr v2, p3

    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    move v2, v0

    .line 9
    move v3, v2

    .line 10
    :goto_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:I

    .line 11
    .line 12
    mul-int v5, v4, p3

    .line 13
    .line 14
    if-ge v2, v5, :cond_0

    .line 15
    .line 16
    mul-int/2addr v4, p2

    .line 17
    mul-int/2addr v5, v1

    .line 18
    add-int/2addr v4, v5

    .line 19
    add-int/2addr v4, v2

    .line 20
    aget-short v4, p1, v4

    .line 21
    .line 22
    add-int/2addr v3, v4

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    div-int/2addr v3, v5

    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzi:[S

    .line 28
    .line 29
    int-to-short v3, v3

    .line 30
    aput-short v3, v2, v1

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method private static zzj(II[SI[SI[SI)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v1, p1, :cond_1

    .line 4
    .line 5
    mul-int v2, p3, p1

    .line 6
    .line 7
    mul-int v3, p7, p1

    .line 8
    .line 9
    mul-int v4, p5, p1

    .line 10
    .line 11
    add-int/2addr v4, v1

    .line 12
    add-int/2addr v3, v1

    .line 13
    add-int/2addr v2, v1

    .line 14
    move v5, v0

    .line 15
    :goto_1
    if-ge v5, p0, :cond_0

    .line 16
    .line 17
    aget-short v6, p4, v4

    .line 18
    .line 19
    sub-int v7, p0, v5

    .line 20
    .line 21
    mul-int/2addr v6, v7

    .line 22
    aget-short v7, p6, v3

    .line 23
    .line 24
    mul-int/2addr v7, v5

    .line 25
    add-int/2addr v6, v7

    .line 26
    div-int/2addr v6, p0

    .line 27
    int-to-short v6, v6

    .line 28
    aput-short v6, p2, v2

    .line 29
    .line 30
    add-int/2addr v2, p1

    .line 31
    add-int/2addr v4, p1

    .line 32
    add-int/2addr v3, p1

    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method private final zzk()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzc:F

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzd:F

    .line 6
    .line 7
    div-float/2addr v1, v2

    .line 8
    float-to-double v3, v1

    .line 9
    const-wide v5, 0x3ff0000a80000000L    # 1.0000100135803223

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmpl-double v1, v3, v5

    .line 15
    .line 16
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x1

    .line 20
    if-gtz v1, :cond_1

    .line 21
    .line 22
    const-wide v8, 0x3fefffeb00000000L    # 0.9999899864196777

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmpg-double v1, v3, v8

    .line 28
    .line 29
    if-gez v1, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzj:[S

    .line 33
    .line 34
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 35
    .line 36
    invoke-direct {v0, v1, v6, v3}, Lcom/google/android/gms/internal/ads/zzcp;->zzh([SII)V

    .line 37
    .line 38
    .line 39
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 40
    .line 41
    :goto_0
    move/from16 v18, v5

    .line 42
    .line 43
    goto/16 :goto_e

    .line 44
    .line 45
    :cond_1
    :goto_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 46
    .line 47
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzh:I

    .line 48
    .line 49
    if-ge v1, v8, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v15, v6

    .line 53
    :goto_2
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzr:I

    .line 54
    .line 55
    if-lez v9, :cond_3

    .line 56
    .line 57
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzj:[S

    .line 62
    .line 63
    invoke-direct {v0, v10, v15, v9}, Lcom/google/android/gms/internal/ads/zzcp;->zzh([SII)V

    .line 64
    .line 65
    .line 66
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzr:I

    .line 67
    .line 68
    sub-int/2addr v10, v9

    .line 69
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzr:I

    .line 70
    .line 71
    add-int/2addr v15, v9

    .line 72
    move-wide/from16 v19, v3

    .line 73
    .line 74
    move/from16 v18, v5

    .line 75
    .line 76
    goto/16 :goto_d

    .line 77
    .line 78
    :cond_3
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzj:[S

    .line 79
    .line 80
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzcp;->zza:I

    .line 81
    .line 82
    const/16 v11, 0xfa0

    .line 83
    .line 84
    if-le v10, v11, :cond_4

    .line 85
    .line 86
    div-int/lit16 v10, v10, 0xfa0

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    move v10, v7

    .line 90
    :goto_3
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:I

    .line 91
    .line 92
    if-ne v11, v7, :cond_6

    .line 93
    .line 94
    if-ne v10, v7, :cond_5

    .line 95
    .line 96
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzf:I

    .line 97
    .line 98
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzg:I

    .line 99
    .line 100
    invoke-direct {v0, v9, v15, v10, v11}, Lcom/google/android/gms/internal/ads/zzcp;->zzg([SIII)I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    move/from16 v18, v5

    .line 105
    .line 106
    move v10, v7

    .line 107
    goto :goto_8

    .line 108
    :cond_5
    move v11, v7

    .line 109
    :cond_6
    invoke-direct {v0, v9, v15, v10}, Lcom/google/android/gms/internal/ads/zzcp;->zzi([SII)V

    .line 110
    .line 111
    .line 112
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzi:[S

    .line 113
    .line 114
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzf:I

    .line 115
    .line 116
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzg:I

    .line 117
    .line 118
    div-int v7, v14, v10

    .line 119
    .line 120
    move/from16 v18, v5

    .line 121
    .line 122
    div-int v5, v13, v10

    .line 123
    .line 124
    invoke-direct {v0, v12, v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzcp;->zzg([SIII)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    const/4 v7, 0x1

    .line 129
    if-eq v10, v7, :cond_a

    .line 130
    .line 131
    mul-int/2addr v5, v10

    .line 132
    mul-int/lit8 v10, v10, 0x4

    .line 133
    .line 134
    sub-int v7, v5, v10

    .line 135
    .line 136
    if-ge v7, v13, :cond_7

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_7
    move v13, v7

    .line 140
    :goto_4
    add-int/2addr v5, v10

    .line 141
    if-le v5, v14, :cond_8

    .line 142
    .line 143
    :goto_5
    const/4 v5, 0x1

    .line 144
    goto :goto_6

    .line 145
    :cond_8
    move v14, v5

    .line 146
    goto :goto_5

    .line 147
    :goto_6
    if-ne v11, v5, :cond_9

    .line 148
    .line 149
    invoke-direct {v0, v9, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzcp;->zzg([SIII)I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    :goto_7
    move v10, v11

    .line 154
    goto :goto_8

    .line 155
    :cond_9
    invoke-direct {v0, v9, v15, v5}, Lcom/google/android/gms/internal/ads/zzcp;->zzi([SII)V

    .line 156
    .line 157
    .line 158
    invoke-direct {v0, v12, v6, v13, v14}, Lcom/google/android/gms/internal/ads/zzcp;->zzg([SIII)I

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    goto :goto_7

    .line 163
    :cond_a
    move v9, v5

    .line 164
    goto :goto_7

    .line 165
    :goto_8
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzu:I

    .line 166
    .line 167
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzv:I

    .line 168
    .line 169
    if-eqz v5, :cond_e

    .line 170
    .line 171
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzs:I

    .line 172
    .line 173
    if-nez v11, :cond_b

    .line 174
    .line 175
    goto :goto_9

    .line 176
    :cond_b
    mul-int/lit8 v12, v5, 0x3

    .line 177
    .line 178
    if-le v7, v12, :cond_c

    .line 179
    .line 180
    goto :goto_9

    .line 181
    :cond_c
    add-int v7, v5, v5

    .line 182
    .line 183
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzt:I

    .line 184
    .line 185
    mul-int/lit8 v12, v12, 0x3

    .line 186
    .line 187
    if-gt v7, v12, :cond_d

    .line 188
    .line 189
    goto :goto_9

    .line 190
    :cond_d
    move v7, v11

    .line 191
    goto :goto_a

    .line 192
    :cond_e
    :goto_9
    move v7, v9

    .line 193
    :goto_a
    add-int v16, v15, v7

    .line 194
    .line 195
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzt:I

    .line 196
    .line 197
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzs:I

    .line 198
    .line 199
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 200
    .line 201
    cmpl-double v5, v3, v11

    .line 202
    .line 203
    int-to-double v13, v7

    .line 204
    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 205
    .line 206
    if-lez v5, :cond_10

    .line 207
    .line 208
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzj:[S

    .line 209
    .line 210
    add-double v19, v3, v19

    .line 211
    .line 212
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 213
    .line 214
    cmpl-double v9, v3, v11

    .line 215
    .line 216
    if-ltz v9, :cond_f

    .line 217
    .line 218
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzw:D

    .line 219
    .line 220
    div-double v13, v13, v19

    .line 221
    .line 222
    add-double/2addr v13, v11

    .line 223
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    .line 224
    .line 225
    .line 226
    move-result-wide v11

    .line 227
    long-to-int v9, v11

    .line 228
    int-to-double v11, v9

    .line 229
    sub-double/2addr v13, v11

    .line 230
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzw:D

    .line 231
    .line 232
    move/from16 v21, v7

    .line 233
    .line 234
    move v6, v9

    .line 235
    goto :goto_b

    .line 236
    :cond_f
    sub-double/2addr v11, v3

    .line 237
    move/from16 v21, v7

    .line 238
    .line 239
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzw:D

    .line 240
    .line 241
    mul-double/2addr v13, v11

    .line 242
    div-double v13, v13, v19

    .line 243
    .line 244
    add-double/2addr v13, v6

    .line 245
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    .line 246
    .line 247
    .line 248
    move-result-wide v6

    .line 249
    long-to-int v6, v6

    .line 250
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzr:I

    .line 251
    .line 252
    int-to-double v6, v6

    .line 253
    sub-double/2addr v13, v6

    .line 254
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzw:D

    .line 255
    .line 256
    move/from16 v6, v21

    .line 257
    .line 258
    :goto_b
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 259
    .line 260
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 261
    .line 262
    invoke-direct {v0, v7, v9, v6}, Lcom/google/android/gms/internal/ads/zzcp;->zzl([SII)[S

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 267
    .line 268
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 269
    .line 270
    move v9, v6

    .line 271
    move-object v13, v5

    .line 272
    move v14, v15

    .line 273
    move v7, v15

    .line 274
    move-object v15, v5

    .line 275
    invoke-static/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzcp;->zzj(II[SI[SI[SI)V

    .line 276
    .line 277
    .line 278
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 279
    .line 280
    add-int/2addr v5, v6

    .line 281
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 282
    .line 283
    add-int v5, v21, v6

    .line 284
    .line 285
    add-int v15, v7, v5

    .line 286
    .line 287
    move-wide/from16 v19, v3

    .line 288
    .line 289
    goto :goto_d

    .line 290
    :cond_10
    move/from16 v21, v7

    .line 291
    .line 292
    move v7, v15

    .line 293
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzj:[S

    .line 294
    .line 295
    sub-double/2addr v11, v3

    .line 296
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 297
    .line 298
    cmpg-double v5, v3, v5

    .line 299
    .line 300
    if-gez v5, :cond_11

    .line 301
    .line 302
    mul-double/2addr v13, v3

    .line 303
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzw:D

    .line 304
    .line 305
    div-double/2addr v13, v11

    .line 306
    add-double/2addr v13, v5

    .line 307
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    .line 308
    .line 309
    .line 310
    move-result-wide v5

    .line 311
    long-to-int v5, v5

    .line 312
    int-to-double v11, v5

    .line 313
    sub-double/2addr v13, v11

    .line 314
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzw:D

    .line 315
    .line 316
    move-wide/from16 v19, v3

    .line 317
    .line 318
    goto :goto_c

    .line 319
    :cond_11
    add-double v5, v3, v3

    .line 320
    .line 321
    add-double v5, v5, v19

    .line 322
    .line 323
    move-wide/from16 v19, v3

    .line 324
    .line 325
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzw:D

    .line 326
    .line 327
    mul-double/2addr v13, v5

    .line 328
    div-double/2addr v13, v11

    .line 329
    add-double/2addr v13, v3

    .line 330
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    .line 331
    .line 332
    .line 333
    move-result-wide v3

    .line 334
    long-to-int v3, v3

    .line 335
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzr:I

    .line 336
    .line 337
    int-to-double v3, v3

    .line 338
    sub-double/2addr v13, v3

    .line 339
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzw:D

    .line 340
    .line 341
    move/from16 v5, v21

    .line 342
    .line 343
    :goto_c
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 344
    .line 345
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 346
    .line 347
    add-int v6, v21, v5

    .line 348
    .line 349
    invoke-direct {v0, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzcp;->zzl([SII)[S

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 354
    .line 355
    mul-int v4, v7, v10

    .line 356
    .line 357
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 358
    .line 359
    mul-int/2addr v9, v10

    .line 360
    mul-int v11, v21, v10

    .line 361
    .line 362
    invoke-static {v15, v4, v3, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    .line 364
    .line 365
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 366
    .line 367
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 368
    .line 369
    add-int v12, v3, v21

    .line 370
    .line 371
    move v9, v5

    .line 372
    move-object v13, v15

    .line 373
    move/from16 v14, v16

    .line 374
    .line 375
    move/from16 v16, v7

    .line 376
    .line 377
    invoke-static/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzcp;->zzj(II[SI[SI[SI)V

    .line 378
    .line 379
    .line 380
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 381
    .line 382
    add-int/2addr v3, v6

    .line 383
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 384
    .line 385
    add-int v15, v7, v5

    .line 386
    .line 387
    :goto_d
    add-int v3, v15, v8

    .line 388
    .line 389
    if-le v3, v1, :cond_1a

    .line 390
    .line 391
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 392
    .line 393
    sub-int/2addr v1, v15

    .line 394
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzj:[S

    .line 395
    .line 396
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:I

    .line 397
    .line 398
    mul-int/2addr v15, v4

    .line 399
    mul-int/2addr v4, v1

    .line 400
    const/4 v5, 0x0

    .line 401
    invoke-static {v3, v15, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    .line 403
    .line 404
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 405
    .line 406
    :goto_e
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcp;->zze:F

    .line 407
    .line 408
    mul-float/2addr v1, v2

    .line 409
    const/high16 v2, 0x3f800000    # 1.0f

    .line 410
    .line 411
    cmpl-float v2, v1, v2

    .line 412
    .line 413
    if-eqz v2, :cond_19

    .line 414
    .line 415
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 416
    .line 417
    move/from16 v3, v18

    .line 418
    .line 419
    if-ne v2, v3, :cond_12

    .line 420
    .line 421
    goto/16 :goto_14

    .line 422
    .line 423
    :cond_12
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzcp;->zza:I

    .line 424
    .line 425
    int-to-float v4, v2

    .line 426
    div-float/2addr v4, v1

    .line 427
    int-to-long v1, v2

    .line 428
    float-to-long v4, v4

    .line 429
    :goto_f
    const-wide/16 v6, 0x0

    .line 430
    .line 431
    cmp-long v8, v4, v6

    .line 432
    .line 433
    if-eqz v8, :cond_13

    .line 434
    .line 435
    cmp-long v8, v1, v6

    .line 436
    .line 437
    if-eqz v8, :cond_13

    .line 438
    .line 439
    const-wide/16 v8, 0x2

    .line 440
    .line 441
    rem-long v10, v4, v8

    .line 442
    .line 443
    cmp-long v10, v10, v6

    .line 444
    .line 445
    if-nez v10, :cond_13

    .line 446
    .line 447
    rem-long v10, v1, v8

    .line 448
    .line 449
    cmp-long v6, v10, v6

    .line 450
    .line 451
    if-nez v6, :cond_13

    .line 452
    .line 453
    div-long/2addr v4, v8

    .line 454
    div-long/2addr v1, v8

    .line 455
    goto :goto_f

    .line 456
    :cond_13
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 457
    .line 458
    sub-int/2addr v6, v3

    .line 459
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzn:[S

    .line 460
    .line 461
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzo:I

    .line 462
    .line 463
    invoke-direct {v0, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzcp;->zzl([SII)[S

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzn:[S

    .line 468
    .line 469
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 470
    .line 471
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:I

    .line 472
    .line 473
    mul-int v10, v3, v9

    .line 474
    .line 475
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzo:I

    .line 476
    .line 477
    mul-int/2addr v11, v9

    .line 478
    mul-int v12, v6, v9

    .line 479
    .line 480
    invoke-static {v8, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    .line 482
    .line 483
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 484
    .line 485
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzo:I

    .line 486
    .line 487
    add-int/2addr v3, v6

    .line 488
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzo:I

    .line 489
    .line 490
    const/4 v3, 0x0

    .line 491
    :goto_10
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzo:I

    .line 492
    .line 493
    add-int/lit8 v7, v6, -0x1

    .line 494
    .line 495
    if-ge v3, v7, :cond_18

    .line 496
    .line 497
    :goto_11
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzp:I

    .line 498
    .line 499
    const/4 v7, 0x1

    .line 500
    add-int/2addr v6, v7

    .line 501
    int-to-long v10, v6

    .line 502
    mul-long v12, v10, v4

    .line 503
    .line 504
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzq:I

    .line 505
    .line 506
    int-to-long v14, v8

    .line 507
    mul-long v16, v14, v1

    .line 508
    .line 509
    cmp-long v8, v12, v16

    .line 510
    .line 511
    if-lez v8, :cond_15

    .line 512
    .line 513
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 514
    .line 515
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 516
    .line 517
    invoke-direct {v0, v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzcp;->zzl([SII)[S

    .line 518
    .line 519
    .line 520
    move-result-object v6

    .line 521
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 522
    .line 523
    const/4 v6, 0x0

    .line 524
    :goto_12
    if-ge v6, v9, :cond_14

    .line 525
    .line 526
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 527
    .line 528
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 529
    .line 530
    mul-int/2addr v8, v9

    .line 531
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzn:[S

    .line 532
    .line 533
    mul-int v11, v3, v9

    .line 534
    .line 535
    add-int/2addr v11, v6

    .line 536
    aget-short v12, v10, v11

    .line 537
    .line 538
    add-int/2addr v11, v9

    .line 539
    aget-short v10, v10, v11

    .line 540
    .line 541
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzq:I

    .line 542
    .line 543
    int-to-long v13, v11

    .line 544
    mul-long/2addr v13, v1

    .line 545
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzp:I

    .line 546
    .line 547
    move-wide/from16 v18, v1

    .line 548
    .line 549
    int-to-long v1, v11

    .line 550
    mul-long/2addr v1, v4

    .line 551
    const/4 v15, 0x1

    .line 552
    add-int/2addr v11, v15

    .line 553
    move v15, v6

    .line 554
    move-object/from16 v16, v7

    .line 555
    .line 556
    int-to-long v6, v11

    .line 557
    mul-long/2addr v6, v4

    .line 558
    int-to-long v11, v12

    .line 559
    move/from16 v20, v9

    .line 560
    .line 561
    int-to-long v9, v10

    .line 562
    sub-long v1, v6, v1

    .line 563
    .line 564
    sub-long/2addr v6, v13

    .line 565
    sub-long v13, v1, v6

    .line 566
    .line 567
    mul-long/2addr v6, v11

    .line 568
    mul-long/2addr v13, v9

    .line 569
    add-long/2addr v6, v13

    .line 570
    div-long/2addr v6, v1

    .line 571
    long-to-int v1, v6

    .line 572
    add-int/2addr v8, v15

    .line 573
    int-to-short v1, v1

    .line 574
    aput-short v1, v16, v8

    .line 575
    .line 576
    add-int/lit8 v6, v15, 0x1

    .line 577
    .line 578
    move-wide/from16 v1, v18

    .line 579
    .line 580
    move/from16 v9, v20

    .line 581
    .line 582
    goto :goto_12

    .line 583
    :cond_14
    move-wide/from16 v18, v1

    .line 584
    .line 585
    move/from16 v20, v9

    .line 586
    .line 587
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzq:I

    .line 588
    .line 589
    const/4 v9, 0x1

    .line 590
    add-int/2addr v1, v9

    .line 591
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzq:I

    .line 592
    .line 593
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 594
    .line 595
    add-int/2addr v1, v9

    .line 596
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 597
    .line 598
    move-wide/from16 v1, v18

    .line 599
    .line 600
    move/from16 v9, v20

    .line 601
    .line 602
    goto :goto_11

    .line 603
    :cond_15
    move-wide/from16 v18, v1

    .line 604
    .line 605
    move/from16 v20, v9

    .line 606
    .line 607
    move v9, v7

    .line 608
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzp:I

    .line 609
    .line 610
    cmp-long v1, v10, v18

    .line 611
    .line 612
    const/4 v10, 0x0

    .line 613
    if-nez v1, :cond_17

    .line 614
    .line 615
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzp:I

    .line 616
    .line 617
    cmp-long v1, v14, v4

    .line 618
    .line 619
    if-nez v1, :cond_16

    .line 620
    .line 621
    move v7, v9

    .line 622
    goto :goto_13

    .line 623
    :cond_16
    move v7, v10

    .line 624
    :goto_13
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 625
    .line 626
    .line 627
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzq:I

    .line 628
    .line 629
    :cond_17
    add-int/lit8 v3, v3, 0x1

    .line 630
    .line 631
    move-wide/from16 v1, v18

    .line 632
    .line 633
    move/from16 v9, v20

    .line 634
    .line 635
    goto/16 :goto_10

    .line 636
    .line 637
    :cond_18
    move/from16 v20, v9

    .line 638
    .line 639
    const/4 v10, 0x0

    .line 640
    if-eqz v7, :cond_19

    .line 641
    .line 642
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzn:[S

    .line 643
    .line 644
    mul-int v9, v7, v20

    .line 645
    .line 646
    sub-int/2addr v6, v7

    .line 647
    mul-int v6, v6, v20

    .line 648
    .line 649
    invoke-static {v1, v9, v1, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 650
    .line 651
    .line 652
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzo:I

    .line 653
    .line 654
    sub-int/2addr v1, v7

    .line 655
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzcp;->zzo:I

    .line 656
    .line 657
    :cond_19
    :goto_14
    return-void

    .line 658
    :cond_1a
    move/from16 v5, v18

    .line 659
    .line 660
    move-wide/from16 v3, v19

    .line 661
    .line 662
    const/4 v6, 0x0

    .line 663
    const/4 v7, 0x1

    .line 664
    goto/16 :goto_2
.end method

.method private final zzl([SII)[S
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:I

    .line 3
    .line 4
    div-int/2addr v0, v1

    .line 5
    add-int/2addr p2, p3

    .line 6
    if-gt p2, v0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 10
    .line 11
    div-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    add-int/2addr v0, p3

    .line 14
    mul-int/2addr v0, v1

    .line 15
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:I

    .line 14
    .line 15
    mul-int/2addr v0, v1

    .line 16
    add-int/2addr v0, v0

    .line 17
    return v0
.end method

.method public final zzb()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    add-int/2addr v0, v0

    .line 7
    return v0
.end method

.method public final zzc()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzo:I

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzp:I

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzq:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzr:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzs:I

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzt:I

    .line 17
    .line 18
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzu:I

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzv:I

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzw:D

    .line 25
    .line 26
    return-void
.end method

.method public final zzd(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:I

    .line 17
    .line 18
    div-int/2addr v0, v2

    .line 19
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 20
    .line 21
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    mul-int v3, v0, v2

    .line 26
    .line 27
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 28
    .line 29
    invoke-virtual {p1, v4, v1, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 30
    .line 31
    .line 32
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 33
    .line 34
    sub-int/2addr p1, v0

    .line 35
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzl:[S

    .line 38
    .line 39
    mul-int/2addr p1, v2

    .line 40
    invoke-static {v0, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final zze()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzr:I

    .line 4
    .line 5
    sub-int v2, v0, v1

    .line 6
    .line 7
    int-to-double v3, v1

    .line 8
    int-to-double v1, v2

    .line 9
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 10
    .line 11
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzc:F

    .line 12
    .line 13
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzd:F

    .line 14
    .line 15
    div-float/2addr v6, v7

    .line 16
    float-to-double v8, v6

    .line 17
    div-double/2addr v1, v8

    .line 18
    add-double/2addr v1, v3

    .line 19
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzw:D

    .line 20
    .line 21
    add-double/2addr v1, v3

    .line 22
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzo:I

    .line 23
    .line 24
    int-to-double v3, v3

    .line 25
    add-double/2addr v1, v3

    .line 26
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->zze:F

    .line 27
    .line 28
    mul-float/2addr v3, v7

    .line 29
    float-to-double v3, v3

    .line 30
    div-double/2addr v1, v3

    .line 31
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 32
    .line 33
    add-double/2addr v1, v3

    .line 34
    double-to-int v1, v1

    .line 35
    add-int/2addr v5, v1

    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzw:D

    .line 39
    .line 40
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzh:I

    .line 41
    .line 42
    add-int/2addr v1, v1

    .line 43
    add-int v2, v0, v1

    .line 44
    .line 45
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzj:[S

    .line 46
    .line 47
    invoke-direct {p0, v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzcp;->zzl([SII)[S

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzj:[S

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    move v3, v2

    .line 55
    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:I

    .line 56
    .line 57
    mul-int v6, v1, v4

    .line 58
    .line 59
    if-ge v3, v6, :cond_0

    .line 60
    .line 61
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzj:[S

    .line 62
    .line 63
    mul-int/2addr v4, v0

    .line 64
    add-int/2addr v4, v3

    .line 65
    aput-short v2, v6, v4

    .line 66
    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 71
    .line 72
    add-int/2addr v0, v1

    .line 73
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcp;->zzk()V

    .line 76
    .line 77
    .line 78
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 79
    .line 80
    if-le v0, v5, :cond_1

    .line 81
    .line 82
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzm:I

    .line 87
    .line 88
    :cond_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 89
    .line 90
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzr:I

    .line 91
    .line 92
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzo:I

    .line 93
    .line 94
    return-void
.end method

.method public final zzf(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:I

    .line 6
    .line 7
    div-int/2addr v0, v1

    .line 8
    mul-int v2, v0, v1

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzj:[S

    .line 11
    .line 12
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 13
    .line 14
    invoke-direct {p0, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzcp;->zzl([SII)[S

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzj:[S

    .line 19
    .line 20
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 21
    .line 22
    mul-int/2addr v4, v1

    .line 23
    add-int/2addr v2, v2

    .line 24
    div-int/lit8 v2, v2, 0x2

    .line 25
    .line 26
    invoke-virtual {p1, v3, v4, v2}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 27
    .line 28
    .line 29
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 30
    .line 31
    add-int/2addr p1, v0

    .line 32
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzk:I

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcp;->zzk()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
