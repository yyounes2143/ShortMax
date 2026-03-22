.class public final Lcom/google/android/gms/internal/ads/zzebn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbcc;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeas;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbcc;Lcom/google/android/gms/internal/ads/zzeas;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzb:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebn;->zza:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzc:Lcom/google/android/gms/internal/ads/zzeas;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzebn;ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    const/4 v11, 0x1

    .line 6
    const/4 v12, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzebn;->zzb:Landroid/content/Context;

    .line 10
    .line 11
    const-string v1, "OfflineUpload.db"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v14, "serialized_proto_data"

    .line 24
    .line 25
    filled-new-array {v14}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    const-string v3, "offline_signal_contents"

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    move-object/from16 v2, p2

    .line 37
    .line 38
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zza;->zzx([B)Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zza;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzw; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 66
    .line 67
    const-string v3, "Unable to deserialize proto from offline signals database:"

    .line 68
    .line 69
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 81
    .line 82
    .line 83
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzebn;->zzb:Landroid/content/Context;

    .line 84
    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcj$zzaf;->zzi()Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;

    .line 94
    .line 95
    .line 96
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;->zzy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;

    .line 99
    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/zzebh;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;->zzA(I)Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;

    .line 110
    .line 111
    .line 112
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzebh;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;->zzE(I)Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;

    .line 117
    .line 118
    .line 119
    const/4 v3, 0x3

    .line 120
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzebh;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;->zzx(I)Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v3

    .line 135
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;->zzF(J)Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;

    .line 136
    .line 137
    .line 138
    const/4 v3, 0x2

    .line 139
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzebh;->zzb(Landroid/database/sqlite/SQLiteDatabase;I)J

    .line 140
    .line 141
    .line 142
    move-result-wide v4

    .line 143
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;->zzB(J)Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzc;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Lcom/google/android/gms/internal/ads/zzbcj$zzaf;

    .line 151
    .line 152
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    const-wide/16 v5, 0x0

    .line 157
    .line 158
    move v7, v0

    .line 159
    move-wide v8, v5

    .line 160
    :goto_1
    if-ge v7, v4, :cond_3

    .line 161
    .line 162
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    check-cast v14, Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zza;

    .line 167
    .line 168
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zza;->zzk()Lcom/google/android/gms/internal/ads/zzbcj$zzq;

    .line 169
    .line 170
    .line 171
    move-result-object v15

    .line 172
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcj$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbcj$zzq;

    .line 173
    .line 174
    if-ne v15, v0, :cond_2

    .line 175
    .line 176
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zza;->zze()J

    .line 177
    .line 178
    .line 179
    move-result-wide v15

    .line 180
    cmp-long v0, v15, v8

    .line 181
    .line 182
    if-lez v0, :cond_2

    .line 183
    .line 184
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zza;->zze()J

    .line 185
    .line 186
    .line 187
    move-result-wide v8

    .line 188
    :cond_2
    add-int/2addr v7, v11

    .line 189
    const/4 v0, 0x0

    .line 190
    goto :goto_1

    .line 191
    :cond_3
    cmp-long v0, v8, v5

    .line 192
    .line 193
    if-eqz v0, :cond_4

    .line 194
    .line 195
    new-instance v0, Landroid/content/ContentValues;

    .line 196
    .line 197
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    const-string v5, "value"

    .line 205
    .line 206
    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    .line 208
    .line 209
    const-string v4, "statistic_name = \'last_successful_request_time\'"

    .line 210
    .line 211
    const-string v5, "offline_signal_statistics"

    .line 212
    .line 213
    invoke-virtual {v10, v5, v0, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzebn;->zza:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 217
    .line 218
    new-instance v4, Lcom/google/android/gms/internal/ads/zzebl;

    .line 219
    .line 220
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzebl;-><init>(Lcom/google/android/gms/internal/ads/zzbcj$zzaf;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzbcc;->zzb(Lcom/google/android/gms/internal/ads/zzbcb;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzebn;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 227
    .line 228
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcj$zzar;->zzd()Lcom/google/android/gms/internal/ads/zzbcj$zzar$zza;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    iget v4, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    .line 233
    .line 234
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzbcj$zzar$zza;->zzg(I)Lcom/google/android/gms/internal/ads/zzbcj$zzar$zza;

    .line 235
    .line 236
    .line 237
    iget v4, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 238
    .line 239
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzbcj$zzar$zza;->zzi(I)Lcom/google/android/gms/internal/ads/zzbcj$zzar$zza;

    .line 240
    .line 241
    .line 242
    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->isClientJar:Z

    .line 243
    .line 244
    if-eq v11, v1, :cond_5

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_5
    const/4 v3, 0x0

    .line 248
    :goto_2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbcj$zzar$zza;->zzh(I)Lcom/google/android/gms/internal/ads/zzbcj$zzar$zza;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbcj$zzar;

    .line 256
    .line 257
    new-instance v2, Lcom/google/android/gms/internal/ads/zzebm;

    .line 258
    .line 259
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzebm;-><init>(Lcom/google/android/gms/internal/ads/zzbcj$zzar;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbcc;->zzb(Lcom/google/android/gms/internal/ads/zzbcb;)V

    .line 263
    .line 264
    .line 265
    const/16 v1, 0x2714

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcc;->zzc(I)V

    .line 268
    .line 269
    .line 270
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzebh;->zze(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 271
    .line 272
    .line 273
    :goto_3
    return-object v12
.end method


# virtual methods
.method public final zzb(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebn;->zzc:Lcom/google/android/gms/internal/ads/zzeas;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzebk;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzebk;-><init>(Lcom/google/android/gms/internal/ads/zzebn;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeas;->zza(Lcom/google/android/gms/internal/ads/zzfge;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 22
    .line 23
    const-string v0, "Error in offline signals database startup: "

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
