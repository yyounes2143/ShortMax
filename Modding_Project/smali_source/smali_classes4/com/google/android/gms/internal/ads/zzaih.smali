.class final Lcom/google/android/gms/internal/ads/zzaih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaig;


# instance fields
.field private final zza:[J

.field private final zzb:[J

.field private final zzc:J

.field private final zzd:J

.field private final zze:I


# direct methods
.method private constructor <init>([J[JJJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaih;->zza:[J

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaih;->zzb:[J

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaih;->zzc:J

    .line 9
    .line 10
    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzaih;->zzd:J

    .line 11
    .line 12
    iput p9, p0, Lcom/google/android/gms/internal/ads/zzaih;->zze:I

    .line 13
    .line 14
    return-void
.end method

.method public static zzb(JJLcom/google/android/gms/internal/ads/zzaen;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzaih;
    .locals 24
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    const/4 v4, 0x6

    .line 8
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzaen;->zzc:I

    .line 16
    .line 17
    int-to-long v5, v5

    .line 18
    int-to-long v7, v4

    .line 19
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-gtz v4, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget v9, v2, Lcom/google/android/gms/internal/ads/zzaen;->zzd:I

    .line 27
    .line 28
    iget v10, v2, Lcom/google/android/gms/internal/ads/zzaen;->zzg:I

    .line 29
    .line 30
    int-to-long v10, v10

    .line 31
    int-to-long v12, v4

    .line 32
    mul-long/2addr v12, v10

    .line 33
    const-wide/16 v10, -0x1

    .line 34
    .line 35
    add-long/2addr v12, v10

    .line 36
    invoke-static {v12, v13, v9}, Lcom/google/android/gms/internal/ads/zzex;->zzt(JI)J

    .line 37
    .line 38
    .line 39
    move-result-wide v17

    .line 40
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 49
    .line 50
    .line 51
    move-result v12

    .line 52
    const/4 v13, 0x2

    .line 53
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 54
    .line 55
    .line 56
    iget v14, v2, Lcom/google/android/gms/internal/ads/zzaen;->zzc:I

    .line 57
    .line 58
    int-to-long v14, v14

    .line 59
    add-long v14, p2, v14

    .line 60
    .line 61
    new-array v10, v4, [J

    .line 62
    .line 63
    new-array v11, v4, [J

    .line 64
    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    move/from16 v13, v16

    .line 68
    .line 69
    :goto_0
    if-ge v13, v4, :cond_5

    .line 70
    .line 71
    int-to-long v2, v13

    .line 72
    mul-long v2, v2, v17

    .line 73
    .line 74
    int-to-long v0, v4

    .line 75
    div-long/2addr v2, v0

    .line 76
    aput-wide v2, v10, v13

    .line 77
    .line 78
    aput-wide v14, v11, v13

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    if-eq v12, v0, :cond_4

    .line 82
    .line 83
    const/4 v0, 0x2

    .line 84
    if-eq v12, v0, :cond_3

    .line 85
    .line 86
    const/4 v1, 0x3

    .line 87
    if-eq v12, v1, :cond_2

    .line 88
    .line 89
    const/4 v1, 0x4

    .line 90
    if-eq v12, v1, :cond_1

    .line 91
    .line 92
    :goto_1
    const/4 v0, 0x0

    .line 93
    return-object v0

    .line 94
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzen;->zzo()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    const/4 v0, 0x2

    .line 110
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    :goto_2
    int-to-long v2, v9

    .line 115
    int-to-long v0, v1

    .line 116
    mul-long/2addr v0, v2

    .line 117
    add-long/2addr v14, v0

    .line 118
    add-int/lit8 v13, v13, 0x1

    .line 119
    .line 120
    move-wide/from16 v0, p0

    .line 121
    .line 122
    move-object/from16 v2, p4

    .line 123
    .line 124
    move-object/from16 v3, p5

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_5
    add-long v0, p2, v5

    .line 128
    .line 129
    add-long/2addr v7, v0

    .line 130
    const-wide/16 v4, -0x1

    .line 131
    .line 132
    move-wide/from16 v2, p0

    .line 133
    .line 134
    cmp-long v4, v2, v4

    .line 135
    .line 136
    const-string v5, "VbriSeeker"

    .line 137
    .line 138
    const-string v6, ", "

    .line 139
    .line 140
    if-eqz v4, :cond_6

    .line 141
    .line 142
    cmp-long v4, v2, v7

    .line 143
    .line 144
    if-eqz v4, :cond_6

    .line 145
    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v9, "VBRI data size mismatch: "

    .line 152
    .line 153
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    cmp-long v2, v7, v14

    .line 173
    .line 174
    if-eqz v2, :cond_7

    .line 175
    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v3, "VBRI bytes and ToC mismatch (using max): "

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v3, "\nSeeking will be inaccurate."

    .line 196
    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 208
    .line 209
    .line 210
    move-result-wide v2

    .line 211
    move-wide/from16 v21, v2

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_7
    move-wide/from16 v21, v7

    .line 215
    .line 216
    :goto_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaih;

    .line 217
    .line 218
    move-object/from16 v3, p4

    .line 219
    .line 220
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaen;->zzf:I

    .line 221
    .line 222
    move-object v14, v2

    .line 223
    move-object v15, v10

    .line 224
    move-object/from16 v16, v11

    .line 225
    .line 226
    move-wide/from16 v19, v0

    .line 227
    .line 228
    move/from16 v23, v3

    .line 229
    .line 230
    invoke-direct/range {v14 .. v23}, Lcom/google/android/gms/internal/ads/zzaih;-><init>([J[JJJJI)V

    .line 231
    .line 232
    .line 233
    return-object v2
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaih;->zzc:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaih;->zze:I

    .line 2
    .line 3
    return v0
.end method

.method public final zzd()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaih;->zzd:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zze(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaih;->zzb:[J

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaih;->zza:[J

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, p1, p2, v2, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzd([JJZZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget-wide p1, v1, p1

    .line 11
    .line 12
    return-wide p1
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzaes;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaih;->zza:[J

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzd([JJZZ)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaev;

    .line 9
    .line 10
    aget-wide v4, v0, v2

    .line 11
    .line 12
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaih;->zzb:[J

    .line 13
    .line 14
    aget-wide v7, v6, v2

    .line 15
    .line 16
    invoke-direct {v3, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzaev;-><init>(JJ)V

    .line 17
    .line 18
    .line 19
    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzaev;->zzb:J

    .line 20
    .line 21
    cmp-long p1, v4, p1

    .line 22
    .line 23
    if-gez p1, :cond_1

    .line 24
    .line 25
    array-length p1, v0

    .line 26
    add-int/lit8 p1, p1, -0x1

    .line 27
    .line 28
    if-ne v2, p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    add-int/2addr v2, v1

    .line 32
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaev;

    .line 33
    .line 34
    aget-wide v4, v0, v2

    .line 35
    .line 36
    aget-wide v0, v6, v2

    .line 37
    .line 38
    invoke-direct {p1, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzaev;-><init>(JJ)V

    .line 39
    .line 40
    .line 41
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaes;

    .line 42
    .line 43
    invoke-direct {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzaev;)V

    .line 44
    .line 45
    .line 46
    return-object p2

    .line 47
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaes;

    .line 48
    .line 49
    invoke-direct {p1, v3, v3}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzaev;)V

    .line 50
    .line 51
    .line 52
    return-object p1
.end method

.method public final zzh()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
