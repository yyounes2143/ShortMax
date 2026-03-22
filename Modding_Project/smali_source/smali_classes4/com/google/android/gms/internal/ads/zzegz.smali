.class final Lcom/google/android/gms/internal/ads/zzegz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfcd;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfca;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfju;

.field final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfcn;

.field final synthetic zzg:Lcom/google/android/gms/internal/ads/zzehb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzehb;JLcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/internal/ads/zzfca;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfju;Lcom/google/android/gms/internal/ads/zzfcn;)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zza:J

    .line 2
    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzb:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    .line 6
    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzd:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzegz;->zze:Lcom/google/android/gms/internal/ads/zzfju;

    .line 10
    .line 11
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzf:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzg:Lcom/google/android/gms/internal/ads/zzehb;

    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzegz;->zzg:Lcom/google/android/gms/internal/ads/zzehb;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzehb;->zze(Lcom/google/android/gms/internal/ads/zzehb;)Lcom/google/android/gms/common/util/Clock;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzegz;->zza:J

    .line 16
    .line 17
    sub-long/2addr v3, v5

    .line 18
    instance-of v5, v0, Ljava/util/concurrent/TimeoutException;

    .line 19
    .line 20
    const/4 v6, 0x3

    .line 21
    const/4 v7, 0x0

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    :goto_0
    move-object v14, v7

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzegj;

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    move v5, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    instance-of v5, v0, Ljava/util/concurrent/CancellationException;

    .line 34
    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    const/4 v5, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzfdd;

    .line 40
    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    const/4 v5, 0x5

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 46
    .line 47
    const/4 v8, 0x6

    .line 48
    if-eqz v5, :cond_5

    .line 49
    .line 50
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfdx;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iget v5, v5, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 55
    .line 56
    if-ne v5, v6, :cond_4

    .line 57
    .line 58
    const/4 v8, 0x1

    .line 59
    :cond_4
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbde;->zzbO:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 60
    .line 61
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_5

    .line 76
    .line 77
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzedq;

    .line 78
    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    move-object v5, v0

    .line 82
    check-cast v5, Lcom/google/android/gms/internal/ads/zzedq;

    .line 83
    .line 84
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzedq;->zzb()Lcom/google/android/gms/ads/internal/client/zze;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    if-eqz v5, :cond_5

    .line 89
    .line 90
    iget v5, v5, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 91
    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    move-object v14, v5

    .line 97
    :goto_1
    move v5, v8

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    move-object v14, v7

    .line 100
    goto :goto_1

    .line 101
    :goto_2
    monitor-enter v2

    .line 102
    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzehb;->zzn(Lcom/google/android/gms/internal/ads/zzehb;)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_7

    .line 107
    .line 108
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzehb;->zzc(Lcom/google/android/gms/internal/ads/zzehb;)Lcom/google/android/gms/internal/ads/zzehd;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzegz;->zzb:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 113
    .line 114
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzegz;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    .line 115
    .line 116
    instance-of v11, v0, Lcom/google/android/gms/internal/ads/zzedq;

    .line 117
    .line 118
    if-eqz v11, :cond_6

    .line 119
    .line 120
    move-object v7, v0

    .line 121
    check-cast v7, Lcom/google/android/gms/internal/ads/zzedq;

    .line 122
    .line 123
    :cond_6
    move-object v11, v7

    .line 124
    goto :goto_3

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    goto/16 :goto_4

    .line 127
    .line 128
    :goto_3
    move-object v7, v8

    .line 129
    move-object v8, v9

    .line 130
    move-object v9, v10

    .line 131
    move v10, v5

    .line 132
    move-wide v12, v3

    .line 133
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzehd;->zza(Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/internal/ads/zzfca;ILcom/google/android/gms/internal/ads/zzedq;J)V

    .line 134
    .line 135
    .line 136
    :cond_7
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zziK:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 137
    .line 138
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    check-cast v7, Ljava/lang/Boolean;

    .line 147
    .line 148
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_8

    .line 153
    .line 154
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzehb;->zzd(Lcom/google/android/gms/internal/ads/zzehb;)Lcom/google/android/gms/internal/ads/zzfjy;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzegz;->zze:Lcom/google/android/gms/internal/ads/zzfju;

    .line 159
    .line 160
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzegz;->zzf:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 161
    .line 162
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzegz;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    .line 163
    .line 164
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzfca;->zzn:Ljava/util/List;

    .line 165
    .line 166
    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzfju;->zzd(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Ljava/util/List;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzfca;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 171
    .line 172
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzfjy;->zze(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    .line 173
    .line 174
    .line 175
    :cond_8
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzehb;->zzo(Lcom/google/android/gms/internal/ads/zzehb;)Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-eqz v7, :cond_9

    .line 180
    .line 181
    monitor-exit v2

    .line 182
    return-void

    .line 183
    :cond_9
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzehb;->zzh(Lcom/google/android/gms/internal/ads/zzehb;)Ljava/util/LinkedHashMap;

    .line 184
    .line 185
    .line 186
    move-result-object v15

    .line 187
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzegz;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    .line 188
    .line 189
    new-instance v11, Lcom/google/android/gms/internal/ads/zzeha;

    .line 190
    .line 191
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzegz;->zzd:Ljava/lang/String;

    .line 192
    .line 193
    iget-object v9, v13, Lcom/google/android/gms/internal/ads/zzfca;->zzaf:Ljava/lang/String;

    .line 194
    .line 195
    move-object v7, v11

    .line 196
    move v10, v5

    .line 197
    move-object v5, v11

    .line 198
    move-wide v11, v3

    .line 199
    move-object v6, v13

    .line 200
    move-object v13, v14

    .line 201
    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzeha;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v15, v6, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfdx;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iget v5, v0, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 212
    .line 213
    const/4 v7, 0x3

    .line 214
    if-eq v5, v7, :cond_a

    .line 215
    .line 216
    if-nez v5, :cond_b

    .line 217
    .line 218
    :cond_a
    iget-object v5, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    .line 219
    .line 220
    if-eqz v5, :cond_b

    .line 221
    .line 222
    iget-object v5, v5, Lcom/google/android/gms/ads/internal/client/zze;->zzc:Ljava/lang/String;

    .line 223
    .line 224
    const-string v7, "com.google.android.gms.ads"

    .line 225
    .line 226
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-nez v5, :cond_b

    .line 231
    .line 232
    new-instance v5, Lcom/google/android/gms/internal/ads/zzedq;

    .line 233
    .line 234
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    .line 235
    .line 236
    const/16 v7, 0xd

    .line 237
    .line 238
    invoke-direct {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzedq;-><init>(ILcom/google/android/gms/ads/internal/client/zze;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfdx;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    :cond_b
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzehb;->zzb(Lcom/google/android/gms/internal/ads/zzehb;)Lcom/google/android/gms/internal/ads/zzedr;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-virtual {v5, v6, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzedr;->zzf(Lcom/google/android/gms/internal/ads/zzfca;JLcom/google/android/gms/ads/internal/client/zze;)V

    .line 250
    .line 251
    .line 252
    monitor-exit v2

    .line 253
    return-void

    .line 254
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    throw v0
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzg:Lcom/google/android/gms/internal/ads/zzehb;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehb;->zze(Lcom/google/android/gms/internal/ads/zzehb;)Lcom/google/android/gms/common/util/Clock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zza:J

    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehb;->zzn(Lcom/google/android/gms/internal/ads/zzehb;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehb;->zzc(Lcom/google/android/gms/internal/ads/zzehb;)Lcom/google/android/gms/internal/ads/zzehd;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzb:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    move-wide v9, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzehd;->zza(Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/internal/ads/zzfca;ILcom/google/android/gms/internal/ads/zzedq;J)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehb;->zzo(Lcom/google/android/gms/internal/ads/zzehb;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    monitor-exit p1

    .line 45
    return-void

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    .line 47
    .line 48
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzehb;->zzp(Lcom/google/android/gms/internal/ads/zzehb;Lcom/google/android/gms/internal/ads/zzfca;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehb;->zzh(Lcom/google/android/gms/internal/ads/zzehb;)Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/google/android/gms/internal/ads/zzeha;

    .line 63
    .line 64
    iput-wide v0, v3, Lcom/google/android/gms/internal/ads/zzeha;->zzd:J

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehb;->zzh(Lcom/google/android/gms/internal/ads/zzehb;)Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-instance v11, Lcom/google/android/gms/internal/ads/zzeha;

    .line 72
    .line 73
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzd:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzaf:Ljava/lang/String;

    .line 76
    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v10, 0x0

    .line 79
    move-object v4, v11

    .line 80
    move-wide v8, v0

    .line 81
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzeha;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v2, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehb;->zzb(Lcom/google/android/gms/internal/ads/zzehb;)Lcom/google/android/gms/internal/ads/zzedr;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzedr;->zzg(Lcom/google/android/gms/internal/ads/zzfca;JLcom/google/android/gms/ads/internal/client/zze;)V

    .line 93
    .line 94
    .line 95
    monitor-exit p1

    .line 96
    return-void

    .line 97
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw v0
.end method
