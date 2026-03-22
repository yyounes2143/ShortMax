.class public final Lcom/google/android/gms/internal/ads/zzgff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgnh;

.field private zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgff;->zza:Ljava/util/List;

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgnh;->zza:Lcom/google/android/gms/internal/ads/zzgnh;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgff;->zzb:Lcom/google/android/gms/internal/ads/zzgnh;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgff;->zzc:Z

    .line 17
    .line 18
    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzgff;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgff;->zzd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgff;->zza:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgfd;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgfd;->zzi(Lcom/google/android/gms/internal/ads/zzgfd;Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgff;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgfd;->zzf(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgff;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgfd;->zzj(Lcom/google/android/gms/internal/ads/zzgfd;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgff;->zzd()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgfd;->zzh(Lcom/google/android/gms/internal/ads/zzgfd;Lcom/google/android/gms/internal/ads/zzgff;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgff;->zza:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "Entry has already been added to a KeysetHandle.Builder"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgfi;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzgff;->zzc:Z

    .line 5
    .line 6
    if-nez v2, :cond_14

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzgff;->zzc:Z

    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgff;->zza:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgun;->zzc()Lcom/google/android/gms/internal/ads/zzguj;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    move v6, v5

    .line 27
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    add-int/lit8 v7, v7, -0x1

    .line 32
    .line 33
    if-ge v6, v7, :cond_2

    .line 34
    .line 35
    add-int/lit8 v7, v6, 0x1

    .line 36
    .line 37
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Lcom/google/android/gms/internal/ads/zzgfd;

    .line 42
    .line 43
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfd;->zze(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfe;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfe;->zza()Lcom/google/android/gms/internal/ads/zzgfe;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    if-ne v6, v8, :cond_1

    .line 52
    .line 53
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Lcom/google/android/gms/internal/ads/zzgfd;

    .line 58
    .line 59
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgfd;->zze(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfe;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfe;->zza()Lcom/google/android/gms/internal/ads/zzgfe;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    if-ne v6, v8, :cond_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 71
    .line 72
    const-string v2, "Entries with \'withRandomId()\' may only be followed by other entries with \'withRandomId()\'."

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :cond_1
    :goto_1
    move v6, v7

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const/4 v8, 0x0

    .line 90
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eqz v9, :cond_12

    .line 95
    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    check-cast v9, Lcom/google/android/gms/internal/ads/zzgfd;

    .line 101
    .line 102
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgfd;->zzb(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfb;

    .line 103
    .line 104
    .line 105
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgfd;->zze(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfe;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    if-eqz v10, :cond_11

    .line 110
    .line 111
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgfd;->zze(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfe;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfe;->zza()Lcom/google/android/gms/internal/ads/zzgfe;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    const/4 v12, 0x3

    .line 120
    const/4 v13, 0x4

    .line 121
    if-ne v10, v11, :cond_5

    .line 122
    .line 123
    move v10, v5

    .line 124
    :cond_3
    if-eqz v10, :cond_4

    .line 125
    .line 126
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v11, :cond_6

    .line 135
    .line 136
    :cond_4
    sget v10, Lcom/google/android/gms/internal/ads/zzgpj;->zza:I

    .line 137
    .line 138
    move v10, v5

    .line 139
    :goto_3
    if-nez v10, :cond_3

    .line 140
    .line 141
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzgpa;->zzb(I)[B

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    aget-byte v11, v10, v5

    .line 146
    .line 147
    and-int/lit16 v11, v11, 0xff

    .line 148
    .line 149
    aget-byte v14, v10, v1

    .line 150
    .line 151
    and-int/lit16 v14, v14, 0xff

    .line 152
    .line 153
    const/4 v15, 0x2

    .line 154
    aget-byte v15, v10, v15

    .line 155
    .line 156
    and-int/lit16 v15, v15, 0xff

    .line 157
    .line 158
    aget-byte v10, v10, v12

    .line 159
    .line 160
    and-int/lit16 v10, v10, 0xff

    .line 161
    .line 162
    shl-int/lit8 v11, v11, 0x18

    .line 163
    .line 164
    shl-int/lit8 v14, v14, 0x10

    .line 165
    .line 166
    or-int/2addr v11, v14

    .line 167
    shl-int/lit8 v14, v15, 0x8

    .line 168
    .line 169
    or-int/2addr v11, v14

    .line 170
    or-int/2addr v10, v11

    .line 171
    goto :goto_3

    .line 172
    :cond_5
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgfd;->zze(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfe;

    .line 173
    .line 174
    .line 175
    move v10, v5

    .line 176
    :cond_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v14

    .line 184
    if-nez v14, :cond_10

    .line 185
    .line 186
    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgfd;->zza(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgez;

    .line 190
    .line 191
    .line 192
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgfd;->zzg(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfm;

    .line 193
    .line 194
    .line 195
    move-result-object v14

    .line 196
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzgfm;->zza()Z

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    if-eq v1, v14, :cond_7

    .line 201
    .line 202
    const/4 v14, 0x0

    .line 203
    goto :goto_4

    .line 204
    :cond_7
    move-object v14, v11

    .line 205
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgno;->zzb()Lcom/google/android/gms/internal/ads/zzgno;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgfd;->zzg(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfm;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v15, v1, v14}, Lcom/google/android/gms/internal/ads/zzgno;->zza(Lcom/google/android/gms/internal/ads/zzgfm;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgez;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    new-instance v15, Lcom/google/android/gms/internal/ads/zzgfg;

    .line 218
    .line 219
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgfd;->zzb(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfb;

    .line 220
    .line 221
    .line 222
    move-result-object v16

    .line 223
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgfd;->zzj(Lcom/google/android/gms/internal/ads/zzgfd;)Z

    .line 224
    .line 225
    .line 226
    move-result v18

    .line 227
    const/16 v19, 0x0

    .line 228
    .line 229
    move-object v14, v15

    .line 230
    move-object v5, v15

    .line 231
    move-object v15, v1

    .line 232
    move/from16 v17, v10

    .line 233
    .line 234
    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/internal/ads/zzgfg;-><init>(Lcom/google/android/gms/internal/ads/zzgez;Lcom/google/android/gms/internal/ads/zzgfb;IZLcom/google/android/gms/internal/ads/zzgfh;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgfd;->zzb(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfb;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgny;->zzc()Lcom/google/android/gms/internal/ads/zzgny;

    .line 242
    .line 243
    .line 244
    move-result-object v15

    .line 245
    const-class v12, Lcom/google/android/gms/internal/ads/zzgox;

    .line 246
    .line 247
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfn;->zza()Lcom/google/android/gms/internal/ads/zzgfn;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    invoke-virtual {v15, v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzgny;->zzd(Lcom/google/android/gms/internal/ads/zzgez;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgfn;)Lcom/google/android/gms/internal/ads/zzgpb;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgox;

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgox;->zzf()Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v12

    .line 261
    if-eqz v12, :cond_9

    .line 262
    .line 263
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    if-ne v12, v10, :cond_8

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_8
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 271
    .line 272
    const-string v2, "Wrong ID set for key with ID requirement"

    .line 273
    .line 274
    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v1

    .line 278
    :cond_9
    :goto_5
    sget-object v12, Lcom/google/android/gms/internal/ads/zzgfb;->zza:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 279
    .line 280
    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    if-eqz v13, :cond_a

    .line 285
    .line 286
    const/4 v13, 0x3

    .line 287
    goto :goto_6

    .line 288
    :cond_a
    sget-object v13, Lcom/google/android/gms/internal/ads/zzgfb;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 289
    .line 290
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v13

    .line 294
    if-eqz v13, :cond_b

    .line 295
    .line 296
    const/4 v13, 0x4

    .line 297
    goto :goto_6

    .line 298
    :cond_b
    sget-object v13, Lcom/google/android/gms/internal/ads/zzgfb;->zzc:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 299
    .line 300
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v13

    .line 304
    if-eqz v13, :cond_f

    .line 305
    .line 306
    const/4 v13, 0x5

    .line 307
    :goto_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgul;->zzc()Lcom/google/android/gms/internal/ads/zzguk;

    .line 308
    .line 309
    .line 310
    move-result-object v14

    .line 311
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgub;->zza()Lcom/google/android/gms/internal/ads/zzgty;

    .line 312
    .line 313
    .line 314
    move-result-object v15

    .line 315
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgox;->zzg()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/ads/zzgty;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgty;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgox;->zze()Lcom/google/android/gms/internal/ads/zzgxz;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/ads/zzgty;->zzc(Lcom/google/android/gms/internal/ads/zzgxz;)Lcom/google/android/gms/internal/ads/zzgty;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgox;->zzb()Lcom/google/android/gms/internal/ads/zzgtz;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/ads/zzgty;->zza(Lcom/google/android/gms/internal/ads/zzgtz;)Lcom/google/android/gms/internal/ads/zzgty;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzguk;->zza(Lcom/google/android/gms/internal/ads/zzgty;)Lcom/google/android/gms/internal/ads/zzguk;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzguk;->zzd(I)Lcom/google/android/gms/internal/ads/zzguk;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzguk;->zzb(I)Lcom/google/android/gms/internal/ads/zzguk;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgox;->zzc()Lcom/google/android/gms/internal/ads/zzgvf;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzguk;->zzc(Lcom/google/android/gms/internal/ads/zzgvf;)Lcom/google/android/gms/internal/ads/zzguk;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgul;

    .line 357
    .line 358
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzguj;->zza(Lcom/google/android/gms/internal/ads/zzgul;)Lcom/google/android/gms/internal/ads/zzguj;

    .line 359
    .line 360
    .line 361
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgfd;->zzj(Lcom/google/android/gms/internal/ads/zzgfd;)Z

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-eqz v1, :cond_e

    .line 366
    .line 367
    if-nez v8, :cond_d

    .line 368
    .line 369
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgfd;->zzb(Lcom/google/android/gms/internal/ads/zzgfd;)Lcom/google/android/gms/internal/ads/zzgfb;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    if-ne v1, v12, :cond_c

    .line 374
    .line 375
    move-object v8, v11

    .line 376
    goto :goto_7

    .line 377
    :cond_c
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 378
    .line 379
    const-string v2, "Primary key is not enabled"

    .line 380
    .line 381
    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    throw v1

    .line 385
    :cond_d
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 386
    .line 387
    const-string v2, "Two primaries were set"

    .line 388
    .line 389
    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw v1

    .line 393
    :cond_e
    :goto_7
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    const/4 v1, 0x1

    .line 397
    const/4 v5, 0x0

    .line 398
    goto/16 :goto_2

    .line 399
    .line 400
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 401
    .line 402
    const-string v2, "Unknown key status"

    .line 403
    .line 404
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    throw v1

    .line 408
    :cond_10
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 409
    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    .line 415
    const-string v3, "Id "

    .line 416
    .line 417
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v3, " is used twice in the keyset"

    .line 424
    .line 425
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    throw v1

    .line 436
    :cond_11
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 437
    .line 438
    const-string v2, "No ID was set (with withFixedId or withRandomId)"

    .line 439
    .line 440
    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    throw v1

    .line 444
    :cond_12
    if-eqz v8, :cond_13

    .line 445
    .line 446
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzguj;->zzb(I)Lcom/google/android/gms/internal/ads/zzguj;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgzb;->zzbn()Lcom/google/android/gms/internal/ads/zzgzh;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgun;

    .line 458
    .line 459
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgfi;->zzh(Lcom/google/android/gms/internal/ads/zzgun;)V

    .line 460
    .line 461
    .line 462
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgff;->zzb:Lcom/google/android/gms/internal/ads/zzgnh;

    .line 463
    .line 464
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgfi;

    .line 465
    .line 466
    const/4 v5, 0x0

    .line 467
    invoke-direct {v3, v1, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzgfi;-><init>(Lcom/google/android/gms/internal/ads/zzgun;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgnh;Lcom/google/android/gms/internal/ads/zzgfh;)V

    .line 468
    .line 469
    .line 470
    return-object v3

    .line 471
    :cond_13
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 472
    .line 473
    const-string v2, "No primary was set"

    .line 474
    .line 475
    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw v1

    .line 479
    :cond_14
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 480
    .line 481
    const-string v2, "KeysetHandle.Builder#build must only be called once"

    .line 482
    .line 483
    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw v1
.end method
