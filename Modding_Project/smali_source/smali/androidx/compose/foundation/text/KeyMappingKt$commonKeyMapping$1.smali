.class public final Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;
.super Ljava/lang/Object;
.source "KeyMapping.kt"

# interfaces
.implements Landroidx/compose/foundation/text/KeyMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/KeyMappingKt;->commonKeyMapping(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/KeyMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $shortcutModifier:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/key/KeyEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$shortcutModifier:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;
    .locals 6
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$shortcutModifier:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent;->box-impl(Landroid/view/KeyEvent;)Landroidx/compose/ui/input/key/KeyEvent;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isShiftPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    sget-object p1, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getZ-EK5gGoQ()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1e

    .line 46
    .line 47
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->REDO:Landroidx/compose/foundation/text/KeyCommand;

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyMappingKt$commonKeyMapping$1;->$shortcutModifier:Lkotlin/jvm/functions/Function1;

    .line 52
    .line 53
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent;->box-impl(Landroid/view/KeyEvent;)Landroidx/compose/ui/input/key/KeyEvent;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    sget-object p1, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getC-EK5gGoQ()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getInsert-EK5gGoQ()J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    :goto_0
    if-eqz v0, :cond_2

    .line 96
    .line 97
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->COPY:Landroidx/compose/foundation/text/KeyCommand;

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getV-EK5gGoQ()J

    .line 102
    .line 103
    .line 104
    move-result-wide v4

    .line 105
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getX-EK5gGoQ()J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getA-EK5gGoQ()J

    .line 130
    .line 131
    .line 132
    move-result-wide v4

    .line 133
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_ALL:Landroidx/compose/foundation/text/KeyCommand;

    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getZ-EK5gGoQ()J

    .line 144
    .line 145
    .line 146
    move-result-wide v4

    .line 147
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_1e

    .line 152
    .line 153
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->UNDO:Landroidx/compose/foundation/text/KeyCommand;

    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_6
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isCtrlPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :cond_7
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isShiftPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_10

    .line 170
    .line 171
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 172
    .line 173
    .line 174
    move-result-wide v2

    .line 175
    sget-object p1, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 176
    .line 177
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionLeft-EK5gGoQ()J

    .line 178
    .line 179
    .line 180
    move-result-wide v4

    .line 181
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_8

    .line 186
    .line 187
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :cond_8
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionRight-EK5gGoQ()J

    .line 192
    .line 193
    .line 194
    move-result-wide v4

    .line 195
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_9

    .line 200
    .line 201
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionUp-EK5gGoQ()J

    .line 206
    .line 207
    .line 208
    move-result-wide v4

    .line 209
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_a

    .line 214
    .line 215
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 216
    .line 217
    goto/16 :goto_1

    .line 218
    .line 219
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionDown-EK5gGoQ()J

    .line 220
    .line 221
    .line 222
    move-result-wide v4

    .line 223
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_b

    .line 228
    .line 229
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :cond_b
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getPageUp-EK5gGoQ()J

    .line 234
    .line 235
    .line 236
    move-result-wide v4

    .line 237
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_c

    .line 242
    .line 243
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 244
    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :cond_c
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getPageDown-EK5gGoQ()J

    .line 248
    .line 249
    .line 250
    move-result-wide v4

    .line 251
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_d

    .line 256
    .line 257
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :cond_d
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getMoveHome-EK5gGoQ()J

    .line 262
    .line 263
    .line 264
    move-result-wide v4

    .line 265
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_e

    .line 270
    .line 271
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 272
    .line 273
    goto/16 :goto_1

    .line 274
    .line 275
    :cond_e
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getMoveEnd-EK5gGoQ()J

    .line 276
    .line 277
    .line 278
    move-result-wide v4

    .line 279
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_f

    .line 284
    .line 285
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 286
    .line 287
    goto/16 :goto_1

    .line 288
    .line 289
    :cond_f
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getInsert-EK5gGoQ()J

    .line 290
    .line 291
    .line 292
    move-result-wide v4

    .line 293
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-eqz p1, :cond_1e

    .line 298
    .line 299
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    .line 300
    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    :cond_10
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 304
    .line 305
    .line 306
    move-result-wide v2

    .line 307
    sget-object p1, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 308
    .line 309
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionLeft-EK5gGoQ()J

    .line 310
    .line 311
    .line 312
    move-result-wide v4

    .line 313
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_11

    .line 318
    .line 319
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LEFT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 320
    .line 321
    goto/16 :goto_1

    .line 322
    .line 323
    :cond_11
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionRight-EK5gGoQ()J

    .line 324
    .line 325
    .line 326
    move-result-wide v4

    .line 327
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_12

    .line 332
    .line 333
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :cond_12
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionUp-EK5gGoQ()J

    .line 338
    .line 339
    .line 340
    move-result-wide v4

    .line 341
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-eqz v0, :cond_13

    .line 346
    .line 347
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 348
    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :cond_13
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionDown-EK5gGoQ()J

    .line 352
    .line 353
    .line 354
    move-result-wide v4

    .line 355
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-eqz v0, :cond_14

    .line 360
    .line 361
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 362
    .line 363
    goto/16 :goto_1

    .line 364
    .line 365
    :cond_14
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getPageUp-EK5gGoQ()J

    .line 366
    .line 367
    .line 368
    move-result-wide v4

    .line 369
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-eqz v0, :cond_15

    .line 374
    .line 375
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PAGE_UP:Landroidx/compose/foundation/text/KeyCommand;

    .line 376
    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :cond_15
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getPageDown-EK5gGoQ()J

    .line 380
    .line 381
    .line 382
    move-result-wide v4

    .line 383
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_16

    .line 388
    .line 389
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PAGE_DOWN:Landroidx/compose/foundation/text/KeyCommand;

    .line 390
    .line 391
    goto/16 :goto_1

    .line 392
    .line 393
    :cond_16
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getMoveHome-EK5gGoQ()J

    .line 394
    .line 395
    .line 396
    move-result-wide v4

    .line 397
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_17

    .line 402
    .line 403
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LINE_START:Landroidx/compose/foundation/text/KeyCommand;

    .line 404
    .line 405
    goto :goto_1

    .line 406
    :cond_17
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getMoveEnd-EK5gGoQ()J

    .line 407
    .line 408
    .line 409
    move-result-wide v4

    .line 410
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-eqz v0, :cond_18

    .line 415
    .line 416
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LINE_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 417
    .line 418
    goto :goto_1

    .line 419
    :cond_18
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getEnter-EK5gGoQ()J

    .line 420
    .line 421
    .line 422
    move-result-wide v4

    .line 423
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-eqz v0, :cond_19

    .line 428
    .line 429
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->NEW_LINE:Landroidx/compose/foundation/text/KeyCommand;

    .line 430
    .line 431
    goto :goto_1

    .line 432
    :cond_19
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getBackspace-EK5gGoQ()J

    .line 433
    .line 434
    .line 435
    move-result-wide v4

    .line 436
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_1a

    .line 441
    .line 442
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 443
    .line 444
    goto :goto_1

    .line 445
    :cond_1a
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getDelete-EK5gGoQ()J

    .line 446
    .line 447
    .line 448
    move-result-wide v4

    .line 449
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-eqz v0, :cond_1b

    .line 454
    .line 455
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 456
    .line 457
    goto :goto_1

    .line 458
    :cond_1b
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getPaste-EK5gGoQ()J

    .line 459
    .line 460
    .line 461
    move-result-wide v4

    .line 462
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_1c

    .line 467
    .line 468
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PASTE:Landroidx/compose/foundation/text/KeyCommand;

    .line 469
    .line 470
    goto :goto_1

    .line 471
    :cond_1c
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getCut-EK5gGoQ()J

    .line 472
    .line 473
    .line 474
    move-result-wide v4

    .line 475
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-eqz v0, :cond_1d

    .line 480
    .line 481
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->CUT:Landroidx/compose/foundation/text/KeyCommand;

    .line 482
    .line 483
    goto :goto_1

    .line 484
    :cond_1d
    invoke-virtual {p1}, Landroidx/compose/foundation/text/MappedKeys;->getTab-EK5gGoQ()J

    .line 485
    .line 486
    .line 487
    move-result-wide v4

    .line 488
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 489
    .line 490
    .line 491
    move-result p1

    .line 492
    if-eqz p1, :cond_1e

    .line 493
    .line 494
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->TAB:Landroidx/compose/foundation/text/KeyCommand;

    .line 495
    .line 496
    :cond_1e
    :goto_1
    return-object v1
.end method
