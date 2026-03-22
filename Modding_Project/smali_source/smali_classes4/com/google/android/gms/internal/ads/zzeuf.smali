.class public final Lcom/google/android/gms/internal/ads/zzeuf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/Set;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfhu;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdsj;

.field private zzf:J

.field private zzg:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzfhu;Lcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zzf:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zzg:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zza:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zzc:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zzb:Ljava/util/Set;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zzd:Lcom/google/android/gms/internal/ads/zzfhu;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zze:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzeuf;JLcom/google/android/gms/internal/ads/zzeuc;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sub-long/2addr v0, p1

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbfg;->zza:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfwg;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "Signal runtime (ms) : "

    .line 42
    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, " = "

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzcq:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 65
    .line 66
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzcw:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 83
    .line 84
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzeuc;->zza()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v2, "sig"

    .line 111
    .line 112
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p4, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 123
    .line 124
    .line 125
    monitor-exit p0

    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception p1

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    throw p1

    .line 130
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzco:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 131
    .line 132
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-nez p1, :cond_2

    .line 147
    .line 148
    return-void

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zze:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsj;->zza()Lcom/google/android/gms/internal/ads/zzdsi;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string p2, "action"

    .line 156
    .line 157
    const-string p4, "lat_ms"

    .line 158
    .line 159
    invoke-virtual {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 160
    .line 161
    .line 162
    const-string p2, "lat_grp"

    .line 163
    .line 164
    const-string p4, "sig_lat_grp"

    .line 165
    .line 166
    invoke-virtual {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 167
    .line 168
    .line 169
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzeuc;->zza()I

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    const-string p4, "lat_id"

    .line 178
    .line 179
    invoke-virtual {p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    const-string p4, "clat_ms"

    .line 187
    .line 188
    invoke-virtual {p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 189
    .line 190
    .line 191
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbde;->zzcp:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 192
    .line 193
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 194
    .line 195
    .line 196
    move-result-object p4

    .line 197
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    check-cast p2, Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-eqz p2, :cond_5

    .line 208
    .line 209
    monitor-enter p0

    .line 210
    :try_start_1
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zzg:I

    .line 211
    .line 212
    add-int/lit8 p2, p2, 0x1

    .line 213
    .line 214
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zzg:I

    .line 215
    .line 216
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 217
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbzs;->zzh()Lcom/google/android/gms/internal/ads/zzbzw;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbzw;->zzd()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    const-string p4, "seq_num"

    .line 230
    .line 231
    invoke-virtual {p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 232
    .line 233
    .line 234
    monitor-enter p0

    .line 235
    :try_start_2
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zzg:I

    .line 236
    .line 237
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zzb:Ljava/util/Set;

    .line 238
    .line 239
    invoke-interface {p4}, Ljava/util/Set;->size()I

    .line 240
    .line 241
    .line 242
    move-result p4

    .line 243
    if-ne p2, p4, :cond_4

    .line 244
    .line 245
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zzf:J

    .line 246
    .line 247
    const-wide/16 v2, 0x0

    .line 248
    .line 249
    cmp-long p2, v0, v2

    .line 250
    .line 251
    if-eqz p2, :cond_4

    .line 252
    .line 253
    const/4 p2, 0x0

    .line 254
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zzg:I

    .line 255
    .line 256
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 261
    .line 262
    .line 263
    move-result-wide v0

    .line 264
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzeuf;->zzf:J

    .line 265
    .line 266
    sub-long/2addr v0, v2

    .line 267
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzeuc;->zza()I

    .line 272
    .line 273
    .line 274
    move-result p4

    .line 275
    const/16 v0, 0x27

    .line 276
    .line 277
    if-le p4, v0, :cond_3

    .line 278
    .line 279
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzeuc;->zza()I

    .line 280
    .line 281
    .line 282
    move-result p3

    .line 283
    const/16 p4, 0x34

    .line 284
    .line 285
    if-ge p3, p4, :cond_3

    .line 286
    .line 287
    const-string p3, "lat_gmssg"

    .line 288
    .line 289
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 290
    .line 291
    .line 292
    goto :goto_1

    .line 293
    :catchall_1
    move-exception p1

    .line 294
    goto :goto_2

    .line 295
    :cond_3
    const-string p3, "lat_clsg"

    .line 296
    .line 297
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzdsi;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsi;

    .line 298
    .line 299
    .line 300
    :cond_4
    :goto_1
    monitor-exit p0

    .line 301
    goto :goto_3

    .line 302
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 303
    throw p1

    .line 304
    :catchall_2
    move-exception p1

    .line 305
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 306
    throw p1

    .line 307
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdsi;->zzk()V

    .line 308
    .line 309
    .line 310
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Landroid/os/Bundle;Z)Lcom/google/common/util/concurrent/e;
    .locals 16
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzeuf;->zza:Landroid/content/Context;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfhi;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 10
    .line 11
    .line 12
    move-result-object v8

    .line 13
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzfhj;->zzi()Lcom/google/android/gms/internal/ads/zzfhj;

    .line 14
    .line 15
    .line 16
    new-instance v9, Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzeuf;->zzb:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzmg:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 33
    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/lang/String;

    .line 59
    .line 60
    const-string v2, ","

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_0
    move-object v10, v1

    .line 71
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    iput-wide v1, v6, Lcom/google/android/gms/internal/ads/zzeuf;->zzf:J

    .line 80
    .line 81
    new-instance v11, Landroid/os/Bundle;

    .line 82
    .line 83
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 84
    .line 85
    .line 86
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzcq:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 87
    .line 88
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    if-eqz v7, :cond_2

    .line 105
    .line 106
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v1

    .line 114
    move-object/from16 v12, p1

    .line 115
    .line 116
    instance-of v3, v12, Lcom/google/android/gms/internal/ads/zzcva;

    .line 117
    .line 118
    if-eqz v3, :cond_1

    .line 119
    .line 120
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdrr;->zze:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v7, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdrr;->zzh:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v7, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    move-object/from16 v12, p1

    .line 141
    .line 142
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    move-object v4, v0

    .line 157
    check-cast v4, Lcom/google/android/gms/internal/ads/zzeuc;

    .line 158
    .line 159
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzeuc;->zza()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_3

    .line 172
    .line 173
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 178
    .line 179
    .line 180
    move-result-wide v2

    .line 181
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzeuc;->zzb()Lcom/google/common/util/concurrent/e;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    new-instance v15, Lcom/google/android/gms/internal/ads/zzeud;

    .line 186
    .line 187
    move-object v0, v15

    .line 188
    move-object/from16 v1, p0

    .line 189
    .line 190
    move-object v5, v11

    .line 191
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeud;-><init>(Lcom/google/android/gms/internal/ads/zzeuf;JLcom/google/android/gms/internal/ads/zzeuc;Landroid/os/Bundle;)V

    .line 192
    .line 193
    .line 194
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 195
    .line 196
    invoke-interface {v14, v15, v0}, Lcom/google/common/util/concurrent/e;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_4
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgdn;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgdl;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    new-instance v13, Lcom/google/android/gms/internal/ads/zzeue;

    .line 208
    .line 209
    move-object v0, v13

    .line 210
    move-object v1, v9

    .line 211
    move-object/from16 v2, p1

    .line 212
    .line 213
    move/from16 v3, p3

    .line 214
    .line 215
    move-object/from16 v4, p2

    .line 216
    .line 217
    move-object v5, v11

    .line 218
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeue;-><init>(Ljava/util/List;Ljava/lang/Object;ZLandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzeuf;->zzc:Ljava/util/concurrent/Executor;

    .line 222
    .line 223
    invoke-virtual {v10, v13, v0}, Lcom/google/android/gms/internal/ads/zzgdl;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhx;->zza()Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-eqz v1, :cond_5

    .line 232
    .line 233
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzeuf;->zzd:Lcom/google/android/gms/internal/ads/zzfhu;

    .line 234
    .line 235
    invoke-static {v0, v1, v8}, Lcom/google/android/gms/internal/ads/zzfht;->zza(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfhu;Lcom/google/android/gms/internal/ads/zzfhj;)V

    .line 236
    .line 237
    .line 238
    :cond_5
    return-object v0
.end method
