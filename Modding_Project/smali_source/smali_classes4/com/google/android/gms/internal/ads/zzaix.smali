.class public final Lcom/google/android/gms/internal/ads/zzaix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "OpusHead"

    .line 4
    .line 5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaix;->zzb:[B

    .line 12
    .line 13
    return-void
.end method

.method public static zza(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzfc;)Lcom/google/android/gms/internal/ads/zzav;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const v0, 0x68646c72    # 4.3148E24f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x6b657973

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x696c7374

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_7

    .line 24
    .line 25
    if-eqz v1, :cond_7

    .line 26
    .line 27
    if-eqz p0, :cond_7

    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaix;->zzi(Lcom/google/android/gms/internal/ads/zzen;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v3, 0x6d647461

    .line 36
    .line 37
    .line 38
    if-eq v0, v3, :cond_0

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 43
    .line 44
    const/16 v1, 0xc

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    new-array v3, v1, [Ljava/lang/String;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    move v5, v4

    .line 57
    :goto_0
    if-ge v5, v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    const/4 v7, 0x4

    .line 64
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v6, v6, -0x8

    .line 68
    .line 69
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    aput-object v6, v3, v5

    .line 76
    .line 77
    add-int/lit8 v5, v5, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 81
    .line 82
    const/16 v0, 0x8

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 85
    .line 86
    .line 87
    new-instance v5, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-le v6, v0, :cond_6

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    add-int/2addr v6, v7

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    add-int/lit8 v7, v7, -0x1

    .line 112
    .line 113
    if-ltz v7, :cond_4

    .line 114
    .line 115
    if-ge v7, v1, :cond_4

    .line 116
    .line 117
    aget-object v7, v3, v7

    .line 118
    .line 119
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-ge v8, v6, :cond_3

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    const v11, 0x64617461

    .line 134
    .line 135
    .line 136
    if-ne v10, v11, :cond_2

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    add-int/lit8 v9, v9, -0x10

    .line 147
    .line 148
    new-array v11, v9, [B

    .line 149
    .line 150
    invoke-virtual {p0, v11, v4, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 151
    .line 152
    .line 153
    new-instance v9, Lcom/google/android/gms/internal/ads/zzfa;

    .line 154
    .line 155
    invoke-direct {v9, v7, v11, v10, v8}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Ljava/lang/String;[BII)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_2
    add-int/2addr v8, v9

    .line 160
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_3
    move-object v9, v2

    .line 165
    :goto_3
    if-eqz v9, :cond_5

    .line 166
    .line 167
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v9, "Skipped metadata with unknown key index: "

    .line 177
    .line 178
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    const-string v8, "BoxParsers"

    .line 189
    .line 190
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_5
    :goto_4
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    if-nez p0, :cond_7

    .line 202
    .line 203
    new-instance p0, Lcom/google/android/gms/internal/ads/zzav;

    .line 204
    .line 205
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzav;-><init>(Ljava/util/List;)V

    .line 206
    .line 207
    .line 208
    return-object p0

    .line 209
    :cond_7
    :goto_5
    return-object v2
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfd;)Lcom/google/android/gms/internal/ads/zzav;
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzav;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzau;

    .line 13
    .line 14
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-lt v4, v1, :cond_15

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    add-int/2addr v7, v4

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const v9, 0x6d657461

    .line 42
    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    if-ne v8, v9, :cond_5

    .line 46
    .line 47
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaix;->zzg(Lcom/google/android/gms/internal/ads/zzen;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ge v4, v7, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    add-int/2addr v8, v4

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    const v11, 0x696c7374

    .line 76
    .line 77
    .line 78
    if-ne v9, v11, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 84
    .line 85
    .line 86
    new-instance v4, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-ge v9, v8, :cond_1

    .line 96
    .line 97
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzajf;->zza(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzau;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    if-eqz v9, :cond_0

    .line 102
    .line 103
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_2

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    new-instance v10, Lcom/google/android/gms/internal/ads/zzav;

    .line 115
    .line 116
    invoke-direct {v10, v4}, Lcom/google/android/gms/internal/ads/zzav;-><init>(Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_3
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    :goto_3
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    goto/16 :goto_a

    .line 129
    .line 130
    :cond_5
    const v9, 0x736d7461

    .line 131
    .line 132
    .line 133
    if-ne v8, v9, :cond_13

    .line 134
    .line 135
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 136
    .line 137
    .line 138
    const/16 v4, 0xc

    .line 139
    .line 140
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 141
    .line 142
    .line 143
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-ge v8, v7, :cond_12

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    const v12, 0x73617574

    .line 162
    .line 163
    .line 164
    if-ne v11, v12, :cond_11

    .line 165
    .line 166
    const/16 v8, 0x10

    .line 167
    .line 168
    if-ge v9, v8, :cond_6

    .line 169
    .line 170
    goto/16 :goto_9

    .line 171
    .line 172
    :cond_6
    const/4 v8, 0x4

    .line 173
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 174
    .line 175
    .line 176
    const/4 v8, -0x1

    .line 177
    move v9, v3

    .line 178
    move v11, v9

    .line 179
    :goto_5
    const/4 v12, 0x2

    .line 180
    if-ge v9, v12, :cond_9

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 183
    .line 184
    .line 185
    move-result v12

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 187
    .line 188
    .line 189
    move-result v13

    .line 190
    if-nez v12, :cond_7

    .line 191
    .line 192
    move v8, v13

    .line 193
    goto :goto_6

    .line 194
    :cond_7
    if-ne v12, v0, :cond_8

    .line 195
    .line 196
    move v11, v13

    .line 197
    :cond_8
    :goto_6
    add-int/2addr v9, v0

    .line 198
    goto :goto_5

    .line 199
    :cond_9
    const v9, -0x7fffffff

    .line 200
    .line 201
    .line 202
    if-ne v8, v4, :cond_a

    .line 203
    .line 204
    const/16 v4, 0xf0

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_a
    const/16 v12, 0xd

    .line 208
    .line 209
    if-ne v8, v12, :cond_b

    .line 210
    .line 211
    const/16 v4, 0x78

    .line 212
    .line 213
    goto :goto_8

    .line 214
    :cond_b
    const/16 v12, 0x15

    .line 215
    .line 216
    if-eq v8, v12, :cond_d

    .line 217
    .line 218
    :cond_c
    :goto_7
    move v4, v9

    .line 219
    goto :goto_8

    .line 220
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    if-lt v8, v1, :cond_c

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    add-int/2addr v8, v1

    .line 231
    if-le v8, v7, :cond_e

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    if-lt v8, v4, :cond_c

    .line 243
    .line 244
    const v4, 0x73726672

    .line 245
    .line 246
    .line 247
    if-eq v12, v4, :cond_f

    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzn()I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    :goto_8
    if-ne v4, v9, :cond_10

    .line 255
    .line 256
    goto :goto_9

    .line 257
    :cond_10
    new-instance v10, Lcom/google/android/gms/internal/ads/zzav;

    .line 258
    .line 259
    new-instance v8, Lcom/google/android/gms/internal/ads/zzahp;

    .line 260
    .line 261
    int-to-float v4, v4

    .line 262
    invoke-direct {v8, v4, v11}, Lcom/google/android/gms/internal/ads/zzahp;-><init>(FI)V

    .line 263
    .line 264
    .line 265
    new-array v4, v0, [Lcom/google/android/gms/internal/ads/zzau;

    .line 266
    .line 267
    aput-object v8, v4, v3

    .line 268
    .line 269
    invoke-direct {v10, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 270
    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_11
    add-int/2addr v8, v9

    .line 274
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_4

    .line 278
    .line 279
    :cond_12
    :goto_9
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    goto :goto_a

    .line 284
    :cond_13
    const v4, -0x56878686

    .line 285
    .line 286
    .line 287
    if-ne v8, v4, :cond_14

    .line 288
    .line 289
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaix;->zzm(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzav;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    :cond_14
    :goto_a
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_15
    return-object v2
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzfh;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    :goto_0
    move-wide v5, v0

    .line 25
    move-wide v7, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfh;

    .line 41
    .line 42
    move-object v4, p0

    .line 43
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(JJJ)V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzajp;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzaej;)Lcom/google/android/gms/internal/ads/zzajs;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const v5, 0x7374737a

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 18
    .line 19
    new-instance v8, Lcom/google/android/gms/internal/ads/zzait;

    .line 20
    .line 21
    invoke-direct {v8, v5, v7}, Lcom/google/android/gms/internal/ads/zzait;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Lcom/google/android/gms/internal/ads/zzz;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const v5, 0x73747a32

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_42

    .line 33
    .line 34
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaiu;

    .line 35
    .line 36
    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/ads/zzaiu;-><init>(Lcom/google/android/gms/internal/ads/zzfd;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zzb()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v7, 0x0

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    new-instance v9, Lcom/google/android/gms/internal/ads/zzajs;

    .line 47
    .line 48
    new-array v2, v7, [J

    .line 49
    .line 50
    new-array v3, v7, [I

    .line 51
    .line 52
    new-array v5, v7, [J

    .line 53
    .line 54
    new-array v6, v7, [I

    .line 55
    .line 56
    const-wide/16 v7, 0x0

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    move-object v0, v9

    .line 60
    move-object/from16 v1, p0

    .line 61
    .line 62
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Lcom/google/android/gms/internal/ads/zzajp;[J[II[J[IJ)V

    .line 63
    .line 64
    .line 65
    return-object v9

    .line 66
    :cond_1
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 67
    .line 68
    const/4 v10, 0x2

    .line 69
    const-wide/16 v11, 0x0

    .line 70
    .line 71
    if-ne v9, v10, :cond_2

    .line 72
    .line 73
    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzf:J

    .line 74
    .line 75
    cmp-long v9, v13, v11

    .line 76
    .line 77
    if-lez v9, :cond_2

    .line 78
    .line 79
    int-to-float v9, v5

    .line 80
    long-to-float v13, v13

    .line 81
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 82
    .line 83
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    const v15, 0x49742400    # 1000000.0f

    .line 88
    .line 89
    .line 90
    div-float/2addr v13, v15

    .line 91
    div-float/2addr v9, v13

    .line 92
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzx;->zzO(F)Lcom/google/android/gms/internal/ads/zzx;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzajp;->zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzajp;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :cond_2
    const v9, 0x7374636f

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    if-nez v9, :cond_3

    .line 111
    .line 112
    const v9, 0x636f3634

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    const/4 v13, 0x1

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    move v13, v7

    .line 125
    :goto_1
    const v14, 0x73747363

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 136
    .line 137
    const v15, 0x73747473

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    .line 141
    .line 142
    .line 143
    move-result-object v15

    .line 144
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 148
    .line 149
    const v6, 0x73747373

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    if-eqz v6, :cond_4

    .line 157
    .line 158
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    const/4 v6, 0x0

    .line 162
    :goto_2
    const v7, 0x63747473

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_5

    .line 170
    .line 171
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_5
    const/4 v0, 0x0

    .line 175
    :goto_3
    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 176
    .line 177
    new-instance v9, Lcom/google/android/gms/internal/ads/zzaim;

    .line 178
    .line 179
    invoke-direct {v9, v14, v7, v13}, Lcom/google/android/gms/internal/ads/zzaim;-><init>(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzen;Z)V

    .line 180
    .line 181
    .line 182
    const/16 v7, 0xc

    .line 183
    .line 184
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    add-int/2addr v13, v3

    .line 192
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    if-eqz v0, :cond_6

    .line 201
    .line 202
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 206
    .line 207
    .line 208
    move-result v19

    .line 209
    goto :goto_4

    .line 210
    :cond_6
    const/16 v19, 0x0

    .line 211
    .line 212
    :goto_4
    if-eqz v6, :cond_8

    .line 213
    .line 214
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-lez v7, :cond_7

    .line 222
    .line 223
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 224
    .line 225
    .line 226
    move-result v16

    .line 227
    add-int/lit8 v16, v16, -0x1

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_7
    move/from16 v16, v3

    .line 231
    .line 232
    const/4 v6, 0x0

    .line 233
    goto :goto_5

    .line 234
    :cond_8
    move/from16 v16, v3

    .line 235
    .line 236
    const/4 v7, 0x0

    .line 237
    :goto_5
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 242
    .line 243
    if-eq v11, v3, :cond_9

    .line 244
    .line 245
    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 246
    .line 247
    const-string v3, "audio/raw"

    .line 248
    .line 249
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-nez v3, :cond_a

    .line 254
    .line 255
    const-string v3, "audio/g711-mlaw"

    .line 256
    .line 257
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-nez v3, :cond_a

    .line 262
    .line 263
    const-string v3, "audio/g711-alaw"

    .line 264
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_9

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_9
    move-object/from16 p0, v12

    .line 273
    .line 274
    goto/16 :goto_b

    .line 275
    .line 276
    :cond_a
    :goto_6
    if-nez v13, :cond_9

    .line 277
    .line 278
    if-nez v19, :cond_f

    .line 279
    .line 280
    if-nez v7, :cond_f

    .line 281
    .line 282
    iget v0, v9, Lcom/google/android/gms/internal/ads/zzaim;->zza:I

    .line 283
    .line 284
    new-array v3, v0, [J

    .line 285
    .line 286
    new-array v4, v0, [I

    .line 287
    .line 288
    :goto_7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaim;->zza()Z

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    if-eqz v6, :cond_b

    .line 293
    .line 294
    iget v6, v9, Lcom/google/android/gms/internal/ads/zzaim;->zzb:I

    .line 295
    .line 296
    iget-wide v7, v9, Lcom/google/android/gms/internal/ads/zzaim;->zzd:J

    .line 297
    .line 298
    aput-wide v7, v3, v6

    .line 299
    .line 300
    iget v7, v9, Lcom/google/android/gms/internal/ads/zzaim;->zzc:I

    .line 301
    .line 302
    aput v7, v4, v6

    .line 303
    .line 304
    goto :goto_7

    .line 305
    :cond_b
    int-to-long v6, v10

    .line 306
    const/16 v8, 0x2000

    .line 307
    .line 308
    div-int/2addr v8, v11

    .line 309
    const/4 v9, 0x0

    .line 310
    const/4 v10, 0x0

    .line 311
    :goto_8
    if-ge v9, v0, :cond_c

    .line 312
    .line 313
    aget v13, v4, v9

    .line 314
    .line 315
    sget-object v14, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 316
    .line 317
    add-int/2addr v13, v8

    .line 318
    const/4 v14, -0x1

    .line 319
    add-int/2addr v13, v14

    .line 320
    div-int/2addr v13, v8

    .line 321
    add-int/2addr v10, v13

    .line 322
    const/4 v13, 0x1

    .line 323
    add-int/2addr v9, v13

    .line 324
    goto :goto_8

    .line 325
    :cond_c
    new-array v9, v10, [J

    .line 326
    .line 327
    new-array v13, v10, [I

    .line 328
    .line 329
    new-array v14, v10, [J

    .line 330
    .line 331
    new-array v10, v10, [I

    .line 332
    .line 333
    move-object/from16 p0, v12

    .line 334
    .line 335
    const/4 v2, 0x0

    .line 336
    const/4 v12, 0x0

    .line 337
    const/4 v15, 0x0

    .line 338
    const/16 v16, 0x0

    .line 339
    .line 340
    const/16 v19, 0x0

    .line 341
    .line 342
    :goto_9
    if-ge v15, v0, :cond_e

    .line 343
    .line 344
    aget v22, v4, v15

    .line 345
    .line 346
    aget-wide v23, v3, v15

    .line 347
    .line 348
    move/from16 v39, v19

    .line 349
    .line 350
    move/from16 v19, v0

    .line 351
    .line 352
    move/from16 v0, v16

    .line 353
    .line 354
    move/from16 v16, v39

    .line 355
    .line 356
    move/from16 v40, v22

    .line 357
    .line 358
    move-object/from16 v22, v3

    .line 359
    .line 360
    move/from16 v3, v40

    .line 361
    .line 362
    :goto_a
    if-lez v3, :cond_d

    .line 363
    .line 364
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    .line 365
    .line 366
    .line 367
    move-result v25

    .line 368
    aput-wide v23, v9, v16

    .line 369
    .line 370
    move-object/from16 p1, v4

    .line 371
    .line 372
    mul-int v4, v11, v25

    .line 373
    .line 374
    aput v4, v13, v16

    .line 375
    .line 376
    add-int/2addr v12, v4

    .line 377
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    move v4, v8

    .line 382
    move-object/from16 v26, v9

    .line 383
    .line 384
    int-to-long v8, v2

    .line 385
    mul-long/2addr v8, v6

    .line 386
    aput-wide v8, v14, v16

    .line 387
    .line 388
    const/4 v8, 0x1

    .line 389
    aput v8, v10, v16

    .line 390
    .line 391
    aget v9, v13, v16

    .line 392
    .line 393
    int-to-long v8, v9

    .line 394
    add-long v23, v23, v8

    .line 395
    .line 396
    add-int v2, v2, v25

    .line 397
    .line 398
    sub-int v3, v3, v25

    .line 399
    .line 400
    const/4 v8, 0x1

    .line 401
    add-int/lit8 v16, v16, 0x1

    .line 402
    .line 403
    move v8, v4

    .line 404
    move-object/from16 v9, v26

    .line 405
    .line 406
    move-object/from16 v4, p1

    .line 407
    .line 408
    goto :goto_a

    .line 409
    :cond_d
    move-object/from16 p1, v4

    .line 410
    .line 411
    move v4, v8

    .line 412
    move-object/from16 v26, v9

    .line 413
    .line 414
    const/4 v8, 0x1

    .line 415
    add-int/2addr v15, v8

    .line 416
    move v8, v4

    .line 417
    move-object/from16 v3, v22

    .line 418
    .line 419
    move-object/from16 v4, p1

    .line 420
    .line 421
    move/from16 v39, v16

    .line 422
    .line 423
    move/from16 v16, v0

    .line 424
    .line 425
    move/from16 v0, v19

    .line 426
    .line 427
    move/from16 v19, v39

    .line 428
    .line 429
    goto :goto_9

    .line 430
    :cond_e
    move-object/from16 v26, v9

    .line 431
    .line 432
    int-to-long v2, v2

    .line 433
    mul-long/2addr v6, v2

    .line 434
    int-to-long v2, v12

    .line 435
    move-object v15, v1

    .line 436
    move-wide/from16 v22, v6

    .line 437
    .line 438
    move-object v1, v10

    .line 439
    move-object/from16 v0, v26

    .line 440
    .line 441
    goto/16 :goto_1b

    .line 442
    .line 443
    :cond_f
    move-object/from16 p0, v12

    .line 444
    .line 445
    const/4 v13, 0x0

    .line 446
    :goto_b
    new-array v2, v5, [J

    .line 447
    .line 448
    new-array v3, v5, [I

    .line 449
    .line 450
    new-array v4, v5, [J

    .line 451
    .line 452
    new-array v11, v5, [I

    .line 453
    .line 454
    move-object/from16 v31, v1

    .line 455
    .line 456
    move/from16 v22, v13

    .line 457
    .line 458
    move/from16 v24, v19

    .line 459
    .line 460
    const/16 p1, 0x0

    .line 461
    .line 462
    const/4 v12, 0x0

    .line 463
    const/4 v13, 0x0

    .line 464
    const/16 v23, 0x0

    .line 465
    .line 466
    const-wide/16 v25, 0x0

    .line 467
    .line 468
    const-wide/16 v27, 0x0

    .line 469
    .line 470
    const-wide/16 v29, 0x0

    .line 471
    .line 472
    move/from16 v19, v14

    .line 473
    .line 474
    const/4 v14, 0x0

    .line 475
    move/from16 v39, v16

    .line 476
    .line 477
    move/from16 v16, v7

    .line 478
    .line 479
    move/from16 v7, v39

    .line 480
    .line 481
    :goto_c
    const-string v1, "BoxParsers"

    .line 482
    .line 483
    if-ge v12, v5, :cond_1c

    .line 484
    .line 485
    move-wide/from16 v32, v25

    .line 486
    .line 487
    const/16 v26, 0x1

    .line 488
    .line 489
    move/from16 v25, p1

    .line 490
    .line 491
    :goto_d
    if-nez v25, :cond_11

    .line 492
    .line 493
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaim;->zza()Z

    .line 494
    .line 495
    .line 496
    move-result v26

    .line 497
    if-eqz v26, :cond_10

    .line 498
    .line 499
    move/from16 v35, v14

    .line 500
    .line 501
    move-object/from16 v34, v15

    .line 502
    .line 503
    iget-wide v14, v9, Lcom/google/android/gms/internal/ads/zzaim;->zzd:J

    .line 504
    .line 505
    move/from16 v36, v5

    .line 506
    .line 507
    iget v5, v9, Lcom/google/android/gms/internal/ads/zzaim;->zzc:I

    .line 508
    .line 509
    move/from16 v25, v5

    .line 510
    .line 511
    move-wide/from16 v32, v14

    .line 512
    .line 513
    move-object/from16 v15, v34

    .line 514
    .line 515
    move/from16 v14, v35

    .line 516
    .line 517
    move/from16 v5, v36

    .line 518
    .line 519
    goto :goto_d

    .line 520
    :cond_10
    move/from16 v36, v5

    .line 521
    .line 522
    move/from16 v35, v14

    .line 523
    .line 524
    move-object/from16 v34, v15

    .line 525
    .line 526
    const/4 v5, 0x0

    .line 527
    goto :goto_e

    .line 528
    :cond_11
    move/from16 v36, v5

    .line 529
    .line 530
    move/from16 v35, v14

    .line 531
    .line 532
    move-object/from16 v34, v15

    .line 533
    .line 534
    move/from16 v5, v25

    .line 535
    .line 536
    :goto_e
    if-nez v26, :cond_12

    .line 537
    .line 538
    const-string v5, "Unexpected end of chunk data"

    .line 539
    .line 540
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-static {v3, v12}, Ljava/util/Arrays;->copyOf([II)[I

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    invoke-static {v4, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 552
    .line 553
    .line 554
    move-result-object v4

    .line 555
    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([II)[I

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    move-object v9, v2

    .line 560
    move-object v14, v4

    .line 561
    move-object v10, v5

    .line 562
    move v5, v12

    .line 563
    move/from16 v2, v35

    .line 564
    .line 565
    goto/16 :goto_15

    .line 566
    .line 567
    :cond_12
    move/from16 v14, v35

    .line 568
    .line 569
    if-nez v0, :cond_13

    .line 570
    .line 571
    goto :goto_11

    .line 572
    :cond_13
    :goto_f
    if-nez v23, :cond_15

    .line 573
    .line 574
    if-lez v24, :cond_14

    .line 575
    .line 576
    const/4 v1, -0x1

    .line 577
    add-int/lit8 v24, v24, -0x1

    .line 578
    .line 579
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 580
    .line 581
    .line 582
    move-result v23

    .line 583
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 584
    .line 585
    .line 586
    move-result v14

    .line 587
    goto :goto_f

    .line 588
    :cond_14
    const/4 v1, -0x1

    .line 589
    const/16 v23, 0x0

    .line 590
    .line 591
    goto :goto_10

    .line 592
    :cond_15
    const/4 v1, -0x1

    .line 593
    :goto_10
    add-int/lit8 v23, v23, -0x1

    .line 594
    .line 595
    :goto_11
    aput-wide v32, v2, v12

    .line 596
    .line 597
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zzc()I

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    aput v1, v3, v12

    .line 602
    .line 603
    move-object v15, v8

    .line 604
    move-object/from16 v25, v9

    .line 605
    .line 606
    int-to-long v8, v1

    .line 607
    add-long v29, v29, v8

    .line 608
    .line 609
    if-le v1, v13, :cond_16

    .line 610
    .line 611
    move v13, v1

    .line 612
    :cond_16
    int-to-long v8, v14

    .line 613
    add-long v8, v27, v8

    .line 614
    .line 615
    aput-wide v8, v4, v12

    .line 616
    .line 617
    if-nez v6, :cond_17

    .line 618
    .line 619
    const/4 v1, 0x1

    .line 620
    goto :goto_12

    .line 621
    :cond_17
    const/4 v1, 0x0

    .line 622
    :goto_12
    aput v1, v11, v12

    .line 623
    .line 624
    if-ne v12, v7, :cond_18

    .line 625
    .line 626
    const/4 v1, 0x1

    .line 627
    aput v1, v11, v12

    .line 628
    .line 629
    const/4 v1, -0x1

    .line 630
    add-int/lit8 v16, v16, -0x1

    .line 631
    .line 632
    if-lez v16, :cond_19

    .line 633
    .line 634
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 638
    .line 639
    .line 640
    move-result v7

    .line 641
    add-int/2addr v7, v1

    .line 642
    goto :goto_13

    .line 643
    :cond_18
    const/4 v1, -0x1

    .line 644
    :cond_19
    :goto_13
    int-to-long v8, v10

    .line 645
    add-long v27, v27, v8

    .line 646
    .line 647
    add-int/lit8 v8, v19, -0x1

    .line 648
    .line 649
    if-nez v8, :cond_1b

    .line 650
    .line 651
    if-lez v22, :cond_1a

    .line 652
    .line 653
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 654
    .line 655
    .line 656
    move-result v8

    .line 657
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 658
    .line 659
    .line 660
    move-result v9

    .line 661
    add-int/lit8 v22, v22, -0x1

    .line 662
    .line 663
    move/from16 v19, v8

    .line 664
    .line 665
    move v10, v9

    .line 666
    goto :goto_14

    .line 667
    :cond_1a
    const/16 v19, 0x0

    .line 668
    .line 669
    goto :goto_14

    .line 670
    :cond_1b
    move/from16 v19, v8

    .line 671
    .line 672
    :goto_14
    aget v8, v3, v12

    .line 673
    .line 674
    int-to-long v8, v8

    .line 675
    add-long v8, v32, v8

    .line 676
    .line 677
    add-int/2addr v5, v1

    .line 678
    const/4 v1, 0x1

    .line 679
    add-int/2addr v12, v1

    .line 680
    move/from16 p1, v5

    .line 681
    .line 682
    move/from16 v5, v36

    .line 683
    .line 684
    move-wide/from16 v39, v8

    .line 685
    .line 686
    move-object v8, v15

    .line 687
    move-object/from16 v9, v25

    .line 688
    .line 689
    move-object/from16 v15, v34

    .line 690
    .line 691
    move-wide/from16 v25, v39

    .line 692
    .line 693
    goto/16 :goto_c

    .line 694
    .line 695
    :cond_1c
    move/from16 v36, v5

    .line 696
    .line 697
    move/from16 v25, p1

    .line 698
    .line 699
    move-object v9, v2

    .line 700
    move-object v10, v11

    .line 701
    move v2, v14

    .line 702
    move-object v14, v4

    .line 703
    :goto_15
    int-to-long v6, v2

    .line 704
    add-long v6, v27, v6

    .line 705
    .line 706
    if-eqz v0, :cond_1e

    .line 707
    .line 708
    :goto_16
    if-lez v24, :cond_1e

    .line 709
    .line 710
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 711
    .line 712
    .line 713
    move-result v2

    .line 714
    if-eqz v2, :cond_1d

    .line 715
    .line 716
    const/4 v0, 0x0

    .line 717
    goto :goto_17

    .line 718
    :cond_1d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 719
    .line 720
    .line 721
    const/4 v2, -0x1

    .line 722
    add-int/lit8 v24, v24, -0x1

    .line 723
    .line 724
    goto :goto_16

    .line 725
    :cond_1e
    const/4 v0, 0x1

    .line 726
    :goto_17
    if-nez v16, :cond_24

    .line 727
    .line 728
    if-nez v19, :cond_23

    .line 729
    .line 730
    if-nez v25, :cond_22

    .line 731
    .line 732
    if-nez v22, :cond_21

    .line 733
    .line 734
    if-nez v23, :cond_20

    .line 735
    .line 736
    if-nez v0, :cond_1f

    .line 737
    .line 738
    move-object/from16 p1, v3

    .line 739
    .line 740
    move-object/from16 v15, v31

    .line 741
    .line 742
    const/4 v0, 0x0

    .line 743
    const/4 v2, 0x0

    .line 744
    const/4 v4, 0x0

    .line 745
    const/4 v8, 0x0

    .line 746
    const/4 v11, 0x0

    .line 747
    const/4 v12, 0x0

    .line 748
    goto/16 :goto_18

    .line 749
    .line 750
    :cond_1f
    move-object/from16 p1, v3

    .line 751
    .line 752
    move/from16 v16, v5

    .line 753
    .line 754
    move-wide/from16 v22, v6

    .line 755
    .line 756
    move-object/from16 v15, v31

    .line 757
    .line 758
    goto/16 :goto_1a

    .line 759
    .line 760
    :cond_20
    move v12, v0

    .line 761
    move-object/from16 p1, v3

    .line 762
    .line 763
    move/from16 v11, v23

    .line 764
    .line 765
    move-object/from16 v15, v31

    .line 766
    .line 767
    const/4 v0, 0x0

    .line 768
    const/4 v2, 0x0

    .line 769
    const/4 v4, 0x0

    .line 770
    const/4 v8, 0x0

    .line 771
    goto :goto_18

    .line 772
    :cond_21
    move v12, v0

    .line 773
    move-object/from16 p1, v3

    .line 774
    .line 775
    move/from16 v8, v22

    .line 776
    .line 777
    move/from16 v11, v23

    .line 778
    .line 779
    move-object/from16 v15, v31

    .line 780
    .line 781
    const/4 v0, 0x0

    .line 782
    const/4 v2, 0x0

    .line 783
    const/4 v4, 0x0

    .line 784
    goto :goto_18

    .line 785
    :cond_22
    move v12, v0

    .line 786
    move-object/from16 p1, v3

    .line 787
    .line 788
    move/from16 v8, v22

    .line 789
    .line 790
    move/from16 v11, v23

    .line 791
    .line 792
    move/from16 v4, v25

    .line 793
    .line 794
    move-object/from16 v15, v31

    .line 795
    .line 796
    const/4 v0, 0x0

    .line 797
    const/4 v2, 0x0

    .line 798
    goto :goto_18

    .line 799
    :cond_23
    move v12, v0

    .line 800
    move-object/from16 p1, v3

    .line 801
    .line 802
    move/from16 v2, v19

    .line 803
    .line 804
    move/from16 v8, v22

    .line 805
    .line 806
    move/from16 v11, v23

    .line 807
    .line 808
    move/from16 v4, v25

    .line 809
    .line 810
    move-object/from16 v15, v31

    .line 811
    .line 812
    const/4 v0, 0x0

    .line 813
    goto :goto_18

    .line 814
    :cond_24
    move v12, v0

    .line 815
    move-object/from16 p1, v3

    .line 816
    .line 817
    move/from16 v0, v16

    .line 818
    .line 819
    move/from16 v2, v19

    .line 820
    .line 821
    move/from16 v8, v22

    .line 822
    .line 823
    move/from16 v11, v23

    .line 824
    .line 825
    move/from16 v4, v25

    .line 826
    .line 827
    move-object/from16 v15, v31

    .line 828
    .line 829
    :goto_18
    iget v3, v15, Lcom/google/android/gms/internal/ads/zzajp;->zza:I

    .line 830
    .line 831
    move/from16 v16, v5

    .line 832
    .line 833
    new-instance v5, Ljava/lang/StringBuilder;

    .line 834
    .line 835
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 836
    .line 837
    .line 838
    move-wide/from16 v22, v6

    .line 839
    .line 840
    const-string v6, "Inconsistent stbl box for track "

    .line 841
    .line 842
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    const-string v3, ": remainingSynchronizationSamples "

    .line 849
    .line 850
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    const-string v0, ", remainingSamplesAtTimestampDelta "

    .line 857
    .line 858
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    .line 860
    .line 861
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    const-string v0, ", remainingSamplesInChunk "

    .line 865
    .line 866
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    const-string v0, ", remainingTimestampDeltaChanges "

    .line 873
    .line 874
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    const-string v0, ", remainingSamplesAtTimestampOffset "

    .line 881
    .line 882
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    const/4 v0, 0x1

    .line 889
    if-eq v0, v12, :cond_25

    .line 890
    .line 891
    const-string v0, ", ctts invalid"

    .line 892
    .line 893
    goto :goto_19

    .line 894
    :cond_25
    const-string v0, ""

    .line 895
    .line 896
    :goto_19
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    .line 905
    .line 906
    :goto_1a
    move-object v0, v9

    .line 907
    move-object v1, v10

    .line 908
    move/from16 v5, v16

    .line 909
    .line 910
    move-wide/from16 v2, v29

    .line 911
    .line 912
    move/from16 v16, v13

    .line 913
    .line 914
    move-object/from16 v13, p1

    .line 915
    .line 916
    :goto_1b
    iget-wide v10, v15, Lcom/google/android/gms/internal/ads/zzajp;->zzf:J

    .line 917
    .line 918
    const-wide/16 v6, 0x0

    .line 919
    .line 920
    cmp-long v4, v10, v6

    .line 921
    .line 922
    const-wide/32 v24, 0x7fffffff

    .line 923
    .line 924
    .line 925
    if-lez v4, :cond_26

    .line 926
    .line 927
    const-wide/16 v6, 0x8

    .line 928
    .line 929
    mul-long/2addr v6, v2

    .line 930
    const-wide/32 v8, 0xf4240

    .line 931
    .line 932
    .line 933
    sget-object v12, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 934
    .line 935
    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 936
    .line 937
    .line 938
    move-result-wide v2

    .line 939
    const-wide/16 v6, 0x0

    .line 940
    .line 941
    cmp-long v4, v2, v6

    .line 942
    .line 943
    if-lez v4, :cond_26

    .line 944
    .line 945
    cmp-long v4, v2, v24

    .line 946
    .line 947
    if-gez v4, :cond_26

    .line 948
    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 950
    .line 951
    .line 952
    move-result-object v4

    .line 953
    long-to-int v2, v2

    .line 954
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 955
    .line 956
    .line 957
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzajp;->zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzajp;

    .line 962
    .line 963
    .line 964
    move-result-object v2

    .line 965
    move-object v15, v2

    .line 966
    :cond_26
    iget-wide v2, v15, Lcom/google/android/gms/internal/ads/zzajp;->zzc:J

    .line 967
    .line 968
    sget-object v4, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 969
    .line 970
    const-wide/32 v8, 0xf4240

    .line 971
    .line 972
    .line 973
    move-wide/from16 v6, v22

    .line 974
    .line 975
    move-wide v10, v2

    .line 976
    move-object v12, v4

    .line 977
    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 978
    .line 979
    .line 980
    move-result-wide v26

    .line 981
    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zzajp;->zzi:[J

    .line 982
    .line 983
    const-wide/32 v10, 0xf4240

    .line 984
    .line 985
    .line 986
    if-nez v12, :cond_27

    .line 987
    .line 988
    invoke-static {v14, v10, v11, v2, v3}, Lcom/google/android/gms/internal/ads/zzex;->zzG([JJJ)V

    .line 989
    .line 990
    .line 991
    new-instance v2, Lcom/google/android/gms/internal/ads/zzajs;

    .line 992
    .line 993
    move-object v6, v2

    .line 994
    move-object v7, v15

    .line 995
    move-object v8, v0

    .line 996
    move-object v9, v13

    .line 997
    move/from16 v10, v16

    .line 998
    .line 999
    move-object v11, v14

    .line 1000
    move-object v12, v1

    .line 1001
    move-wide/from16 v13, v26

    .line 1002
    .line 1003
    invoke-direct/range {v6 .. v14}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Lcom/google/android/gms/internal/ads/zzajp;[J[II[J[IJ)V

    .line 1004
    .line 1005
    .line 1006
    return-object v2

    .line 1007
    :cond_27
    array-length v6, v12

    .line 1008
    const/4 v7, 0x1

    .line 1009
    if-ne v6, v7, :cond_2c

    .line 1010
    .line 1011
    iget v6, v15, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 1012
    .line 1013
    if-ne v6, v7, :cond_2b

    .line 1014
    .line 1015
    array-length v8, v14

    .line 1016
    const/4 v6, 0x2

    .line 1017
    if-lt v8, v6, :cond_2b

    .line 1018
    .line 1019
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzajp;->zzj:[J

    .line 1020
    .line 1021
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1022
    .line 1023
    .line 1024
    const/4 v9, 0x0

    .line 1025
    aget-wide v26, v6, v9

    .line 1026
    .line 1027
    aget-wide v6, v12, v9

    .line 1028
    .line 1029
    move-object/from16 p0, v0

    .line 1030
    .line 1031
    move-object/from16 p1, v1

    .line 1032
    .line 1033
    iget-wide v0, v15, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    .line 1034
    .line 1035
    move/from16 v19, v5

    .line 1036
    .line 1037
    move/from16 v17, v8

    .line 1038
    .line 1039
    move v5, v9

    .line 1040
    move-wide v8, v2

    .line 1041
    move-wide v10, v0

    .line 1042
    move-object/from16 v38, v12

    .line 1043
    .line 1044
    move-object v12, v4

    .line 1045
    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1046
    .line 1047
    .line 1048
    move-result-wide v6

    .line 1049
    add-long v28, v26, v6

    .line 1050
    .line 1051
    const/4 v6, -0x1

    .line 1052
    add-int/lit8 v8, v17, -0x1

    .line 1053
    .line 1054
    const/4 v6, 0x4

    .line 1055
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    .line 1056
    .line 1057
    .line 1058
    move-result v6

    .line 1059
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 1060
    .line 1061
    .line 1062
    move-result v6

    .line 1063
    add-int/lit8 v7, v17, -0x4

    .line 1064
    .line 1065
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 1066
    .line 1067
    .line 1068
    move-result v7

    .line 1069
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 1070
    .line 1071
    .line 1072
    move-result v7

    .line 1073
    aget-wide v8, v14, v5

    .line 1074
    .line 1075
    cmp-long v5, v8, v26

    .line 1076
    .line 1077
    if-gtz v5, :cond_28

    .line 1078
    .line 1079
    aget-wide v5, v14, v6

    .line 1080
    .line 1081
    cmp-long v5, v26, v5

    .line 1082
    .line 1083
    if-gez v5, :cond_28

    .line 1084
    .line 1085
    aget-wide v5, v14, v7

    .line 1086
    .line 1087
    cmp-long v5, v5, v28

    .line 1088
    .line 1089
    if-gez v5, :cond_28

    .line 1090
    .line 1091
    cmp-long v5, v28, v22

    .line 1092
    .line 1093
    if-gtz v5, :cond_28

    .line 1094
    .line 1095
    sub-long v6, v26, v8

    .line 1096
    .line 1097
    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 1098
    .line 1099
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    .line 1100
    .line 1101
    int-to-long v10, v5

    .line 1102
    move-wide v8, v10

    .line 1103
    move-wide/from16 v26, v10

    .line 1104
    .line 1105
    move-wide v10, v2

    .line 1106
    move-object v12, v4

    .line 1107
    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1108
    .line 1109
    .line 1110
    move-result-wide v30

    .line 1111
    sub-long v6, v22, v28

    .line 1112
    .line 1113
    move-wide/from16 v8, v26

    .line 1114
    .line 1115
    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1116
    .line 1117
    .line 1118
    move-result-wide v5

    .line 1119
    const-wide/16 v7, 0x0

    .line 1120
    .line 1121
    cmp-long v9, v30, v7

    .line 1122
    .line 1123
    if-nez v9, :cond_29

    .line 1124
    .line 1125
    cmp-long v9, v5, v7

    .line 1126
    .line 1127
    if-eqz v9, :cond_28

    .line 1128
    .line 1129
    const-wide/16 v7, 0x0

    .line 1130
    .line 1131
    goto :goto_1e

    .line 1132
    :cond_28
    :goto_1c
    move-object/from16 v5, v38

    .line 1133
    .line 1134
    :goto_1d
    const/4 v0, 0x1

    .line 1135
    const/4 v6, 0x1

    .line 1136
    goto :goto_1f

    .line 1137
    :cond_29
    move-wide/from16 v7, v30

    .line 1138
    .line 1139
    :goto_1e
    cmp-long v9, v7, v24

    .line 1140
    .line 1141
    if-gtz v9, :cond_28

    .line 1142
    .line 1143
    cmp-long v9, v5, v24

    .line 1144
    .line 1145
    if-lez v9, :cond_2a

    .line 1146
    .line 1147
    goto :goto_1c

    .line 1148
    :cond_2a
    long-to-int v7, v7

    .line 1149
    move-object/from16 v8, p2

    .line 1150
    .line 1151
    iput v7, v8, Lcom/google/android/gms/internal/ads/zzaej;->zza:I

    .line 1152
    .line 1153
    long-to-int v5, v5

    .line 1154
    iput v5, v8, Lcom/google/android/gms/internal/ads/zzaej;->zzb:I

    .line 1155
    .line 1156
    const-wide/32 v5, 0xf4240

    .line 1157
    .line 1158
    .line 1159
    invoke-static {v14, v5, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzex;->zzG([JJJ)V

    .line 1160
    .line 1161
    .line 1162
    move-object/from16 v5, v38

    .line 1163
    .line 1164
    const/4 v2, 0x0

    .line 1165
    aget-wide v6, v5, v2

    .line 1166
    .line 1167
    const-wide/32 v8, 0xf4240

    .line 1168
    .line 1169
    .line 1170
    move-wide v10, v0

    .line 1171
    move-object v12, v4

    .line 1172
    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1173
    .line 1174
    .line 1175
    move-result-wide v0

    .line 1176
    new-instance v2, Lcom/google/android/gms/internal/ads/zzajs;

    .line 1177
    .line 1178
    move-object v6, v2

    .line 1179
    move-object v7, v15

    .line 1180
    move-object/from16 v8, p0

    .line 1181
    .line 1182
    move-object v9, v13

    .line 1183
    move/from16 v10, v16

    .line 1184
    .line 1185
    move-object v11, v14

    .line 1186
    move-object/from16 v12, p1

    .line 1187
    .line 1188
    move-wide v13, v0

    .line 1189
    invoke-direct/range {v6 .. v14}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Lcom/google/android/gms/internal/ads/zzajp;[J[II[J[IJ)V

    .line 1190
    .line 1191
    .line 1192
    return-object v2

    .line 1193
    :cond_2b
    move-object/from16 p0, v0

    .line 1194
    .line 1195
    move-object/from16 p1, v1

    .line 1196
    .line 1197
    move/from16 v19, v5

    .line 1198
    .line 1199
    move-object v5, v12

    .line 1200
    goto :goto_1d

    .line 1201
    :cond_2c
    move-object/from16 p0, v0

    .line 1202
    .line 1203
    move-object/from16 p1, v1

    .line 1204
    .line 1205
    move/from16 v19, v5

    .line 1206
    .line 1207
    move-object v5, v12

    .line 1208
    move v0, v7

    .line 1209
    :goto_1f
    if-ne v6, v0, :cond_2e

    .line 1210
    .line 1211
    const/4 v0, 0x0

    .line 1212
    aget-wide v7, v5, v0

    .line 1213
    .line 1214
    const-wide/16 v9, 0x0

    .line 1215
    .line 1216
    cmp-long v1, v7, v9

    .line 1217
    .line 1218
    if-nez v1, :cond_2e

    .line 1219
    .line 1220
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzajp;->zzj:[J

    .line 1221
    .line 1222
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1223
    .line 1224
    .line 1225
    aget-wide v4, v1, v0

    .line 1226
    .line 1227
    const/4 v0, 0x0

    .line 1228
    :goto_20
    array-length v1, v14

    .line 1229
    if-ge v0, v1, :cond_2d

    .line 1230
    .line 1231
    aget-wide v6, v14, v0

    .line 1232
    .line 1233
    sub-long/2addr v6, v4

    .line 1234
    const-wide/32 v8, 0xf4240

    .line 1235
    .line 1236
    .line 1237
    sget-object v12, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1238
    .line 1239
    move-wide v10, v2

    .line 1240
    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1241
    .line 1242
    .line 1243
    move-result-wide v6

    .line 1244
    aput-wide v6, v14, v0

    .line 1245
    .line 1246
    const/4 v1, 0x1

    .line 1247
    add-int/2addr v0, v1

    .line 1248
    goto :goto_20

    .line 1249
    :cond_2d
    sub-long v6, v22, v4

    .line 1250
    .line 1251
    const-wide/32 v8, 0xf4240

    .line 1252
    .line 1253
    .line 1254
    sget-object v12, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1255
    .line 1256
    move-wide v10, v2

    .line 1257
    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1258
    .line 1259
    .line 1260
    move-result-wide v0

    .line 1261
    new-instance v2, Lcom/google/android/gms/internal/ads/zzajs;

    .line 1262
    .line 1263
    move-object v6, v2

    .line 1264
    move-object v7, v15

    .line 1265
    move-object/from16 v8, p0

    .line 1266
    .line 1267
    move-object v9, v13

    .line 1268
    move/from16 v10, v16

    .line 1269
    .line 1270
    move-object v11, v14

    .line 1271
    move-object/from16 v12, p1

    .line 1272
    .line 1273
    move-wide v13, v0

    .line 1274
    invoke-direct/range {v6 .. v14}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Lcom/google/android/gms/internal/ads/zzajp;[J[II[J[IJ)V

    .line 1275
    .line 1276
    .line 1277
    return-object v2

    .line 1278
    :cond_2e
    iget v0, v15, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 1279
    .line 1280
    const/4 v1, 0x1

    .line 1281
    if-ne v0, v1, :cond_2f

    .line 1282
    .line 1283
    const/4 v1, 0x1

    .line 1284
    goto :goto_21

    .line 1285
    :cond_2f
    const/4 v1, 0x0

    .line 1286
    :goto_21
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzajp;->zzj:[J

    .line 1287
    .line 1288
    new-array v12, v6, [I

    .line 1289
    .line 1290
    new-array v10, v6, [I

    .line 1291
    .line 1292
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1293
    .line 1294
    .line 1295
    const/4 v8, 0x0

    .line 1296
    const/4 v9, 0x0

    .line 1297
    const/4 v11, 0x0

    .line 1298
    const/16 v22, 0x0

    .line 1299
    .line 1300
    :goto_22
    array-length v6, v5

    .line 1301
    if-ge v11, v6, :cond_36

    .line 1302
    .line 1303
    aget-wide v6, v4, v11

    .line 1304
    .line 1305
    const-wide/16 v23, -0x1

    .line 1306
    .line 1307
    cmp-long v23, v6, v23

    .line 1308
    .line 1309
    if-eqz v23, :cond_35

    .line 1310
    .line 1311
    aget-wide v23, v5, v11

    .line 1312
    .line 1313
    move-object/from16 v25, v10

    .line 1314
    .line 1315
    move/from16 v26, v11

    .line 1316
    .line 1317
    iget-wide v10, v15, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    .line 1318
    .line 1319
    sget-object v27, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1320
    .line 1321
    move-object/from16 v28, v4

    .line 1322
    .line 1323
    move-object/from16 v38, v5

    .line 1324
    .line 1325
    move-wide v4, v6

    .line 1326
    move-wide/from16 v6, v23

    .line 1327
    .line 1328
    move-object/from16 v24, v13

    .line 1329
    .line 1330
    move-object/from16 v23, v15

    .line 1331
    .line 1332
    move v13, v8

    .line 1333
    move v15, v9

    .line 1334
    move-wide v8, v2

    .line 1335
    move-object/from16 v29, v12

    .line 1336
    .line 1337
    move-object/from16 v12, v27

    .line 1338
    .line 1339
    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1340
    .line 1341
    .line 1342
    move-result-wide v6

    .line 1343
    const/4 v8, 0x1

    .line 1344
    invoke-static {v14, v4, v5, v8, v8}, Lcom/google/android/gms/internal/ads/zzex;->zzd([JJZZ)I

    .line 1345
    .line 1346
    .line 1347
    move-result v9

    .line 1348
    aput v9, v29, v26

    .line 1349
    .line 1350
    add-long/2addr v6, v4

    .line 1351
    const/4 v4, 0x0

    .line 1352
    invoke-static {v14, v6, v7, v1, v4}, Lcom/google/android/gms/internal/ads/zzex;->zza([JJZZ)I

    .line 1353
    .line 1354
    .line 1355
    move-result v5

    .line 1356
    aput v5, v25, v26

    .line 1357
    .line 1358
    aget v5, v29, v26

    .line 1359
    .line 1360
    :goto_23
    aget v9, v29, v26

    .line 1361
    .line 1362
    if-ltz v9, :cond_30

    .line 1363
    .line 1364
    aget v10, p1, v9

    .line 1365
    .line 1366
    and-int/2addr v10, v8

    .line 1367
    if-nez v10, :cond_30

    .line 1368
    .line 1369
    const/4 v8, -0x1

    .line 1370
    add-int/2addr v9, v8

    .line 1371
    aput v9, v29, v26

    .line 1372
    .line 1373
    const/4 v8, 0x1

    .line 1374
    goto :goto_23

    .line 1375
    :cond_30
    if-gez v9, :cond_31

    .line 1376
    .line 1377
    aput v5, v29, v26

    .line 1378
    .line 1379
    :goto_24
    aget v9, v29, v26

    .line 1380
    .line 1381
    aget v5, v25, v26

    .line 1382
    .line 1383
    if-ge v9, v5, :cond_31

    .line 1384
    .line 1385
    aget v5, p1, v9

    .line 1386
    .line 1387
    const/4 v8, 0x1

    .line 1388
    and-int/2addr v5, v8

    .line 1389
    if-nez v5, :cond_31

    .line 1390
    .line 1391
    add-int/2addr v9, v8

    .line 1392
    aput v9, v29, v26

    .line 1393
    .line 1394
    goto :goto_24

    .line 1395
    :cond_31
    const/4 v5, 0x2

    .line 1396
    if-ne v0, v5, :cond_32

    .line 1397
    .line 1398
    aget v8, v25, v26

    .line 1399
    .line 1400
    if-eq v9, v8, :cond_32

    .line 1401
    .line 1402
    :goto_25
    aget v8, v25, v26

    .line 1403
    .line 1404
    array-length v9, v14

    .line 1405
    const/4 v10, -0x1

    .line 1406
    add-int/2addr v9, v10

    .line 1407
    if-ge v8, v9, :cond_33

    .line 1408
    .line 1409
    const/4 v9, 0x1

    .line 1410
    add-int/2addr v8, v9

    .line 1411
    aget-wide v11, v14, v8

    .line 1412
    .line 1413
    cmp-long v9, v11, v6

    .line 1414
    .line 1415
    if-gtz v9, :cond_33

    .line 1416
    .line 1417
    aput v8, v25, v26

    .line 1418
    .line 1419
    goto :goto_25

    .line 1420
    :cond_32
    const/4 v10, -0x1

    .line 1421
    :cond_33
    aget v6, v25, v26

    .line 1422
    .line 1423
    aget v7, v29, v26

    .line 1424
    .line 1425
    sub-int v8, v6, v7

    .line 1426
    .line 1427
    add-int v9, v15, v8

    .line 1428
    .line 1429
    if-eq v13, v7, :cond_34

    .line 1430
    .line 1431
    const/4 v7, 0x1

    .line 1432
    goto :goto_26

    .line 1433
    :cond_34
    move v7, v4

    .line 1434
    :goto_26
    or-int v7, v22, v7

    .line 1435
    .line 1436
    move v8, v6

    .line 1437
    move/from16 v22, v7

    .line 1438
    .line 1439
    :goto_27
    const/4 v6, 0x1

    .line 1440
    goto :goto_28

    .line 1441
    :cond_35
    move-object/from16 v28, v4

    .line 1442
    .line 1443
    move-object/from16 v38, v5

    .line 1444
    .line 1445
    move-object/from16 v25, v10

    .line 1446
    .line 1447
    move/from16 v26, v11

    .line 1448
    .line 1449
    move-object/from16 v29, v12

    .line 1450
    .line 1451
    move-object/from16 v24, v13

    .line 1452
    .line 1453
    move-object/from16 v23, v15

    .line 1454
    .line 1455
    const/4 v4, 0x0

    .line 1456
    const/4 v5, 0x2

    .line 1457
    const/4 v10, -0x1

    .line 1458
    move v13, v8

    .line 1459
    move v15, v9

    .line 1460
    goto :goto_27

    .line 1461
    :goto_28
    add-int/lit8 v11, v26, 0x1

    .line 1462
    .line 1463
    move-object/from16 v15, v23

    .line 1464
    .line 1465
    move-object/from16 v13, v24

    .line 1466
    .line 1467
    move-object/from16 v10, v25

    .line 1468
    .line 1469
    move-object/from16 v4, v28

    .line 1470
    .line 1471
    move-object/from16 v12, v29

    .line 1472
    .line 1473
    move-object/from16 v5, v38

    .line 1474
    .line 1475
    goto/16 :goto_22

    .line 1476
    .line 1477
    :cond_36
    move-object/from16 v28, v4

    .line 1478
    .line 1479
    move-object/from16 v38, v5

    .line 1480
    .line 1481
    move-object/from16 v25, v10

    .line 1482
    .line 1483
    move-object/from16 v29, v12

    .line 1484
    .line 1485
    move-object/from16 v24, v13

    .line 1486
    .line 1487
    move-object/from16 v23, v15

    .line 1488
    .line 1489
    move/from16 v6, v19

    .line 1490
    .line 1491
    const/4 v4, 0x0

    .line 1492
    move v15, v9

    .line 1493
    if-eq v15, v6, :cond_37

    .line 1494
    .line 1495
    const/4 v0, 0x1

    .line 1496
    goto :goto_29

    .line 1497
    :cond_37
    move v0, v4

    .line 1498
    :goto_29
    or-int v0, v22, v0

    .line 1499
    .line 1500
    if-eqz v0, :cond_38

    .line 1501
    .line 1502
    new-array v1, v15, [J

    .line 1503
    .line 1504
    goto :goto_2a

    .line 1505
    :cond_38
    move-object/from16 v1, p0

    .line 1506
    .line 1507
    :goto_2a
    if-eqz v0, :cond_39

    .line 1508
    .line 1509
    new-array v5, v15, [I

    .line 1510
    .line 1511
    move-object v13, v5

    .line 1512
    :goto_2b
    const/4 v5, 0x1

    .line 1513
    goto :goto_2c

    .line 1514
    :cond_39
    move-object/from16 v13, v24

    .line 1515
    .line 1516
    goto :goto_2b

    .line 1517
    :goto_2c
    if-ne v5, v0, :cond_3a

    .line 1518
    .line 1519
    move/from16 v16, v4

    .line 1520
    .line 1521
    :cond_3a
    if-eqz v0, :cond_3b

    .line 1522
    .line 1523
    new-array v5, v15, [I

    .line 1524
    .line 1525
    goto :goto_2d

    .line 1526
    :cond_3b
    move-object/from16 v5, p1

    .line 1527
    .line 1528
    :goto_2d
    new-array v15, v15, [J

    .line 1529
    .line 1530
    move v9, v4

    .line 1531
    move v12, v9

    .line 1532
    move/from16 v18, v12

    .line 1533
    .line 1534
    move/from16 v19, v16

    .line 1535
    .line 1536
    move-object/from16 v10, v38

    .line 1537
    .line 1538
    const-wide/16 v16, 0x0

    .line 1539
    .line 1540
    :goto_2e
    array-length v6, v10

    .line 1541
    if-ge v12, v6, :cond_40

    .line 1542
    .line 1543
    aget-wide v21, v28, v12

    .line 1544
    .line 1545
    aget v6, v29, v12

    .line 1546
    .line 1547
    aget v11, v25, v12

    .line 1548
    .line 1549
    if-eqz v0, :cond_3c

    .line 1550
    .line 1551
    sub-int v7, v11, v6

    .line 1552
    .line 1553
    move-object/from16 v8, p0

    .line 1554
    .line 1555
    invoke-static {v8, v6, v1, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1556
    .line 1557
    .line 1558
    move-object/from16 v4, v24

    .line 1559
    .line 1560
    invoke-static {v4, v6, v13, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1561
    .line 1562
    .line 1563
    move-object/from16 v8, p1

    .line 1564
    .line 1565
    invoke-static {v8, v6, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1566
    .line 1567
    .line 1568
    goto :goto_2f

    .line 1569
    :cond_3c
    move-object/from16 v8, p1

    .line 1570
    .line 1571
    move-object/from16 v4, v24

    .line 1572
    .line 1573
    :goto_2f
    move/from16 v39, v9

    .line 1574
    .line 1575
    move v9, v6

    .line 1576
    move/from16 v6, v19

    .line 1577
    .line 1578
    move/from16 v19, v18

    .line 1579
    .line 1580
    move/from16 v18, v39

    .line 1581
    .line 1582
    :goto_30
    if-ge v9, v11, :cond_3f

    .line 1583
    .line 1584
    move-object/from16 p1, v8

    .line 1585
    .line 1586
    move-object/from16 v7, v23

    .line 1587
    .line 1588
    move/from16 v23, v9

    .line 1589
    .line 1590
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    .line 1591
    .line 1592
    sget-object v24, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1593
    .line 1594
    const-wide/32 v30, 0xf4240

    .line 1595
    .line 1596
    .line 1597
    move-object/from16 v32, v1

    .line 1598
    .line 1599
    move-object/from16 v27, v5

    .line 1600
    .line 1601
    move v1, v6

    .line 1602
    move-object v5, v7

    .line 1603
    move-wide/from16 v6, v16

    .line 1604
    .line 1605
    move-object/from16 v33, p1

    .line 1606
    .line 1607
    move-wide/from16 v35, v8

    .line 1608
    .line 1609
    move/from16 v34, v23

    .line 1610
    .line 1611
    move-object/from16 v23, p0

    .line 1612
    .line 1613
    move-wide/from16 v8, v30

    .line 1614
    .line 1615
    move-object/from16 v30, v10

    .line 1616
    .line 1617
    move/from16 v31, v11

    .line 1618
    .line 1619
    move-wide/from16 v10, v35

    .line 1620
    .line 1621
    move/from16 v35, v12

    .line 1622
    .line 1623
    move-object/from16 v12, v24

    .line 1624
    .line 1625
    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1626
    .line 1627
    .line 1628
    move-result-wide v36

    .line 1629
    aget-wide v6, v14, v34

    .line 1630
    .line 1631
    sub-long v6, v6, v21

    .line 1632
    .line 1633
    const-wide/32 v8, 0xf4240

    .line 1634
    .line 1635
    .line 1636
    move-wide v10, v2

    .line 1637
    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1638
    .line 1639
    .line 1640
    move-result-wide v6

    .line 1641
    const-wide/16 v8, 0x0

    .line 1642
    .line 1643
    cmp-long v10, v6, v8

    .line 1644
    .line 1645
    if-gez v10, :cond_3d

    .line 1646
    .line 1647
    const/4 v10, 0x1

    .line 1648
    const/16 v20, 0x0

    .line 1649
    .line 1650
    goto :goto_31

    .line 1651
    :cond_3d
    const/4 v10, 0x1

    .line 1652
    const/16 v20, 0x1

    .line 1653
    .line 1654
    :goto_31
    xor-int/lit8 v11, v20, 0x1

    .line 1655
    .line 1656
    or-int v19, v11, v19

    .line 1657
    .line 1658
    add-long v36, v36, v6

    .line 1659
    .line 1660
    aput-wide v36, v15, v18

    .line 1661
    .line 1662
    if-eqz v0, :cond_3e

    .line 1663
    .line 1664
    aget v6, v13, v18

    .line 1665
    .line 1666
    if-le v6, v1, :cond_3e

    .line 1667
    .line 1668
    aget v1, v4, v34

    .line 1669
    .line 1670
    :cond_3e
    move v6, v1

    .line 1671
    const/4 v7, 0x1

    .line 1672
    add-int/lit8 v18, v18, 0x1

    .line 1673
    .line 1674
    add-int/lit8 v1, v34, 0x1

    .line 1675
    .line 1676
    move v9, v1

    .line 1677
    move-object/from16 p0, v23

    .line 1678
    .line 1679
    move-object/from16 v10, v30

    .line 1680
    .line 1681
    move/from16 v11, v31

    .line 1682
    .line 1683
    move-object/from16 v1, v32

    .line 1684
    .line 1685
    move-object/from16 v8, v33

    .line 1686
    .line 1687
    move/from16 v12, v35

    .line 1688
    .line 1689
    move-object/from16 v23, v5

    .line 1690
    .line 1691
    move-object/from16 v5, v27

    .line 1692
    .line 1693
    goto :goto_30

    .line 1694
    :cond_3f
    move-object/from16 v32, v1

    .line 1695
    .line 1696
    move-object/from16 v27, v5

    .line 1697
    .line 1698
    move v1, v6

    .line 1699
    move-object/from16 v33, v8

    .line 1700
    .line 1701
    move-object/from16 v30, v10

    .line 1702
    .line 1703
    move/from16 v35, v12

    .line 1704
    .line 1705
    move-object/from16 v5, v23

    .line 1706
    .line 1707
    const/4 v7, 0x1

    .line 1708
    const-wide/16 v8, 0x0

    .line 1709
    .line 1710
    move-object/from16 v23, p0

    .line 1711
    .line 1712
    aget-wide v10, v30, v35

    .line 1713
    .line 1714
    add-long v16, v16, v10

    .line 1715
    .line 1716
    add-int/lit8 v12, v35, 0x1

    .line 1717
    .line 1718
    move-object/from16 v24, v4

    .line 1719
    .line 1720
    move/from16 v9, v18

    .line 1721
    .line 1722
    move/from16 v18, v19

    .line 1723
    .line 1724
    move-object/from16 v10, v30

    .line 1725
    .line 1726
    move-object/from16 p1, v33

    .line 1727
    .line 1728
    const/4 v4, 0x0

    .line 1729
    move/from16 v19, v1

    .line 1730
    .line 1731
    move-object/from16 v23, v5

    .line 1732
    .line 1733
    move-object/from16 v5, v27

    .line 1734
    .line 1735
    move-object/from16 v1, v32

    .line 1736
    .line 1737
    goto/16 :goto_2e

    .line 1738
    .line 1739
    :cond_40
    move-object/from16 v32, v1

    .line 1740
    .line 1741
    move-object/from16 v27, v5

    .line 1742
    .line 1743
    move-object/from16 v5, v23

    .line 1744
    .line 1745
    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    .line 1746
    .line 1747
    sget-object v12, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1748
    .line 1749
    const-wide/32 v8, 0xf4240

    .line 1750
    .line 1751
    .line 1752
    move-wide/from16 v6, v16

    .line 1753
    .line 1754
    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1755
    .line 1756
    .line 1757
    move-result-wide v0

    .line 1758
    if-eqz v18, :cond_41

    .line 1759
    .line 1760
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 1761
    .line 1762
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v2

    .line 1766
    const/4 v3, 0x1

    .line 1767
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Z)Lcom/google/android/gms/internal/ads/zzx;

    .line 1768
    .line 1769
    .line 1770
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v2

    .line 1774
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzajp;->zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzajp;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v2

    .line 1778
    move-object v6, v2

    .line 1779
    goto :goto_32

    .line 1780
    :cond_41
    move-object v6, v5

    .line 1781
    :goto_32
    new-instance v2, Lcom/google/android/gms/internal/ads/zzajs;

    .line 1782
    .line 1783
    move-object/from16 v3, v27

    .line 1784
    .line 1785
    move-object v5, v2

    .line 1786
    move-object/from16 v7, v32

    .line 1787
    .line 1788
    move-object v8, v13

    .line 1789
    move/from16 v9, v19

    .line 1790
    .line 1791
    move-object v10, v15

    .line 1792
    move-object v11, v3

    .line 1793
    move-wide v12, v0

    .line 1794
    invoke-direct/range {v5 .. v13}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Lcom/google/android/gms/internal/ads/zzajp;[J[II[J[IJ)V

    .line 1795
    .line 1796
    .line 1797
    return-object v2

    .line 1798
    :cond_42
    const-string v0, "Track has no sample table size information"

    .line 1799
    .line 1800
    const/4 v1, 0x0

    .line 1801
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v0

    .line 1805
    throw v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzaej;JLcom/google/android/gms/internal/ads/zzs;ZZLcom/google/android/gms/internal/ads/zzfve;)Ljava/util/List;
    .locals 77
    .param p4    # Lcom/google/android/gms/internal/ads/zzs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    .line 1
    const-string v12, "video/hevc"

    const-string v13, "video/3gpp"

    const-string v14, "application/ttml+xml"

    const v3, 0x6d646961

    const/16 v16, 0x5

    const/4 v15, 0x4

    const/16 v8, 0x8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfc;->zzc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_98

    .line 3
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/internal/ads/zzfc;

    .line 4
    iget v1, v10, Lcom/google/android/gms/internal/ads/zzff;->zzd:I

    const v5, 0x7472616b

    if-eq v1, v5, :cond_0

    move-object/from16 v4, p7

    move-object v1, v6

    move/from16 v21, v9

    move-object/from16 v18, v12

    move-object/from16 v50, v13

    move-object/from16 v51, v14

    move/from16 v49, v15

    const/4 v0, 0x1

    const/16 v2, 0xc

    const/4 v5, 0x3

    const v7, 0x6d696e66

    const/4 v10, 0x0

    const/4 v12, 0x2

    const v20, 0x77767474

    const v22, 0x54544d4c

    const v23, 0x74783367

    const/16 v31, 0xa

    move-object/from16 v9, p1

    move v6, v3

    move v3, v8

    const v8, 0x7374626c

    goto/16 :goto_70

    :cond_0
    const v1, 0x6d766864

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x68646c72    # 4.3148E24f

    .line 9
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaix;->zzi(Lcom/google/android/gms/internal/ads/zzen;)I

    move-result v3

    const v4, 0x736f756e

    const/4 v2, -0x1

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const v4, 0x76696465

    if-ne v3, v4, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    const v4, 0x74657874

    if-eq v3, v4, :cond_3

    const v4, 0x7362746c

    if-eq v3, v4, :cond_3

    const v4, 0x73756274

    if-eq v3, v4, :cond_3

    const v4, 0x636c6370

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 v4, 0x3

    goto :goto_1

    :cond_4
    const v4, 0x6d657461

    if-ne v3, v4, :cond_5

    move/from16 v4, v16

    goto :goto_1

    :cond_5
    move v4, v2

    :goto_1
    if-ne v4, v2, :cond_6

    move-object/from16 v4, p7

    move-object/from16 v61, v6

    move v3, v8

    move/from16 v21, v9

    move-object v1, v10

    move-object/from16 v18, v12

    move-object/from16 v50, v13

    move-object/from16 v51, v14

    move/from16 v49, v15

    const/4 v0, 0x0

    const/16 v2, 0xc

    const/4 v5, 0x3

    const/4 v10, 0x0

    const/4 v12, 0x2

    const v20, 0x77767474

    const v22, 0x54544d4c

    const v23, 0x74783367

    const/16 v31, 0xa

    goto/16 :goto_6e

    :cond_6
    const v3, 0x746b6864

    .line 12
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 15
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v33

    if-nez v33, :cond_7

    goto :goto_2

    :cond_7
    const/16 v8, 0x10

    .line 17
    :goto_2
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v36

    .line 19
    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v8

    const/4 v15, 0x0

    :goto_3
    if-nez v33, :cond_8

    const/4 v7, 0x4

    goto :goto_4

    :cond_8
    const/16 v7, 0x8

    :goto_4
    const-wide/16 v42, 0x0

    move-object/from16 v50, v13

    move-object/from16 v51, v14

    if-ge v15, v7, :cond_c

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v7

    add-int v35, v8, v15

    .line 20
    aget-byte v7, v7, v35

    if-eq v7, v2, :cond_b

    if-nez v33, :cond_9

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v7

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v7

    :goto_5
    cmp-long v15, v7, v42

    if-nez v15, :cond_a

    :goto_6
    const/16 v7, 0xa

    const-wide v37, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_7

    :cond_a
    move-wide/from16 v37, v7

    const/16 v7, 0xa

    goto :goto_7

    :cond_b
    const/4 v7, 0x1

    add-int/2addr v15, v7

    move-object/from16 v13, v50

    move-object/from16 v14, v51

    goto :goto_3

    .line 22
    :cond_c
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    goto :goto_6

    .line 23
    :goto_7
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v39

    const/4 v7, 0x4

    .line 25
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v8

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v15

    .line 28
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v3

    const/high16 v2, 0x10000

    const/high16 v13, -0x10000

    if-nez v8, :cond_13

    if-ne v15, v2, :cond_f

    if-eq v7, v13, :cond_10

    if-ne v7, v2, :cond_e

    if-nez v3, :cond_d

    const/4 v7, 0x0

    goto :goto_8

    :cond_d
    const/4 v7, 0x1

    :goto_8
    move v8, v2

    const/4 v14, 0x1

    goto :goto_b

    :cond_e
    move v15, v2

    :cond_f
    :goto_9
    const/4 v8, 0x0

    goto :goto_d

    :cond_10
    if-nez v3, :cond_11

    const/4 v8, 0x0

    goto :goto_a

    :cond_11
    const/4 v8, 0x1

    :goto_a
    const/4 v14, 0x1

    move/from16 v76, v8

    move v8, v7

    move/from16 v7, v76

    :goto_b
    if-eq v14, v7, :cond_12

    const/16 v2, 0x5a

    :goto_c
    move/from16 v40, v2

    goto :goto_13

    :cond_12
    move v15, v2

    move v7, v8

    goto :goto_9

    :cond_13
    :goto_d
    if-nez v8, :cond_19

    if-ne v15, v13, :cond_16

    if-eq v7, v2, :cond_17

    if-ne v7, v13, :cond_15

    if-nez v3, :cond_14

    const/4 v7, 0x0

    goto :goto_e

    :cond_14
    const/4 v7, 0x1

    :goto_e
    move v8, v7

    move v7, v13

    :goto_f
    const/4 v14, 0x1

    goto :goto_10

    :cond_15
    move v15, v13

    :cond_16
    const/4 v8, 0x0

    goto :goto_11

    :cond_17
    if-nez v3, :cond_18

    const/4 v8, 0x0

    goto :goto_f

    :cond_18
    const/4 v8, 0x1

    goto :goto_f

    :goto_10
    if-eq v14, v8, :cond_15

    const/16 v2, 0x10e

    goto :goto_c

    :cond_19
    :goto_11
    if-eq v8, v13, :cond_1b

    if-ne v8, v2, :cond_1a

    goto :goto_12

    :cond_1a
    const/16 v40, 0x0

    goto :goto_13

    :cond_1b
    :goto_12
    if-nez v15, :cond_1a

    if-nez v7, :cond_1a

    if-ne v3, v13, :cond_1a

    const/16 v2, 0xb4

    goto :goto_c

    :goto_13
    new-instance v13, Lcom/google/android/gms/internal/ads/zzaiv;

    move-object/from16 v35, v13

    invoke-direct/range {v35 .. v40}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(IJII)V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, p2, v2

    if-nez v7, :cond_1c

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzaiv;->zzd(Lcom/google/android/gms/internal/ads/zzaiv;)J

    move-result-wide v7

    move-wide/from16 v52, v7

    goto :goto_14

    :cond_1c
    move-wide/from16 v52, p2

    :goto_14
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaix;->zzd(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzfh;

    move-result-object v1

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzfh;->zzc:J

    cmp-long v1, v52, v2

    if-nez v1, :cond_1d

    const v7, 0x6d696e66

    const-wide v39, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_15

    :cond_1d
    const-wide/32 v54, 0xf4240

    .line 32
    sget-object v58, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v56, v14

    .line 33
    invoke-static/range {v52 .. v58}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    move-wide/from16 v39, v1

    const v7, 0x6d696e66

    .line 34
    :goto_15
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, 0x7374626c

    .line 36
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x6d646864

    .line 38
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v5, 0x8

    .line 41
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_16

    :cond_1e
    const/16 v5, 0x10

    .line 43
    :goto_16
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v35

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v5

    const/4 v7, 0x0

    :goto_17
    if-nez v3, :cond_1f

    const/4 v8, 0x4

    goto :goto_18

    :cond_1f
    const/16 v8, 0x8

    :goto_18
    if-ge v7, v8, :cond_23

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v8

    add-int v37, v5, v7

    .line 45
    aget-byte v8, v8, v37

    const/4 v0, -0x1

    if-eq v8, v0, :cond_22

    if-nez v3, :cond_20

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v7

    :goto_19
    move-wide/from16 v52, v7

    goto :goto_1a

    :cond_20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v7

    goto :goto_19

    :goto_1a
    cmp-long v3, v52, v42

    if-nez v3, :cond_21

    :goto_1b
    const-wide v55, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1c

    :cond_21
    const-wide/32 v54, 0xf4240

    .line 47
    sget-object v58, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v56, v35

    .line 48
    invoke-static/range {v52 .. v58}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    move-wide/from16 v55, v7

    goto :goto_1c

    :cond_22
    const/4 v8, 0x1

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    const v8, 0x7374626c

    goto :goto_17

    :cond_23
    const/4 v0, -0x1

    .line 49
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    goto :goto_1b

    .line 50
    :goto_1c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v2

    const/16 v3, 0xa

    shr-int/lit8 v5, v2, 0xa

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v5, v5, 0x60

    int-to-char v5, v5

    shr-int/lit8 v7, v2, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    const/4 v8, 0x3

    new-array v0, v8, [C

    const/16 v26, 0x0

    aput-char v5, v0, v26

    const/4 v5, 0x1

    aput-char v7, v0, v5

    const/16 v25, 0x2

    aput-char v2, v0, v25

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v8, :cond_26

    .line 51
    aget-char v7, v0, v2

    const/16 v3, 0x61

    if-lt v7, v3, :cond_24

    const/16 v3, 0x7a

    if-le v7, v3, :cond_25

    :cond_24
    const/16 v57, 0x0

    goto :goto_1e

    :cond_25
    add-int/2addr v2, v5

    const/16 v3, 0xa

    goto :goto_1d

    .line 52
    :cond_26
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v57, v2

    .line 53
    :goto_1e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaip;

    move-object/from16 v52, v0

    move-wide/from16 v53, v35

    invoke-direct/range {v52 .. v57}, Lcom/google/android/gms/internal/ads/zzaip;-><init>(JJLjava/lang/String;)V

    const v2, 0x73747364

    .line 54
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v1

    if-eqz v1, :cond_97

    .line 55
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzaiv;->zzb(Lcom/google/android/gms/internal/ads/zzaiv;)I

    move-result v7

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzaiv;->zzc(Lcom/google/android/gms/internal/ads/zzaiv;)I

    move-result v5

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaip;->zzc(Lcom/google/android/gms/internal/ads/zzaip;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0xc

    .line 56
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    move-wide/from16 v37, v14

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v14

    new-instance v15, Lcom/google/android/gms/internal/ads/zzais;

    .line 58
    invoke-direct {v15, v14}, Lcom/google/android/gms/internal/ads/zzais;-><init>(I)V

    move-object/from16 v24, v0

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v14, :cond_8a

    move/from16 v27, v14

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v14

    move-object/from16 v35, v13

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v13

    if-lez v13, :cond_27

    const/4 v1, 0x1

    goto :goto_20

    :cond_27
    const/4 v1, 0x0

    .line 60
    :goto_20
    const-string v8, "childAtomSize must be positive"

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v1

    move/from16 v47, v4

    const v4, 0x61766331

    move/from16 v48, v5

    const v5, 0x656e6376

    if-eq v1, v4, :cond_28

    const v4, 0x61766333

    if-eq v1, v4, :cond_28

    if-eq v1, v5, :cond_28

    const v4, 0x6d317620

    if-eq v1, v4, :cond_28

    const v4, 0x6d703476

    if-eq v1, v4, :cond_28

    const v4, 0x68766331

    if-eq v1, v4, :cond_28

    const v4, 0x68657631

    if-eq v1, v4, :cond_28

    const v4, 0x73323633

    if-eq v1, v4, :cond_28

    const v4, 0x48323633

    if-eq v1, v4, :cond_28

    const v4, 0x68323633

    if-eq v1, v4, :cond_28

    const v4, 0x76703038

    if-eq v1, v4, :cond_28

    const v4, 0x76703039

    if-eq v1, v4, :cond_28

    const v4, 0x61763031

    if-eq v1, v4, :cond_28

    const v4, 0x64766176

    if-eq v1, v4, :cond_28

    const v4, 0x64766131

    if-eq v1, v4, :cond_28

    const v4, 0x64766865

    if-eq v1, v4, :cond_28

    const v4, 0x64766831

    if-eq v1, v4, :cond_28

    const v4, 0x61707631

    if-ne v1, v4, :cond_29

    :cond_28
    move v4, v1

    move-object/from16 v29, v3

    move-object/from16 v61, v6

    move/from16 v62, v7

    move/from16 v21, v9

    move-object/from16 v63, v10

    move-object/from16 v18, v12

    move-object/from16 v19, v15

    move/from16 v17, v47

    move/from16 v60, v48

    const/16 v15, 0x10

    const v20, 0x77767474

    const v22, 0x54544d4c

    const v23, 0x74783367

    const/16 v31, 0xa

    move-object v12, v2

    goto/16 :goto_28

    :cond_29
    const v4, 0x6d703461

    if-eq v1, v4, :cond_33

    const v4, 0x656e6361

    if-eq v1, v4, :cond_33

    const v4, 0x61632d33

    if-eq v1, v4, :cond_33

    const v4, 0x65632d33

    if-eq v1, v4, :cond_33

    const v4, 0x61632d34

    if-eq v1, v4, :cond_33

    const v4, 0x6d6c7061

    if-eq v1, v4, :cond_33

    const v4, 0x64747363

    if-eq v1, v4, :cond_33

    const v4, 0x64747365

    if-eq v1, v4, :cond_33

    const v4, 0x64747368

    if-eq v1, v4, :cond_33

    const v4, 0x6474736c

    if-eq v1, v4, :cond_33

    const v4, 0x64747378

    if-eq v1, v4, :cond_33

    const v4, 0x73616d72

    if-eq v1, v4, :cond_33

    const v4, 0x73617762

    if-eq v1, v4, :cond_33

    const v4, 0x6c70636d

    if-eq v1, v4, :cond_33

    const v4, 0x736f7774

    if-eq v1, v4, :cond_33

    const v4, 0x74776f73

    if-eq v1, v4, :cond_33

    const v4, 0x2e6d7032

    if-eq v1, v4, :cond_33

    const v4, 0x2e6d7033

    if-eq v1, v4, :cond_33

    const v4, 0x6d686131

    if-eq v1, v4, :cond_33

    const v4, 0x6d686d31

    if-eq v1, v4, :cond_33

    const v4, 0x616c6163

    if-eq v1, v4, :cond_33

    const v4, 0x616c6177

    if-eq v1, v4, :cond_33

    const v4, 0x756c6177

    if-eq v1, v4, :cond_33

    const v4, 0x4f707573

    if-eq v1, v4, :cond_33

    const v4, 0x664c6143

    if-eq v1, v4, :cond_33

    const v4, 0x69616d66

    if-eq v1, v4, :cond_33

    const v4, 0x6970636d

    if-eq v1, v4, :cond_33

    const v4, 0x6670636d

    if-ne v1, v4, :cond_2a

    move v4, v1

    move-object/from16 v20, v6

    move/from16 v21, v9

    move-object/from16 v18, v12

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v8, 0x1

    const v9, 0x74783367

    const v12, 0x73747070

    const/16 v19, 0x10

    goto/16 :goto_27

    :cond_2a
    const v4, 0x54544d4c

    if-eq v1, v4, :cond_2b

    const v4, 0x74783367

    if-eq v1, v4, :cond_2b

    const v4, 0x77767474

    if-eq v1, v4, :cond_2b

    const v4, 0x73747070

    if-eq v1, v4, :cond_2b

    const v4, 0x63363038

    if-ne v1, v4, :cond_2c

    :cond_2b
    const/16 v19, 0x10

    goto/16 :goto_22

    :cond_2c
    const v4, 0x6d657474

    if-ne v1, v4, :cond_2e

    const/16 v4, 0x10

    add-int/lit8 v1, v14, 0x10

    .line 62
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzy(C)Ljava/lang/String;

    .line 64
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzy(C)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d

    new-instance v1, Lcom/google/android/gms/internal/ads/zzx;

    .line 65
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzR(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    :cond_2d
    :goto_21
    move/from16 v25, v0

    move-object/from16 v61, v6

    move v6, v7

    move/from16 v21, v9

    move-object/from16 v63, v10

    move-object/from16 v18, v12

    move/from16 v57, v13

    move/from16 v65, v14

    move-object v4, v15

    move/from16 v17, v47

    move/from16 v1, v48

    const/4 v5, 0x3

    const/4 v7, -0x1

    const v20, 0x77767474

    const v22, 0x54544d4c

    const v23, 0x74783367

    const/16 v31, 0xa

    const/16 v49, 0x4

    move-object v12, v2

    const/16 v2, 0xc

    goto/16 :goto_63

    :cond_2e
    const v4, 0x63616d6d

    if-ne v1, v4, :cond_2d

    new-instance v1, Lcom/google/android/gms/internal/ads/zzx;

    .line 66
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 67
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzR(I)Lcom/google/android/gms/internal/ads/zzx;

    const-string v4, "application/x-camera-motion"

    .line 68
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    goto :goto_21

    :goto_22
    add-int/lit8 v4, v14, 0x10

    .line 70
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const v8, 0x54544d4c

    if-ne v1, v8, :cond_2f

    move-object/from16 v20, v6

    move/from16 v21, v9

    move-object/from16 v18, v12

    move-object/from16 v4, v51

    const/4 v1, 0x0

    const-wide v5, 0x7fffffffffffffffL

    const v9, 0x74783367

    :goto_23
    const v12, 0x73747070

    goto :goto_25

    :cond_2f
    move/from16 v21, v9

    const v9, 0x74783367

    if-ne v1, v9, :cond_30

    add-int/lit8 v1, v13, -0x10

    .line 71
    new-array v4, v1, [B

    const/4 v5, 0x0

    .line 72
    invoke-virtual {v2, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 73
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v1

    const-string v4, "application/x-quicktime-tx3g"

    move-object/from16 v20, v6

    move-object/from16 v18, v12

    :goto_24
    const-wide v5, 0x7fffffffffffffffL

    goto :goto_23

    :cond_30
    const v4, 0x77767474

    const/4 v5, 0x0

    if-ne v1, v4, :cond_31

    const-string v1, "application/x-mp4-vtt"

    move-object v4, v1

    move-object/from16 v20, v6

    move-object/from16 v18, v12

    const/4 v1, 0x0

    goto :goto_24

    :cond_31
    move-object/from16 v18, v12

    const v12, 0x73747070

    if-ne v1, v12, :cond_32

    move-object/from16 v20, v6

    move-wide/from16 v5, v42

    move-object/from16 v4, v51

    const/4 v1, 0x0

    goto :goto_25

    :cond_32
    const/4 v1, 0x1

    iput v1, v15, Lcom/google/android/gms/internal/ads/zzais;->zzd:I

    const-string v17, "application/x-mp4-cea-608"

    move-object/from16 v20, v6

    move-object/from16 v4, v17

    const/4 v1, 0x0

    const-wide v5, 0x7fffffffffffffffL

    .line 74
    :goto_25
    new-instance v8, Lcom/google/android/gms/internal/ads/zzx;

    .line 75
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 76
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzR(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 77
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 78
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 79
    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzal(J)Lcom/google/android/gms/internal/ads/zzx;

    .line 80
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzT(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 81
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    move/from16 v25, v0

    move-object v12, v2

    move v6, v7

    move/from16 v23, v9

    move-object/from16 v63, v10

    move/from16 v57, v13

    move/from16 v65, v14

    move-object v4, v15

    move-object/from16 v61, v20

    move/from16 v17, v47

    move/from16 v1, v48

    const/16 v2, 0xc

    const/4 v5, 0x3

    const/4 v7, -0x1

    const v20, 0x77767474

    const v22, 0x54544d4c

    const/16 v31, 0xa

    :goto_26
    const/16 v49, 0x4

    goto/16 :goto_63

    :cond_33
    move-object/from16 v20, v6

    move/from16 v21, v9

    move-object/from16 v18, v12

    const/4 v8, 0x1

    const v9, 0x74783367

    const v12, 0x73747070

    const/16 v19, 0x10

    move v4, v1

    const/16 v5, 0xc

    const/4 v6, 0x0

    :goto_27
    move-object v1, v2

    move-object v12, v2

    const/16 v31, 0xa

    move v2, v4

    move-object/from16 v29, v3

    const/4 v4, 0x0

    move v3, v14

    move/from16 v17, v47

    const v22, 0x6d317620

    const v23, 0x76703038

    const v30, 0x77767474

    move v4, v13

    move/from16 v60, v48

    const/16 v28, 0x8

    move v5, v7

    move-object/from16 v61, v20

    move-object/from16 v6, v29

    move/from16 v62, v7

    move/from16 v7, p6

    const/16 v20, 0x3

    const v22, 0x54544d4c

    move-object/from16 v8, p4

    move/from16 v23, v9

    move-object v9, v15

    move-object/from16 v63, v10

    move/from16 v20, v30

    move/from16 v76, v19

    move-object/from16 v19, v15

    move/from16 v15, v76

    move v10, v0

    .line 82
    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzaix;->zzq(Lcom/google/android/gms/internal/ads/zzen;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzais;I)V

    move/from16 v25, v0

    move/from16 v57, v13

    move/from16 v65, v14

    move-object/from16 v4, v19

    move-object/from16 v3, v29

    move/from16 v1, v60

    move/from16 v6, v62

    const/16 v2, 0xc

    const/4 v5, 0x3

    const/4 v7, -0x1

    goto :goto_26

    :goto_28
    add-int/lit8 v10, v14, 0x10

    .line 83
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 84
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 85
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v1

    .line 86
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v2

    const/16 v3, 0x32

    .line 87
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v3

    if-ne v4, v5, :cond_36

    .line 88
    invoke-static {v12, v14, v13}, Lcom/google/android/gms/internal/ads/zzaix;->zzj(Lcom/google/android/gms/internal/ads/zzen;II)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 89
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v11, :cond_34

    move-object/from16 v7, v19

    const/4 v6, 0x0

    goto :goto_29

    .line 90
    :cond_34
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzajq;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzajq;->zzb:Ljava/lang/String;

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v6

    move-object/from16 v7, v19

    .line 91
    :goto_29
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzais;->zza:[Lcom/google/android/gms/internal/ads/zzajq;

    .line 92
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzajq;

    aput-object v4, v9, v0

    goto :goto_2a

    :cond_35
    move-object/from16 v7, v19

    move-object v6, v11

    .line 93
    :goto_2a
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    move v4, v5

    :goto_2b
    const v5, 0x6d317620

    goto :goto_2c

    :cond_36
    move-object/from16 v7, v19

    move-object v6, v11

    goto :goto_2b

    :goto_2c
    if-ne v4, v5, :cond_37

    const-string v9, "video/mpeg"

    goto :goto_2d

    :cond_37
    const v9, 0x48323633

    if-ne v4, v9, :cond_38

    move v4, v9

    move-object/from16 v9, v50

    goto :goto_2d

    :cond_38
    const/4 v9, 0x0

    :goto_2d
    const/high16 v10, 0x3f800000    # 1.0f

    move/from16 v25, v0

    move/from16 v54, v1

    move/from16 v53, v2

    move/from16 v56, v4

    move-object/from16 v28, v6

    move-object v1, v9

    move/from16 v64, v10

    const/4 v0, -0x1

    const/16 v2, 0x8

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/16 v10, 0x8

    const/4 v11, -0x1

    const/4 v15, -0x1

    const/16 v30, -0x1

    const/16 v32, -0x1

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v41, 0x0

    const/16 v46, 0x0

    const/16 v47, -0x1

    const/16 v48, 0x0

    const/16 v52, -0x1

    const/16 v55, 0x0

    move v6, v3

    const/4 v3, 0x0

    :goto_2e
    sub-int v4, v6, v14

    if-ge v4, v13, :cond_39

    .line 94
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v4

    .line 95
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v57

    if-nez v57, :cond_3b

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v57

    move/from16 v58, v6

    sub-int v6, v57, v14

    if-ne v6, v13, :cond_3a

    :cond_39
    move/from16 v67, v2

    move-object/from16 v66, v7

    move/from16 v75, v9

    move/from16 v69, v10

    move/from16 v70, v11

    move/from16 v57, v13

    move/from16 v65, v14

    const/16 v2, 0xc

    const/4 v5, 0x3

    const/4 v7, -0x1

    const/16 v49, 0x4

    goto/16 :goto_60

    :cond_3a
    const/4 v6, 0x0

    goto :goto_2f

    :cond_3b
    move/from16 v58, v6

    move/from16 v6, v57

    :goto_2f
    if-lez v6, :cond_3c

    move/from16 v57, v13

    const/4 v13, 0x1

    goto :goto_30

    :cond_3c
    move/from16 v57, v13

    const/4 v13, 0x0

    .line 96
    :goto_30
    invoke-static {v13, v8}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 97
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v13

    move/from16 v65, v14

    const v14, 0x61766343

    if-ne v13, v14, :cond_3f

    const/16 v14, 0x8

    add-int/2addr v4, v14

    if-nez v1, :cond_3d

    const/4 v0, 0x1

    :goto_31
    const/4 v1, 0x0

    goto :goto_32

    :cond_3d
    const/4 v0, 0x0

    goto :goto_31

    .line 98
    :goto_32
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 99
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 100
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzacz;->zza(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzacz;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzacz;->zza:Ljava/util/List;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:I

    iput v3, v7, Lcom/google/android/gms/internal/ads/zzais;->zzc:I

    if-nez v48, :cond_3e

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzk:F

    move/from16 v64, v3

    const/4 v3, 0x0

    goto :goto_33

    :cond_3e
    const/4 v3, 0x1

    :goto_33
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzl:Ljava/lang/String;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzj:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzg:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzh:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzi:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzacz;->zze:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzf:I

    const-string v48, "video/avc"

    move/from16 v67, v0

    move-object/from16 v55, v4

    move-object/from16 v66, v7

    move-object/from16 v68, v8

    move/from16 v32, v10

    move v0, v15

    move/from16 v59, v56

    const/4 v7, -0x1

    const/16 v49, 0x4

    move v10, v1

    move-object/from16 v56, v5

    move v15, v11

    move v11, v13

    move-object/from16 v1, v48

    const/4 v5, 0x3

    move/from16 v48, v3

    move-object v3, v2

    const/16 v2, 0xc

    goto/16 :goto_5f

    :cond_3f
    move/from16 v59, v9

    const/16 v14, 0x8

    const v9, 0x68766343

    if-ne v13, v9, :cond_43

    add-int/2addr v4, v14

    if-nez v1, :cond_40

    const/4 v0, 0x1

    :goto_34
    const/4 v9, 0x0

    goto :goto_35

    :cond_40
    const/4 v0, 0x0

    goto :goto_34

    .line 101
    :goto_35
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 102
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 103
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzaek;->zza(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzaek;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zza:Ljava/util/List;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:I

    iput v2, v7, Lcom/google/android/gms/internal/ads/zzais;->zzc:I

    if-nez v48, :cond_41

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzl:F

    move/from16 v64, v2

    const/4 v2, 0x0

    goto :goto_36

    :cond_41
    const/4 v2, 0x1

    :goto_36
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzm:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzn:Ljava/lang/String;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzk:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_42

    goto :goto_37

    :cond_42
    move/from16 v10, v59

    :goto_37
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzd:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaek;->zze:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzh:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzj:I

    move-object/from16 v30, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzf:I

    move/from16 v32, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzo:Lcom/google/android/gms/internal/ads/zzfs;

    move/from16 v67, v1

    move/from16 v48, v2

    move-object/from16 v55, v5

    move-object/from16 v66, v7

    move-object/from16 v68, v8

    move/from16 v52, v11

    move/from16 v47, v13

    move-object/from16 v1, v18

    move/from16 v59, v56

    const/16 v2, 0xc

    const/4 v5, 0x3

    const/4 v7, -0x1

    const/16 v49, 0x4

    move-object/from16 v56, v0

    move v11, v9

    move v9, v10

    move v0, v14

    move/from16 v10, v32

    move/from16 v32, v3

    move-object/from16 v3, v30

    move/from16 v30, v4

    goto/16 :goto_5f

    :cond_43
    const v9, 0x6c687643

    if-ne v13, v9, :cond_50

    const/16 v9, 0x8

    add-int/2addr v4, v9

    move-object/from16 v9, v18

    .line 104
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v13, "lhvC must follow hvcC atom"

    .line 105
    invoke-static {v1, v13}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    if-eqz v5, :cond_45

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzfs;->zza:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 106
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v14, 0x2

    if-lt v1, v14, :cond_44

    const/4 v1, 0x1

    goto :goto_38

    :cond_44
    const/4 v1, 0x0

    goto :goto_38

    :cond_45
    const/4 v14, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_38
    const-string v13, "must have at least two layers"

    .line 107
    invoke-static {v1, v13}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 108
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 109
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/ads/zzaek;->zzb(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzfs;)Lcom/google/android/gms/internal/ads/zzaek;

    move-result-object v1

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzais;->zzc:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzaek;->zzb:I

    if-ne v4, v13, :cond_46

    const/4 v4, 0x1

    goto :goto_39

    :cond_46
    const/4 v4, 0x0

    :goto_39
    const-string v13, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    .line 111
    invoke-static {v4, v13}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaek;->zzh:I

    const/4 v13, -0x1

    if-eq v4, v13, :cond_48

    if-ne v15, v4, :cond_47

    const/4 v4, 0x1

    goto :goto_3a

    :cond_47
    const/4 v4, 0x0

    :goto_3a
    const-string v14, "colorSpace must be the same for both views"

    .line 112
    invoke-static {v4, v14}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    :cond_48
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaek;->zzi:I

    if-eq v4, v13, :cond_4a

    if-ne v11, v4, :cond_49

    const/4 v4, 0x1

    goto :goto_3b

    :cond_49
    const/4 v4, 0x0

    :goto_3b
    const-string v14, "colorRange must be the same for both views"

    .line 113
    invoke-static {v4, v14}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    :cond_4a
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaek;->zzj:I

    if-eq v4, v13, :cond_4c

    if-ne v0, v4, :cond_4b

    const/4 v4, 0x1

    goto :goto_3c

    :cond_4b
    const/4 v4, 0x0

    :goto_3c
    const-string v13, "colorTransfer must be the same for both views"

    .line 114
    invoke-static {v4, v13}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    :cond_4c
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaek;->zzf:I

    if-ne v10, v4, :cond_4d

    const/4 v4, 0x1

    goto :goto_3d

    :cond_4d
    const/4 v4, 0x0

    :goto_3d
    const-string v13, "bitdepthLuma must be the same for both views"

    .line 115
    invoke-static {v4, v13}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    if-ne v2, v4, :cond_4e

    const/4 v4, 0x1

    goto :goto_3e

    :cond_4e
    const/4 v4, 0x0

    :goto_3e
    const-string v13, "bitdepthChroma must be the same for both views"

    .line 116
    invoke-static {v4, v13}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    if-eqz v3, :cond_4f

    .line 117
    sget v4, Lcom/google/android/gms/internal/ads/zzfyq;->zzd:I

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 118
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>()V

    .line 119
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzfyn;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfyn;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaek;->zza:Ljava/util/List;

    .line 120
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzfyn;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 121
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfyn;->zzi()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v3

    const/4 v14, 0x0

    goto :goto_3f

    :cond_4f
    const-string v3, "initializationData must be already set from hvcC atom"

    const/4 v14, 0x0

    .line 122
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    const/4 v3, 0x0

    .line 123
    :goto_3f
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaek;->zzn:Ljava/lang/String;

    const-string v4, "video/mv-hevc"

    move-object/from16 v55, v1

    move/from16 v67, v2

    move-object v1, v4

    move-object/from16 v66, v7

    move-object/from16 v68, v8

    move-object/from16 v18, v9

    move/from16 v9, v59

    const/16 v2, 0xc

    const/4 v7, -0x1

    const/16 v49, 0x4

    move/from16 v59, v56

    :goto_40
    move-object/from16 v56, v5

    const/4 v5, 0x3

    goto/16 :goto_5f

    :cond_50
    move-object/from16 v9, v18

    const v14, 0x76657875

    if-ne v13, v14, :cond_60

    const/16 v14, 0x8

    add-int/lit8 v13, v4, 0x8

    .line 124
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v13

    move-object/from16 v18, v9

    move v14, v13

    const/4 v13, 0x0

    :goto_41
    sub-int v9, v14, v4

    if-ge v9, v6, :cond_59

    .line 125
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 126
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v9

    if-lez v9, :cond_51

    move-object/from16 v66, v7

    const/4 v7, 0x1

    goto :goto_42

    :cond_51
    move-object/from16 v66, v7

    const/4 v7, 0x0

    .line 127
    :goto_42
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 128
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    move/from16 v67, v2

    const v2, 0x65796573

    if-ne v7, v2, :cond_58

    const/16 v2, 0x8

    add-int/lit8 v7, v14, 0x8

    .line 129
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v2

    :goto_43
    sub-int v7, v2, v14

    if-ge v7, v9, :cond_57

    .line 130
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 131
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    if-lez v7, :cond_52

    const/4 v13, 0x1

    goto :goto_44

    :cond_52
    const/4 v13, 0x0

    .line 132
    :goto_44
    invoke-static {v13, v8}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 133
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v13

    move-object/from16 v68, v8

    const v8, 0x73747269

    if-ne v13, v8, :cond_56

    const/4 v8, 0x4

    .line 134
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 135
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v2

    const/4 v8, 0x1

    and-int/lit8 v7, v2, 0x1

    const/4 v13, 0x2

    and-int/lit8 v8, v2, 0x2

    if-ne v8, v13, :cond_53

    const/4 v8, 0x1

    :goto_45
    const/16 v13, 0x8

    goto :goto_46

    :cond_53
    const/4 v8, 0x0

    goto :goto_45

    :goto_46
    and-int/2addr v2, v13

    if-ne v2, v13, :cond_54

    const/4 v2, 0x1

    :goto_47
    const/4 v13, 0x1

    goto :goto_48

    :cond_54
    const/4 v2, 0x0

    goto :goto_47

    :goto_48
    if-eq v13, v7, :cond_55

    const/4 v7, 0x0

    goto :goto_49

    :cond_55
    const/4 v7, 0x1

    :goto_49
    new-instance v13, Lcom/google/android/gms/internal/ads/zzaio;

    move/from16 v69, v10

    new-instance v10, Lcom/google/android/gms/internal/ads/zzair;

    .line 136
    invoke-direct {v10, v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzair;-><init>(ZZZ)V

    invoke-direct {v13, v10}, Lcom/google/android/gms/internal/ads/zzaio;-><init>(Lcom/google/android/gms/internal/ads/zzair;)V

    goto :goto_4a

    :cond_56
    move/from16 v69, v10

    add-int/2addr v2, v7

    move-object/from16 v8, v68

    goto :goto_43

    :cond_57
    move-object/from16 v68, v8

    move/from16 v69, v10

    const/4 v13, 0x0

    goto :goto_4a

    :cond_58
    move-object/from16 v68, v8

    move/from16 v69, v10

    :goto_4a
    add-int/2addr v14, v9

    move-object/from16 v7, v66

    move/from16 v2, v67

    move-object/from16 v8, v68

    move/from16 v10, v69

    goto/16 :goto_41

    :cond_59
    move/from16 v67, v2

    move-object/from16 v66, v7

    move-object/from16 v68, v8

    move/from16 v69, v10

    if-nez v13, :cond_5a

    const/4 v2, 0x0

    goto :goto_4b

    .line 137
    :cond_5a
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaiw;

    invoke-direct {v2, v13}, Lcom/google/android/gms/internal/ads/zzaiw;-><init>(Lcom/google/android/gms/internal/ads/zzaio;)V

    :goto_4b
    if-eqz v2, :cond_5b

    if-eqz v5, :cond_5d

    .line 138
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzfs;->zza:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 139
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    const/4 v7, 0x2

    if-lt v4, v7, :cond_5c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaiw;->zzb()Z

    move-result v4

    const-string v7, "both eye views must be marked as available"

    .line 140
    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaiw;->zza(Lcom/google/android/gms/internal/ads/zzaiw;)Lcom/google/android/gms/internal/ads/zzaio;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaio;->zza(Lcom/google/android/gms/internal/ads/zzaio;)Lcom/google/android/gms/internal/ads/zzair;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzair;->zza(Lcom/google/android/gms/internal/ads/zzair;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    const-string v7, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 141
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    :cond_5b
    move/from16 v70, v11

    move/from16 v75, v59

    const/16 v2, 0xc

    const/4 v7, -0x1

    const/16 v49, 0x4

    move/from16 v59, v56

    move-object/from16 v56, v5

    const/4 v5, 0x3

    goto/16 :goto_59

    :cond_5c
    const/4 v4, 0x1

    move/from16 v8, v59

    :goto_4c
    const/4 v7, -0x1

    goto :goto_4d

    :cond_5d
    const/4 v4, 0x1

    move/from16 v8, v59

    const/4 v5, 0x0

    goto :goto_4c

    :goto_4d
    if-ne v8, v7, :cond_5f

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaiw;->zza(Lcom/google/android/gms/internal/ads/zzaiw;)Lcom/google/android/gms/internal/ads/zzaio;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaio;->zza(Lcom/google/android/gms/internal/ads/zzaio;)Lcom/google/android/gms/internal/ads/zzair;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzair;->zza(Lcom/google/android/gms/internal/ads/zzair;)Z

    move-result v2

    if-eq v4, v2, :cond_5e

    move/from16 v59, v56

    move/from16 v10, v69

    const/16 v2, 0xc

    const/4 v7, -0x1

    const/4 v9, 0x4

    :goto_4e
    const/16 v49, 0x4

    goto/16 :goto_40

    :cond_5e
    move/from16 v9, v16

    move/from16 v59, v56

    move/from16 v10, v69

    const/16 v2, 0xc

    const/4 v7, -0x1

    goto :goto_4e

    :cond_5f
    move v9, v8

    move/from16 v59, v56

    move/from16 v10, v69

    const/16 v2, 0xc

    goto :goto_4e

    :cond_60
    move/from16 v67, v2

    move-object/from16 v66, v7

    move-object/from16 v68, v8

    move-object/from16 v18, v9

    move/from16 v69, v10

    move/from16 v8, v59

    const v2, 0x64766343

    if-eq v13, v2, :cond_61

    const v2, 0x64767643

    if-eq v13, v2, :cond_61

    const v2, 0x64767743

    if-ne v13, v2, :cond_62

    :cond_61
    move/from16 v75, v8

    move/from16 v70, v11

    move/from16 v59, v56

    const/16 v2, 0xc

    const/4 v7, -0x1

    const/16 v49, 0x4

    move-object/from16 v56, v5

    const/4 v5, 0x3

    goto/16 :goto_5d

    :cond_62
    const v2, 0x76706343

    if-ne v13, v2, :cond_67

    const/16 v2, 0xc

    add-int/2addr v4, v2

    if-nez v1, :cond_63

    const/4 v0, 0x0

    const/4 v7, 0x1

    goto :goto_4f

    :cond_63
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 142
    :goto_4f
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 143
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 144
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v0

    int-to-byte v0, v0

    .line 145
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v1

    int-to-byte v1, v1

    .line 146
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v4

    const/4 v7, 0x4

    shr-int/lit8 v9, v4, 0x4

    const/4 v7, 0x1

    shr-int/lit8 v10, v4, 0x1

    move/from16 v7, v56

    const v14, 0x76703038

    if-ne v7, v14, :cond_64

    const-string v11, "video/x-vnd.on2.vp8"

    goto :goto_50

    .line 147
    :cond_64
    const-string v11, "video/x-vnd.on2.vp9"

    .line 148
    :goto_50
    const-string v13, "video/x-vnd.on2.vp9"

    .line 149
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_65

    and-int/lit8 v3, v10, 0x7

    int-to-byte v10, v9

    .line 150
    sget v13, Lcom/google/android/gms/internal/ads/zzdk;->zza:I

    int-to-byte v3, v3

    new-array v13, v2, [B

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-byte v14, v13, v15

    aput-byte v14, v13, v14

    const/4 v15, 0x2

    aput-byte v0, v13, v15

    const/4 v0, 0x3

    aput-byte v15, v13, v0

    const/16 v49, 0x4

    aput-byte v14, v13, v49

    aput-byte v1, v13, v16

    const/4 v1, 0x6

    aput-byte v0, v13, v1

    const/4 v1, 0x7

    aput-byte v14, v13, v1

    const/16 v1, 0x8

    aput-byte v10, v13, v1

    const/16 v1, 0x9

    aput-byte v49, v13, v1

    aput-byte v14, v13, v31

    const/16 v1, 0xb

    aput-byte v3, v13, v1

    .line 151
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v3

    goto :goto_51

    :cond_65
    const/4 v0, 0x3

    const/4 v14, 0x1

    const/16 v49, 0x4

    :goto_51
    and-int/lit8 v1, v4, 0x1

    .line 152
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v4

    .line 153
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v10

    .line 154
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v4

    if-eq v14, v1, :cond_66

    const/4 v1, 0x2

    goto :goto_52

    :cond_66
    const/4 v1, 0x1

    :goto_52
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v10

    move v15, v4

    move-object/from16 v56, v5

    move/from16 v59, v7

    move/from16 v67, v9

    const/4 v7, -0x1

    move v5, v0

    move v0, v10

    move/from16 v10, v67

    move v9, v8

    move-object/from16 v76, v11

    move v11, v1

    move-object/from16 v1, v76

    goto/16 :goto_5f

    :cond_67
    move/from16 v7, v56

    const/16 v2, 0xc

    const/4 v9, 0x3

    const/16 v49, 0x4

    const v10, 0x61763143

    if-ne v13, v10, :cond_68

    add-int/lit8 v0, v6, -0x8

    const/16 v1, 0x8

    add-int/2addr v4, v1

    .line 155
    new-array v1, v0, [B

    const/4 v3, 0x0

    .line 156
    invoke-virtual {v12, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 157
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v0

    .line 158
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 159
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzaix;->zzl(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v1

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzk;->zzf:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzk;->zzg:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzk;->zzb:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzk;->zzc:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzk;->zzd:I

    const-string v13, "video/av01"

    move/from16 v67, v4

    move-object/from16 v56, v5

    move/from16 v59, v7

    move v5, v9

    move v15, v10

    const/4 v7, -0x1

    move v10, v3

    move v9, v8

    move-object v3, v0

    move v0, v1

    move-object v1, v13

    goto/16 :goto_5f

    :cond_68
    const v10, 0x636c6c69

    if-ne v13, v10, :cond_6a

    if-nez v34, :cond_69

    .line 160
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaix;->zzp()Ljava/nio/ByteBuffer;

    move-result-object v34

    :cond_69
    move-object/from16 v4, v34

    const/16 v10, 0x15

    .line 161
    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v10

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v10

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v34, v4

    move-object/from16 v56, v5

    move/from16 v59, v7

    move v5, v9

    move/from16 v10, v69

    const/4 v7, -0x1

    move v9, v8

    goto/16 :goto_5f

    :cond_6a
    const v10, 0x6d646376

    if-ne v13, v10, :cond_6c

    if-nez v34, :cond_6b

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaix;->zzp()Ljava/nio/ByteBuffer;

    move-result-object v34

    :cond_6b
    move-object/from16 v4, v34

    .line 165
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v10

    .line 166
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v13

    .line 167
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v14

    .line 168
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v2

    .line 169
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v9

    move-object/from16 v56, v5

    .line 170
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v5

    move/from16 v59, v7

    .line 171
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v7

    move/from16 v70, v11

    .line 172
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v11

    .line 173
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v71

    .line 174
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v73

    move/from16 v75, v8

    const/4 v8, 0x1

    .line 175
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 177
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 178
    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 180
    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 181
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 182
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v7, 0x2710

    div-long v7, v71, v7

    long-to-int v2, v7

    int-to-short v2, v2

    .line 184
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v7, 0x2710

    div-long v7, v73, v7

    long-to-int v2, v7

    int-to-short v2, v2

    .line 185
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v34, v4

    :goto_53
    move/from16 v10, v69

    move/from16 v11, v70

    move/from16 v9, v75

    const/16 v2, 0xc

    const/4 v5, 0x3

    :goto_54
    const/4 v7, -0x1

    goto/16 :goto_5f

    :cond_6c
    move-object/from16 v56, v5

    move/from16 v59, v7

    move/from16 v75, v8

    move/from16 v70, v11

    const v2, 0x64323633

    if-ne v13, v2, :cond_6e

    if-nez v1, :cond_6d

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_55

    :cond_6d
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 186
    :goto_55
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    move-object/from16 v1, v50

    goto :goto_53

    :cond_6e
    const/4 v2, 0x0

    const v5, 0x65736473

    if-ne v13, v5, :cond_71

    if-nez v1, :cond_6f

    const/4 v7, 0x1

    goto :goto_56

    :cond_6f
    const/4 v7, 0x0

    .line 187
    :goto_56
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 188
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzaix;->zzo(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzain;->zzc(Lcom/google/android/gms/internal/ads/zzain;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzain;->zzd(Lcom/google/android/gms/internal/ads/zzain;)[B

    move-result-object v4

    if-eqz v4, :cond_70

    .line 189
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v3

    :cond_70
    move-object/from16 v46, v1

    move-object v1, v2

    goto :goto_53

    :cond_71
    const v2, 0x62747274

    if-ne v13, v2, :cond_72

    .line 190
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzaix;->zzn(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzail;

    move-result-object v2

    move-object/from16 v41, v2

    goto :goto_53

    :cond_72
    const v2, 0x70617370

    if-ne v13, v2, :cond_73

    const/16 v2, 0x8

    add-int/2addr v4, v2

    .line 191
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 192
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v4

    .line 193
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v5

    int-to-float v4, v4

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v64, v4

    move/from16 v10, v69

    move/from16 v11, v70

    move/from16 v9, v75

    const/16 v2, 0xc

    const/4 v5, 0x3

    const/4 v7, -0x1

    const/16 v48, 0x1

    goto/16 :goto_5f

    :cond_73
    const/16 v2, 0x8

    const v5, 0x73763364

    if-ne v13, v5, :cond_76

    add-int/lit8 v8, v4, 0x8

    :goto_57
    sub-int v2, v8, v4

    if-ge v2, v6, :cond_75

    .line 194
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 195
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v2

    add-int/2addr v2, v8

    .line 196
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v5

    const v7, 0x70726f6a

    if-ne v5, v7, :cond_74

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v4

    .line 197
    invoke-static {v4, v8, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    move-object/from16 v36, v2

    goto/16 :goto_53

    :cond_74
    move v8, v2

    goto :goto_57

    :cond_75
    move/from16 v10, v69

    move/from16 v11, v70

    move/from16 v9, v75

    const/16 v2, 0xc

    const/4 v5, 0x3

    const/4 v7, -0x1

    const/16 v36, 0x0

    goto/16 :goto_5f

    :cond_76
    const v2, 0x73743364

    if-ne v13, v2, :cond_7c

    .line 198
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v2

    const/4 v5, 0x3

    .line 199
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    if-nez v2, :cond_77

    .line 200
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v2

    if-eqz v2, :cond_7b

    const/4 v4, 0x1

    if-eq v2, v4, :cond_7a

    const/4 v4, 0x2

    if-eq v2, v4, :cond_79

    if-eq v2, v5, :cond_78

    :cond_77
    const/16 v2, 0xc

    const/4 v7, -0x1

    goto/16 :goto_59

    :cond_78
    move v9, v5

    move/from16 v10, v69

    move/from16 v11, v70

    const/16 v2, 0xc

    goto/16 :goto_54

    :cond_79
    move/from16 v10, v69

    move/from16 v11, v70

    const/16 v2, 0xc

    const/4 v7, -0x1

    const/4 v9, 0x2

    goto/16 :goto_5f

    :cond_7a
    move/from16 v10, v69

    move/from16 v11, v70

    const/16 v2, 0xc

    const/4 v7, -0x1

    const/4 v9, 0x1

    goto/16 :goto_5f

    :cond_7b
    move/from16 v10, v69

    move/from16 v11, v70

    const/16 v2, 0xc

    const/4 v7, -0x1

    const/4 v9, 0x0

    goto/16 :goto_5f

    :cond_7c
    const/4 v5, 0x3

    const v2, 0x61707643

    if-ne v13, v2, :cond_7d

    const/16 v2, 0xc

    add-int/2addr v4, v2

    add-int/lit8 v0, v6, -0xc

    .line 201
    new-array v1, v0, [B

    .line 202
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 v3, 0x0

    .line 203
    invoke-virtual {v12, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 204
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzen;

    .line 205
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaix;->zzk(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v1

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzk;->zzf:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzk;->zzg:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzk;->zzb:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzk;->zzc:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzk;->zzd:I

    const-string v9, "video/apv"

    move v10, v3

    move/from16 v67, v4

    move v15, v7

    move v11, v8

    const/4 v7, -0x1

    move-object v3, v0

    move v0, v1

    move-object v1, v9

    :goto_58
    move/from16 v9, v75

    goto/16 :goto_5f

    :cond_7d
    const/16 v2, 0xc

    const v4, 0x636f6c72

    const/4 v7, -0x1

    if-ne v13, v4, :cond_7f

    if-ne v15, v7, :cond_7f

    if-ne v0, v7, :cond_84

    .line 206
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v0

    const v4, 0x6e636c78

    if-eq v0, v4, :cond_80

    const v4, 0x6e636c63

    if-ne v0, v4, :cond_7e

    goto :goto_5a

    .line 207
    :cond_7e
    const-string v4, "Unsupported color type: "

    .line 208
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzff;->zze(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "BoxParsers"

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    move v15, v0

    :cond_7f
    :goto_59
    move/from16 v10, v69

    move/from16 v11, v70

    goto :goto_58

    .line 209
    :cond_80
    :goto_5a
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v0

    .line 210
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v4

    const/4 v8, 0x2

    .line 211
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    const/16 v8, 0x13

    if-ne v6, v8, :cond_82

    .line 212
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_81

    move v6, v8

    const/4 v8, 0x1

    goto :goto_5b

    :cond_81
    move v6, v8

    :cond_82
    const/4 v8, 0x0

    .line 213
    :goto_5b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v0

    const/4 v9, 0x1

    if-eq v9, v8, :cond_83

    const/4 v9, 0x2

    goto :goto_5c

    :cond_83
    const/4 v9, 0x1

    :goto_5c
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v4

    move v15, v0

    move v0, v4

    move v11, v9

    move/from16 v10, v69

    goto :goto_58

    :cond_84
    move v15, v7

    goto :goto_59

    :goto_5d
    add-int/lit8 v8, v6, -0x8

    const/16 v9, 0x8

    add-int/2addr v4, v9

    .line 214
    new-array v9, v8, [B

    const/4 v10, 0x0

    .line 215
    invoke-virtual {v12, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    if-eqz v3, :cond_85

    .line 216
    sget v8, Lcom/google/android/gms/internal/ads/zzfyq;->zzd:I

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 217
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>()V

    .line 218
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzfyn;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 219
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzfyn;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 220
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfyn;->zzi()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v3

    goto :goto_5e

    .line 221
    :cond_85
    const-string v3, "initializationData must already be set from hvcC or avcC atom"

    .line 222
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    const/4 v3, 0x0

    .line 223
    :goto_5e
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 224
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzez;->zza(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v4

    if-eqz v4, :cond_7f

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzez;->zza:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    move-object/from16 v55, v1

    move-object v1, v4

    goto :goto_59

    :goto_5f
    add-int v6, v58, v6

    move-object/from16 v5, v56

    move/from16 v13, v57

    move/from16 v56, v59

    move/from16 v14, v65

    move-object/from16 v7, v66

    move/from16 v2, v67

    move-object/from16 v8, v68

    goto/16 :goto_2e

    :goto_60
    if-nez v1, :cond_86

    move-object/from16 v3, v29

    move/from16 v1, v60

    move/from16 v6, v62

    move-object/from16 v4, v66

    goto/16 :goto_63

    .line 225
    :cond_86
    new-instance v4, Lcom/google/android/gms/internal/ads/zzx;

    .line 226
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    move/from16 v6, v62

    .line 227
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzR(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 228
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v1, v55

    .line 229
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v1, v54

    .line 230
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzam(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v1, v53

    .line 231
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzQ(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v1, v52

    .line 232
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzK(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v1, v47

    .line 233
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzJ(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v10, v64

    .line 234
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzx;->zzad(F)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v1, v60

    .line 235
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzag(I)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v8, v36

    .line 236
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzae([B)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v9, v75

    .line 237
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzx;->zzak(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 238
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzT(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v3, v32

    .line 239
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzY(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v3, v30

    .line 240
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzZ(I)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v11, v28

    .line 241
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzx;->zzL(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v3, v29

    .line 242
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzi;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    .line 243
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    move/from16 v11, v70

    .line 244
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 245
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    if-eqz v34, :cond_87

    .line 246
    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_61

    :cond_87
    const/4 v0, 0x0

    :goto_61
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzi;->zze([B)Lcom/google/android/gms/internal/ads/zzi;

    move/from16 v10, v69

    .line 247
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    move/from16 v0, v67

    .line 248
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 249
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v0

    .line 250
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzF(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzx;

    if-eqz v41, :cond_88

    invoke-static/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/zzail;->zza(Lcom/google/android/gms/internal/ads/zzail;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    move-result v0

    .line 251
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-static/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/zzail;->zzb(Lcom/google/android/gms/internal/ads/zzail;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    move-result v0

    .line 252
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzac(I)Lcom/google/android/gms/internal/ads/zzx;

    goto :goto_62

    :cond_88
    if-eqz v46, :cond_89

    .line 253
    invoke-static/range {v46 .. v46}, Lcom/google/android/gms/internal/ads/zzain;->zza(Lcom/google/android/gms/internal/ads/zzain;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    move-result v0

    .line 254
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-static/range {v46 .. v46}, Lcom/google/android/gms/internal/ads/zzain;->zzb(Lcom/google/android/gms/internal/ads/zzain;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    move-result v0

    .line 255
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzac(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 256
    :cond_89
    :goto_62
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    move-object/from16 v4, v66

    iput-object v0, v4, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    :goto_63
    add-int v14, v65, v57

    .line 257
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 v0, 0x1

    add-int/lit8 v8, v25, 0x1

    move-object/from16 v11, p4

    move-object v15, v4

    move v7, v6

    move v0, v8

    move/from16 v4, v17

    move/from16 v9, v21

    move/from16 v14, v27

    move-object/from16 v13, v35

    move-object/from16 v6, v61

    move-object/from16 v10, v63

    const/16 v25, 0x2

    move v8, v5

    move v5, v1

    move v1, v2

    move-object v2, v12

    move-object/from16 v12, v18

    goto/16 :goto_1f

    :cond_8a
    move v2, v1

    move/from16 v17, v4

    move-object/from16 v61, v6

    move v5, v8

    move/from16 v21, v9

    move-object/from16 v63, v10

    move-object/from16 v18, v12

    move-object/from16 v35, v13

    move-object v4, v15

    const v20, 0x77767474

    const v22, 0x54544d4c

    const v23, 0x74783367

    const/16 v31, 0xa

    const/16 v49, 0x4

    if-nez p5, :cond_92

    const v0, 0x65647473

    move-object/from16 v1, v63

    .line 258
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v0

    if-eqz v0, :cond_91

    const v3, 0x656c7374

    .line 259
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v0

    if-nez v0, :cond_8b

    const/4 v0, 0x0

    const/16 v3, 0x8

    const/4 v12, 0x2

    goto :goto_67

    .line 260
    :cond_8b
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v3, 0x8

    .line 261
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 262
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v6

    .line 263
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v7

    new-array v8, v7, [J

    new-array v9, v7, [J

    const/4 v10, 0x0

    :goto_64
    if-ge v10, v7, :cond_8f

    const/4 v11, 0x1

    if-ne v6, v11, :cond_8c

    .line 264
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v12

    goto :goto_65

    :cond_8c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v12

    :goto_65
    aput-wide v12, v8, v10

    if-ne v6, v11, :cond_8d

    .line 265
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    move-result-wide v12

    goto :goto_66

    :cond_8d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v12

    int-to-long v12, v12

    :goto_66
    aput-wide v12, v9, v10

    .line 266
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v12

    if-ne v12, v11, :cond_8e

    const/4 v12, 0x2

    .line 267
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    add-int/2addr v10, v11

    goto :goto_64

    .line 268
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    .line 269
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8f
    const/4 v12, 0x2

    .line 270
    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_67
    if-eqz v0, :cond_90

    .line 271
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 272
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v48, v0

    move-object/from16 v47, v6

    goto :goto_6a

    :cond_90
    :goto_68
    const/16 v47, 0x0

    const/16 v48, 0x0

    goto :goto_6a

    :cond_91
    :goto_69
    const/16 v3, 0x8

    const/4 v12, 0x2

    goto :goto_68

    :cond_92
    move-object/from16 v1, v63

    goto :goto_69

    :goto_6a
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    if-nez v0, :cond_93

    move-object/from16 v4, p7

    const/4 v0, 0x0

    const/4 v10, 0x0

    goto :goto_6e

    :cond_93
    invoke-static/range {v35 .. v35}, Lcom/google/android/gms/internal/ads/zzaiv;->zza(Lcom/google/android/gms/internal/ads/zzaiv;)I

    move-result v6

    if-eqz v6, :cond_95

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfb;

    invoke-static/range {v35 .. v35}, Lcom/google/android/gms/internal/ads/zzaiv;->zza(Lcom/google/android/gms/internal/ads/zzaiv;)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzfb;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzz;->zzl:Lcom/google/android/gms/internal/ads/zzav;

    if-eqz v0, :cond_94

    const/4 v8, 0x1

    new-array v9, v8, [Lcom/google/android/gms/internal/ads/zzau;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    .line 273
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzav;->zzc([Lcom/google/android/gms/internal/ads/zzau;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v0

    goto :goto_6b

    :cond_94
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 274
    new-instance v0, Lcom/google/android/gms/internal/ads/zzav;

    new-array v9, v8, [Lcom/google/android/gms/internal/ads/zzau;

    aput-object v6, v9, v10

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 275
    invoke-direct {v0, v13, v14, v9}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 276
    :goto_6b
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaa(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    .line 277
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    :goto_6c
    move-object/from16 v43, v0

    goto :goto_6d

    :cond_95
    const/4 v10, 0x0

    goto :goto_6c

    :goto_6d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzajp;

    move-object/from16 v32, v0

    invoke-static/range {v35 .. v35}, Lcom/google/android/gms/internal/ads/zzaiv;->zzb(Lcom/google/android/gms/internal/ads/zzaiv;)I

    move-result v33

    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/zzaip;->zzb(Lcom/google/android/gms/internal/ads/zzaip;)J

    move-result-wide v35

    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/zzaip;->zza(Lcom/google/android/gms/internal/ads/zzaip;)J

    move-result-wide v41

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzais;->zzd:I

    move/from16 v44, v6

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzais;->zza:[Lcom/google/android/gms/internal/ads/zzajq;

    move-object/from16 v45, v6

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzais;->zzc:I

    move/from16 v46, v4

    move/from16 v34, v17

    invoke-direct/range {v32 .. v48}, Lcom/google/android/gms/internal/ads/zzajp;-><init>(IIJJJJLcom/google/android/gms/internal/ads/zzz;I[Lcom/google/android/gms/internal/ads/zzajq;I[J[J)V

    move-object/from16 v4, p7

    .line 278
    :goto_6e
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzfve;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzajp;

    if-eqz v0, :cond_96

    const v6, 0x6d646961

    .line 279
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x6d696e66

    .line 281
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, 0x7374626c

    .line 283
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v9, p1

    .line 285
    invoke-static {v0, v1, v9}, Lcom/google/android/gms/internal/ads/zzaix;->zze(Lcom/google/android/gms/internal/ads/zzajp;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzaej;)Lcom/google/android/gms/internal/ads/zzajs;

    move-result-object v0

    move-object/from16 v1, v61

    .line 286
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6f
    const/4 v0, 0x1

    goto :goto_70

    :cond_96
    move-object/from16 v9, p1

    move-object/from16 v1, v61

    const v6, 0x6d646961

    const v7, 0x6d696e66

    const v8, 0x7374626c

    goto :goto_6f

    :goto_70
    add-int/lit8 v11, v21, 0x1

    move-object/from16 v0, p0

    move v8, v3

    move v3, v6

    move v9, v11

    move-object/from16 v12, v18

    move/from16 v15, v49

    move-object/from16 v13, v50

    move-object/from16 v14, v51

    move-object/from16 v11, p4

    move-object v6, v1

    goto/16 :goto_0

    .line 287
    :cond_97
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    const/4 v1, 0x0

    .line 288
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_98
    move-object v1, v6

    return-object v1
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzen;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, 0x68646c72    # 4.3148E24f

    .line 14
    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzen;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x7f

    .line 6
    .line 7
    :goto_0
    const/16 v2, 0x80

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    shl-int/lit8 v1, v1, 0x7

    .line 17
    .line 18
    and-int/lit8 v2, v0, 0x7f

    .line 19
    .line 20
    or-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzen;)I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzen;II)Landroid/util/Pair;
    .locals 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :goto_0
    sub-int v2, v1, p1

    .line 8
    .line 9
    move/from16 v4, p2

    .line 10
    .line 11
    if-ge v2, v4, :cond_11

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v6, 0x0

    .line 22
    if-lez v2, :cond_0

    .line 23
    .line 24
    move v7, v5

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move v7, v6

    .line 27
    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 28
    .line 29
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    const v8, 0x73696e66

    .line 37
    .line 38
    .line 39
    if-ne v7, v8, :cond_10

    .line 40
    .line 41
    add-int/lit8 v7, v1, 0x8

    .line 42
    .line 43
    const/4 v8, -0x1

    .line 44
    move v10, v6

    .line 45
    move v9, v8

    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v15, 0x0

    .line 48
    :goto_2
    sub-int v12, v7, v1

    .line 49
    .line 50
    const/4 v13, 0x4

    .line 51
    if-ge v12, v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    const v3, 0x66726d61

    .line 65
    .line 66
    .line 67
    if-ne v14, v3, :cond_1

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v15

    .line 77
    goto :goto_3

    .line 78
    :cond_1
    const v3, 0x7363686d

    .line 79
    .line 80
    .line 81
    if-ne v14, v3, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 84
    .line 85
    .line 86
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 87
    .line 88
    invoke-virtual {v0, v13, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    goto :goto_3

    .line 93
    :cond_2
    const v3, 0x73636869

    .line 94
    .line 95
    .line 96
    if-ne v14, v3, :cond_3

    .line 97
    .line 98
    move v9, v7

    .line 99
    move v10, v12

    .line 100
    :cond_3
    :goto_3
    add-int/2addr v7, v12

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    const-string v3, "cenc"

    .line 103
    .line 104
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_6

    .line 109
    .line 110
    const-string v3, "cbc1"

    .line 111
    .line 112
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_6

    .line 117
    .line 118
    const-string v3, "cens"

    .line 119
    .line 120
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-nez v3, :cond_6

    .line 125
    .line 126
    const-string v3, "cbcs"

    .line 127
    .line 128
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_5

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_5
    const/4 v3, 0x0

    .line 136
    goto/16 :goto_d

    .line 137
    .line 138
    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    .line 139
    .line 140
    move v3, v5

    .line 141
    goto :goto_5

    .line 142
    :cond_7
    move v3, v6

    .line 143
    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 144
    .line 145
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    if-eq v9, v8, :cond_8

    .line 149
    .line 150
    move v3, v5

    .line 151
    goto :goto_6

    .line 152
    :cond_8
    move v3, v6

    .line 153
    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 154
    .line 155
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v3, v9, 0x8

    .line 159
    .line 160
    :goto_7
    sub-int v7, v3, v9

    .line 161
    .line 162
    if-ge v7, v10, :cond_d

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    const v12, 0x74656e63

    .line 176
    .line 177
    .line 178
    if-ne v8, v12, :cond_c

    .line 179
    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 189
    .line 190
    .line 191
    if-nez v3, :cond_9

    .line 192
    .line 193
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 194
    .line 195
    .line 196
    move v3, v6

    .line 197
    move v14, v3

    .line 198
    goto :goto_8

    .line 199
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    and-int/lit16 v7, v3, 0xf0

    .line 204
    .line 205
    shr-int/2addr v7, v13

    .line 206
    and-int/lit8 v3, v3, 0xf

    .line 207
    .line 208
    move v14, v7

    .line 209
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-ne v7, v5, :cond_a

    .line 214
    .line 215
    move v10, v5

    .line 216
    goto :goto_9

    .line 217
    :cond_a
    move v10, v6

    .line 218
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    const/16 v7, 0x10

    .line 223
    .line 224
    new-array v13, v7, [B

    .line 225
    .line 226
    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 227
    .line 228
    .line 229
    if-eqz v10, :cond_b

    .line 230
    .line 231
    if-nez v12, :cond_b

    .line 232
    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    new-array v8, v7, [B

    .line 238
    .line 239
    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 240
    .line 241
    .line 242
    move-object/from16 v16, v8

    .line 243
    .line 244
    goto :goto_a

    .line 245
    :cond_b
    const/16 v16, 0x0

    .line 246
    .line 247
    :goto_a
    new-instance v7, Lcom/google/android/gms/internal/ads/zzajq;

    .line 248
    .line 249
    move-object v9, v7

    .line 250
    move-object v8, v15

    .line 251
    move v15, v3

    .line 252
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzajq;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 253
    .line 254
    .line 255
    move-object v3, v7

    .line 256
    goto :goto_b

    .line 257
    :cond_c
    move-object v8, v15

    .line 258
    add-int/2addr v3, v7

    .line 259
    goto :goto_7

    .line 260
    :cond_d
    move-object v8, v15

    .line 261
    const/4 v3, 0x0

    .line 262
    :goto_b
    if-eqz v3, :cond_e

    .line 263
    .line 264
    goto :goto_c

    .line 265
    :cond_e
    move v5, v6

    .line 266
    :goto_c
    const-string v6, "tenc atom is mandatory"

    .line 267
    .line 268
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 269
    .line 270
    .line 271
    sget-object v5, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    :goto_d
    if-nez v3, :cond_f

    .line 278
    .line 279
    goto :goto_e

    .line 280
    :cond_f
    return-object v3

    .line 281
    :cond_10
    :goto_e
    add-int/2addr v1, v2

    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_11
    const/4 v1, 0x0

    .line 285
    return-object v1
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzk;
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzi;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzem;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    array-length v3, v2

    .line 13
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    mul-int/2addr p0, v2

    .line 23
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzl(I)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    move v5, v4

    .line 36
    :goto_0
    if-ge v5, v3, :cond_3

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    move v7, v4

    .line 46
    :goto_1
    if-ge v7, v6, :cond_2

    .line 47
    .line 48
    const/4 v8, 0x6

    .line 49
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 57
    .line 58
    .line 59
    const/16 v9, 0xb

    .line 60
    .line 61
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    .line 62
    .line 63
    .line 64
    const/4 v9, 0x4

    .line 65
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    add-int/2addr v9, v2

    .line 73
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    .line 80
    .line 81
    .line 82
    if-eqz v8, :cond_1

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 104
    .line 105
    .line 106
    if-eq p0, v10, :cond_0

    .line 107
    .line 108
    const/4 v8, 0x2

    .line 109
    goto :goto_2

    .line 110
    :cond_0
    move v8, p0

    .line 111
    :goto_2
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 112
    .line 113
    .line 114
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 119
    .line 120
    .line 121
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzk;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzi;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzem;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    array-length v3, v2

    .line 13
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    mul-int/2addr p0, v2

    .line 23
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzl(I)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x6

    .line 36
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const/16 v7, 0xc

    .line 48
    .line 49
    const/16 v8, 0xa

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x2

    .line 53
    if-ne v4, v10, :cond_2

    .line 54
    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    if-eq p0, v6, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v8, v7

    .line 61
    :goto_0
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v5, v9

    .line 69
    move v4, v10

    .line 70
    :cond_2
    if-gt v4, v10, :cond_4

    .line 71
    .line 72
    if-eq p0, v5, :cond_3

    .line 73
    .line 74
    move v8, v2

    .line 75
    :cond_3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_1
    const/16 v4, 0xd

    .line 82
    .line 83
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 87
    .line 88
    .line 89
    const/4 v5, 0x4

    .line 90
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    const-string v8, "BoxParsers"

    .line 95
    .line 96
    if-eq v6, p0, :cond_5

    .line 97
    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v1, "Unsupported obu_type: "

    .line 104
    .line 105
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_6

    .line 128
    .line 129
    const-string p0, "Unsupported obu_extension_flag"

    .line 130
    .line 131
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 144
    .line 145
    .line 146
    if-eqz v6, :cond_8

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    const/16 v11, 0x7f

    .line 153
    .line 154
    if-gt v6, v11, :cond_7

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_7
    const-string p0, "Excessive obu_size"

    .line 158
    .line 159
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0

    .line 167
    :cond_8
    :goto_2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    if-eqz v11, :cond_9

    .line 179
    .line 180
    const-string p0, "Unsupported reduced_still_picture_header"

    .line 181
    .line 182
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    if-eqz v11, :cond_a

    .line 195
    .line 196
    const-string p0, "Unsupported timing_info_present_flag"

    .line 197
    .line 198
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    return-object p0

    .line 206
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-eqz v11, :cond_b

    .line 211
    .line 212
    const-string p0, "Unsupported initial_display_delay_present_flag"

    .line 213
    .line 214
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    return-object p0

    .line 222
    :cond_b
    const/4 v8, 0x5

    .line 223
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    move v12, v9

    .line 228
    :goto_3
    const/4 v13, 0x7

    .line 229
    if-gt v12, v11, :cond_d

    .line 230
    .line 231
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 235
    .line 236
    .line 237
    move-result v14

    .line 238
    if-le v14, v13, :cond_c

    .line 239
    .line 240
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 241
    .line 242
    .line 243
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_d
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    add-int/2addr v7, p0

    .line 255
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 256
    .line 257
    .line 258
    add-int/2addr v5, p0

    .line 259
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    if-eqz v5, :cond_e

    .line 267
    .line 268
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 269
    .line 270
    .line 271
    :cond_e
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    if-eqz v5, :cond_f

    .line 279
    .line 280
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 281
    .line 282
    .line 283
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    if-eqz v7, :cond_10

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_10
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    if-lez v7, :cond_11

    .line 295
    .line 296
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    if-nez v7, :cond_11

    .line 301
    .line 302
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 303
    .line 304
    .line 305
    :cond_11
    if-eqz v5, :cond_12

    .line 306
    .line 307
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 308
    .line 309
    .line 310
    :cond_12
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-ne v6, v10, :cond_13

    .line 318
    .line 319
    if-eqz v3, :cond_14

    .line 320
    .line 321
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 322
    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_13
    if-ne v6, p0, :cond_14

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_14
    :goto_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    if-eqz v3, :cond_15

    .line 333
    .line 334
    move v9, p0

    .line 335
    :cond_15
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-eqz v3, :cond_1a

    .line 340
    .line 341
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-nez v9, :cond_18

    .line 354
    .line 355
    if-ne v3, p0, :cond_18

    .line 356
    .line 357
    if-ne v5, v4, :cond_17

    .line 358
    .line 359
    if-nez v2, :cond_16

    .line 360
    .line 361
    move v1, p0

    .line 362
    move v3, v1

    .line 363
    goto :goto_8

    .line 364
    :cond_16
    move v3, p0

    .line 365
    goto :goto_7

    .line 366
    :cond_17
    move v3, p0

    .line 367
    :cond_18
    move v4, v5

    .line 368
    :goto_7
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    :goto_8
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 377
    .line 378
    .line 379
    if-ne v1, p0, :cond_19

    .line 380
    .line 381
    goto :goto_9

    .line 382
    :cond_19
    move p0, v10

    .line 383
    :goto_9
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 384
    .line 385
    .line 386
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    .line 387
    .line 388
    .line 389
    move-result p0

    .line 390
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 391
    .line 392
    .line 393
    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    return-object p0
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzav;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/16 v1, 0x2b

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/16 v2, 0x2d

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    add-int/lit8 v3, v3, -0x1

    .line 45
    .line 46
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    new-instance v1, Lcom/google/android/gms/internal/ads/zzav;

    .line 55
    .line 56
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfg;

    .line 57
    .line 58
    invoke-direct {v3, v2, p0}, Lcom/google/android/gms/internal/ads/zzfg;-><init>(FF)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    new-array p0, p0, [Lcom/google/android/gms/internal/ads/zzau;

    .line 63
    .line 64
    aput-object v3, p0, v0

    .line 65
    .line 66
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2, v3, p0}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :catch_0
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method

.method private static zzn(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzail;
    .locals 3

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    new-instance v2, Lcom/google/android/gms/internal/ads/zzail;

    .line 19
    .line 20
    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzail;-><init>(JJ)V

    .line 21
    .line 22
    .line 23
    return-object v2
.end method

.method private static zzo(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzain;
    .locals 11

    .line 1
    add-int/lit8 p1, p1, 0xc

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaix;->zzh(Lcom/google/android/gms/internal/ads/zzen;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    and-int/lit16 v2, v1, 0x80

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    and-int/lit8 v2, v1, 0x40

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    and-int/lit8 v1, v1, 0x20

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaix;->zzh(Lcom/google/android/gms/internal/ads/zzen;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzay;->zzd(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v0, "audio/mpeg"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    const-string v0, "audio/vnd.dts"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    const-string v0, "audio/vnd.dts.hd"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v0, 0x4

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaix;->zzh(Lcom/google/android/gms/internal/ads/zzen;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    new-array v5, p1, [B

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-virtual {p0, v5, v6, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 108
    .line 109
    .line 110
    const-wide/16 p0, 0x0

    .line 111
    .line 112
    cmp-long v6, v3, p0

    .line 113
    .line 114
    const-wide/16 v7, -0x1

    .line 115
    .line 116
    if-gtz v6, :cond_4

    .line 117
    .line 118
    move-wide v9, v7

    .line 119
    goto :goto_0

    .line 120
    :cond_4
    move-wide v9, v3

    .line 121
    :goto_0
    cmp-long p0, v0, p0

    .line 122
    .line 123
    if-lez p0, :cond_5

    .line 124
    .line 125
    move-wide v6, v0

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    move-wide v6, v7

    .line 128
    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzain;

    .line 129
    .line 130
    move-object v1, p0

    .line 131
    move-object v3, v5

    .line 132
    move-wide v4, v9

    .line 133
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzain;-><init>(Ljava/lang/String;[BJJ)V

    .line 134
    .line 135
    .line 136
    return-object p0

    .line 137
    :cond_6
    :goto_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzain;

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    const-wide/16 v6, -0x1

    .line 141
    .line 142
    move-object v1, p0

    .line 143
    move-wide v4, v6

    .line 144
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzain;-><init>(Ljava/lang/String;[BJJ)V

    .line 145
    .line 146
    .line 147
    return-object p0
.end method

.method private static zzp()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private static zzq(Lcom/google/android/gms/internal/ads/zzen;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzais;I)V
    .locals 29
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/ads/zzs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p7

    .line 14
    .line 15
    move-object/from16 v7, p8

    .line 16
    .line 17
    const/4 v10, 0x1

    .line 18
    const/16 v12, 0x10

    .line 19
    .line 20
    add-int/lit8 v13, v2, 0x10

    .line 21
    .line 22
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 23
    .line 24
    .line 25
    const/4 v13, 0x6

    .line 26
    const/16 v14, 0x8

    .line 27
    .line 28
    if-eqz p6, :cond_0

    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 31
    .line 32
    .line 33
    move-result v16

    .line 34
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 35
    .line 36
    .line 37
    move/from16 v11, v16

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 41
    .line 42
    .line 43
    const/4 v11, 0x0

    .line 44
    :goto_0
    const/high16 v17, 0x10000000

    .line 45
    .line 46
    const/16 v18, 0x3

    .line 47
    .line 48
    const/16 v8, 0x20

    .line 49
    .line 50
    const/4 v9, 0x4

    .line 51
    const/4 v15, 0x2

    .line 52
    if-eqz v11, :cond_a

    .line 53
    .line 54
    if-ne v11, v10, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    if-ne v11, v15, :cond_54

    .line 58
    .line 59
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    .line 63
    .line 64
    .line 65
    move-result-wide v19

    .line 66
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 67
    .line 68
    .line 69
    move-result-wide v19

    .line 70
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    .line 71
    .line 72
    .line 73
    move-result-wide v12

    .line 74
    long-to-int v11, v12

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 87
    .line 88
    .line 89
    move-result v19

    .line 90
    and-int/lit8 v20, v19, 0x1

    .line 91
    .line 92
    and-int/lit8 v19, v19, 0x2

    .line 93
    .line 94
    if-nez v20, :cond_9

    .line 95
    .line 96
    if-ne v13, v14, :cond_2

    .line 97
    .line 98
    move/from16 v9, v18

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    const/16 v9, 0x10

    .line 102
    .line 103
    if-ne v13, v9, :cond_4

    .line 104
    .line 105
    if-eqz v19, :cond_3

    .line 106
    .line 107
    move/from16 v9, v17

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    move v9, v15

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    const/16 v9, 0x18

    .line 113
    .line 114
    if-ne v13, v9, :cond_6

    .line 115
    .line 116
    if-eqz v19, :cond_5

    .line 117
    .line 118
    const/high16 v9, 0x50000000

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    const/16 v9, 0x15

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    if-ne v13, v8, :cond_8

    .line 125
    .line 126
    if-eqz v19, :cond_7

    .line 127
    .line 128
    const/high16 v9, 0x60000000

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_7
    const/16 v9, 0x16

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_8
    const/4 v9, -0x1

    .line 135
    goto :goto_1

    .line 136
    :cond_9
    if-ne v13, v8, :cond_8

    .line 137
    .line 138
    const/4 v9, 0x4

    .line 139
    :goto_1
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 140
    .line 141
    .line 142
    const/4 v13, 0x0

    .line 143
    goto :goto_3

    .line 144
    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    const/4 v12, 0x6

    .line 149
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzn()I

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    add-int/lit8 v13, v13, -0x4

    .line 161
    .line 162
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    if-ne v11, v10, :cond_b

    .line 170
    .line 171
    const/16 v11, 0x10

    .line 172
    .line 173
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 174
    .line 175
    .line 176
    :cond_b
    move v11, v12

    .line 177
    move v12, v9

    .line 178
    const/4 v9, -0x1

    .line 179
    :goto_3
    const v8, 0x73616d72

    .line 180
    .line 181
    .line 182
    const v15, 0x73617762

    .line 183
    .line 184
    .line 185
    const v10, 0x69616d66

    .line 186
    .line 187
    .line 188
    if-ne v1, v10, :cond_c

    .line 189
    .line 190
    const/4 v11, -0x1

    .line 191
    const/4 v12, -0x1

    .line 192
    goto :goto_5

    .line 193
    :cond_c
    if-ne v1, v8, :cond_d

    .line 194
    .line 195
    const/16 v11, 0x1f40

    .line 196
    .line 197
    :goto_4
    const/4 v12, 0x1

    .line 198
    goto :goto_5

    .line 199
    :cond_d
    if-ne v1, v15, :cond_e

    .line 200
    .line 201
    const/16 v1, 0x3e80

    .line 202
    .line 203
    move v11, v1

    .line 204
    move v1, v15

    .line 205
    goto :goto_4

    .line 206
    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    const v10, 0x656e6361

    .line 211
    .line 212
    .line 213
    if-ne v1, v10, :cond_11

    .line 214
    .line 215
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaix;->zzj(Lcom/google/android/gms/internal/ads/zzen;II)Landroid/util/Pair;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    if-eqz v1, :cond_10

    .line 220
    .line 221
    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v10, Ljava/lang/Integer;

    .line 224
    .line 225
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    if-nez v6, :cond_f

    .line 230
    .line 231
    const/4 v6, 0x0

    .line 232
    goto :goto_6

    .line 233
    :cond_f
    iget-object v15, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v15, Lcom/google/android/gms/internal/ads/zzajq;

    .line 236
    .line 237
    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzajq;->zzb:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/ads/zzs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    :goto_6
    iget-object v15, v7, Lcom/google/android/gms/internal/ads/zzais;->zza:[Lcom/google/android/gms/internal/ads/zzajq;

    .line 244
    .line 245
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v1, Lcom/google/android/gms/internal/ads/zzajq;

    .line 248
    .line 249
    aput-object v1, v15, p9

    .line 250
    .line 251
    :cond_10
    move v1, v10

    .line 252
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 253
    .line 254
    .line 255
    :cond_11
    const v10, 0x61632d33

    .line 256
    .line 257
    .line 258
    const-string v15, "audio/mhm1"

    .line 259
    .line 260
    const-string v24, "audio/raw"

    .line 261
    .line 262
    if-ne v1, v10, :cond_12

    .line 263
    .line 264
    const-string v8, "audio/ac3"

    .line 265
    .line 266
    :goto_7
    move v10, v1

    .line 267
    move/from16 v17, v9

    .line 268
    .line 269
    goto/16 :goto_c

    .line 270
    .line 271
    :cond_12
    const v10, 0x65632d33

    .line 272
    .line 273
    .line 274
    if-ne v1, v10, :cond_13

    .line 275
    .line 276
    const-string v8, "audio/eac3"

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_13
    const v10, 0x61632d34

    .line 280
    .line 281
    .line 282
    if-ne v1, v10, :cond_14

    .line 283
    .line 284
    const-string v8, "audio/ac4"

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_14
    const v10, 0x64747363

    .line 288
    .line 289
    .line 290
    if-ne v1, v10, :cond_15

    .line 291
    .line 292
    const-string v8, "audio/vnd.dts"

    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_15
    const v10, 0x64747368

    .line 296
    .line 297
    .line 298
    if-eq v1, v10, :cond_2a

    .line 299
    .line 300
    const v10, 0x6474736c

    .line 301
    .line 302
    .line 303
    if-ne v1, v10, :cond_16

    .line 304
    .line 305
    goto/16 :goto_b

    .line 306
    .line 307
    :cond_16
    const v10, 0x64747365

    .line 308
    .line 309
    .line 310
    if-ne v1, v10, :cond_17

    .line 311
    .line 312
    const-string v8, "audio/vnd.dts.hd;profile=lbr"

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_17
    const v10, 0x64747378

    .line 316
    .line 317
    .line 318
    if-ne v1, v10, :cond_18

    .line 319
    .line 320
    const-string v8, "audio/vnd.dts.uhd;profile=p2"

    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_18
    if-ne v1, v8, :cond_19

    .line 324
    .line 325
    const-string v8, "audio/3gpp"

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_19
    const v8, 0x73617762

    .line 329
    .line 330
    .line 331
    if-ne v1, v8, :cond_1a

    .line 332
    .line 333
    const-string v8, "audio/amr-wb"

    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_1a
    const v8, 0x736f7774

    .line 337
    .line 338
    .line 339
    if-ne v1, v8, :cond_1b

    .line 340
    .line 341
    :goto_8
    move v10, v1

    .line 342
    move-object/from16 v8, v24

    .line 343
    .line 344
    const/16 v17, 0x2

    .line 345
    .line 346
    goto/16 :goto_c

    .line 347
    .line 348
    :cond_1b
    const v8, 0x74776f73

    .line 349
    .line 350
    .line 351
    if-ne v1, v8, :cond_1c

    .line 352
    .line 353
    move v10, v1

    .line 354
    :goto_9
    move-object/from16 v8, v24

    .line 355
    .line 356
    goto/16 :goto_c

    .line 357
    .line 358
    :cond_1c
    const v8, 0x6c70636d

    .line 359
    .line 360
    .line 361
    if-ne v1, v8, :cond_1e

    .line 362
    .line 363
    const/4 v8, -0x1

    .line 364
    if-ne v9, v8, :cond_1d

    .line 365
    .line 366
    goto :goto_8

    .line 367
    :cond_1d
    move v10, v1

    .line 368
    move/from16 v17, v9

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_1e
    const v8, 0x2e6d7032

    .line 372
    .line 373
    .line 374
    if-eq v1, v8, :cond_29

    .line 375
    .line 376
    const v8, 0x2e6d7033

    .line 377
    .line 378
    .line 379
    if-ne v1, v8, :cond_1f

    .line 380
    .line 381
    goto/16 :goto_a

    .line 382
    .line 383
    :cond_1f
    const v8, 0x6d686131

    .line 384
    .line 385
    .line 386
    if-ne v1, v8, :cond_20

    .line 387
    .line 388
    const-string v8, "audio/mha1"

    .line 389
    .line 390
    goto :goto_7

    .line 391
    :cond_20
    const v8, 0x6d686d31

    .line 392
    .line 393
    .line 394
    if-ne v1, v8, :cond_21

    .line 395
    .line 396
    move v10, v1

    .line 397
    move/from16 v17, v9

    .line 398
    .line 399
    move-object v8, v15

    .line 400
    goto :goto_c

    .line 401
    :cond_21
    const v8, 0x616c6163

    .line 402
    .line 403
    .line 404
    if-ne v1, v8, :cond_22

    .line 405
    .line 406
    const-string v8, "audio/alac"

    .line 407
    .line 408
    goto/16 :goto_7

    .line 409
    .line 410
    :cond_22
    const v8, 0x616c6177

    .line 411
    .line 412
    .line 413
    if-ne v1, v8, :cond_23

    .line 414
    .line 415
    const-string v8, "audio/g711-alaw"

    .line 416
    .line 417
    goto/16 :goto_7

    .line 418
    .line 419
    :cond_23
    const v8, 0x756c6177

    .line 420
    .line 421
    .line 422
    if-ne v1, v8, :cond_24

    .line 423
    .line 424
    const-string v8, "audio/g711-mlaw"

    .line 425
    .line 426
    goto/16 :goto_7

    .line 427
    .line 428
    :cond_24
    const v8, 0x4f707573

    .line 429
    .line 430
    .line 431
    if-ne v1, v8, :cond_25

    .line 432
    .line 433
    const-string v8, "audio/opus"

    .line 434
    .line 435
    goto/16 :goto_7

    .line 436
    .line 437
    :cond_25
    const v8, 0x664c6143

    .line 438
    .line 439
    .line 440
    if-ne v1, v8, :cond_26

    .line 441
    .line 442
    const-string v8, "audio/flac"

    .line 443
    .line 444
    goto/16 :goto_7

    .line 445
    .line 446
    :cond_26
    const v8, 0x6d6c7061

    .line 447
    .line 448
    .line 449
    if-ne v1, v8, :cond_27

    .line 450
    .line 451
    const-string v8, "audio/true-hd"

    .line 452
    .line 453
    goto/16 :goto_7

    .line 454
    .line 455
    :cond_27
    const v8, 0x69616d66

    .line 456
    .line 457
    .line 458
    if-ne v1, v8, :cond_28

    .line 459
    .line 460
    const-string v1, "audio/iamf"

    .line 461
    .line 462
    move v10, v8

    .line 463
    move/from16 v17, v9

    .line 464
    .line 465
    move-object v8, v1

    .line 466
    goto :goto_c

    .line 467
    :cond_28
    move v10, v1

    .line 468
    move/from16 v17, v9

    .line 469
    .line 470
    const/4 v8, 0x0

    .line 471
    goto :goto_c

    .line 472
    :cond_29
    :goto_a
    const-string v8, "audio/mpeg"

    .line 473
    .line 474
    goto/16 :goto_7

    .line 475
    .line 476
    :cond_2a
    :goto_b
    const-string v8, "audio/vnd.dts.hd"

    .line 477
    .line 478
    goto/16 :goto_7

    .line 479
    .line 480
    :goto_c
    const/16 p9, 0x0

    .line 481
    .line 482
    const/4 v1, 0x0

    .line 483
    const/16 v22, 0x0

    .line 484
    .line 485
    const/16 v23, 0x0

    .line 486
    .line 487
    :goto_d
    sub-int v9, v14, v2

    .line 488
    .line 489
    if-ge v9, v3, :cond_51

    .line 490
    .line 491
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 495
    .line 496
    .line 497
    move-result v9

    .line 498
    if-lez v9, :cond_2b

    .line 499
    .line 500
    const/4 v2, 0x1

    .line 501
    goto :goto_e

    .line 502
    :cond_2b
    const/4 v2, 0x0

    .line 503
    :goto_e
    const-string v3, "childAtomSize must be positive"

    .line 504
    .line 505
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    move/from16 v25, v11

    .line 513
    .line 514
    const v11, 0x6d686143

    .line 515
    .line 516
    .line 517
    if-ne v2, v11, :cond_2e

    .line 518
    .line 519
    const/16 v11, 0x8

    .line 520
    .line 521
    add-int/lit8 v2, v14, 0x8

    .line 522
    .line 523
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 524
    .line 525
    .line 526
    const/4 v2, 0x1

    .line 527
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 531
    .line 532
    .line 533
    move-result v3

    .line 534
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 535
    .line 536
    .line 537
    invoke-static {v8, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    if-eqz v2, :cond_2c

    .line 542
    .line 543
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    const-string v3, "mhm1.%02X"

    .line 552
    .line 553
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    goto :goto_f

    .line 558
    :cond_2c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    const-string v3, "mha1.%02X"

    .line 567
    .line 568
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    .line 573
    .line 574
    .line 575
    move-result v3

    .line 576
    new-array v11, v3, [B

    .line 577
    .line 578
    move-object/from16 v26, v15

    .line 579
    .line 580
    const/4 v15, 0x0

    .line 581
    invoke-virtual {v0, v11, v15, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 582
    .line 583
    .line 584
    if-nez v1, :cond_2d

    .line 585
    .line 586
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    :goto_10
    move v11, v15

    .line 591
    move/from16 v3, v25

    .line 592
    .line 593
    :goto_11
    move/from16 v25, v10

    .line 594
    .line 595
    goto/16 :goto_24

    .line 596
    .line 597
    :cond_2d
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    check-cast v1, [B

    .line 602
    .line 603
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/ads/zzfyq;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    goto :goto_10

    .line 608
    :cond_2e
    move-object/from16 v26, v15

    .line 609
    .line 610
    const/4 v15, 0x0

    .line 611
    const v11, 0x6d686150

    .line 612
    .line 613
    .line 614
    if-ne v2, v11, :cond_31

    .line 615
    .line 616
    const/16 v11, 0x8

    .line 617
    .line 618
    add-int/lit8 v2, v14, 0x8

    .line 619
    .line 620
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 621
    .line 622
    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    if-lez v2, :cond_30

    .line 628
    .line 629
    new-array v3, v2, [B

    .line 630
    .line 631
    invoke-virtual {v0, v3, v15, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 632
    .line 633
    .line 634
    if-nez v1, :cond_2f

    .line 635
    .line 636
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    move-object/from16 v2, p9

    .line 641
    .line 642
    goto :goto_10

    .line 643
    :cond_2f
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    check-cast v1, [B

    .line 648
    .line 649
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzfyq;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    :goto_12
    move-object/from16 v2, p9

    .line 654
    .line 655
    move/from16 v3, v25

    .line 656
    .line 657
    const/4 v11, 0x0

    .line 658
    goto :goto_11

    .line 659
    :cond_30
    move v11, v15

    .line 660
    move/from16 v3, v25

    .line 661
    .line 662
    :goto_13
    move/from16 v25, v10

    .line 663
    .line 664
    goto/16 :goto_1a

    .line 665
    .line 666
    :cond_31
    const v11, 0x65736473

    .line 667
    .line 668
    .line 669
    if-eq v2, v11, :cond_4a

    .line 670
    .line 671
    if-eqz p6, :cond_36

    .line 672
    .line 673
    const v11, 0x77617665

    .line 674
    .line 675
    .line 676
    if-ne v2, v11, :cond_36

    .line 677
    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 679
    .line 680
    .line 681
    move-result v2

    .line 682
    if-lt v2, v14, :cond_32

    .line 683
    .line 684
    const/4 v11, 0x1

    .line 685
    :goto_14
    const/4 v15, 0x0

    .line 686
    goto :goto_15

    .line 687
    :cond_32
    const/4 v11, 0x0

    .line 688
    goto :goto_14

    .line 689
    :goto_15
    invoke-static {v11, v15}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 690
    .line 691
    .line 692
    :goto_16
    sub-int v11, v2, v14

    .line 693
    .line 694
    if-ge v11, v9, :cond_35

    .line 695
    .line 696
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 697
    .line 698
    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 700
    .line 701
    .line 702
    move-result v11

    .line 703
    if-lez v11, :cond_33

    .line 704
    .line 705
    const/4 v15, 0x1

    .line 706
    goto :goto_17

    .line 707
    :cond_33
    const/4 v15, 0x0

    .line 708
    :goto_17
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    .line 712
    .line 713
    .line 714
    move-result v15

    .line 715
    move-object/from16 v27, v3

    .line 716
    .line 717
    const v3, 0x65736473

    .line 718
    .line 719
    .line 720
    if-eq v15, v3, :cond_34

    .line 721
    .line 722
    add-int/2addr v2, v11

    .line 723
    move-object/from16 v3, v27

    .line 724
    .line 725
    goto :goto_16

    .line 726
    :cond_34
    move/from16 v3, v25

    .line 727
    .line 728
    :goto_18
    const/4 v11, -0x1

    .line 729
    const/4 v15, 0x2

    .line 730
    goto/16 :goto_1f

    .line 731
    .line 732
    :cond_35
    move/from16 v3, v25

    .line 733
    .line 734
    const/4 v2, -0x1

    .line 735
    goto :goto_18

    .line 736
    :cond_36
    const v3, 0x65736473

    .line 737
    .line 738
    .line 739
    const v11, 0x62747274

    .line 740
    .line 741
    .line 742
    if-ne v2, v11, :cond_37

    .line 743
    .line 744
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzaix;->zzn(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzail;

    .line 745
    .line 746
    .line 747
    move-result-object v23

    .line 748
    goto :goto_12

    .line 749
    :cond_37
    const v11, 0x64616333

    .line 750
    .line 751
    .line 752
    if-ne v2, v11, :cond_39

    .line 753
    .line 754
    const/16 v11, 0x8

    .line 755
    .line 756
    add-int/lit8 v2, v14, 0x8

    .line 757
    .line 758
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 759
    .line 760
    .line 761
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzacu;->zzc(Lcom/google/android/gms/internal/ads/zzen;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    .line 770
    .line 771
    :cond_38
    :goto_19
    move/from16 v3, v25

    .line 772
    .line 773
    const/4 v11, 0x0

    .line 774
    goto :goto_13

    .line 775
    :cond_39
    const/16 v11, 0x8

    .line 776
    .line 777
    const v15, 0x64656333

    .line 778
    .line 779
    .line 780
    if-ne v2, v15, :cond_3a

    .line 781
    .line 782
    add-int/lit8 v2, v14, 0x8

    .line 783
    .line 784
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 785
    .line 786
    .line 787
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzacu;->zzd(Lcom/google/android/gms/internal/ads/zzen;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    .line 796
    .line 797
    goto :goto_19

    .line 798
    :cond_3a
    const v15, 0x64616334

    .line 799
    .line 800
    .line 801
    if-ne v2, v15, :cond_3b

    .line 802
    .line 803
    add-int/lit8 v2, v14, 0x8

    .line 804
    .line 805
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 806
    .line 807
    .line 808
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzacy;->zza(Lcom/google/android/gms/internal/ads/zzen;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    .line 817
    .line 818
    goto :goto_19

    .line 819
    :cond_3b
    const v11, 0x646d6c70

    .line 820
    .line 821
    .line 822
    if-ne v2, v11, :cond_3d

    .line 823
    .line 824
    if-lez v13, :cond_3c

    .line 825
    .line 826
    move-object/from16 v2, p9

    .line 827
    .line 828
    move/from16 v25, v10

    .line 829
    .line 830
    move v3, v13

    .line 831
    const/4 v11, 0x0

    .line 832
    const/4 v12, 0x2

    .line 833
    goto/16 :goto_24

    .line 834
    .line 835
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 836
    .line 837
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    .line 839
    .line 840
    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    .line 841
    .line 842
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    const/4 v11, 0x0

    .line 853
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    throw v0

    .line 858
    :cond_3d
    const/4 v11, 0x0

    .line 859
    const v15, 0x64647473

    .line 860
    .line 861
    .line 862
    if-eq v2, v15, :cond_3e

    .line 863
    .line 864
    const v15, 0x75647473

    .line 865
    .line 866
    .line 867
    if-ne v2, v15, :cond_3f

    .line 868
    .line 869
    :cond_3e
    const/16 v11, 0x20

    .line 870
    .line 871
    const/4 v15, 0x2

    .line 872
    goto/16 :goto_1e

    .line 873
    .line 874
    :cond_3f
    const v15, 0x644f7073

    .line 875
    .line 876
    .line 877
    if-ne v2, v15, :cond_40

    .line 878
    .line 879
    const/16 v15, 0x8

    .line 880
    .line 881
    add-int/lit8 v1, v14, 0x8

    .line 882
    .line 883
    add-int/lit8 v2, v9, -0x8

    .line 884
    .line 885
    sget-object v3, Lcom/google/android/gms/internal/ads/zzaix;->zzb:[B

    .line 886
    .line 887
    array-length v11, v3

    .line 888
    add-int v15, v11, v2

    .line 889
    .line 890
    invoke-static {v3, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 891
    .line 892
    .line 893
    move-result-object v3

    .line 894
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0, v3, v11, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 898
    .line 899
    .line 900
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaeq;->zze([B)Ljava/util/List;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    goto/16 :goto_12

    .line 905
    .line 906
    :cond_40
    const v3, 0x64664c61

    .line 907
    .line 908
    .line 909
    if-ne v2, v3, :cond_41

    .line 910
    .line 911
    add-int/lit8 v1, v14, 0xc

    .line 912
    .line 913
    add-int/lit8 v2, v9, -0xc

    .line 914
    .line 915
    add-int/lit8 v3, v9, -0x8

    .line 916
    .line 917
    new-array v3, v3, [B

    .line 918
    .line 919
    const/16 v11, 0x66

    .line 920
    .line 921
    const/4 v15, 0x0

    .line 922
    aput-byte v11, v3, v15

    .line 923
    .line 924
    const/16 v11, 0x4c

    .line 925
    .line 926
    const/4 v15, 0x1

    .line 927
    aput-byte v11, v3, v15

    .line 928
    .line 929
    const/16 v11, 0x61

    .line 930
    .line 931
    const/4 v15, 0x2

    .line 932
    aput-byte v11, v3, v15

    .line 933
    .line 934
    const/16 v11, 0x43

    .line 935
    .line 936
    aput-byte v11, v3, v18

    .line 937
    .line 938
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 939
    .line 940
    .line 941
    const/4 v11, 0x4

    .line 942
    invoke-virtual {v0, v3, v11, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 943
    .line 944
    .line 945
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    goto/16 :goto_12

    .line 950
    .line 951
    :cond_41
    const v3, 0x616c6163

    .line 952
    .line 953
    .line 954
    const/4 v11, 0x4

    .line 955
    const/4 v15, 0x2

    .line 956
    if-ne v2, v3, :cond_42

    .line 957
    .line 958
    add-int/lit8 v1, v14, 0xc

    .line 959
    .line 960
    add-int/lit8 v2, v9, -0xc

    .line 961
    .line 962
    new-array v12, v2, [B

    .line 963
    .line 964
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 965
    .line 966
    .line 967
    const/4 v1, 0x0

    .line 968
    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 969
    .line 970
    .line 971
    sget v1, Lcom/google/android/gms/internal/ads/zzdk;->zza:I

    .line 972
    .line 973
    new-instance v1, Lcom/google/android/gms/internal/ads/zzen;

    .line 974
    .line 975
    invoke-direct {v1, v12}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    .line 976
    .line 977
    .line 978
    const/16 v2, 0x9

    .line 979
    .line 980
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 984
    .line 985
    .line 986
    move-result v2

    .line 987
    const/16 v3, 0x14

    .line 988
    .line 989
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    .line 993
    .line 994
    .line 995
    move-result v1

    .line 996
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v2

    .line 1004
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v1

    .line 1008
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1009
    .line 1010
    check-cast v2, Ljava/lang/Integer;

    .line 1011
    .line 1012
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1017
    .line 1018
    check-cast v1, Ljava/lang/Integer;

    .line 1019
    .line 1020
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1021
    .line 1022
    .line 1023
    move-result v1

    .line 1024
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v3

    .line 1028
    move v12, v1

    .line 1029
    move-object v1, v3

    .line 1030
    move/from16 v25, v10

    .line 1031
    .line 1032
    const/4 v11, 0x0

    .line 1033
    move v3, v2

    .line 1034
    :goto_1a
    move-object/from16 v2, p9

    .line 1035
    .line 1036
    goto/16 :goto_24

    .line 1037
    .line 1038
    :cond_42
    const v3, 0x69616362

    .line 1039
    .line 1040
    .line 1041
    if-ne v2, v3, :cond_43

    .line 1042
    .line 1043
    const/16 v3, 0x9

    .line 1044
    .line 1045
    add-int/lit8 v1, v14, 0x9

    .line 1046
    .line 1047
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzv()J

    .line 1051
    .line 1052
    .line 1053
    move-result-wide v1

    .line 1054
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbt;->zzb(J)I

    .line 1055
    .line 1056
    .line 1057
    move-result v1

    .line 1058
    new-array v2, v1, [B

    .line 1059
    .line 1060
    const/4 v3, 0x0

    .line 1061
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 1062
    .line 1063
    .line 1064
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v1

    .line 1068
    goto/16 :goto_12

    .line 1069
    .line 1070
    :cond_43
    const v3, 0x70636d43

    .line 1071
    .line 1072
    .line 1073
    if-ne v2, v3, :cond_38

    .line 1074
    .line 1075
    add-int/lit8 v2, v14, 0xc

    .line 1076
    .line 1077
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 1081
    .line 1082
    .line 1083
    move-result v2

    .line 1084
    const/4 v3, 0x1

    .line 1085
    and-int/2addr v2, v3

    .line 1086
    if-eqz v2, :cond_44

    .line 1087
    .line 1088
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1089
    .line 1090
    goto :goto_1b

    .line 1091
    :cond_44
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 1092
    .line 1093
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 1094
    .line 1095
    .line 1096
    move-result v3

    .line 1097
    const v11, 0x6970636d

    .line 1098
    .line 1099
    .line 1100
    if-ne v10, v11, :cond_45

    .line 1101
    .line 1102
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzn(ILjava/nio/ByteOrder;)I

    .line 1103
    .line 1104
    .line 1105
    move-result v2

    .line 1106
    const/4 v3, -0x1

    .line 1107
    const/16 v11, 0x20

    .line 1108
    .line 1109
    goto :goto_1d

    .line 1110
    :cond_45
    const v11, 0x6670636d

    .line 1111
    .line 1112
    .line 1113
    if-ne v10, v11, :cond_46

    .line 1114
    .line 1115
    const/16 v11, 0x20

    .line 1116
    .line 1117
    if-ne v3, v11, :cond_47

    .line 1118
    .line 1119
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1120
    .line 1121
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    move-result v2

    .line 1125
    if-eqz v2, :cond_47

    .line 1126
    .line 1127
    const/4 v2, 0x4

    .line 1128
    :goto_1c
    const/4 v3, -0x1

    .line 1129
    goto :goto_1d

    .line 1130
    :cond_46
    const/16 v11, 0x20

    .line 1131
    .line 1132
    :cond_47
    move/from16 v2, v17

    .line 1133
    .line 1134
    goto :goto_1c

    .line 1135
    :goto_1d
    move/from16 v17, v2

    .line 1136
    .line 1137
    if-eq v2, v3, :cond_48

    .line 1138
    .line 1139
    move-object/from16 v8, v24

    .line 1140
    .line 1141
    :cond_48
    move/from16 v3, v25

    .line 1142
    .line 1143
    const/4 v11, 0x0

    .line 1144
    move-object/from16 v2, p9

    .line 1145
    .line 1146
    goto/16 :goto_11

    .line 1147
    .line 1148
    :goto_1e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzx;

    .line 1149
    .line 1150
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzR(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzx;->zzD(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1160
    .line 1161
    .line 1162
    move/from16 v3, v25

    .line 1163
    .line 1164
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzL(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v2

    .line 1177
    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    .line 1178
    .line 1179
    :cond_49
    move/from16 v25, v10

    .line 1180
    .line 1181
    const/4 v11, 0x0

    .line 1182
    goto/16 :goto_1a

    .line 1183
    .line 1184
    :cond_4a
    move/from16 v3, v25

    .line 1185
    .line 1186
    const/4 v15, 0x2

    .line 1187
    move v2, v14

    .line 1188
    const/4 v11, -0x1

    .line 1189
    :goto_1f
    if-eq v2, v11, :cond_49

    .line 1190
    .line 1191
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaix;->zzo(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzain;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v22

    .line 1195
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzain;->zzc(Lcom/google/android/gms/internal/ads/zzain;)Ljava/lang/String;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v2

    .line 1199
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzain;->zzd(Lcom/google/android/gms/internal/ads/zzain;)[B

    .line 1200
    .line 1201
    .line 1202
    move-result-object v8

    .line 1203
    if-eqz v8, :cond_50

    .line 1204
    .line 1205
    const-string v1, "audio/vorbis"

    .line 1206
    .line 1207
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1208
    .line 1209
    .line 1210
    move-result v1

    .line 1211
    if-eqz v1, :cond_4e

    .line 1212
    .line 1213
    new-instance v1, Lcom/google/android/gms/internal/ads/zzen;

    .line 1214
    .line 1215
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    .line 1216
    .line 1217
    .line 1218
    const/4 v11, 0x1

    .line 1219
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 1220
    .line 1221
    .line 1222
    const/4 v15, 0x0

    .line 1223
    :goto_20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 1224
    .line 1225
    .line 1226
    move-result v21

    .line 1227
    if-lez v21, :cond_4b

    .line 1228
    .line 1229
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzf()I

    .line 1230
    .line 1231
    .line 1232
    move-result v0

    .line 1233
    move/from16 v25, v10

    .line 1234
    .line 1235
    const/16 v10, 0xff

    .line 1236
    .line 1237
    if-ne v0, v10, :cond_4c

    .line 1238
    .line 1239
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 1240
    .line 1241
    .line 1242
    add-int/2addr v15, v10

    .line 1243
    move-object/from16 v0, p0

    .line 1244
    .line 1245
    move/from16 v10, v25

    .line 1246
    .line 1247
    const/4 v11, 0x1

    .line 1248
    goto :goto_20

    .line 1249
    :cond_4b
    move/from16 v25, v10

    .line 1250
    .line 1251
    const/16 v10, 0xff

    .line 1252
    .line 1253
    :cond_4c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 1254
    .line 1255
    .line 1256
    move-result v0

    .line 1257
    add-int/2addr v15, v0

    .line 1258
    const/4 v0, 0x0

    .line 1259
    :goto_21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 1260
    .line 1261
    .line 1262
    move-result v11

    .line 1263
    if-lez v11, :cond_4d

    .line 1264
    .line 1265
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzf()I

    .line 1266
    .line 1267
    .line 1268
    move-result v11

    .line 1269
    if-ne v11, v10, :cond_4d

    .line 1270
    .line 1271
    const/4 v11, 0x1

    .line 1272
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 1273
    .line 1274
    .line 1275
    add-int/2addr v0, v10

    .line 1276
    goto :goto_21

    .line 1277
    :cond_4d
    const/4 v11, 0x1

    .line 1278
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    .line 1279
    .line 1280
    .line 1281
    move-result v16

    .line 1282
    add-int v0, v0, v16

    .line 1283
    .line 1284
    new-array v10, v15, [B

    .line 1285
    .line 1286
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 1287
    .line 1288
    .line 1289
    move-result v1

    .line 1290
    const/4 v11, 0x0

    .line 1291
    invoke-static {v8, v1, v10, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1292
    .line 1293
    .line 1294
    add-int/2addr v1, v15

    .line 1295
    array-length v15, v8

    .line 1296
    add-int/2addr v1, v0

    .line 1297
    sub-int/2addr v15, v1

    .line 1298
    new-array v0, v15, [B

    .line 1299
    .line 1300
    invoke-static {v8, v1, v0, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1301
    .line 1302
    .line 1303
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/zzfyq;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v1

    .line 1307
    :goto_22
    move-object v8, v2

    .line 1308
    goto/16 :goto_1a

    .line 1309
    .line 1310
    :cond_4e
    move/from16 v25, v10

    .line 1311
    .line 1312
    const/4 v11, 0x0

    .line 1313
    const-string v0, "audio/mp4a-latm"

    .line 1314
    .line 1315
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1316
    .line 1317
    .line 1318
    move-result v0

    .line 1319
    if-eqz v0, :cond_4f

    .line 1320
    .line 1321
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzacr;->zza([B)Lcom/google/android/gms/internal/ads/zzacp;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v0

    .line 1325
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzacp;->zza:I

    .line 1326
    .line 1327
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzacp;->zzb:I

    .line 1328
    .line 1329
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzacp;->zzc:Ljava/lang/String;

    .line 1330
    .line 1331
    goto :goto_23

    .line 1332
    :cond_4f
    move-object/from16 v0, p9

    .line 1333
    .line 1334
    move v1, v3

    .line 1335
    :goto_23
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v3

    .line 1339
    move-object v8, v2

    .line 1340
    move-object v2, v0

    .line 1341
    move-object/from16 v28, v3

    .line 1342
    .line 1343
    move v3, v1

    .line 1344
    move-object/from16 v1, v28

    .line 1345
    .line 1346
    goto :goto_24

    .line 1347
    :cond_50
    move/from16 v25, v10

    .line 1348
    .line 1349
    const/4 v11, 0x0

    .line 1350
    goto :goto_22

    .line 1351
    :goto_24
    add-int/2addr v14, v9

    .line 1352
    move-object/from16 v0, p0

    .line 1353
    .line 1354
    move-object/from16 p9, v2

    .line 1355
    .line 1356
    move v11, v3

    .line 1357
    move/from16 v10, v25

    .line 1358
    .line 1359
    move-object/from16 v15, v26

    .line 1360
    .line 1361
    move/from16 v2, p2

    .line 1362
    .line 1363
    move/from16 v3, p3

    .line 1364
    .line 1365
    goto/16 :goto_d

    .line 1366
    .line 1367
    :cond_51
    move v3, v11

    .line 1368
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    .line 1369
    .line 1370
    if-nez v0, :cond_54

    .line 1371
    .line 1372
    if-eqz v8, :cond_54

    .line 1373
    .line 1374
    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 1375
    .line 1376
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzR(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1383
    .line 1384
    .line 1385
    move-object/from16 v2, p9

    .line 1386
    .line 1387
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzx;->zzD(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1394
    .line 1395
    .line 1396
    move/from16 v2, v17

    .line 1397
    .line 1398
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzab(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzT(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzL(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1405
    .line 1406
    .line 1407
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1408
    .line 1409
    .line 1410
    if-eqz v22, :cond_52

    .line 1411
    .line 1412
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzain;->zza(Lcom/google/android/gms/internal/ads/zzain;)J

    .line 1413
    .line 1414
    .line 1415
    move-result-wide v1

    .line 1416
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    .line 1417
    .line 1418
    .line 1419
    move-result v1

    .line 1420
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1421
    .line 1422
    .line 1423
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzain;->zzb(Lcom/google/android/gms/internal/ads/zzain;)J

    .line 1424
    .line 1425
    .line 1426
    move-result-wide v1

    .line 1427
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    .line 1428
    .line 1429
    .line 1430
    move-result v1

    .line 1431
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzac(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1432
    .line 1433
    .line 1434
    goto :goto_25

    .line 1435
    :cond_52
    if-eqz v23, :cond_53

    .line 1436
    .line 1437
    invoke-static/range {v23 .. v23}, Lcom/google/android/gms/internal/ads/zzail;->zza(Lcom/google/android/gms/internal/ads/zzail;)J

    .line 1438
    .line 1439
    .line 1440
    move-result-wide v1

    .line 1441
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    .line 1442
    .line 1443
    .line 1444
    move-result v1

    .line 1445
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1446
    .line 1447
    .line 1448
    invoke-static/range {v23 .. v23}, Lcom/google/android/gms/internal/ads/zzail;->zzb(Lcom/google/android/gms/internal/ads/zzail;)J

    .line 1449
    .line 1450
    .line 1451
    move-result-wide v1

    .line 1452
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    .line 1453
    .line 1454
    .line 1455
    move-result v1

    .line 1456
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzac(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1457
    .line 1458
    .line 1459
    :cond_53
    :goto_25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v0

    .line 1463
    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    .line 1464
    .line 1465
    :cond_54
    return-void
.end method
