.class public final Lcom/google/android/gms/internal/measurement/zzau;
.super Lcom/google/android/gms/internal/measurement/zzav;
.source "com.google.android.gms:play-services-measurement@@23.0.0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzav;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzav;->zza:Ljava/util/List;

    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbk;->zze:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzav;->zza:Ljava/util/List;

    .line 12
    .line 13
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbk;->zzf:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzav;->zza:Ljava/util/List;

    .line 19
    .line 20
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbk;->zzg:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzav;->zza:Ljava/util/List;

    .line 26
    .line 27
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbk;->zzh:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzav;->zza:Ljava/util/List;

    .line 33
    .line 34
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbk;->zzi:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzav;->zza:Ljava/util/List;

    .line 40
    .line 41
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbk;->zzj:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzav;->zza:Ljava/util/List;

    .line 47
    .line 48
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzbk;->zzk:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzao;
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbk;->zza:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzh;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-wide/16 v1, 0x1f

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/measurement/zzav;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbk;->zzk:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1, v3, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zzg(D)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzao;

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 71
    .line 72
    .line 73
    move-result-wide p2

    .line 74
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zzg(D)I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    xor-int/2addr p1, p2

    .line 79
    int-to-double p1, p1

    .line 80
    new-instance p3, Lcom/google/android/gms/internal/measurement/zzah;

    .line 81
    .line 82
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    move-object p1, p3

    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbk;->zzj:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1, v3, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 116
    .line 117
    .line 118
    move-result-wide v5

    .line 119
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(D)J

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 128
    .line 129
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 138
    .line 139
    .line 140
    move-result-wide p1

    .line 141
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(D)J

    .line 142
    .line 143
    .line 144
    move-result-wide p1

    .line 145
    and-long/2addr p1, v1

    .line 146
    long-to-int p1, p1

    .line 147
    ushr-long p1, v5, p1

    .line 148
    .line 149
    long-to-double p1, p1

    .line 150
    new-instance p3, Lcom/google/android/gms/internal/measurement/zzah;

    .line 151
    .line 152
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbk;->zzi:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {p1, v3, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 174
    .line 175
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 184
    .line 185
    .line 186
    move-result-wide v5

    .line 187
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zzg(D)I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzao;

    .line 196
    .line 197
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 206
    .line 207
    .line 208
    move-result-wide p2

    .line 209
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(D)J

    .line 210
    .line 211
    .line 212
    move-result-wide p2

    .line 213
    and-long/2addr p2, v1

    .line 214
    long-to-int p2, p2

    .line 215
    shr-int/2addr p1, p2

    .line 216
    int-to-double p1, p1

    .line 217
    new-instance p3, Lcom/google/android/gms/internal/measurement/zzah;

    .line 218
    .line 219
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbk;->zzh:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-static {p1, v3, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 235
    .line 236
    .line 237
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 242
    .line 243
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 252
    .line 253
    .line 254
    move-result-wide v0

    .line 255
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zzg(D)I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p3

    .line 263
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzao;

    .line 264
    .line 265
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 274
    .line 275
    .line 276
    move-result-wide p2

    .line 277
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zzg(D)I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    or-int/2addr p1, p2

    .line 282
    int-to-double p1, p1

    .line 283
    new-instance p3, Lcom/google/android/gms/internal/measurement/zzah;

    .line 284
    .line 285
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbk;->zzg:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-static {p1, v4, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 301
    .line 302
    .line 303
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 308
    .line 309
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 318
    .line 319
    .line 320
    move-result-wide p1

    .line 321
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzh;->zzg(D)I

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    not-int p1, p1

    .line 326
    int-to-double p1, p1

    .line 327
    new-instance p3, Lcom/google/android/gms/internal/measurement/zzah;

    .line 328
    .line 329
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbk;->zzf:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 339
    .line 340
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-static {p1, v3, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 345
    .line 346
    .line 347
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 352
    .line 353
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 362
    .line 363
    .line 364
    move-result-wide v5

    .line 365
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzh;->zzg(D)I

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object p3

    .line 373
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzao;

    .line 374
    .line 375
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 384
    .line 385
    .line 386
    move-result-wide p2

    .line 387
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zzh(D)J

    .line 388
    .line 389
    .line 390
    move-result-wide p2

    .line 391
    and-long/2addr p2, v1

    .line 392
    long-to-int p2, p2

    .line 393
    shl-int/2addr p1, p2

    .line 394
    int-to-double p1, p1

    .line 395
    new-instance p3, Lcom/google/android/gms/internal/measurement/zzah;

    .line 396
    .line 397
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_0

    .line 405
    .line 406
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbk;->zze:Lcom/google/android/gms/internal/measurement/zzbk;

    .line 407
    .line 408
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-static {p1, v3, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 413
    .line 414
    .line 415
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 420
    .line 421
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 430
    .line 431
    .line 432
    move-result-wide v0

    .line 433
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zzg(D)I

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object p3

    .line 441
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzao;

    .line 442
    .line 443
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 444
    .line 445
    .line 446
    move-result-object p2

    .line 447
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 448
    .line 449
    .line 450
    move-result-object p2

    .line 451
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 452
    .line 453
    .line 454
    move-result-wide p2

    .line 455
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/zzh;->zzg(D)I

    .line 456
    .line 457
    .line 458
    move-result p2

    .line 459
    and-int/2addr p1, p2

    .line 460
    int-to-double p1, p1

    .line 461
    new-instance p3, Lcom/google/android/gms/internal/measurement/zzah;

    .line 462
    .line 463
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_0

    .line 471
    .line 472
    :goto_1
    return-object p1

    .line 473
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
