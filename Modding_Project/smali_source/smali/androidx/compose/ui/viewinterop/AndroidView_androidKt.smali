.class public final Landroidx/compose/ui/viewinterop/AndroidView_androidKt;
.super Ljava/lang/Object;
.source "AndroidView.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final NoOpUpdate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$NoOpUpdate$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$NoOpUpdate$1;

    .line 2
    .line 3
    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->NoOpUpdate:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    return-void
.end method

.method public static final AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/UiComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+TT;>;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v9, p4

    .line 4
    .line 5
    const-string v0, "factory"

    .line 6
    .line 7
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v0, -0x6a521d79

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p3

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    .line 18
    move-result-object v10

    .line 19
    and-int/lit8 v0, p5, 0x1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    or-int/lit8 v0, v9, 0x6

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    and-int/lit8 v0, v9, 0xe

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x2

    .line 39
    :goto_0
    or-int/2addr v0, v9

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v0, v9

    .line 42
    :goto_1
    and-int/lit8 v1, p5, 0x2

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    or-int/lit8 v0, v0, 0x30

    .line 47
    .line 48
    :cond_3
    move-object/from16 v2, p1

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_4
    and-int/lit8 v2, v9, 0x70

    .line 52
    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    move-object/from16 v2, p1

    .line 56
    .line 57
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    const/16 v3, 0x20

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_5
    const/16 v3, 0x10

    .line 67
    .line 68
    :goto_2
    or-int/2addr v0, v3

    .line 69
    :goto_3
    and-int/lit8 v3, p5, 0x4

    .line 70
    .line 71
    if-eqz v3, :cond_7

    .line 72
    .line 73
    or-int/lit16 v0, v0, 0x180

    .line 74
    .line 75
    :cond_6
    move-object/from16 v4, p2

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_7
    and-int/lit16 v4, v9, 0x380

    .line 79
    .line 80
    if-nez v4, :cond_6

    .line 81
    .line 82
    move-object/from16 v4, p2

    .line 83
    .line 84
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_8

    .line 89
    .line 90
    const/16 v5, 0x100

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_8
    const/16 v5, 0x80

    .line 94
    .line 95
    :goto_4
    or-int/2addr v0, v5

    .line 96
    :goto_5
    and-int/lit16 v0, v0, 0x2db

    .line 97
    .line 98
    const/16 v5, 0x92

    .line 99
    .line 100
    if-ne v0, v5, :cond_a

    .line 101
    .line 102
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_9

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_9
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 110
    .line 111
    .line 112
    move-object v3, v4

    .line 113
    goto/16 :goto_a

    .line 114
    .line 115
    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    .line 116
    .line 117
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 118
    .line 119
    move-object v11, v0

    .line 120
    goto :goto_7

    .line 121
    :cond_b
    move-object v11, v2

    .line 122
    :goto_7
    if-eqz v3, :cond_c

    .line 123
    .line 124
    sget-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->NoOpUpdate:Lkotlin/jvm/functions/Function1;

    .line 125
    .line 126
    move-object v12, v0

    .line 127
    goto :goto_8

    .line 128
    :cond_c
    move-object v12, v4

    .line 129
    :goto_8
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    move-object v1, v0

    .line 138
    check-cast v1, Landroid/content/Context;

    .line 139
    .line 140
    const v0, -0x1d58f75c

    .line 141
    .line 142
    .line 143
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 151
    .line 152
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    if-ne v2, v4, :cond_d

    .line 157
    .line 158
    new-instance v2, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$noOpConnection$1$1;

    .line 159
    .line 160
    invoke-direct {v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$noOpConnection$1$1;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 167
    .line 168
    .line 169
    check-cast v2, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$noOpConnection$1$1;

    .line 170
    .line 171
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    if-ne v4, v5, :cond_e

    .line 183
    .line 184
    new-instance v4, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 185
    .line 186
    invoke-direct {v4}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :cond_e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 193
    .line 194
    .line 195
    check-cast v4, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 196
    .line 197
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 198
    .line 199
    invoke-static {v5, v2, v4}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-interface {v11, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    sget-object v5, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$modifierWithSemantics$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$modifierWithSemantics$1;

    .line 208
    .line 209
    const/4 v6, 0x1

    .line 210
    invoke-static {v2, v6, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {v10, v2}, Landroidx/compose/ui/ComposedModifierKt;->materialize(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 215
    .line 216
    .line 217
    move-result-object v13

    .line 218
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    move-object v14, v2

    .line 227
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 228
    .line 229
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    move-object v15, v2

    .line 238
    check-cast v15, Landroidx/compose/ui/unit/LayoutDirection;

    .line 239
    .line 240
    const/4 v2, 0x0

    .line 241
    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposablesKt;->rememberCompositionContext(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/CompositionContext;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->getLocalSaveableStateRegistry()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    move-object v7, v6

    .line 254
    check-cast v7, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 255
    .line 256
    invoke-static {v10, v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 265
    .line 266
    .line 267
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    if-ne v0, v2, :cond_f

    .line 276
    .line 277
    new-instance v0, Landroidx/compose/ui/node/Ref;

    .line 278
    .line 279
    invoke-direct {v0}, Landroidx/compose/ui/node/Ref;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    :cond_f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 286
    .line 287
    .line 288
    move-object v3, v0

    .line 289
    check-cast v3, Landroidx/compose/ui/node/Ref;

    .line 290
    .line 291
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    move-object v2, v0

    .line 300
    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 301
    .line 302
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalSavedStateRegistryOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 311
    .line 312
    new-instance v8, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;

    .line 313
    .line 314
    move-object v9, v0

    .line 315
    move-object v0, v8

    .line 316
    move-object/from16 p1, v11

    .line 317
    .line 318
    move-object v11, v2

    .line 319
    move-object v2, v5

    .line 320
    move-object v5, v3

    .line 321
    move-object v3, v4

    .line 322
    move-object/from16 v4, p0

    .line 323
    .line 324
    move-object/from16 p2, v5

    .line 325
    .line 326
    move-object v5, v7

    .line 327
    move-object/from16 p3, v6

    .line 328
    .line 329
    move-object/from16 v16, v7

    .line 330
    .line 331
    move-object/from16 v7, p2

    .line 332
    .line 333
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$1;-><init>(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Landroidx/compose/ui/node/Ref;)V

    .line 334
    .line 335
    .line 336
    const v0, 0x7076b8d0

    .line 337
    .line 338
    .line 339
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 340
    .line 341
    .line 342
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    instance-of v0, v0, Landroidx/compose/ui/node/UiApplier;

    .line 347
    .line 348
    if-nez v0, :cond_10

    .line 349
    .line 350
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 351
    .line 352
    .line 353
    :cond_10
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startNode()V

    .line 354
    .line 355
    .line 356
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_11

    .line 361
    .line 362
    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1;

    .line 363
    .line 364
    invoke-direct {v0, v8}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$$inlined$ComposeNode$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 365
    .line 366
    .line 367
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 368
    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_11
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 372
    .line 373
    .line 374
    :goto_9
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$1;

    .line 379
    .line 380
    move-object/from16 v2, p2

    .line 381
    .line 382
    invoke-direct {v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$1;-><init>(Landroidx/compose/ui/node/Ref;)V

    .line 383
    .line 384
    .line 385
    invoke-static {v0, v13, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 386
    .line 387
    .line 388
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$2;

    .line 389
    .line 390
    invoke-direct {v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$2;-><init>(Landroidx/compose/ui/node/Ref;)V

    .line 391
    .line 392
    .line 393
    invoke-static {v0, v14, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 394
    .line 395
    .line 396
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$3;

    .line 397
    .line 398
    invoke-direct {v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$3;-><init>(Landroidx/compose/ui/node/Ref;)V

    .line 399
    .line 400
    .line 401
    invoke-static {v0, v11, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 402
    .line 403
    .line 404
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$4;

    .line 405
    .line 406
    invoke-direct {v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$4;-><init>(Landroidx/compose/ui/node/Ref;)V

    .line 407
    .line 408
    .line 409
    invoke-static {v0, v9, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 410
    .line 411
    .line 412
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$5;

    .line 413
    .line 414
    invoke-direct {v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$5;-><init>(Landroidx/compose/ui/node/Ref;)V

    .line 415
    .line 416
    .line 417
    invoke-static {v0, v12, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 418
    .line 419
    .line 420
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$6;

    .line 421
    .line 422
    invoke-direct {v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$2$6;-><init>(Landroidx/compose/ui/node/Ref;)V

    .line 423
    .line 424
    .line 425
    invoke-static {v0, v15, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 426
    .line 427
    .line 428
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 429
    .line 430
    .line 431
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 432
    .line 433
    .line 434
    move-object/from16 v6, v16

    .line 435
    .line 436
    if-eqz v6, :cond_12

    .line 437
    .line 438
    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3;

    .line 439
    .line 440
    move-object/from16 v1, p3

    .line 441
    .line 442
    invoke-direct {v0, v6, v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Landroidx/compose/ui/node/Ref;)V

    .line 443
    .line 444
    .line 445
    const/16 v2, 0x8

    .line 446
    .line 447
    invoke-static {v6, v1, v0, v10, v2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 448
    .line 449
    .line 450
    :cond_12
    move-object/from16 v2, p1

    .line 451
    .line 452
    move-object v3, v12

    .line 453
    :goto_a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 454
    .line 455
    .line 456
    move-result-object v6

    .line 457
    if-nez v6, :cond_13

    .line 458
    .line 459
    goto :goto_b

    .line 460
    :cond_13
    new-instance v7, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$4;

    .line 461
    .line 462
    move-object v0, v7

    .line 463
    move-object/from16 v1, p0

    .line 464
    .line 465
    move/from16 v4, p4

    .line 466
    .line 467
    move/from16 v5, p5

    .line 468
    .line 469
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$4;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;II)V

    .line 470
    .line 471
    .line 472
    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 473
    .line 474
    .line 475
    :goto_b
    return-void
.end method

.method public static final getNoOpUpdate()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->NoOpUpdate:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method
