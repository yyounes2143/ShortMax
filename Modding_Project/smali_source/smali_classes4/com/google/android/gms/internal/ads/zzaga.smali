.class public final Lcom/google/android/gms/internal/ads/zzaga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadv;


# instance fields
.field private final zza:[B

.field private final zzb:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaeb;

.field private zzd:Lcom/google/android/gms/internal/ads/zzady;

.field private zze:Lcom/google/android/gms/internal/ads/zzafb;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzav;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/ads/zzaeg;

.field private zzi:I

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/ads/zzafz;

.field private zzl:I

.field private zzm:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zza:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzb:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaeb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzc:Lcom/google/android/gms/internal/ads/zzaeb;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzen;Z)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x10

    .line 15
    .line 16
    if-gt v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 22
    .line 23
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzj:I

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzc:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 26
    .line 27
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzaeg;ILcom/google/android/gms/internal/ads/zzaeb;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 34
    .line 35
    .line 36
    iget-wide p1, v3, Lcom/google/android/gms/internal/ads/zzaeb;->zza:J

    .line 37
    .line 38
    return-wide p1

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-eqz p2, :cond_5

    .line 43
    .line 44
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzi:I

    .line 49
    .line 50
    sub-int/2addr p2, v1

    .line 51
    if-gt v0, p2, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 54
    .line 55
    .line 56
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 57
    .line 58
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzj:I

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzc:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 61
    .line 62
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzaeg;ILcom/google/android/gms/internal/ads/zzaeb;)Z

    .line 63
    .line 64
    .line 65
    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_2

    .line 67
    :catch_0
    const/4 p2, 0x0

    .line 68
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-le v1, v2, :cond_2

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_2
    if-eqz p2, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzc:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 85
    .line 86
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzaeb;->zza:J

    .line 87
    .line 88
    return-wide p1

    .line 89
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 101
    .line 102
    .line 103
    :goto_4
    const-wide/16 p1, -0x1

    .line 104
    .line 105
    return-wide p1
.end method

.method private final zzg()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzm:J

    .line 2
    .line 3
    const-wide/32 v2, 0xf4240

    .line 4
    .line 5
    .line 6
    mul-long/2addr v0, v2

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 8
    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 10
    .line 11
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaeg;->zze:I

    .line 12
    .line 13
    int-to-long v2, v2

    .line 14
    div-long v5, v0, v2

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaga;->zze:Lcom/google/android/gms/internal/ads/zzafb;

    .line 17
    .line 18
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzl:I

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v10, 0x0

    .line 22
    const/4 v7, 0x1

    .line 23
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I
    .locals 18
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
    const/4 v2, 0x2

    .line 6
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz v3, :cond_18

    .line 11
    .line 12
    if-eq v3, v4, :cond_17

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x3

    .line 16
    const/4 v8, 0x4

    .line 17
    if-eq v3, v2, :cond_15

    .line 18
    .line 19
    if-eq v3, v7, :cond_e

    .line 20
    .line 21
    const-wide/16 v9, -0x1

    .line 22
    .line 23
    if-eq v3, v8, :cond_a

    .line 24
    .line 25
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zze:Lcom/google/android/gms/internal/ads/zzafb;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzk:Lcom/google/android/gms/internal/ads/zzafz;

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzadg;->zze()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    move-object/from16 v6, p2

    .line 46
    .line 47
    invoke-virtual {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zzadg;->zza(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_0
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzm:J

    .line 54
    .line 55
    cmp-long v3, v6, v9

    .line 56
    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaeg;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzm:J

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzb:Lcom/google/android/gms/internal/ads/zzen;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    const v6, 0x8000

    .line 74
    .line 75
    .line 76
    if-ge v3, v6, :cond_4

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    sub-int/2addr v6, v3

    .line 83
    invoke-interface {v1, v7, v3, v6}, Lcom/google/android/gms/internal/ads/zzadw;->zza([BII)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/4 v6, -0x1

    .line 88
    if-ne v1, v6, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    move v4, v5

    .line 92
    :goto_0
    if-nez v4, :cond_3

    .line 93
    .line 94
    add-int/2addr v3, v1

    .line 95
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzK(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_5

    .line 104
    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaga;->zzg()V

    .line 106
    .line 107
    .line 108
    move v5, v6

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    move v4, v5

    .line 111
    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzl:I

    .line 116
    .line 117
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzi:I

    .line 118
    .line 119
    if-ge v3, v6, :cond_6

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    sub-int/2addr v6, v3

    .line 126
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 131
    .line 132
    .line 133
    :cond_6
    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzaga;->zza(Lcom/google/android/gms/internal/ads/zzen;Z)J

    .line 134
    .line 135
    .line 136
    move-result-wide v3

    .line 137
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    sub-int/2addr v6, v1

    .line 142
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zze:Lcom/google/android/gms/internal/ads/zzafb;

    .line 146
    .line 147
    invoke-interface {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 148
    .line 149
    .line 150
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzl:I

    .line 151
    .line 152
    add-int/2addr v1, v6

    .line 153
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzl:I

    .line 154
    .line 155
    cmp-long v1, v3, v9

    .line 156
    .line 157
    if-eqz v1, :cond_7

    .line 158
    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaga;->zzg()V

    .line 160
    .line 161
    .line 162
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzl:I

    .line 163
    .line 164
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzm:J

    .line 165
    .line 166
    :cond_7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    array-length v1, v1

    .line 171
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    sub-int/2addr v1, v3

    .line 176
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    const/16 v4, 0x10

    .line 181
    .line 182
    if-ge v3, v4, :cond_9

    .line 183
    .line 184
    if-lt v1, v4, :cond_8

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-static {v3, v4, v6, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzK(I)V

    .line 210
    .line 211
    .line 212
    :cond_9
    :goto_2
    return v5

    .line 213
    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    .line 214
    .line 215
    .line 216
    new-instance v3, Lcom/google/android/gms/internal/ads/zzen;

    .line 217
    .line 218
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzh([BII)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    shr-int/lit8 v2, v3, 0x2

    .line 233
    .line 234
    const/16 v4, 0x3ffe

    .line 235
    .line 236
    if-ne v2, v4, :cond_d

    .line 237
    .line 238
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    .line 239
    .line 240
    .line 241
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzj:I

    .line 242
    .line 243
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzd:Lcom/google/android/gms/internal/ads/zzady;

    .line 244
    .line 245
    sget-object v3, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 246
    .line 247
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    .line 248
    .line 249
    .line 250
    move-result-wide v14

    .line 251
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzd()J

    .line 252
    .line 253
    .line 254
    move-result-wide v16

    .line 255
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 256
    .line 257
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzaeg;->zzk:Lcom/google/android/gms/internal/ads/zzaef;

    .line 261
    .line 262
    if-eqz v1, :cond_b

    .line 263
    .line 264
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaef;->zza:[J

    .line 265
    .line 266
    array-length v1, v1

    .line 267
    if-lez v1, :cond_b

    .line 268
    .line 269
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaee;

    .line 270
    .line 271
    invoke-direct {v1, v12, v14, v15}, Lcom/google/android/gms/internal/ads/zzaee;-><init>(Lcom/google/android/gms/internal/ads/zzaeg;J)V

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_b
    cmp-long v1, v16, v9

    .line 276
    .line 277
    const-wide/16 v3, 0x0

    .line 278
    .line 279
    if-eqz v1, :cond_c

    .line 280
    .line 281
    iget-wide v6, v12, Lcom/google/android/gms/internal/ads/zzaeg;->zzj:J

    .line 282
    .line 283
    cmp-long v1, v6, v3

    .line 284
    .line 285
    if-lez v1, :cond_c

    .line 286
    .line 287
    new-instance v1, Lcom/google/android/gms/internal/ads/zzafz;

    .line 288
    .line 289
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzj:I

    .line 290
    .line 291
    move-object v11, v1

    .line 292
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(Lcom/google/android/gms/internal/ads/zzaeg;IJJ)V

    .line 293
    .line 294
    .line 295
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzk:Lcom/google/android/gms/internal/ads/zzafz;

    .line 296
    .line 297
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzadg;->zzb()Lcom/google/android/gms/internal/ads/zzaeu;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    goto :goto_3

    .line 302
    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaet;

    .line 303
    .line 304
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaeg;->zza()J

    .line 305
    .line 306
    .line 307
    move-result-wide v6

    .line 308
    invoke-direct {v1, v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzaet;-><init>(JJ)V

    .line 309
    .line 310
    .line 311
    :goto_3
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    .line 312
    .line 313
    .line 314
    const/4 v1, 0x5

    .line 315
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    .line 316
    .line 317
    return v5

    .line 318
    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    .line 319
    .line 320
    .line 321
    const-string v1, "First frame does not start with sync code."

    .line 322
    .line 323
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    throw v1

    .line 328
    :cond_e
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 329
    .line 330
    :cond_f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    .line 331
    .line 332
    .line 333
    new-instance v3, Lcom/google/android/gms/internal/ads/zzem;

    .line 334
    .line 335
    new-array v4, v8, [B

    .line 336
    .line 337
    invoke-direct {v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    .line 338
    .line 339
    .line 340
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzem;->zza:[B

    .line 341
    .line 342
    invoke-interface {v1, v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzadw;->zzh([BII)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    const/4 v6, 0x7

    .line 350
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    const/16 v9, 0x18

    .line 355
    .line 356
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    add-int/2addr v3, v8

    .line 361
    const/4 v9, 0x6

    .line 362
    if-nez v6, :cond_10

    .line 363
    .line 364
    const/16 v2, 0x26

    .line 365
    .line 366
    new-array v3, v2, [B

    .line 367
    .line 368
    invoke-interface {v1, v3, v5, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    .line 369
    .line 370
    .line 371
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaeg;

    .line 372
    .line 373
    invoke-direct {v2, v3, v8}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>([BI)V

    .line 374
    .line 375
    .line 376
    goto :goto_4

    .line 377
    :cond_10
    if-eqz v2, :cond_14

    .line 378
    .line 379
    if-ne v6, v7, :cond_11

    .line 380
    .line 381
    new-instance v6, Lcom/google/android/gms/internal/ads/zzen;

    .line 382
    .line 383
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    invoke-interface {v1, v10, v5, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    .line 391
    .line 392
    .line 393
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaed;->zzb(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzaef;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaeg;->zzf(Lcom/google/android/gms/internal/ads/zzaef;)Lcom/google/android/gms/internal/ads/zzaeg;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    goto :goto_4

    .line 402
    :cond_11
    if-ne v6, v8, :cond_12

    .line 403
    .line 404
    new-instance v6, Lcom/google/android/gms/internal/ads/zzen;

    .line 405
    .line 406
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 410
    .line 411
    .line 412
    move-result-object v10

    .line 413
    invoke-interface {v1, v10, v5, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 417
    .line 418
    .line 419
    invoke-static {v6, v5, v5}, Lcom/google/android/gms/internal/ads/zzafh;->zzc(Lcom/google/android/gms/internal/ads/zzen;ZZ)Lcom/google/android/gms/internal/ads/zzafe;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzafe;->zza:[Ljava/lang/String;

    .line 424
    .line 425
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaeg;->zzg(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaeg;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    goto :goto_4

    .line 434
    :cond_12
    if-ne v6, v9, :cond_13

    .line 435
    .line 436
    new-instance v6, Lcom/google/android/gms/internal/ads/zzen;

    .line 437
    .line 438
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 442
    .line 443
    .line 444
    move-result-object v10

    .line 445
    invoke-interface {v1, v10, v5, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 449
    .line 450
    .line 451
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzagt;->zzb(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzagt;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaeg;->zze(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaeg;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    goto :goto_4

    .line 464
    :cond_13
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 465
    .line 466
    .line 467
    :goto_4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 468
    .line 469
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 470
    .line 471
    if-eqz v4, :cond_f

    .line 472
    .line 473
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzaeg;->zzc:I

    .line 477
    .line 478
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzi:I

    .line 483
    .line 484
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 485
    .line 486
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zza:[B

    .line 487
    .line 488
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzg:Lcom/google/android/gms/internal/ads/zzav;

    .line 489
    .line 490
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc([BLcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzz;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zze:Lcom/google/android/gms/internal/ads/zzafb;

    .line 495
    .line 496
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    const-string v3, "audio/flac"

    .line 501
    .line 502
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 510
    .line 511
    .line 512
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zze:Lcom/google/android/gms/internal/ads/zzafb;

    .line 513
    .line 514
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 515
    .line 516
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaeg;->zza()J

    .line 517
    .line 518
    .line 519
    move-result-wide v2

    .line 520
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzafb;->zzl(J)V

    .line 521
    .line 522
    .line 523
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    .line 524
    .line 525
    return v5

    .line 526
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 527
    .line 528
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 529
    .line 530
    .line 531
    throw v1

    .line 532
    :cond_15
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    .line 533
    .line 534
    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    invoke-interface {v1, v3, v5, v8}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 545
    .line 546
    .line 547
    move-result-wide v1

    .line 548
    const-wide/32 v3, 0x664c6143

    .line 549
    .line 550
    .line 551
    cmp-long v1, v1, v3

    .line 552
    .line 553
    if-nez v1, :cond_16

    .line 554
    .line 555
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    .line 556
    .line 557
    return v5

    .line 558
    :cond_16
    const-string v1, "Failed to read FLAC stream marker."

    .line 559
    .line 560
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    throw v1

    .line 565
    :cond_17
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaga;->zza:[B

    .line 566
    .line 567
    const/16 v4, 0x2a

    .line 568
    .line 569
    invoke-interface {v1, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzadw;->zzh([BII)V

    .line 570
    .line 571
    .line 572
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    .line 573
    .line 574
    .line 575
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    .line 576
    .line 577
    return v5

    .line 578
    :cond_18
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    .line 579
    .line 580
    .line 581
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zze()J

    .line 582
    .line 583
    .line 584
    move-result-wide v2

    .line 585
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzaed;->zza(Lcom/google/android/gms/internal/ads/zzadw;Z)Lcom/google/android/gms/internal/ads/zzav;

    .line 586
    .line 587
    .line 588
    move-result-object v6

    .line 589
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zze()J

    .line 590
    .line 591
    .line 592
    move-result-wide v7

    .line 593
    sub-long/2addr v7, v2

    .line 594
    long-to-int v2, v7

    .line 595
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 596
    .line 597
    .line 598
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzg:Lcom/google/android/gms/internal/ads/zzav;

    .line 599
    .line 600
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    .line 601
    .line 602
    return v5
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
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzd:Lcom/google/android/gms/internal/ads/zzady;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaga;->zze:Lcom/google/android/gms/internal/ads/zzafb;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzady;->zzG()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zzf(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzk:Lcom/google/android/gms/internal/ads/zzafz;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzadg;->zzd(J)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const-wide/16 v0, -0x1

    .line 24
    .line 25
    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzm:J

    .line 26
    .line 27
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzl:I

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzb:Lcom/google/android/gms/internal/ads/zzen;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->zzI(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadw;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaed;->zza(Lcom/google/android/gms/internal/ads/zzadw;Z)Lcom/google/android/gms/internal/ads/zzav;

    .line 3
    .line 4
    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzen;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/ads/zzadl;

    .line 16
    .line 17
    invoke-virtual {p1, v3, v0, v2, v0}, Lcom/google/android/gms/internal/ads/zzadl;->zzm([BIIZ)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    const-wide/32 v3, 0x664c6143

    .line 25
    .line 26
    .line 27
    cmp-long p1, v1, v3

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_0
    return v0
.end method
