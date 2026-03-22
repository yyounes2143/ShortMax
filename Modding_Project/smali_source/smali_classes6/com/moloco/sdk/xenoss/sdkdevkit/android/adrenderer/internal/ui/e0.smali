.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGenericIconButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GenericIconButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/GenericIconButtonKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,88:1\n1057#2,6:89\n68#3,5:95\n73#3:126\n77#3:131\n75#4:100\n76#4,11:102\n89#4:130\n76#5:101\n460#6,13:113\n473#6,3:127\n*S KotlinDebug\n*F\n+ 1 GenericIconButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/GenericIconButtonKt\n*L\n55#1:89,6\n48#1:95,5\n48#1:126\n48#1:131\n48#1:100\n48#1:102,11\n48#1:130\n48#1:101\n48#1:113,13\n48#1:127,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLjava/lang/String;JJJLandroidx/compose/ui/graphics/Shape;JIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-wide/from16 v5, p5

    .line 12
    .line 13
    move-wide/from16 v7, p7

    .line 14
    .line 15
    move-wide/from16 v9, p9

    .line 16
    .line 17
    move-object/from16 v11, p11

    .line 18
    .line 19
    move-wide/from16 v12, p12

    .line 20
    .line 21
    move/from16 v16, p15

    .line 22
    .line 23
    move-object/from16 v14, p16

    .line 24
    .line 25
    or-int/lit8 v15, p14, 0x1

    .line 26
    .line 27
    invoke-static/range {v0 .. v16}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e0;->b(Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLjava/lang/String;JJJLandroidx/compose/ui/graphics/Shape;JLandroidx/compose/runtime/Composer;II)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLjava/lang/String;JJJLandroidx/compose/ui/graphics/Shape;JLandroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0    # Landroidx/compose/ui/graphics/painter/Painter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Ljava/lang/String;",
            "JJJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "J",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v15, p15

    move/from16 v13, p16

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/16 v7, 0x80

    const/16 v8, 0x20

    const-string v9, "painter"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "onClick"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v9, -0x775873f7

    move-object/from16 v10, p14

    .line 1
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    const/4 v11, 0x1

    and-int/lit8 v12, v13, 0x1

    if-eqz v12, :cond_0

    or-int/lit8 v12, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v12, v15, 0x6

    if-nez v12, :cond_2

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v5

    goto :goto_0

    :cond_1
    move v12, v4

    :goto_0
    or-int/2addr v12, v15

    goto :goto_1

    :cond_2
    move v12, v15

    :goto_1
    and-int/2addr v4, v13

    if-eqz v4, :cond_3

    or-int/lit8 v12, v12, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, v15, 0x30

    if-nez v4, :cond_5

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v8

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    or-int/2addr v12, v4

    :cond_5
    :goto_3
    and-int/lit8 v4, v13, 0x4

    if-eqz v4, :cond_7

    or-int/lit16 v12, v12, 0x180

    :cond_6
    move-object/from16 v5, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v5, v15, 0x180

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x100

    goto :goto_4

    :cond_8
    move v14, v7

    :goto_4
    or-int/2addr v12, v14

    :goto_5
    and-int/lit8 v14, v13, 0x8

    if-eqz v14, :cond_a

    or-int/lit16 v12, v12, 0xc00

    :cond_9
    move/from16 v6, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v6, v15, 0xc00

    if-nez v6, :cond_9

    move/from16 v6, p3

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x800

    goto :goto_6

    :cond_b
    const/16 v17, 0x400

    :goto_6
    or-int v12, v12, v17

    :goto_7
    and-int/2addr v3, v13

    if-eqz v3, :cond_d

    or-int/lit16 v12, v12, 0x6000

    :cond_c
    move-object/from16 v9, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v9, v15, 0x6000

    if-nez v9, :cond_c

    move-object/from16 v9, p4

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x4000

    goto :goto_8

    :cond_e
    const/16 v18, 0x2000

    :goto_8
    or-int v12, v12, v18

    :goto_9
    const/high16 v18, 0x30000

    and-int v18, v15, v18

    if-nez v18, :cond_10

    and-int/lit8 v18, v13, 0x20

    move-wide/from16 v8, p5

    if-nez v18, :cond_f

    invoke-interface {v10, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_f

    const/high16 v19, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v19, 0x10000

    :goto_a
    or-int v12, v12, v19

    goto :goto_b

    :cond_10
    move-wide/from16 v8, p5

    :goto_b
    and-int/lit8 v19, v13, 0x40

    const/high16 v20, 0x180000

    if-eqz v19, :cond_11

    or-int v12, v12, v20

    move-wide/from16 v0, p7

    goto :goto_d

    :cond_11
    and-int v20, v15, v20

    move-wide/from16 v0, p7

    if-nez v20, :cond_13

    invoke-interface {v10, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v21

    if-eqz v21, :cond_12

    const/high16 v21, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v21, 0x80000

    :goto_c
    or-int v12, v12, v21

    :cond_13
    :goto_d
    const/high16 v21, 0xc00000

    and-int v21, v15, v21

    if-nez v21, :cond_15

    and-int/lit16 v11, v13, 0x80

    move-wide/from16 v7, p9

    if-nez v11, :cond_14

    invoke-interface {v10, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_14

    const/high16 v9, 0x800000

    goto :goto_e

    :cond_14
    const/high16 v9, 0x400000

    :goto_e
    or-int/2addr v12, v9

    :goto_f
    const/16 v9, 0x100

    goto :goto_10

    :cond_15
    move-wide/from16 v7, p9

    goto :goto_f

    :goto_10
    and-int/2addr v9, v13

    const/high16 v20, 0x6000000

    if-eqz v9, :cond_16

    or-int v12, v12, v20

    move-object/from16 v11, p11

    goto :goto_12

    :cond_16
    and-int v20, v15, v20

    move-object/from16 v11, p11

    if-nez v20, :cond_18

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    const/high16 v21, 0x4000000

    goto :goto_11

    :cond_17
    const/high16 v21, 0x2000000

    :goto_11
    or-int v12, v12, v21

    :cond_18
    :goto_12
    and-int/lit16 v0, v13, 0x200

    const/high16 v1, 0x30000000

    if-eqz v0, :cond_1a

    or-int/2addr v12, v1

    :cond_19
    move-wide/from16 v1, p12

    goto :goto_14

    :cond_1a
    and-int/2addr v1, v15

    if-nez v1, :cond_19

    move-wide/from16 v1, p12

    invoke-interface {v10, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v21

    if-eqz v21, :cond_1b

    const/high16 v21, 0x20000000

    goto :goto_13

    :cond_1b
    const/high16 v21, 0x10000000

    :goto_13
    or-int v12, v12, v21

    :goto_14
    const v21, 0x12492493

    and-int v1, v12, v21

    const v2, 0x12492492

    if-ne v1, v2, :cond_1d

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_15

    .line 2
    :cond_1c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide/from16 v13, p12

    move-object v3, v5

    move v4, v6

    move-object/from16 v18, v11

    move-object/from16 v5, p4

    move-wide v11, v7

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    goto/16 :goto_22

    .line 3
    :cond_1d
    :goto_15
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const/4 v1, 0x1

    and-int/lit8 v2, v15, 0x1

    const v21, -0x1c00001

    const v22, -0x70001

    if-eqz v2, :cond_21

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_16

    .line 4
    :cond_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    const/16 v0, 0x20

    and-int/2addr v0, v13

    if-eqz v0, :cond_1f

    and-int v12, v12, v22

    :cond_1f
    const/16 v0, 0x80

    and-int/2addr v0, v13

    if-eqz v0, :cond_20

    and-int v12, v12, v21

    :cond_20
    move-object/from16 v3, p4

    move-wide/from16 v20, p12

    move-object v4, v5

    move v1, v6

    move-object v2, v11

    move v0, v12

    move-wide/from16 v5, p5

    move-wide v11, v7

    move-wide/from16 v7, p7

    goto/16 :goto_20

    :cond_21
    :goto_16
    if-eqz v4, :cond_22

    .line 5
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_17

    :cond_22
    move-object v4, v5

    :goto_17
    if-eqz v14, :cond_23

    goto :goto_18

    :cond_23
    move v1, v6

    :goto_18
    if-eqz v3, :cond_24

    const/4 v3, 0x0

    :goto_19
    const/16 v5, 0x20

    goto :goto_1a

    :cond_24
    move-object/from16 v3, p4

    goto :goto_19

    :goto_1a
    and-int/2addr v5, v13

    if-eqz v5, :cond_25

    .line 6
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    sget v6, Landroidx/compose/material/MaterialTheme;->$stable:I

    invoke-virtual {v5, v10, v6}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v5

    and-int v12, v12, v22

    goto :goto_1b

    :cond_25
    move-wide/from16 v5, p5

    :goto_1b
    if-eqz v19, :cond_26

    .line 7
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->b()J

    move-result-wide v18

    :goto_1c
    const/16 v2, 0x80

    goto :goto_1d

    :cond_26
    move-wide/from16 v18, p7

    goto :goto_1c

    :goto_1d
    and-int/2addr v2, v13

    if-eqz v2, :cond_27

    and-int v2, v12, v21

    move v12, v2

    move-wide/from16 v7, v18

    :cond_27
    if-eqz v9, :cond_28

    .line 8
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->e()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    goto :goto_1e

    :cond_28
    move-object v2, v11

    :goto_1e
    if-eqz v0, :cond_29

    .line 9
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->d()J

    move-result-wide v20

    :goto_1f
    move v0, v12

    move-wide v11, v7

    move-wide/from16 v7, v18

    goto :goto_20

    :cond_29
    move-wide/from16 v20, p12

    goto :goto_1f

    .line 10
    :goto_20
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_2a

    const/4 v9, -0x1

    .line 11
    const-string v14, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.GenericIconButton (GenericIconButton.kt:46)"

    const v13, -0x775873f7

    invoke-static {v13, v0, v9, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 12
    :cond_2a
    invoke-static {v4, v7, v8}, Landroidx/compose/foundation/layout/SizeKt;->size-6HolHcs(Landroidx/compose/ui/Modifier;J)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 13
    invoke-static {v9, v2}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 p2, v9

    move-wide/from16 p3, v20

    move-object/from16 p5, v17

    move/from16 p6, v13

    move-object/from16 p7, v14

    .line 14
    invoke-static/range {p2 .. p7}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/4 v13, 0x6

    const/4 v14, 0x6

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-wide/16 v22, 0x0

    move/from16 p2, v17

    move/from16 p3, v18

    move-wide/from16 p4, v22

    move-object/from16 p6, v10

    move/from16 p7, v13

    move/from16 p8, v14

    .line 15
    invoke-static/range {p2 .. p8}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v13

    const v14, -0x622ae67a

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 16
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .line 17
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_2b

    .line 18
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v14

    .line 19
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 20
    :cond_2b
    move-object v2, v14

    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 21
    sget-object v14, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/semantics/Role$Companion;->getButton-o7Vup1c()I

    move-result v14

    invoke-static {v14}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v14

    move-object/from16 p2, v9

    move-object/from16 p3, v2

    move-object/from16 p4, v13

    move/from16 p5, v1

    move-object/from16 p6, v3

    move-object/from16 p7, v14

    move-object/from16 p8, p1

    .line 22
    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 23
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v9

    const v13, 0x2bb5b5d7

    .line 24
    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const/4 v13, 0x0

    const/4 v14, 0x6

    .line 25
    invoke-static {v9, v13, v10, v14}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    const v14, -0x4ee9b9da

    .line 26
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 27
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    .line 28
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    .line 29
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 30
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    .line 31
    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    .line 32
    check-cast v13, Landroidx/compose/ui/unit/LayoutDirection;

    move/from16 p10, v1

    .line 33
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    .line 34
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 36
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v19, v4

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v4

    .line 37
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    move-result-object v2

    .line 38
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v22

    if-nez v22, :cond_2c

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 39
    :cond_2c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 40
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 41
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_21

    .line 42
    :cond_2d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 43
    :goto_21
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 44
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    move-wide/from16 v22, v7

    .line 45
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v4, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 46
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v4, v14, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 47
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v4, v13, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 48
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v4, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 49
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 50
    invoke-static {v10}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v10, v4}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 51
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v1, -0x7f65a980

    .line 52
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 53
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 54
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v1, v11, v12}, Landroidx/compose/foundation/layout/SizeKt;->size-6HolHcs(Landroidx/compose/ui/Modifier;J)Landroidx/compose/ui/Modifier;

    move-result-object v1

    and-int/lit8 v2, v0, 0xe

    shr-int/lit8 v4, v0, 0x9

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v2, v4

    const/4 v4, 0x6

    shr-int/2addr v0, v4

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v2

    const/4 v2, 0x0

    move-object/from16 p2, p0

    move-object/from16 p3, v3

    move-object/from16 p4, v1

    move-wide/from16 p5, v5

    move-object/from16 p7, v10

    move/from16 p8, v0

    move/from16 p9, v2

    .line 55
    invoke-static/range {p2 .. p9}, Landroidx/compose/material/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 56
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 57
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 58
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 59
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 60
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 61
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2e
    move/from16 v4, p10

    move-wide v6, v5

    move-wide/from16 v13, v20

    move-wide/from16 v8, v22

    move-object v5, v3

    move-object/from16 v3, v19

    .line 62
    :goto_22
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_2f

    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/d0;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v24, v2

    move-object/from16 v2, p1

    move-object/from16 v25, v10

    move-wide v10, v11

    move-object/from16 v12, v18

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/d0;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLjava/lang/String;JJJLandroidx/compose/ui/graphics/Shape;JII)V

    move-object/from16 v1, v24

    move-object/from16 v0, v25

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_2f
    return-void
.end method
