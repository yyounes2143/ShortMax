.class public final Lio/ktor/http/CodecsKt;
.super Ljava/lang/Object;
.source "Codecs.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCodecs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Codecs.kt\nio/ktor/http/CodecsKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 Strings.kt\nio/ktor/utils/io/core/StringsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 StringsJVM.kt\nio/ktor/utils/io/core/StringsJVMKt\n+ 6 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 7 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,296:1\n1099#2,3:297\n8#3,3:300\n13586#4,2:303\n11#5:305\n823#6,6:306\n829#6,13:313\n355#7:312\n1549#8:326\n1620#8,3:327\n1549#8:330\n1620#8,3:331\n1549#8:334\n1620#8,3:335\n*S KotlinDebug\n*F\n+ 1 Codecs.kt\nio/ktor/http/CodecsKt\n*L\n130#1:297,3\n133#1:300,3\n141#1:303,2\n250#1:305\n289#1:306,6\n289#1:313,13\n290#1:312\n9#1:326\n9#1:327,3\n20#1:330\n20#1:331,3\n42#1:334\n42#1:335,3\n*E\n"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 1
    new-instance v0, Lkotlin/ranges/b;

    .line 2
    .line 3
    const/16 v1, 0x61

    .line 4
    .line 5
    const/16 v2, 0x7a

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lkotlin/ranges/b;-><init>(CC)V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lkotlin/ranges/b;

    .line 11
    .line 12
    const/16 v4, 0x41

    .line 13
    .line 14
    const/16 v5, 0x5a

    .line 15
    .line 16
    invoke-direct {v3, v4, v5}, Lkotlin/ranges/b;-><init>(CC)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->J0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Collection;

    .line 24
    .line 25
    new-instance v3, Lkotlin/ranges/b;

    .line 26
    .line 27
    const/16 v6, 0x30

    .line 28
    .line 29
    const/16 v7, 0x39

    .line 30
    .line 31
    invoke-direct {v3, v6, v7}, Lkotlin/ranges/b;-><init>(CC)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->K0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Iterable;

    .line 39
    .line 40
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    const/16 v8, 0xa

    .line 43
    .line 44
    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-eqz v9, :cond_0

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    check-cast v9, Ljava/lang/Character;

    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    int-to-byte v9, v9

    .line 72
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->i1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lio/ktor/http/CodecsKt;->a:Ljava/util/Set;

    .line 85
    .line 86
    new-instance v0, Lkotlin/ranges/b;

    .line 87
    .line 88
    invoke-direct {v0, v1, v2}, Lkotlin/ranges/b;-><init>(CC)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Lkotlin/ranges/b;

    .line 92
    .line 93
    invoke-direct {v2, v4, v5}, Lkotlin/ranges/b;-><init>(CC)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->J0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/util/Collection;

    .line 101
    .line 102
    new-instance v2, Lkotlin/ranges/b;

    .line 103
    .line 104
    invoke-direct {v2, v6, v7}, Lkotlin/ranges/b;-><init>(CC)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/lang/Iterable;

    .line 112
    .line 113
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->i1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lio/ktor/http/CodecsKt;->b:Ljava/util/Set;

    .line 118
    .line 119
    new-instance v0, Lkotlin/ranges/b;

    .line 120
    .line 121
    const/16 v2, 0x66

    .line 122
    .line 123
    invoke-direct {v0, v1, v2}, Lkotlin/ranges/b;-><init>(CC)V

    .line 124
    .line 125
    .line 126
    new-instance v1, Lkotlin/ranges/b;

    .line 127
    .line 128
    const/16 v2, 0x46

    .line 129
    .line 130
    invoke-direct {v1, v4, v2}, Lkotlin/ranges/b;-><init>(CC)V

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->J0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ljava/util/Collection;

    .line 138
    .line 139
    new-instance v1, Lkotlin/ranges/b;

    .line 140
    .line 141
    invoke-direct {v1, v6, v7}, Lkotlin/ranges/b;-><init>(CC)V

    .line 142
    .line 143
    .line 144
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->K0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ljava/lang/Iterable;

    .line 149
    .line 150
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->i1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sput-object v0, Lio/ktor/http/CodecsKt;->c:Ljava/util/Set;

    .line 155
    .line 156
    const/16 v0, 0x3a

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    const/16 v1, 0x2f

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    const/16 v1, 0x3f

    .line 169
    .line 170
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    const/16 v1, 0x23

    .line 175
    .line 176
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    const/16 v2, 0x5b

    .line 181
    .line 182
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    const/16 v2, 0x5d

    .line 187
    .line 188
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    const/16 v2, 0x40

    .line 193
    .line 194
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 195
    .line 196
    .line 197
    move-result-object v15

    .line 198
    const/16 v3, 0x21

    .line 199
    .line 200
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 201
    .line 202
    .line 203
    move-result-object v16

    .line 204
    const/16 v4, 0x24

    .line 205
    .line 206
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 207
    .line 208
    .line 209
    move-result-object v17

    .line 210
    const/16 v5, 0x26

    .line 211
    .line 212
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 213
    .line 214
    .line 215
    move-result-object v18

    .line 216
    const/16 v6, 0x27

    .line 217
    .line 218
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 219
    .line 220
    .line 221
    move-result-object v19

    .line 222
    const/16 v7, 0x28

    .line 223
    .line 224
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 225
    .line 226
    .line 227
    move-result-object v20

    .line 228
    const/16 v31, 0x29

    .line 229
    .line 230
    invoke-static/range {v31 .. v31}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 231
    .line 232
    .line 233
    move-result-object v21

    .line 234
    const/16 v32, 0x2a

    .line 235
    .line 236
    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 237
    .line 238
    .line 239
    move-result-object v22

    .line 240
    const/16 v23, 0x2c

    .line 241
    .line 242
    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 243
    .line 244
    .line 245
    move-result-object v23

    .line 246
    const/16 v24, 0x3b

    .line 247
    .line 248
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 249
    .line 250
    .line 251
    move-result-object v24

    .line 252
    const/16 v25, 0x3d

    .line 253
    .line 254
    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 255
    .line 256
    .line 257
    move-result-object v25

    .line 258
    const/16 v33, 0x2d

    .line 259
    .line 260
    invoke-static/range {v33 .. v33}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 261
    .line 262
    .line 263
    move-result-object v26

    .line 264
    const/16 v34, 0x2e

    .line 265
    .line 266
    invoke-static/range {v34 .. v34}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 267
    .line 268
    .line 269
    move-result-object v27

    .line 270
    const/16 v35, 0x5f

    .line 271
    .line 272
    invoke-static/range {v35 .. v35}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 273
    .line 274
    .line 275
    move-result-object v28

    .line 276
    const/16 v36, 0x7e

    .line 277
    .line 278
    invoke-static/range {v36 .. v36}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 279
    .line 280
    .line 281
    move-result-object v29

    .line 282
    const/16 v37, 0x2b

    .line 283
    .line 284
    invoke-static/range {v37 .. v37}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 285
    .line 286
    .line 287
    move-result-object v30

    .line 288
    filled-new-array/range {v9 .. v30}, [Ljava/lang/Character;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    invoke-static {v9}, Lkotlin/collections/y0;->j([Ljava/lang/Object;)Ljava/util/Set;

    .line 293
    .line 294
    .line 295
    move-result-object v9

    .line 296
    check-cast v9, Ljava/lang/Iterable;

    .line 297
    .line 298
    new-instance v10, Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-static {v9, v8}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .line 306
    .line 307
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v11

    .line 315
    if-eqz v11, :cond_1

    .line 316
    .line 317
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    check-cast v11, Ljava/lang/Character;

    .line 322
    .line 323
    invoke-virtual {v11}, Ljava/lang/Character;->charValue()C

    .line 324
    .line 325
    .line 326
    move-result v11

    .line 327
    int-to-byte v11, v11

    .line 328
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 329
    .line 330
    .line 331
    move-result-object v11

    .line 332
    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    goto :goto_1

    .line 336
    :cond_1
    sput-object v10, Lio/ktor/http/CodecsKt;->d:Ljava/util/List;

    .line 337
    .line 338
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 339
    .line 340
    .line 341
    move-result-object v12

    .line 342
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 343
    .line 344
    .line 345
    move-result-object v13

    .line 346
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 347
    .line 348
    .line 349
    move-result-object v14

    .line 350
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 351
    .line 352
    .line 353
    move-result-object v15

    .line 354
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 355
    .line 356
    .line 357
    move-result-object v16

    .line 358
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 359
    .line 360
    .line 361
    move-result-object v17

    .line 362
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 363
    .line 364
    .line 365
    move-result-object v18

    .line 366
    invoke-static/range {v31 .. v31}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 367
    .line 368
    .line 369
    move-result-object v19

    .line 370
    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 371
    .line 372
    .line 373
    move-result-object v20

    .line 374
    invoke-static/range {v37 .. v37}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 375
    .line 376
    .line 377
    move-result-object v21

    .line 378
    const/16 v0, 0x2c

    .line 379
    .line 380
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 381
    .line 382
    .line 383
    move-result-object v22

    .line 384
    const/16 v0, 0x3b

    .line 385
    .line 386
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 387
    .line 388
    .line 389
    move-result-object v23

    .line 390
    const/16 v0, 0x3d

    .line 391
    .line 392
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 393
    .line 394
    .line 395
    move-result-object v24

    .line 396
    invoke-static/range {v33 .. v33}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 397
    .line 398
    .line 399
    move-result-object v25

    .line 400
    invoke-static/range {v34 .. v34}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 401
    .line 402
    .line 403
    move-result-object v26

    .line 404
    invoke-static/range {v35 .. v35}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 405
    .line 406
    .line 407
    move-result-object v27

    .line 408
    invoke-static/range {v36 .. v36}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 409
    .line 410
    .line 411
    move-result-object v28

    .line 412
    filled-new-array/range {v12 .. v28}, [Ljava/lang/Character;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-static {v0}, Lkotlin/collections/y0;->j([Ljava/lang/Object;)Ljava/util/Set;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    sput-object v0, Lio/ktor/http/CodecsKt;->e:Ljava/util/Set;

    .line 421
    .line 422
    sget-object v0, Lio/ktor/http/CodecsKt;->b:Ljava/util/Set;

    .line 423
    .line 424
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 429
    .line 430
    .line 431
    move-result-object v10

    .line 432
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 433
    .line 434
    .line 435
    move-result-object v11

    .line 436
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 437
    .line 438
    .line 439
    move-result-object v12

    .line 440
    invoke-static/range {v37 .. v37}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 441
    .line 442
    .line 443
    move-result-object v13

    .line 444
    invoke-static/range {v33 .. v33}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 445
    .line 446
    .line 447
    move-result-object v14

    .line 448
    invoke-static/range {v34 .. v34}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 449
    .line 450
    .line 451
    move-result-object v15

    .line 452
    const/16 v1, 0x5e

    .line 453
    .line 454
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 455
    .line 456
    .line 457
    move-result-object v16

    .line 458
    invoke-static/range {v35 .. v35}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 459
    .line 460
    .line 461
    move-result-object v17

    .line 462
    const/16 v1, 0x60

    .line 463
    .line 464
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 465
    .line 466
    .line 467
    move-result-object v18

    .line 468
    const/16 v1, 0x7c

    .line 469
    .line 470
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 471
    .line 472
    .line 473
    move-result-object v19

    .line 474
    invoke-static/range {v36 .. v36}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 475
    .line 476
    .line 477
    move-result-object v20

    .line 478
    filled-new-array/range {v9 .. v20}, [Ljava/lang/Character;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    invoke-static {v1}, Lkotlin/collections/y0;->j([Ljava/lang/Object;)Ljava/util/Set;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    check-cast v1, Ljava/lang/Iterable;

    .line 487
    .line 488
    invoke-static {v0, v1}, Lkotlin/collections/y0;->m(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    sput-object v0, Lio/ktor/http/CodecsKt;->f:Ljava/util/Set;

    .line 493
    .line 494
    invoke-static/range {v33 .. v33}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-static/range {v34 .. v34}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-static/range {v35 .. v35}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-static/range {v36 .. v36}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Character;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    check-cast v0, Ljava/lang/Iterable;

    .line 519
    .line 520
    new-instance v1, Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 527
    .line 528
    .line 529
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    if-eqz v2, :cond_2

    .line 538
    .line 539
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    check-cast v2, Ljava/lang/Character;

    .line 544
    .line 545
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    .line 546
    .line 547
    .line 548
    move-result v2

    .line 549
    int-to-byte v2, v2

    .line 550
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    goto :goto_2

    .line 558
    :cond_2
    sput-object v1, Lio/ktor/http/CodecsKt;->g:Ljava/util/List;

    .line 559
    .line 560
    return-void
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/CodecsKt;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/CodecsKt;->a:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/CodecsKt;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/ktor/http/CodecsKt;->u(B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final e(C)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x3a

    .line 6
    .line 7
    if-ge p0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x41

    .line 12
    .line 13
    if-gt v0, p0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x47

    .line 16
    .line 17
    if-ge p0, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x37

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 v0, 0x61

    .line 23
    .line 24
    if-gt v0, p0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x67

    .line 27
    .line 28
    if-ge p0, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x57

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p0, -0x1

    .line 34
    :goto_0
    return p0
.end method

.method private static final f(Ljava/lang/CharSequence;IIIZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 10

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    div-int/lit8 v0, v0, 0x3

    .line 8
    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    if-le p3, p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, p0, p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    :goto_0
    if-ge p3, p2, :cond_8

    .line 21
    .line 22
    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz p4, :cond_2

    .line 27
    .line 28
    const/16 v2, 0x2b

    .line 29
    .line 30
    if-ne v0, v2, :cond_2

    .line 31
    .line 32
    const/16 v0, 0x20

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/16 v2, 0x25

    .line 41
    .line 42
    if-ne v0, v2, :cond_7

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    sub-int p1, p2, p3

    .line 47
    .line 48
    div-int/lit8 p1, p1, 0x3

    .line 49
    .line 50
    new-array p1, p1, [B

    .line 51
    .line 52
    :cond_3
    const/4 v0, 0x0

    .line 53
    move v3, v0

    .line 54
    :goto_2
    if-ge p3, p2, :cond_6

    .line 55
    .line 56
    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ne v4, v2, :cond_6

    .line 61
    .line 62
    add-int/lit8 v4, p3, 0x2

    .line 63
    .line 64
    const-string v5, ", in "

    .line 65
    .line 66
    if-ge v4, p2, :cond_5

    .line 67
    .line 68
    add-int/lit8 v6, p3, 0x1

    .line 69
    .line 70
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-static {v7}, Lio/ktor/http/CodecsKt;->e(C)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    invoke-static {v8}, Lio/ktor/http/CodecsKt;->e(C)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    const/4 v9, -0x1

    .line 87
    if-eq v7, v9, :cond_4

    .line 88
    .line 89
    if-eq v8, v9, :cond_4

    .line 90
    .line 91
    add-int/lit8 v4, v3, 0x1

    .line 92
    .line 93
    mul-int/lit8 v7, v7, 0x10

    .line 94
    .line 95
    add-int/2addr v7, v8

    .line 96
    int-to-byte v5, v7

    .line 97
    aput-byte v5, p1, v3

    .line 98
    .line 99
    add-int/lit8 p3, p3, 0x3

    .line 100
    .line 101
    move v3, v4

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    new-instance p1, Lio/ktor/http/URLDecodeException;

    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string p4, "Wrong HEX escape: %"

    .line 111
    .line 112
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 123
    .line 124
    .line 125
    move-result p4

    .line 126
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p0, ", at "

    .line 136
    .line 137
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-direct {p1, p0}, Lio/ktor/http/URLDecodeException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_5
    new-instance p1, Lio/ktor/http/URLDecodeException;

    .line 152
    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string p4, "Incomplete trailing HEX escape: "

    .line 159
    .line 160
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 164
    .line 165
    .line 166
    move-result p4

    .line 167
    invoke-interface {p0, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 168
    .line 169
    .line 170
    move-result-object p4

    .line 171
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p4

    .line 175
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string p0, " at "

    .line 185
    .line 186
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-direct {p1, p0}, Lio/ktor/http/URLDecodeException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p1

    .line 200
    :cond_6
    new-instance v2, Ljava/lang/String;

    .line 201
    .line 202
    invoke-direct {v2, p1, v0, v3, p5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    goto/16 :goto_1

    .line 214
    .line 215
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    const-string p1, "sb.toString()"

    .line 220
    .line 221
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    return-object p0
.end method

.method private static final g(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    .line 1
    move v3, p1

    .line 2
    :goto_0
    if-ge v3, p2, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x25

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x2b

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    move-object v0, p0

    .line 23
    move v1, p1

    .line 24
    move v2, p2

    .line 25
    move v4, p3

    .line 26
    move-object v5, p4

    .line 27
    invoke-static/range {v0 .. v5}, Lio/ktor/http/CodecsKt;->f(Ljava/lang/CharSequence;IIIZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_2
    if-nez p1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-ne p2, p3, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 50
    .line 51
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    return-object p0
.end method

.method public static final h(Ljava/lang/String;IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "charset"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, p2, v0, p3}, Lio/ktor/http/CodecsKt;->g(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 15
    .line 16
    if-eqz p4, :cond_2

    .line 17
    .line 18
    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/ktor/http/CodecsKt;->h(Ljava/lang/String;IILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final j(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "charset"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/http/CodecsKt;->g(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static synthetic k(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 16
    .line 17
    if-eqz p6, :cond_2

    .line 18
    .line 19
    move p3, v0

    .line 20
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 21
    .line 22
    if-eqz p5, :cond_3

    .line 23
    .line 24
    sget-object p4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/http/CodecsKt;->j(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static final l(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v1, "UTF_8.newEncoder()"

    .line 18
    .line 19
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v6, 0x6

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v3, p0

    .line 27
    invoke-static/range {v2 .. v7}, Lgs/b;->d(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IIILjava/lang/Object;)Lhs/j;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v1, Lio/ktor/http/CodecsKt$encodeURLParameter$1$1;

    .line 32
    .line 33
    invoke-direct {v1, v0, p1}, Lio/ktor/http/CodecsKt$encodeURLParameter$1$1;-><init>(Ljava/lang/StringBuilder;Z)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v1}, Lio/ktor/http/CodecsKt;->s(Lhs/j;Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "StringBuilder().apply(builderAction).toString()"

    .line 44
    .line 45
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object p0
.end method

.method public static synthetic m(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/http/CodecsKt;->l(Ljava/lang/String;Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p0, v0}, Lio/ktor/http/CodecsKt;->l(Ljava/lang/String;Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final o(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_5

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/16 v4, 0x2f

    .line 27
    .line 28
    if-eq v3, v4, :cond_4

    .line 29
    .line 30
    :cond_0
    sget-object v4, Lio/ktor/http/CodecsKt;->b:Ljava/util/Set;

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_4

    .line 41
    .line 42
    sget-object v4, Lio/ktor/http/CodecsKt;->e:Ljava/util/Set;

    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    const/16 v4, 0x25

    .line 56
    .line 57
    if-ne v3, v4, :cond_2

    .line 58
    .line 59
    add-int/lit8 v4, v2, 0x2

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-ge v4, v5, :cond_2

    .line 66
    .line 67
    sget-object v5, Lio/ktor/http/CodecsKt;->c:Ljava/util/Set;

    .line 68
    .line 69
    add-int/lit8 v6, v2, 0x1

    .line 70
    .line 71
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_2

    .line 84
    .line 85
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_2

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    add-int/lit8 v2, v2, 0x3

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    invoke-static {v3}, Lkotlin/text/CharsKt;->h(C)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_3

    .line 124
    .line 125
    const/4 v3, 0x2

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    const/4 v3, 0x1

    .line 128
    :goto_1
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    const-string v5, "charset.newEncoder()"

    .line 133
    .line 134
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    add-int/2addr v3, v2

    .line 138
    invoke-static {v4, p0, v2, v3}, Lgs/b;->c(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)Lhs/j;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    new-instance v4, Lio/ktor/http/CodecsKt$encodeURLPath$1$1;

    .line 143
    .line 144
    invoke-direct {v4, v0}, Lio/ktor/http/CodecsKt$encodeURLPath$1$1;-><init>(Ljava/lang/StringBuilder;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v2, v4}, Lio/ktor/http/CodecsKt;->s(Lhs/j;Lkotlin/jvm/functions/Function1;)V

    .line 148
    .line 149
    .line 150
    move v2, v3

    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_4
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    const-string p1, "StringBuilder().apply(builderAction).toString()"

    .line 165
    .line 166
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-object p0
.end method

.method public static final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p0, v0}, Lio/ktor/http/CodecsKt;->o(Ljava/lang/String;Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final q(Ljava/lang/String;ZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "charset"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string p3, "charset.newEncoder()"

    .line 21
    .line 22
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x6

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    move-object v2, p0

    .line 30
    invoke-static/range {v1 .. v6}, Lgs/b;->d(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IIILjava/lang/Object;)Lhs/j;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance p3, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;

    .line 35
    .line 36
    invoke-direct {p3, p2, v0, p1}, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;-><init>(ZLjava/lang/StringBuilder;Z)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p3}, Lio/ktor/http/CodecsKt;->s(Lhs/j;Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p1, "StringBuilder().apply(builderAction).toString()"

    .line 47
    .line 48
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method

.method public static synthetic r(Ljava/lang/String;ZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move p2, v0

    .line 12
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 13
    .line 14
    if-eqz p4, :cond_2

    .line 15
    .line 16
    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/ktor/http/CodecsKt;->q(Ljava/lang/String;ZZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static final s(Lhs/j;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhs/j;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lis/f;->b(Lhs/l;I)Lis/a;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lhs/a;->j()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1}, Lhs/a;->h()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-le v2, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Lhs/a;->k()B

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :try_start_1
    invoke-static {p0, v1}, Lis/f;->c(Lhs/l;Lis/a;)Lis/a;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    :goto_1
    return-void

    .line 40
    :catchall_1
    move-exception p1

    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_2
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-static {p0, v1}, Lis/f;->a(Lhs/l;Lis/a;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    throw p1
.end method

.method private static final t(I)C
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-ltz p0, :cond_0

    .line 4
    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 p0, p0, 0x30

    .line 8
    .line 9
    :goto_0
    int-to-char p0, p0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    add-int/lit8 p0, p0, 0x41

    .line 12
    .line 13
    int-to-char p0, p0

    .line 14
    sub-int/2addr p0, v0

    .line 15
    goto :goto_0

    .line 16
    :goto_1
    return p0
.end method

.method private static final u(B)Ljava/lang/String;
    .locals 4

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    invoke-static {v0}, Lio/ktor/http/CodecsKt;->t(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    and-int/lit8 p0, p0, 0xf

    .line 10
    .line 11
    invoke-static {p0}, Lio/ktor/http/CodecsKt;->t(I)C

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v1, 0x3

    .line 16
    new-array v1, v1, [C

    .line 17
    .line 18
    const/16 v2, 0x25

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-char v2, v1, v3

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aput-char v0, v1, v2

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    aput-char p0, v1, v0

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/text/StringsKt;->x([C)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
