.class public final Lcom/google/android/gms/internal/ads/zzgg;
.super Lcom/google/android/gms/internal/ads/zzgc;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Landroid/content/ContentResolver;

.field private zzb:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Landroid/content/res/AssetFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/io/FileInputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:J

.field private zzf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgg;->zza:Landroid/content/ContentResolver;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgf;
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->zze:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-eqz v2, :cond_4

    .line 13
    .line 14
    const-wide/16 v4, -0x1

    .line 15
    .line 16
    cmp-long v2, v0, v4

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    int-to-long v6, p3

    .line 21
    :try_start_0
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    long-to-int p3, v0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzd:Ljava/io/FileInputStream;

    .line 30
    .line 31
    sget-object v1, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    .line 34
    .line 35
    .line 36
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    if-ne p1, v3, :cond_2

    .line 38
    .line 39
    return v3

    .line 40
    :cond_2
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgg;->zze:J

    .line 41
    .line 42
    cmp-long v0, p2, v4

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    int-to-long v0, p1

    .line 47
    sub-long/2addr p2, v0

    .line 48
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgg;->zze:J

    .line 49
    .line 50
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgc;->zzg(I)V

    .line 51
    .line 52
    .line 53
    return p1

    .line 54
    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgf;

    .line 55
    .line 56
    const/16 p3, 0x7d0

    .line 57
    .line 58
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/io/IOException;I)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_4
    return v3
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgo;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgf;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzgo;->zza:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {v4}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzgg;->zzb:Landroid/net/Uri;

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgc;->zzi(Lcom/google/android/gms/internal/ads/zzgo;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string v6, "content"

    .line 22
    .line 23
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    new-instance v5, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v6, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    .line 35
    .line 36
    invoke-virtual {v5, v6, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzgg;->zza:Landroid/content/ContentResolver;

    .line 40
    .line 41
    const-string v7, "*/*"

    .line 42
    .line 43
    invoke-virtual {v6, v4, v7, v5}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const/16 v3, 0x7d0

    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :catch_1
    move-exception v0

    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :cond_0
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzgg;->zza:Landroid/content/ContentResolver;

    .line 57
    .line 58
    const-string v6, "r"

    .line 59
    .line 60
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    :goto_0
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzgg;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 65
    .line 66
    if-eqz v5, :cond_b

    .line 67
    .line 68
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    new-instance v4, Ljava/io/FileInputStream;

    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 79
    .line 80
    .line 81
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzgg;->zzd:Ljava/io/FileInputStream;

    .line 82
    .line 83
    const-wide/16 v8, -0x1

    .line 84
    .line 85
    cmp-long v10, v6, v8

    .line 86
    .line 87
    const/16 v11, 0x7d8

    .line 88
    .line 89
    const/4 v12, 0x0

    .line 90
    if-eqz v10, :cond_2

    .line 91
    .line 92
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzgo;->zze:J

    .line 93
    .line 94
    cmp-long v13, v13, v6

    .line 95
    .line 96
    if-gtz v13, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgf;

    .line 100
    .line 101
    invoke-direct {v0, v12, v11}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/io/IOException;I)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 106
    .line 107
    .line 108
    move-result-wide v13

    .line 109
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzgo;->zze:J

    .line 110
    .line 111
    move-wide v15, v6

    .line 112
    add-long v5, v13, v2

    .line 113
    .line 114
    invoke-virtual {v4, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v5

    .line 118
    sub-long/2addr v5, v13

    .line 119
    cmp-long v2, v5, v2

    .line 120
    .line 121
    if-nez v2, :cond_a

    .line 122
    .line 123
    const-wide/16 v2, 0x0

    .line 124
    .line 125
    if-nez v10, :cond_5

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    .line 132
    .line 133
    .line 134
    move-result-wide v5

    .line 135
    cmp-long v10, v5, v2

    .line 136
    .line 137
    if-nez v10, :cond_3

    .line 138
    .line 139
    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzgg;->zze:J

    .line 140
    .line 141
    move-wide v5, v8

    .line 142
    goto :goto_2

    .line 143
    :cond_3
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    .line 144
    .line 145
    .line 146
    move-result-wide v13

    .line 147
    sub-long/2addr v5, v13

    .line 148
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzgg;->zze:J

    .line 149
    .line 150
    cmp-long v2, v5, v2

    .line 151
    .line 152
    if-ltz v2, :cond_4

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgf;

    .line 156
    .line 157
    invoke-direct {v0, v12, v11}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/io/IOException;I)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_5
    sub-long v5, v15, v5

    .line 162
    .line 163
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzgg;->zze:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    cmp-long v2, v5, v2

    .line 166
    .line 167
    if-ltz v2, :cond_9

    .line 168
    .line 169
    :goto_2
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzgo;->zzf:J

    .line 170
    .line 171
    cmp-long v4, v2, v8

    .line 172
    .line 173
    if-eqz v4, :cond_7

    .line 174
    .line 175
    cmp-long v7, v5, v8

    .line 176
    .line 177
    if-nez v7, :cond_6

    .line 178
    .line 179
    move-wide v5, v2

    .line 180
    goto :goto_3

    .line 181
    :cond_6
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 182
    .line 183
    .line 184
    move-result-wide v5

    .line 185
    :goto_3
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzgg;->zze:J

    .line 186
    .line 187
    :cond_7
    const/4 v5, 0x1

    .line 188
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzgg;->zzf:Z

    .line 189
    .line 190
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgc;->zzj(Lcom/google/android/gms/internal/ads/zzgo;)V

    .line 191
    .line 192
    .line 193
    if-eqz v4, :cond_8

    .line 194
    .line 195
    return-wide v2

    .line 196
    :cond_8
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzgg;->zze:J

    .line 197
    .line 198
    return-wide v2

    .line 199
    :cond_9
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgf;

    .line 200
    .line 201
    invoke-direct {v0, v12, v11}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/io/IOException;I)V

    .line 202
    .line 203
    .line 204
    throw v0

    .line 205
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgf;

    .line 206
    .line 207
    invoke-direct {v0, v12, v11}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/io/IOException;I)V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgf;

    .line 212
    .line 213
    new-instance v2, Ljava/io/IOException;

    .line 214
    .line 215
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string v5, "Could not open file descriptor for: "

    .line 225
    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    .line 238
    .line 239
    const/16 v3, 0x7d0

    .line 240
    .line 241
    :try_start_2
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/io/IOException;I)V

    .line 242
    .line 243
    .line 244
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzgf; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 245
    :catch_2
    move-exception v0

    .line 246
    :goto_4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgf;

    .line 247
    .line 248
    instance-of v4, v0, Ljava/io/FileNotFoundException;

    .line 249
    .line 250
    const/4 v5, 0x1

    .line 251
    if-eq v5, v4, :cond_c

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_c
    const/16 v3, 0x7d5

    .line 255
    .line 256
    :goto_5
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/io/IOException;I)V

    .line 257
    .line 258
    .line 259
    throw v2

    .line 260
    :goto_6
    throw v0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgf;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzb:Landroid/net/Uri;

    .line 3
    .line 4
    const/16 v1, 0x7d0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzd:Ljava/io/FileInputStream;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v3

    .line 16
    goto :goto_4

    .line 17
    :catch_0
    move-exception v3

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzd:Ljava/io/FileInputStream;

    .line 20
    .line 21
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    goto :goto_7

    .line 31
    :catch_1
    move-exception v3

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzf:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzf:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgc;->zzh()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void

    .line 45
    :goto_2
    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgf;

    .line 46
    .line 47
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/io/IOException;I)V

    .line 48
    .line 49
    .line 50
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :goto_3
    :try_start_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgf;

    .line 52
    .line 53
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/io/IOException;I)V

    .line 54
    .line 55
    .line 56
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzd:Ljava/io/FileInputStream;

    .line 58
    .line 59
    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 64
    .line 65
    .line 66
    goto :goto_5

    .line 67
    :catch_2
    move-exception v3

    .line 68
    goto :goto_6

    .line 69
    :cond_3
    :goto_5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzf:Z

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzf:Z

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgc;->zzh()V

    .line 78
    .line 79
    .line 80
    :cond_4
    throw v3

    .line 81
    :goto_6
    :try_start_5
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgf;

    .line 82
    .line 83
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(Ljava/io/IOException;I)V

    .line 84
    .line 85
    .line 86
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 87
    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 88
    .line 89
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzf:Z

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgg;->zzf:Z

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgc;->zzh()V

    .line 96
    .line 97
    .line 98
    :cond_5
    throw v1
.end method
