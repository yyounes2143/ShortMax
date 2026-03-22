.class public final Landroidx/compose/runtime/SlotWriter$Companion;
.super Ljava/lang/Object;
.source "SlotTable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/SlotWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n+ 2 ArrayUtils.android.kt\nandroidx/compose/runtime/collection/ArrayUtils_androidKt\n+ 3 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,4061:1\n27#2,2:4062\n3850#3,2:4064\n3847#3:4067\n3850#3,2:4068\n3881#3,2:4070\n3767#3:4081\n3833#3:4082\n1#4:4066\n34#5,5:4072\n4788#6,4:4077\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotWriter$Companion\n*L\n2316#1:4062,2\n2326#1:4064,2\n2336#1:4067\n2337#1:4068,2\n2356#1:4070,2\n2459#1:4081\n2459#1:4082\n2395#1:4072,5\n2455#1:4077,4\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/SlotWriter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$moveGroup(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "I",
            "Landroidx/compose/runtime/SlotWriter;",
            "ZZZ)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    add-int v4, v1, v3

    .line 12
    .line 13
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-static {v0, v4}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;I)I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    sub-int v7, v6, v5

    .line 22
    .line 23
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->access$containsAnyGroupMarks(Landroidx/compose/runtime/SlotWriter;I)Z

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotWriter;->access$insertGroups(Landroidx/compose/runtime/SlotWriter;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    invoke-static {v2, v7, v9}, Landroidx/compose/runtime/SlotWriter;->access$insertSlots(Landroidx/compose/runtime/SlotWriter;II)V

    .line 35
    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getGroupGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-ge v9, v4, :cond_0

    .line 42
    .line 43
    invoke-static {v0, v4}, Landroidx/compose/runtime/SlotWriter;->access$moveGroupGapTo(Landroidx/compose/runtime/SlotWriter;I)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-ge v9, v6, :cond_1

    .line 51
    .line 52
    invoke-static {v0, v6, v4}, Landroidx/compose/runtime/SlotWriter;->access$moveSlotGapTo(Landroidx/compose/runtime/SlotWriter;II)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    mul-int/lit8 v11, v9, 0x5

    .line 68
    .line 69
    mul-int/lit8 v12, v1, 0x5

    .line 70
    .line 71
    mul-int/lit8 v13, v4, 0x5

    .line 72
    .line 73
    invoke-static {v10, v6, v11, v12, v13}, Lkotlin/collections/n;->l([I[IIII)[I

    .line 74
    .line 75
    .line 76
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;)I

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/SlotWriter;)[Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    invoke-static {v13, v5, v10, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    add-int/lit8 v14, v11, 0x2

    .line 96
    .line 97
    aput v13, v6, v14

    .line 98
    .line 99
    sub-int v14, v9, v1

    .line 100
    .line 101
    add-int v15, v9, v3

    .line 102
    .line 103
    invoke-static {v2, v6, v9}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    .line 104
    .line 105
    .line 106
    move-result v16

    .line 107
    sub-int v16, v12, v16

    .line 108
    .line 109
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;)I

    .line 110
    .line 111
    .line 112
    move-result v17

    .line 113
    move/from16 v18, v8

    .line 114
    .line 115
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapLen$p(Landroidx/compose/runtime/SlotWriter;)I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    array-length v10, v10

    .line 120
    move/from16 v19, v12

    .line 121
    .line 122
    move/from16 v12, v17

    .line 123
    .line 124
    move/from16 v17, v11

    .line 125
    .line 126
    move v11, v9

    .line 127
    :goto_0
    const/16 v20, 0x0

    .line 128
    .line 129
    if-ge v11, v15, :cond_5

    .line 130
    .line 131
    if-eq v11, v9, :cond_2

    .line 132
    .line 133
    mul-int/lit8 v21, v11, 0x5

    .line 134
    .line 135
    add-int/lit8 v21, v21, 0x2

    .line 136
    .line 137
    aget v22, v6, v21

    .line 138
    .line 139
    add-int v22, v22, v14

    .line 140
    .line 141
    aput v22, v6, v21

    .line 142
    .line 143
    :cond_2
    invoke-static {v2, v6, v11}, Landroidx/compose/runtime/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/SlotWriter;[II)I

    .line 144
    .line 145
    .line 146
    move-result v21

    .line 147
    move/from16 v22, v9

    .line 148
    .line 149
    add-int v9, v21, v16

    .line 150
    .line 151
    if-ge v12, v11, :cond_3

    .line 152
    .line 153
    :goto_1
    move/from16 v21, v15

    .line 154
    .line 155
    move/from16 v15, v20

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_3
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSlotsGapStart$p(Landroidx/compose/runtime/SlotWriter;)I

    .line 159
    .line 160
    .line 161
    move-result v20

    .line 162
    goto :goto_1

    .line 163
    :goto_2
    invoke-static {v2, v9, v15, v8, v10}, Landroidx/compose/runtime/SlotWriter;->access$dataIndexToDataAnchor(Landroidx/compose/runtime/SlotWriter;IIII)I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    mul-int/lit8 v15, v11, 0x5

    .line 168
    .line 169
    add-int/lit8 v15, v15, 0x4

    .line 170
    .line 171
    aput v9, v6, v15

    .line 172
    .line 173
    if-ne v11, v12, :cond_4

    .line 174
    .line 175
    add-int/lit8 v12, v12, 0x1

    .line 176
    .line 177
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 178
    .line 179
    move/from16 v15, v21

    .line 180
    .line 181
    move/from16 v9, v22

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_5
    move/from16 v21, v15

    .line 185
    .line 186
    invoke-static {v2, v12}, Landroidx/compose/runtime/SlotWriter;->access$setSlotsGapOwner$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 187
    .line 188
    .line 189
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime()I

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    invoke-static {v8, v1, v9}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime()I

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    invoke-static {v9, v4, v10}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-ge v8, v4, :cond_7

    .line 214
    .line 215
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    new-instance v10, Ljava/util/ArrayList;

    .line 220
    .line 221
    sub-int v11, v4, v8

    .line 222
    .line 223
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .line 225
    .line 226
    move v11, v8

    .line 227
    :goto_3
    if-ge v11, v4, :cond_6

    .line 228
    .line 229
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    check-cast v12, Landroidx/compose/runtime/Anchor;

    .line 234
    .line 235
    invoke-virtual {v12}, Landroidx/compose/runtime/Anchor;->getLocation$runtime()I

    .line 236
    .line 237
    .line 238
    move-result v15

    .line 239
    add-int/2addr v15, v14

    .line 240
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/Anchor;->setLocation$runtime(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    add-int/lit8 v11, v11, 0x1

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_6
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime()I

    .line 258
    .line 259
    .line 260
    move-result v14

    .line 261
    invoke-static {v11, v12, v14}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    .line 262
    .line 263
    .line 264
    move-result v11

    .line 265
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getAnchors$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/ArrayList;

    .line 266
    .line 267
    .line 268
    move-result-object v12

    .line 269
    invoke-virtual {v12, v11, v10}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 270
    .line 271
    .line 272
    invoke-virtual {v9, v8, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    :goto_4
    move-object v4, v10

    .line 285
    check-cast v4, Ljava/util/Collection;

    .line 286
    .line 287
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    if-nez v8, :cond_9

    .line 292
    .line 293
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->access$getSourceInformationMap$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/HashMap;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getSourceInformationMap$p(Landroidx/compose/runtime/SlotWriter;)Ljava/util/HashMap;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    if-eqz v8, :cond_9

    .line 302
    .line 303
    if-eqz v9, :cond_9

    .line 304
    .line 305
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    move/from16 v11, v20

    .line 310
    .line 311
    :goto_5
    if-ge v11, v4, :cond_9

    .line 312
    .line 313
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    check-cast v12, Landroidx/compose/runtime/Anchor;

    .line 318
    .line 319
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    check-cast v14, Landroidx/compose/runtime/GroupSourceInformation;

    .line 324
    .line 325
    if-eqz v14, :cond_8

    .line 326
    .line 327
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    invoke-interface {v9, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/SlotWriter;->sourceInformationOf$runtime(I)Landroidx/compose/runtime/GroupSourceInformation;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    const/4 v9, 0x1

    .line 345
    if-eqz v8, :cond_b

    .line 346
    .line 347
    add-int/2addr v4, v9

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 349
    .line 350
    .line 351
    move-result v11

    .line 352
    const/4 v12, -0x1

    .line 353
    :goto_6
    if-ge v4, v11, :cond_a

    .line 354
    .line 355
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/SlotWriter;)[I

    .line 356
    .line 357
    .line 358
    move-result-object v12

    .line 359
    invoke-static {v12, v4}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    .line 360
    .line 361
    .line 362
    move-result v12

    .line 363
    add-int/2addr v12, v4

    .line 364
    move/from16 v23, v12

    .line 365
    .line 366
    move v12, v4

    .line 367
    move/from16 v4, v23

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_a
    invoke-virtual {v8, v2, v12, v11}, Landroidx/compose/runtime/GroupSourceInformation;->addGroupAfter(Landroidx/compose/runtime/SlotWriter;II)V

    .line 371
    .line 372
    .line 373
    :cond_b
    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    if-nez p6, :cond_c

    .line 378
    .line 379
    goto :goto_7

    .line 380
    :cond_c
    if-eqz p4, :cond_10

    .line 381
    .line 382
    if-ltz v4, :cond_d

    .line 383
    .line 384
    move/from16 v20, v9

    .line 385
    .line 386
    :cond_d
    if-eqz v20, :cond_e

    .line 387
    .line 388
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 389
    .line 390
    .line 391
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    sub-int/2addr v4, v3

    .line 396
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 400
    .line 401
    .line 402
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    sub-int/2addr v1, v3

    .line 407
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->removeGroup()Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-eqz v20, :cond_f

    .line 415
    .line 416
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 417
    .line 418
    .line 419
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 420
    .line 421
    .line 422
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 423
    .line 424
    .line 425
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 426
    .line 427
    .line 428
    :cond_f
    move/from16 v20, v1

    .line 429
    .line 430
    goto :goto_7

    .line 431
    :cond_10
    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/SlotWriter;->access$removeGroups(Landroidx/compose/runtime/SlotWriter;II)Z

    .line 432
    .line 433
    .line 434
    move-result v20

    .line 435
    sub-int/2addr v1, v9

    .line 436
    invoke-static {v0, v5, v7, v1}, Landroidx/compose/runtime/SlotWriter;->access$removeSlots(Landroidx/compose/runtime/SlotWriter;III)V

    .line 437
    .line 438
    .line 439
    :goto_7
    if-eqz v20, :cond_11

    .line 440
    .line 441
    const-string v0, "Unexpectedly removed anchors"

    .line 442
    .line 443
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    :cond_11
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/SlotWriter;->access$getNodeCount$p(Landroidx/compose/runtime/SlotWriter;)I

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    add-int/lit8 v11, v17, 0x1

    .line 451
    .line 452
    aget v1, v6, v11

    .line 453
    .line 454
    const/high16 v3, 0x40000000    # 2.0f

    .line 455
    .line 456
    and-int/2addr v3, v1

    .line 457
    if-eqz v3, :cond_12

    .line 458
    .line 459
    goto :goto_8

    .line 460
    :cond_12
    const v3, 0x3ffffff

    .line 461
    .line 462
    .line 463
    and-int v9, v1, v3

    .line 464
    .line 465
    :goto_8
    add-int/2addr v0, v9

    .line 466
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotWriter;->access$setNodeCount$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 467
    .line 468
    .line 469
    if-eqz p5, :cond_13

    .line 470
    .line 471
    move/from16 v9, v21

    .line 472
    .line 473
    invoke-static {v2, v9}, Landroidx/compose/runtime/SlotWriter;->access$setCurrentGroup$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 474
    .line 475
    .line 476
    add-int v12, v19, v7

    .line 477
    .line 478
    invoke-static {v2, v12}, Landroidx/compose/runtime/SlotWriter;->access$setCurrentSlot$p(Landroidx/compose/runtime/SlotWriter;I)V

    .line 479
    .line 480
    .line 481
    :cond_13
    if-eqz v18, :cond_14

    .line 482
    .line 483
    invoke-static {v2, v13}, Landroidx/compose/runtime/SlotWriter;->access$updateContainsMark(Landroidx/compose/runtime/SlotWriter;I)V

    .line 484
    .line 485
    .line 486
    :cond_14
    return-object v10
.end method

.method static synthetic moveGroup$default(Landroidx/compose/runtime/SlotWriter$Companion;Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZILjava/lang/Object;)Ljava/util/List;
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x20

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p6, 0x1

    .line 6
    :cond_0
    move v6, p6

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move v4, p4

    .line 12
    move v5, p5

    .line 13
    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
