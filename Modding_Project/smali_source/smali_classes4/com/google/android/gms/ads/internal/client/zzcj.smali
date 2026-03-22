.class public abstract Lcom/google/android/gms/ads/internal/client/zzcj;
.super Lcom/google/android/gms/internal/ads/zzayu;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzck;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.client.IAdPreloader"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayu;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected final zzde(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 p4, 0x0

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzn(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/ads/internal/client/zzck;->zzq(ILjava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/ads/internal/client/zzck;->zze(ILjava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzf(I)Landroid/os/Bundle;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    .line 81
    .line 82
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayv;->zzf(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_2

    .line 86
    .line 87
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/ads/internal/client/zzck;->zzk(ILjava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzfv;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    .line 104
    .line 105
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayv;->zzf(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbwv;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    .line 123
    .line 124
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayv;->zzg(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaw;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    .line 142
    .line 143
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayv;->zzg(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzi(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    .line 161
    .line 162
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayv;->zzg(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p4

    .line 175
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/ads/internal/client/zzck;->zzr(ILjava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_2

    .line 189
    .line 190
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzfv;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 195
    .line 196
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzayv;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzfv;

    .line 201
    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-nez v1, :cond_0

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_0
    const-string p4, "com.google.android.gms.ads.internal.client.IAdPreloadCallbackV2"

    .line 210
    .line 211
    invoke-interface {v1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 212
    .line 213
    .line 214
    move-result-object p4

    .line 215
    instance-of v2, p4, Lcom/google/android/gms/ads/internal/client/zzch;

    .line 216
    .line 217
    if-eqz v2, :cond_1

    .line 218
    .line 219
    check-cast p4, Lcom/google/android/gms/ads/internal/client/zzch;

    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_1
    new-instance p4, Lcom/google/android/gms/ads/internal/client/zzcf;

    .line 223
    .line 224
    invoke-direct {p4, v1}, Lcom/google/android/gms/ads/internal/client/zzcf;-><init>(Landroid/os/IBinder;)V

    .line 225
    .line 226
    .line 227
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 228
    .line 229
    .line 230
    invoke-interface {p0, p1, v0, p4}, Lcom/google/android/gms/ads/internal/client/zzck;->zzv(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzch;)Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_2

    .line 241
    .line 242
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbpp;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbpq;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 251
    .line 252
    .line 253
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzo(Lcom/google/android/gms/internal/ads/zzbpq;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_2

    .line 260
    .line 261
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 266
    .line 267
    .line 268
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzj(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    .line 274
    .line 275
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayv;->zzg(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_2

    .line 279
    .line 280
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 285
    .line 286
    .line 287
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzt(Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_2

    .line 298
    .line 299
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 304
    .line 305
    .line 306
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaw;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    .line 312
    .line 313
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayv;->zzg(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 322
    .line 323
    .line 324
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzs(Ljava/lang/String;)Z

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    .line 333
    .line 334
    goto :goto_2

    .line 335
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 340
    .line 341
    .line 342
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbwv;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    .line 348
    .line 349
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzayv;->zzg(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 350
    .line 351
    .line 352
    goto :goto_2

    .line 353
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 358
    .line 359
    .line 360
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzck;->zzu(Ljava/lang/String;)Z

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    .line 369
    .line 370
    goto :goto_2

    .line 371
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/ads/internal/client/zzfv;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 372
    .line 373
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    if-nez v0, :cond_2

    .line 382
    .line 383
    goto :goto_1

    .line 384
    :cond_2
    const-string p4, "com.google.android.gms.ads.internal.client.IAdPreloadCallback"

    .line 385
    .line 386
    invoke-interface {v0, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 387
    .line 388
    .line 389
    move-result-object p4

    .line 390
    instance-of v1, p4, Lcom/google/android/gms/ads/internal/client/zzce;

    .line 391
    .line 392
    if-eqz v1, :cond_3

    .line 393
    .line 394
    check-cast p4, Lcom/google/android/gms/ads/internal/client/zzce;

    .line 395
    .line 396
    goto :goto_1

    .line 397
    :cond_3
    new-instance p4, Lcom/google/android/gms/ads/internal/client/zzcc;

    .line 398
    .line 399
    invoke-direct {p4, v0}, Lcom/google/android/gms/ads/internal/client/zzcc;-><init>(Landroid/os/IBinder;)V

    .line 400
    .line 401
    .line 402
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayv;->zzd(Landroid/os/Parcel;)V

    .line 403
    .line 404
    .line 405
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/ads/internal/client/zzck;->zzp(Ljava/util/List;Lcom/google/android/gms/ads/internal/client/zzce;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    .line 410
    .line 411
    :goto_2
    const/4 p1, 0x1

    .line 412
    return p1

    .line 413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
