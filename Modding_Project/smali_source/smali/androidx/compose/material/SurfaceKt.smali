.class public final Landroidx/compose/material/SurfaceKt;
.super Ljava/lang/Object;
.source "Surface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final Surface-9VG74zQ(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 36
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/foundation/Indication;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/ui/semantics/Role;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p15    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Z",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .annotation runtime Lms/c;
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p14

    move/from16 v13, p16

    move/from16 v12, p17

    move/from16 v11, p18

    const-string v0, "onClick"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5e874d70

    move-object/from16 v1, p15

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v13, 0xe

    if-nez v0, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    goto :goto_1

    :cond_2
    move v0, v13

    :goto_1
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v0, v0, 0x30

    :cond_3
    move-object/from16 v6, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v6, v13, 0x70

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x20

    goto :goto_2

    :cond_5
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v0, v7

    :goto_3
    and-int/lit8 v7, v11, 0x4

    if-eqz v7, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v1, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v1, v13, 0x380

    if-nez v1, :cond_6

    move-object/from16 v1, p2

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    const/16 v16, 0x80

    :goto_4
    or-int v0, v0, v16

    :goto_5
    and-int/lit16 v2, v13, 0x1c00

    if-nez v2, :cond_a

    and-int/lit8 v2, v11, 0x8

    move-wide/from16 v4, p3

    if-nez v2, :cond_9

    invoke-interface {v10, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x800

    goto :goto_6

    :cond_9
    const/16 v18, 0x400

    :goto_6
    or-int v0, v0, v18

    goto :goto_7

    :cond_a
    move-wide/from16 v4, p3

    :goto_7
    const v18, 0xe000

    and-int v18, v13, v18

    if-nez v18, :cond_c

    and-int/lit8 v18, v11, 0x10

    move-wide/from16 v8, p5

    if-nez v18, :cond_b

    invoke-interface {v10, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v20

    if-eqz v20, :cond_b

    const/16 v20, 0x4000

    goto :goto_8

    :cond_b
    const/16 v20, 0x2000

    :goto_8
    or-int v0, v0, v20

    goto :goto_9

    :cond_c
    move-wide/from16 v8, p5

    :goto_9
    and-int/lit8 v20, v11, 0x20

    if-eqz v20, :cond_d

    const/high16 v21, 0x30000

    or-int v0, v0, v21

    move-object/from16 v2, p7

    goto :goto_b

    :cond_d
    const/high16 v21, 0x70000

    and-int v21, v13, v21

    move-object/from16 v2, p7

    if-nez v21, :cond_f

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/high16 v22, 0x20000

    goto :goto_a

    :cond_e
    const/high16 v22, 0x10000

    :goto_a
    or-int v0, v0, v22

    :cond_f
    :goto_b
    and-int/lit8 v22, v11, 0x40

    if-eqz v22, :cond_10

    const/high16 v23, 0x180000

    or-int v0, v0, v23

    move/from16 v1, p8

    goto :goto_d

    :cond_10
    const/high16 v23, 0x380000

    and-int v23, v13, v23

    move/from16 v1, p8

    if-nez v23, :cond_12

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_11

    const/high16 v23, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v23, 0x80000

    :goto_c
    or-int v0, v0, v23

    :cond_12
    :goto_d
    and-int/lit16 v1, v11, 0x80

    if-eqz v1, :cond_13

    const/high16 v23, 0xc00000

    or-int v0, v0, v23

    move-object/from16 v2, p9

    goto :goto_f

    :cond_13
    const/high16 v23, 0x1c00000

    and-int v23, v13, v23

    move-object/from16 v2, p9

    if-nez v23, :cond_15

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    const/high16 v23, 0x800000

    goto :goto_e

    :cond_14
    const/high16 v23, 0x400000

    :goto_e
    or-int v0, v0, v23

    :cond_15
    :goto_f
    const/high16 v23, 0xe000000

    and-int v23, v13, v23

    if-nez v23, :cond_18

    and-int/lit16 v2, v11, 0x100

    if-nez v2, :cond_16

    move-object/from16 v2, p10

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    const/high16 v23, 0x4000000

    goto :goto_10

    :cond_16
    move-object/from16 v2, p10

    :cond_17
    const/high16 v23, 0x2000000

    :goto_10
    or-int v0, v0, v23

    goto :goto_11

    :cond_18
    move-object/from16 v2, p10

    :goto_11
    and-int/lit16 v2, v11, 0x200

    if-eqz v2, :cond_19

    const/high16 v23, 0x30000000

    or-int v0, v0, v23

    move/from16 v4, p11

    goto :goto_13

    :cond_19
    const/high16 v23, 0x70000000

    and-int v23, v13, v23

    move/from16 v4, p11

    if-nez v23, :cond_1b

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/high16 v5, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v5, 0x10000000

    :goto_12
    or-int/2addr v0, v5

    :cond_1b
    :goto_13
    and-int/lit16 v5, v11, 0x400

    if-eqz v5, :cond_1c

    or-int/lit8 v16, v12, 0x6

    move-object/from16 v4, p12

    goto :goto_15

    :cond_1c
    and-int/lit8 v23, v12, 0xe

    move-object/from16 v4, p12

    if-nez v23, :cond_1e

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d

    const/16 v16, 0x4

    goto :goto_14

    :cond_1d
    const/16 v16, 0x2

    :goto_14
    or-int v16, v12, v16

    goto :goto_15

    :cond_1e
    move/from16 v16, v12

    :goto_15
    and-int/lit16 v4, v11, 0x800

    if-eqz v4, :cond_20

    or-int/lit8 v16, v16, 0x30

    :cond_1f
    :goto_16
    move/from16 v6, v16

    goto :goto_18

    :cond_20
    and-int/lit8 v23, v12, 0x70

    move-object/from16 v6, p13

    if-nez v23, :cond_1f

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_21

    const/16 v17, 0x20

    goto :goto_17

    :cond_21
    const/16 v17, 0x10

    :goto_17
    or-int v16, v16, v17

    goto :goto_16

    :goto_18
    and-int/lit16 v8, v11, 0x1000

    if-eqz v8, :cond_23

    or-int/lit16 v6, v6, 0x180

    :cond_22
    :goto_19
    move v9, v6

    goto :goto_1b

    :cond_23
    and-int/lit16 v8, v12, 0x380

    if-nez v8, :cond_22

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    const/16 v8, 0x100

    goto :goto_1a

    :cond_24
    const/16 v8, 0x80

    :goto_1a
    or-int/2addr v6, v8

    goto :goto_19

    :goto_1b
    const v6, 0x5b6db6db

    and-int/2addr v6, v0

    const v8, 0x12492492

    if-ne v6, v8, :cond_26

    and-int/lit16 v6, v9, 0x2db

    const/16 v8, 0x92

    if-ne v6, v8, :cond_26

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_25

    goto :goto_1c

    .line 2
    :cond_25
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object v1, v10

    move-object/from16 v10, p9

    goto/16 :goto_2b

    .line 3
    :cond_26
    :goto_1c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v6, v13, 0x1

    const v16, -0xe001

    if-eqz v6, :cond_2b

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_27

    goto :goto_1e

    .line 4
    :cond_27
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v11, 0x8

    if-eqz v1, :cond_28

    and-int/lit16 v0, v0, -0x1c01

    :cond_28
    and-int/lit8 v1, v11, 0x10

    if-eqz v1, :cond_29

    and-int v0, v0, v16

    :cond_29
    and-int/lit16 v1, v11, 0x100

    if-eqz v1, :cond_2a

    const v1, -0xe000001

    and-int/2addr v0, v1

    :cond_2a
    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-wide/from16 v20, p3

    move-wide/from16 v22, p5

    move-object/from16 v24, p7

    move/from16 v25, p8

    move-object/from16 v26, p9

    move-object/from16 v27, p10

    move/from16 v28, p11

    move-object/from16 v29, p12

    move-object/from16 v30, p13

    :goto_1d
    move v6, v0

    goto/16 :goto_2a

    :cond_2b
    :goto_1e
    if-eqz v3, :cond_2c

    .line 5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1f

    :cond_2c
    move-object/from16 v3, p1

    :goto_1f
    if-eqz v7, :cond_2d

    .line 6
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    goto :goto_20

    :cond_2d
    move-object/from16 v6, p2

    :goto_20
    and-int/lit8 v7, v11, 0x8

    if-eqz v7, :cond_2e

    .line 7
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v8, 0x6

    invoke-virtual {v7, v10, v8}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v7

    and-int/lit16 v0, v0, -0x1c01

    goto :goto_21

    :cond_2e
    move-wide/from16 v7, p3

    :goto_21
    and-int/lit8 v18, v11, 0x10

    if-eqz v18, :cond_2f

    shr-int/lit8 v18, v0, 0x9

    move-object/from16 p1, v3

    and-int/lit8 v3, v18, 0xe

    .line 8
    invoke-static {v7, v8, v10, v3}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v18

    and-int v0, v0, v16

    goto :goto_22

    :cond_2f
    move-object/from16 p1, v3

    move-wide/from16 v18, p5

    :goto_22
    if-eqz v20, :cond_30

    const/16 v16, 0x0

    goto :goto_23

    :cond_30
    move-object/from16 v16, p7

    :goto_23
    if-eqz v22, :cond_31

    const/4 v3, 0x0

    int-to-float v3, v3

    .line 9
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    goto :goto_24

    :cond_31
    move/from16 v3, p8

    :goto_24
    if-eqz v1, :cond_33

    const v1, -0x1d58f75c

    .line 10
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 11
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 12
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v3

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_32

    .line 13
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v1

    .line 14
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 15
    :cond_32
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_25

    :cond_33
    move/from16 p3, v3

    move-object/from16 v1, p9

    :goto_25
    and-int/lit16 v3, v11, 0x100

    if-eqz v3, :cond_34

    .line 16
    invoke-static {}, Landroidx/compose/foundation/IndicationKt;->getLocalIndication()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    .line 17
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/Indication;

    const v20, -0xe000001

    and-int v0, v0, v20

    goto :goto_26

    :cond_34
    move-object/from16 v3, p10

    :goto_26
    if-eqz v2, :cond_35

    const/4 v2, 0x1

    goto :goto_27

    :cond_35
    move/from16 v2, p11

    :goto_27
    if-eqz v5, :cond_36

    const/4 v5, 0x0

    goto :goto_28

    :cond_36
    move-object/from16 v5, p12

    :goto_28
    move/from16 v25, p3

    if-eqz v4, :cond_37

    move-object/from16 v26, v1

    move/from16 v28, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v5

    move-wide/from16 v20, v7

    move-object/from16 v24, v16

    move-wide/from16 v22, v18

    const/16 v30, 0x0

    :goto_29
    move-object/from16 v18, p1

    move-object/from16 v19, v6

    goto/16 :goto_1d

    :cond_37
    move-object/from16 v30, p13

    move-object/from16 v26, v1

    move/from16 v28, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v5

    move-wide/from16 v20, v7

    move-object/from16 v24, v16

    move-wide/from16 v22, v18

    goto :goto_29

    .line 18
    :goto_2a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 19
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 20
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    add-float v0, v0, v25

    .line 21
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    move v5, v0

    .line 22
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    .line 23
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    filled-new-array {v1, v0}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v8

    .line 24
    new-instance v7, Landroidx/compose/material/SurfaceKt$Surface$13;

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-wide/from16 v3, v20

    move-object/from16 v31, v7

    move-object/from16 v7, v24

    move-object/from16 v32, v8

    move/from16 v8, v25

    move/from16 v16, v9

    move-object/from16 v9, v26

    move-object/from16 v33, v10

    move-object/from16 v10, v27

    move/from16 v11, v28

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object/from16 v14, p0

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material/SurfaceKt$Surface$13;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;I)V

    const v0, 0x8eaa230

    move-object/from16 v3, v31

    move-object/from16 v1, v33

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v2, 0x38

    move-object/from16 v3, v32

    .line 25
    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-wide/from16 v4, v20

    move-wide/from16 v6, v22

    move-object/from16 v8, v24

    move/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v14, v30

    .line 26
    :goto_2b
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_38

    goto :goto_2c

    :cond_38
    new-instance v1, Landroidx/compose/material/SurfaceKt$Surface$14;

    move-object v0, v1

    move-object/from16 v34, v1

    move-object/from16 v1, p0

    move-object/from16 v35, v15

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/material/SurfaceKt$Surface$14;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v34

    move-object/from16 v0, v35

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2c
    return-void
.end method

.method public static final Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p8

    .line 2
    .line 3
    move/from16 v11, p10

    .line 4
    .line 5
    const-string v0, "content"

    .line 6
    .line 7
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v0, 0x542c837a

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p9

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    .line 18
    move-result-object v12

    .line 19
    and-int/lit8 v0, p11, 0x1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    or-int/lit8 v1, v11, 0x6

    .line 24
    .line 25
    move v2, v1

    .line 26
    move-object/from16 v1, p0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    and-int/lit8 v1, v11, 0xe

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    move-object/from16 v1, p0

    .line 34
    .line 35
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, 0x2

    .line 44
    :goto_0
    or-int/2addr v2, v11

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object/from16 v1, p0

    .line 47
    .line 48
    move v2, v11

    .line 49
    :goto_1
    and-int/lit8 v3, p11, 0x2

    .line 50
    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    or-int/lit8 v2, v2, 0x30

    .line 54
    .line 55
    :cond_3
    move-object/from16 v4, p1

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    and-int/lit8 v4, v11, 0x70

    .line 59
    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    move-object/from16 v4, p1

    .line 63
    .line 64
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_5

    .line 69
    .line 70
    const/16 v5, 0x20

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    const/16 v5, 0x10

    .line 74
    .line 75
    :goto_2
    or-int/2addr v2, v5

    .line 76
    :goto_3
    and-int/lit16 v5, v11, 0x380

    .line 77
    .line 78
    if-nez v5, :cond_8

    .line 79
    .line 80
    and-int/lit8 v5, p11, 0x4

    .line 81
    .line 82
    if-nez v5, :cond_6

    .line 83
    .line 84
    move-wide/from16 v5, p2

    .line 85
    .line 86
    invoke-interface {v12, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_7

    .line 91
    .line 92
    const/16 v7, 0x100

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_6
    move-wide/from16 v5, p2

    .line 96
    .line 97
    :cond_7
    const/16 v7, 0x80

    .line 98
    .line 99
    :goto_4
    or-int/2addr v2, v7

    .line 100
    goto :goto_5

    .line 101
    :cond_8
    move-wide/from16 v5, p2

    .line 102
    .line 103
    :goto_5
    and-int/lit16 v7, v11, 0x1c00

    .line 104
    .line 105
    if-nez v7, :cond_b

    .line 106
    .line 107
    and-int/lit8 v7, p11, 0x8

    .line 108
    .line 109
    if-nez v7, :cond_9

    .line 110
    .line 111
    move-wide/from16 v7, p4

    .line 112
    .line 113
    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-eqz v9, :cond_a

    .line 118
    .line 119
    const/16 v9, 0x800

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_9
    move-wide/from16 v7, p4

    .line 123
    .line 124
    :cond_a
    const/16 v9, 0x400

    .line 125
    .line 126
    :goto_6
    or-int/2addr v2, v9

    .line 127
    goto :goto_7

    .line 128
    :cond_b
    move-wide/from16 v7, p4

    .line 129
    .line 130
    :goto_7
    and-int/lit8 v9, p11, 0x10

    .line 131
    .line 132
    if-eqz v9, :cond_d

    .line 133
    .line 134
    or-int/lit16 v2, v2, 0x6000

    .line 135
    .line 136
    :cond_c
    move-object/from16 v13, p6

    .line 137
    .line 138
    goto :goto_9

    .line 139
    :cond_d
    const v13, 0xe000

    .line 140
    .line 141
    .line 142
    and-int/2addr v13, v11

    .line 143
    if-nez v13, :cond_c

    .line 144
    .line 145
    move-object/from16 v13, p6

    .line 146
    .line 147
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    if-eqz v14, :cond_e

    .line 152
    .line 153
    const/16 v14, 0x4000

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_e
    const/16 v14, 0x2000

    .line 157
    .line 158
    :goto_8
    or-int/2addr v2, v14

    .line 159
    :goto_9
    and-int/lit8 v14, p11, 0x20

    .line 160
    .line 161
    if-eqz v14, :cond_10

    .line 162
    .line 163
    const/high16 v15, 0x30000

    .line 164
    .line 165
    or-int/2addr v2, v15

    .line 166
    :cond_f
    move/from16 v15, p7

    .line 167
    .line 168
    goto :goto_b

    .line 169
    :cond_10
    const/high16 v15, 0x70000

    .line 170
    .line 171
    and-int/2addr v15, v11

    .line 172
    if-nez v15, :cond_f

    .line 173
    .line 174
    move/from16 v15, p7

    .line 175
    .line 176
    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 177
    .line 178
    .line 179
    move-result v16

    .line 180
    if-eqz v16, :cond_11

    .line 181
    .line 182
    const/high16 v16, 0x20000

    .line 183
    .line 184
    goto :goto_a

    .line 185
    :cond_11
    const/high16 v16, 0x10000

    .line 186
    .line 187
    :goto_a
    or-int v2, v2, v16

    .line 188
    .line 189
    :goto_b
    and-int/lit8 v16, p11, 0x40

    .line 190
    .line 191
    if-eqz v16, :cond_12

    .line 192
    .line 193
    const/high16 v16, 0x180000

    .line 194
    .line 195
    :goto_c
    or-int v2, v2, v16

    .line 196
    .line 197
    goto :goto_d

    .line 198
    :cond_12
    const/high16 v16, 0x380000

    .line 199
    .line 200
    and-int v16, v11, v16

    .line 201
    .line 202
    if-nez v16, :cond_14

    .line 203
    .line 204
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v16

    .line 208
    if-eqz v16, :cond_13

    .line 209
    .line 210
    const/high16 v16, 0x100000

    .line 211
    .line 212
    goto :goto_c

    .line 213
    :cond_13
    const/high16 v16, 0x80000

    .line 214
    .line 215
    goto :goto_c

    .line 216
    :cond_14
    :goto_d
    const v16, 0x2db6db

    .line 217
    .line 218
    .line 219
    and-int v1, v2, v16

    .line 220
    .line 221
    const v4, 0x92492

    .line 222
    .line 223
    .line 224
    if-ne v1, v4, :cond_16

    .line 225
    .line 226
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_15

    .line 231
    .line 232
    goto :goto_e

    .line 233
    :cond_15
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 234
    .line 235
    .line 236
    move-object/from16 v1, p0

    .line 237
    .line 238
    move-object/from16 v2, p1

    .line 239
    .line 240
    move-wide v3, v5

    .line 241
    move-wide v5, v7

    .line 242
    move-object v7, v13

    .line 243
    move v8, v15

    .line 244
    goto/16 :goto_15

    .line 245
    .line 246
    :cond_16
    :goto_e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 247
    .line 248
    .line 249
    and-int/lit8 v1, v11, 0x1

    .line 250
    .line 251
    if-eqz v1, :cond_1a

    .line 252
    .line 253
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_17

    .line 258
    .line 259
    goto :goto_11

    .line 260
    :cond_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 261
    .line 262
    .line 263
    and-int/lit8 v0, p11, 0x4

    .line 264
    .line 265
    if-eqz v0, :cond_18

    .line 266
    .line 267
    and-int/lit16 v2, v2, -0x381

    .line 268
    .line 269
    :cond_18
    and-int/lit8 v0, p11, 0x8

    .line 270
    .line 271
    if-eqz v0, :cond_19

    .line 272
    .line 273
    and-int/lit16 v0, v2, -0x1c01

    .line 274
    .line 275
    move-object/from16 v14, p1

    .line 276
    .line 277
    move-wide/from16 v17, v7

    .line 278
    .line 279
    move-object/from16 v19, v13

    .line 280
    .line 281
    move/from16 v20, v15

    .line 282
    .line 283
    move-object/from16 v13, p0

    .line 284
    .line 285
    move-wide v15, v5

    .line 286
    move v6, v0

    .line 287
    goto/16 :goto_14

    .line 288
    .line 289
    :cond_19
    move-object/from16 v14, p1

    .line 290
    .line 291
    move-wide/from16 v17, v7

    .line 292
    .line 293
    move-object/from16 v19, v13

    .line 294
    .line 295
    move/from16 v20, v15

    .line 296
    .line 297
    move-object/from16 v13, p0

    .line 298
    .line 299
    :goto_f
    move-wide v15, v5

    .line 300
    :goto_10
    move v6, v2

    .line 301
    goto :goto_14

    .line 302
    :cond_1a
    :goto_11
    if-eqz v0, :cond_1b

    .line 303
    .line 304
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 305
    .line 306
    goto :goto_12

    .line 307
    :cond_1b
    move-object/from16 v0, p0

    .line 308
    .line 309
    :goto_12
    if-eqz v3, :cond_1c

    .line 310
    .line 311
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    goto :goto_13

    .line 316
    :cond_1c
    move-object/from16 v1, p1

    .line 317
    .line 318
    :goto_13
    and-int/lit8 v3, p11, 0x4

    .line 319
    .line 320
    if-eqz v3, :cond_1d

    .line 321
    .line 322
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 323
    .line 324
    const/4 v4, 0x6

    .line 325
    invoke-virtual {v3, v12, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 330
    .line 331
    .line 332
    move-result-wide v3

    .line 333
    and-int/lit16 v2, v2, -0x381

    .line 334
    .line 335
    move-wide v5, v3

    .line 336
    :cond_1d
    and-int/lit8 v3, p11, 0x8

    .line 337
    .line 338
    if-eqz v3, :cond_1e

    .line 339
    .line 340
    shr-int/lit8 v3, v2, 0x6

    .line 341
    .line 342
    and-int/lit8 v3, v3, 0xe

    .line 343
    .line 344
    invoke-static {v5, v6, v12, v3}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 345
    .line 346
    .line 347
    move-result-wide v3

    .line 348
    and-int/lit16 v2, v2, -0x1c01

    .line 349
    .line 350
    move-wide v7, v3

    .line 351
    :cond_1e
    if-eqz v9, :cond_1f

    .line 352
    .line 353
    const/4 v3, 0x0

    .line 354
    move-object v13, v3

    .line 355
    :cond_1f
    if-eqz v14, :cond_20

    .line 356
    .line 357
    const/4 v3, 0x0

    .line 358
    int-to-float v3, v3

    .line 359
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    move-object v14, v1

    .line 364
    move/from16 v20, v3

    .line 365
    .line 366
    move-wide v15, v5

    .line 367
    move-wide/from16 v17, v7

    .line 368
    .line 369
    move-object/from16 v19, v13

    .line 370
    .line 371
    move-object v13, v0

    .line 372
    goto :goto_10

    .line 373
    :cond_20
    move-object v14, v1

    .line 374
    move-wide/from16 v17, v7

    .line 375
    .line 376
    move-object/from16 v19, v13

    .line 377
    .line 378
    move/from16 v20, v15

    .line 379
    .line 380
    move-object v13, v0

    .line 381
    goto :goto_f

    .line 382
    :goto_14
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 383
    .line 384
    .line 385
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 394
    .line 395
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    add-float v0, v0, v20

    .line 400
    .line 401
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    filled-new-array {v0, v1}, [Landroidx/compose/runtime/ProvidedValue;

    .line 430
    .line 431
    .line 432
    move-result-object v9

    .line 433
    new-instance v8, Landroidx/compose/material/SurfaceKt$Surface$1;

    .line 434
    .line 435
    move-object v0, v8

    .line 436
    move-object v1, v13

    .line 437
    move-object v2, v14

    .line 438
    move-wide v3, v15

    .line 439
    move-object/from16 v7, v19

    .line 440
    .line 441
    move-object v10, v8

    .line 442
    move/from16 v8, v20

    .line 443
    .line 444
    move-object v11, v9

    .line 445
    move-object/from16 v9, p8

    .line 446
    .line 447
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/SurfaceKt$Surface$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;)V

    .line 448
    .line 449
    .line 450
    const v0, -0x6c9bf7c6

    .line 451
    .line 452
    .line 453
    const/4 v1, 0x1

    .line 454
    invoke-static {v12, v0, v1, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    const/16 v1, 0x38

    .line 459
    .line 460
    invoke-static {v11, v0, v12, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 461
    .line 462
    .line 463
    move-object v1, v13

    .line 464
    move-wide/from16 v5, v17

    .line 465
    .line 466
    :goto_15
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 467
    .line 468
    .line 469
    move-result-object v12

    .line 470
    if-nez v12, :cond_21

    .line 471
    .line 472
    goto :goto_16

    .line 473
    :cond_21
    new-instance v13, Landroidx/compose/material/SurfaceKt$Surface$2;

    .line 474
    .line 475
    move-object v0, v13

    .line 476
    move-object/from16 v9, p8

    .line 477
    .line 478
    move/from16 v10, p10

    .line 479
    .line 480
    move/from16 v11, p11

    .line 481
    .line 482
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/SurfaceKt$Surface$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;II)V

    .line 483
    .line 484
    .line 485
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 486
    .line 487
    .line 488
    :goto_16
    return-void
.end method

.method public static final Surface-LPr_se0(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move-object/from16 v14, p11

    .line 4
    .line 5
    move/from16 v15, p13

    .line 6
    .line 7
    move/from16 v12, p14

    .line 8
    .line 9
    const-string v0, "onClick"

    .line 10
    .line 11
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "content"

    .line 15
    .line 16
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, 0x5d0914cd

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p12

    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    .line 27
    move-result-object v11

    .line 28
    and-int/lit8 v0, v12, 0x1

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    or-int/lit8 v0, v15, 0x6

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    and-int/lit8 v0, v15, 0xe

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x2

    .line 48
    :goto_0
    or-int/2addr v0, v15

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v0, v15

    .line 51
    :goto_1
    and-int/lit8 v1, v12, 0x2

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    or-int/lit8 v0, v0, 0x30

    .line 56
    .line 57
    :cond_3
    move-object/from16 v2, p1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    and-int/lit8 v2, v15, 0x70

    .line 61
    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    move-object/from16 v2, p1

    .line 65
    .line 66
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_5

    .line 71
    .line 72
    const/16 v3, 0x20

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/16 v3, 0x10

    .line 76
    .line 77
    :goto_2
    or-int/2addr v0, v3

    .line 78
    :goto_3
    and-int/lit8 v3, v12, 0x4

    .line 79
    .line 80
    if-eqz v3, :cond_7

    .line 81
    .line 82
    or-int/lit16 v0, v0, 0x180

    .line 83
    .line 84
    :cond_6
    move/from16 v4, p2

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_7
    and-int/lit16 v4, v15, 0x380

    .line 88
    .line 89
    if-nez v4, :cond_6

    .line 90
    .line 91
    move/from16 v4, p2

    .line 92
    .line 93
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_8

    .line 98
    .line 99
    const/16 v5, 0x100

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_8
    const/16 v5, 0x80

    .line 103
    .line 104
    :goto_4
    or-int/2addr v0, v5

    .line 105
    :goto_5
    and-int/lit8 v5, v12, 0x8

    .line 106
    .line 107
    if-eqz v5, :cond_a

    .line 108
    .line 109
    or-int/lit16 v0, v0, 0xc00

    .line 110
    .line 111
    :cond_9
    move-object/from16 v6, p3

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :cond_a
    and-int/lit16 v6, v15, 0x1c00

    .line 115
    .line 116
    if-nez v6, :cond_9

    .line 117
    .line 118
    move-object/from16 v6, p3

    .line 119
    .line 120
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-eqz v7, :cond_b

    .line 125
    .line 126
    const/16 v7, 0x800

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_b
    const/16 v7, 0x400

    .line 130
    .line 131
    :goto_6
    or-int/2addr v0, v7

    .line 132
    :goto_7
    const v7, 0xe000

    .line 133
    .line 134
    .line 135
    and-int/2addr v7, v15

    .line 136
    if-nez v7, :cond_e

    .line 137
    .line 138
    and-int/lit8 v7, v12, 0x10

    .line 139
    .line 140
    if-nez v7, :cond_c

    .line 141
    .line 142
    move-wide/from16 v7, p4

    .line 143
    .line 144
    invoke-interface {v11, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_d

    .line 149
    .line 150
    const/16 v9, 0x4000

    .line 151
    .line 152
    goto :goto_8

    .line 153
    :cond_c
    move-wide/from16 v7, p4

    .line 154
    .line 155
    :cond_d
    const/16 v9, 0x2000

    .line 156
    .line 157
    :goto_8
    or-int/2addr v0, v9

    .line 158
    goto :goto_9

    .line 159
    :cond_e
    move-wide/from16 v7, p4

    .line 160
    .line 161
    :goto_9
    const/high16 v9, 0x70000

    .line 162
    .line 163
    and-int/2addr v9, v15

    .line 164
    if-nez v9, :cond_11

    .line 165
    .line 166
    and-int/lit8 v9, v12, 0x20

    .line 167
    .line 168
    if-nez v9, :cond_f

    .line 169
    .line 170
    move-wide/from16 v9, p6

    .line 171
    .line 172
    invoke-interface {v11, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 173
    .line 174
    .line 175
    move-result v16

    .line 176
    if-eqz v16, :cond_10

    .line 177
    .line 178
    const/high16 v16, 0x20000

    .line 179
    .line 180
    goto :goto_a

    .line 181
    :cond_f
    move-wide/from16 v9, p6

    .line 182
    .line 183
    :cond_10
    const/high16 v16, 0x10000

    .line 184
    .line 185
    :goto_a
    or-int v0, v0, v16

    .line 186
    .line 187
    goto :goto_b

    .line 188
    :cond_11
    move-wide/from16 v9, p6

    .line 189
    .line 190
    :goto_b
    and-int/lit8 v16, v12, 0x40

    .line 191
    .line 192
    if-eqz v16, :cond_12

    .line 193
    .line 194
    const/high16 v17, 0x180000

    .line 195
    .line 196
    or-int v0, v0, v17

    .line 197
    .line 198
    move-object/from16 v2, p8

    .line 199
    .line 200
    goto :goto_d

    .line 201
    :cond_12
    const/high16 v17, 0x380000

    .line 202
    .line 203
    and-int v17, v15, v17

    .line 204
    .line 205
    move-object/from16 v2, p8

    .line 206
    .line 207
    if-nez v17, :cond_14

    .line 208
    .line 209
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v17

    .line 213
    if-eqz v17, :cond_13

    .line 214
    .line 215
    const/high16 v17, 0x100000

    .line 216
    .line 217
    goto :goto_c

    .line 218
    :cond_13
    const/high16 v17, 0x80000

    .line 219
    .line 220
    :goto_c
    or-int v0, v0, v17

    .line 221
    .line 222
    :cond_14
    :goto_d
    and-int/lit16 v2, v12, 0x80

    .line 223
    .line 224
    if-eqz v2, :cond_15

    .line 225
    .line 226
    const/high16 v17, 0xc00000

    .line 227
    .line 228
    or-int v0, v0, v17

    .line 229
    .line 230
    move/from16 v4, p9

    .line 231
    .line 232
    goto :goto_f

    .line 233
    :cond_15
    const/high16 v17, 0x1c00000

    .line 234
    .line 235
    and-int v17, v15, v17

    .line 236
    .line 237
    move/from16 v4, p9

    .line 238
    .line 239
    if-nez v17, :cond_17

    .line 240
    .line 241
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 242
    .line 243
    .line 244
    move-result v17

    .line 245
    if-eqz v17, :cond_16

    .line 246
    .line 247
    const/high16 v17, 0x800000

    .line 248
    .line 249
    goto :goto_e

    .line 250
    :cond_16
    const/high16 v17, 0x400000

    .line 251
    .line 252
    :goto_e
    or-int v0, v0, v17

    .line 253
    .line 254
    :cond_17
    :goto_f
    and-int/lit16 v4, v12, 0x100

    .line 255
    .line 256
    if-eqz v4, :cond_18

    .line 257
    .line 258
    const/high16 v17, 0x6000000

    .line 259
    .line 260
    or-int v0, v0, v17

    .line 261
    .line 262
    move-object/from16 v6, p10

    .line 263
    .line 264
    goto :goto_11

    .line 265
    :cond_18
    const/high16 v17, 0xe000000

    .line 266
    .line 267
    and-int v17, v15, v17

    .line 268
    .line 269
    move-object/from16 v6, p10

    .line 270
    .line 271
    if-nez v17, :cond_1a

    .line 272
    .line 273
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v17

    .line 277
    if-eqz v17, :cond_19

    .line 278
    .line 279
    const/high16 v17, 0x4000000

    .line 280
    .line 281
    goto :goto_10

    .line 282
    :cond_19
    const/high16 v17, 0x2000000

    .line 283
    .line 284
    :goto_10
    or-int v0, v0, v17

    .line 285
    .line 286
    :cond_1a
    :goto_11
    and-int/lit16 v6, v12, 0x200

    .line 287
    .line 288
    if-eqz v6, :cond_1b

    .line 289
    .line 290
    const/high16 v6, 0x30000000

    .line 291
    .line 292
    :goto_12
    or-int/2addr v0, v6

    .line 293
    goto :goto_13

    .line 294
    :cond_1b
    const/high16 v6, 0x70000000

    .line 295
    .line 296
    and-int/2addr v6, v15

    .line 297
    if-nez v6, :cond_1d

    .line 298
    .line 299
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    if-eqz v6, :cond_1c

    .line 304
    .line 305
    const/high16 v6, 0x20000000

    .line 306
    .line 307
    goto :goto_12

    .line 308
    :cond_1c
    const/high16 v6, 0x10000000

    .line 309
    .line 310
    goto :goto_12

    .line 311
    :cond_1d
    :goto_13
    const v6, 0x5b6db6db

    .line 312
    .line 313
    .line 314
    and-int/2addr v6, v0

    .line 315
    const v7, 0x12492492

    .line 316
    .line 317
    .line 318
    if-ne v6, v7, :cond_1f

    .line 319
    .line 320
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    if-nez v6, :cond_1e

    .line 325
    .line 326
    goto :goto_14

    .line 327
    :cond_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 328
    .line 329
    .line 330
    move-object/from16 v2, p1

    .line 331
    .line 332
    move/from16 v3, p2

    .line 333
    .line 334
    move-object/from16 v4, p3

    .line 335
    .line 336
    move-wide/from16 v5, p4

    .line 337
    .line 338
    move-wide v7, v9

    .line 339
    move-object v15, v11

    .line 340
    move-object/from16 v9, p8

    .line 341
    .line 342
    move/from16 v10, p9

    .line 343
    .line 344
    move-object/from16 v11, p10

    .line 345
    .line 346
    goto/16 :goto_1f

    .line 347
    .line 348
    :cond_1f
    :goto_14
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 349
    .line 350
    .line 351
    and-int/lit8 v6, v15, 0x1

    .line 352
    .line 353
    const v8, -0xe001

    .line 354
    .line 355
    .line 356
    if-eqz v6, :cond_23

    .line 357
    .line 358
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    if-eqz v6, :cond_20

    .line 363
    .line 364
    goto :goto_15

    .line 365
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 366
    .line 367
    .line 368
    and-int/lit8 v1, v12, 0x10

    .line 369
    .line 370
    if-eqz v1, :cond_21

    .line 371
    .line 372
    and-int/2addr v0, v8

    .line 373
    :cond_21
    and-int/lit8 v1, v12, 0x20

    .line 374
    .line 375
    if-eqz v1, :cond_22

    .line 376
    .line 377
    const v1, -0x70001

    .line 378
    .line 379
    .line 380
    and-int/2addr v0, v1

    .line 381
    :cond_22
    move-object/from16 v16, p1

    .line 382
    .line 383
    move/from16 v18, p2

    .line 384
    .line 385
    move-object/from16 v19, p3

    .line 386
    .line 387
    move-wide/from16 v20, p4

    .line 388
    .line 389
    move-object/from16 v24, p8

    .line 390
    .line 391
    move/from16 v25, p9

    .line 392
    .line 393
    move-object/from16 v26, p10

    .line 394
    .line 395
    move v6, v0

    .line 396
    move-wide/from16 v22, v9

    .line 397
    .line 398
    goto/16 :goto_1e

    .line 399
    .line 400
    :cond_23
    :goto_15
    if-eqz v1, :cond_24

    .line 401
    .line 402
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 403
    .line 404
    goto :goto_16

    .line 405
    :cond_24
    move-object/from16 v1, p1

    .line 406
    .line 407
    :goto_16
    if-eqz v3, :cond_25

    .line 408
    .line 409
    const/4 v3, 0x1

    .line 410
    goto :goto_17

    .line 411
    :cond_25
    move/from16 v3, p2

    .line 412
    .line 413
    :goto_17
    if-eqz v5, :cond_26

    .line 414
    .line 415
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    goto :goto_18

    .line 420
    :cond_26
    move-object/from16 v5, p3

    .line 421
    .line 422
    :goto_18
    and-int/lit8 v6, v12, 0x10

    .line 423
    .line 424
    if-eqz v6, :cond_27

    .line 425
    .line 426
    sget-object v6, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 427
    .line 428
    const/4 v7, 0x6

    .line 429
    invoke-virtual {v6, v11, v7}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    invoke-virtual {v6}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 434
    .line 435
    .line 436
    move-result-wide v6

    .line 437
    and-int/2addr v0, v8

    .line 438
    goto :goto_19

    .line 439
    :cond_27
    move-wide/from16 v6, p4

    .line 440
    .line 441
    :goto_19
    and-int/lit8 v8, v12, 0x20

    .line 442
    .line 443
    if-eqz v8, :cond_28

    .line 444
    .line 445
    shr-int/lit8 v8, v0, 0xc

    .line 446
    .line 447
    and-int/lit8 v8, v8, 0xe

    .line 448
    .line 449
    invoke-static {v6, v7, v11, v8}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 450
    .line 451
    .line 452
    move-result-wide v8

    .line 453
    const v10, -0x70001

    .line 454
    .line 455
    .line 456
    and-int/2addr v0, v10

    .line 457
    goto :goto_1a

    .line 458
    :cond_28
    move-wide v8, v9

    .line 459
    :goto_1a
    if-eqz v16, :cond_29

    .line 460
    .line 461
    const/4 v10, 0x0

    .line 462
    goto :goto_1b

    .line 463
    :cond_29
    move-object/from16 v10, p8

    .line 464
    .line 465
    :goto_1b
    if-eqz v2, :cond_2a

    .line 466
    .line 467
    const/4 v2, 0x0

    .line 468
    int-to-float v2, v2

    .line 469
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    goto :goto_1c

    .line 474
    :cond_2a
    move/from16 v2, p9

    .line 475
    .line 476
    :goto_1c
    if-eqz v4, :cond_2c

    .line 477
    .line 478
    const v4, -0x1d58f75c

    .line 479
    .line 480
    .line 481
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 482
    .line 483
    .line 484
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 489
    .line 490
    move/from16 p1, v0

    .line 491
    .line 492
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    if-ne v4, v0, :cond_2b

    .line 497
    .line 498
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    :cond_2b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 506
    .line 507
    .line 508
    move-object v0, v4

    .line 509
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 510
    .line 511
    move-object/from16 v26, v0

    .line 512
    .line 513
    :goto_1d
    move-object/from16 v16, v1

    .line 514
    .line 515
    move/from16 v25, v2

    .line 516
    .line 517
    move/from16 v18, v3

    .line 518
    .line 519
    move-object/from16 v19, v5

    .line 520
    .line 521
    move-wide/from16 v20, v6

    .line 522
    .line 523
    move-wide/from16 v22, v8

    .line 524
    .line 525
    move-object/from16 v24, v10

    .line 526
    .line 527
    move/from16 v6, p1

    .line 528
    .line 529
    goto :goto_1e

    .line 530
    :cond_2c
    move/from16 p1, v0

    .line 531
    .line 532
    move-object/from16 v26, p10

    .line 533
    .line 534
    goto :goto_1d

    .line 535
    :goto_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 536
    .line 537
    .line 538
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 547
    .line 548
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    add-float v0, v0, v25

    .line 553
    .line 554
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 555
    .line 556
    .line 557
    move-result v5

    .line 558
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    filled-new-array {v0, v1}, [Landroidx/compose/runtime/ProvidedValue;

    .line 583
    .line 584
    .line 585
    move-result-object v10

    .line 586
    new-instance v9, Landroidx/compose/material/SurfaceKt$Surface$4;

    .line 587
    .line 588
    move-object v0, v9

    .line 589
    move-object/from16 v1, v16

    .line 590
    .line 591
    move-object/from16 v2, v19

    .line 592
    .line 593
    move-wide/from16 v3, v20

    .line 594
    .line 595
    const/4 v8, 0x1

    .line 596
    move-object/from16 v7, v24

    .line 597
    .line 598
    move v13, v8

    .line 599
    move/from16 v8, v25

    .line 600
    .line 601
    move-object v14, v9

    .line 602
    move-object/from16 v9, v26

    .line 603
    .line 604
    move-object/from16 v27, v10

    .line 605
    .line 606
    move/from16 v10, v18

    .line 607
    .line 608
    move-object v15, v11

    .line 609
    move-object/from16 v11, p0

    .line 610
    .line 611
    move-object/from16 v12, p11

    .line 612
    .line 613
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/SurfaceKt$Surface$4;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    .line 614
    .line 615
    .line 616
    const v0, 0x7916180d

    .line 617
    .line 618
    .line 619
    invoke-static {v15, v0, v13, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    const/16 v1, 0x38

    .line 624
    .line 625
    move-object/from16 v2, v27

    .line 626
    .line 627
    invoke-static {v2, v0, v15, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 628
    .line 629
    .line 630
    move-object/from16 v2, v16

    .line 631
    .line 632
    move/from16 v3, v18

    .line 633
    .line 634
    move-object/from16 v4, v19

    .line 635
    .line 636
    move-wide/from16 v5, v20

    .line 637
    .line 638
    move-wide/from16 v7, v22

    .line 639
    .line 640
    move-object/from16 v9, v24

    .line 641
    .line 642
    move/from16 v10, v25

    .line 643
    .line 644
    move-object/from16 v11, v26

    .line 645
    .line 646
    :goto_1f
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 647
    .line 648
    .line 649
    move-result-object v15

    .line 650
    if-nez v15, :cond_2d

    .line 651
    .line 652
    goto :goto_20

    .line 653
    :cond_2d
    new-instance v14, Landroidx/compose/material/SurfaceKt$Surface$5;

    .line 654
    .line 655
    move-object v0, v14

    .line 656
    move-object/from16 v1, p0

    .line 657
    .line 658
    move-object/from16 v12, p11

    .line 659
    .line 660
    move/from16 v13, p13

    .line 661
    .line 662
    move-object/from16 v28, v14

    .line 663
    .line 664
    move/from16 v14, p14

    .line 665
    .line 666
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt$Surface$5;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;II)V

    .line 667
    .line 668
    .line 669
    move-object/from16 v0, v28

    .line 670
    .line 671
    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 672
    .line 673
    .line 674
    :goto_20
    return-void
.end method

.method public static final Surface-Ny5ogXk(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 32
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p1

    move-object/from16 v14, p12

    move/from16 v13, p14

    move/from16 v12, p16

    const-string v0, "onClick"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0xf9e37f1

    move-object/from16 v1, p13

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v13, 0x6

    move/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v13, 0xe

    move/from16 v10, p0

    if-nez v0, :cond_2

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    goto :goto_1

    :cond_2
    move v0, v13

    :goto_1
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_5

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v12, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v4, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v4, v13, 0x380

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x100

    goto :goto_4

    :cond_8
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v0, v5

    :goto_5
    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move/from16 v6, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v6, v13, 0x1c00

    if-nez v6, :cond_9

    move/from16 v6, p3

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x800

    goto :goto_6

    :cond_b
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v0, v7

    :goto_7
    and-int/lit8 v7, v12, 0x10

    if-eqz v7, :cond_d

    or-int/lit16 v0, v0, 0x6000

    :cond_c
    move-object/from16 v8, p4

    goto :goto_9

    :cond_d
    const v8, 0xe000

    and-int/2addr v8, v13

    if-nez v8, :cond_c

    move-object/from16 v8, p4

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v9, 0x4000

    goto :goto_8

    :cond_e
    const/16 v9, 0x2000

    :goto_8
    or-int/2addr v0, v9

    :goto_9
    const/high16 v9, 0x70000

    and-int/2addr v9, v13

    if-nez v9, :cond_10

    and-int/lit8 v9, v12, 0x20

    move-wide/from16 v1, p5

    if-nez v9, :cond_f

    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x10000

    :goto_a
    or-int v0, v0, v16

    goto :goto_b

    :cond_10
    move-wide/from16 v1, p5

    :goto_b
    const/high16 v16, 0x380000

    and-int v16, v13, v16

    if-nez v16, :cond_12

    and-int/lit8 v16, v12, 0x40

    move-wide/from16 v9, p7

    if-nez v16, :cond_11

    invoke-interface {v11, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v17, 0x80000

    :goto_c
    or-int v0, v0, v17

    goto :goto_d

    :cond_12
    move-wide/from16 v9, p7

    :goto_d
    and-int/lit16 v1, v12, 0x80

    if-eqz v1, :cond_14

    const/high16 v2, 0xc00000

    or-int/2addr v0, v2

    :cond_13
    move-object/from16 v2, p9

    goto :goto_f

    :cond_14
    const/high16 v2, 0x1c00000

    and-int/2addr v2, v13

    if-nez v2, :cond_13

    move-object/from16 v2, p9

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v17, 0x400000

    :goto_e
    or-int v0, v0, v17

    :goto_f
    and-int/lit16 v2, v12, 0x100

    if-eqz v2, :cond_16

    const/high16 v17, 0x6000000

    or-int v0, v0, v17

    move/from16 v4, p10

    goto :goto_11

    :cond_16
    const/high16 v17, 0xe000000

    and-int v17, v13, v17

    move/from16 v4, p10

    if-nez v17, :cond_18

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_17

    const/high16 v17, 0x4000000

    goto :goto_10

    :cond_17
    const/high16 v17, 0x2000000

    :goto_10
    or-int v0, v0, v17

    :cond_18
    :goto_11
    and-int/lit16 v4, v12, 0x200

    if-eqz v4, :cond_19

    const/high16 v17, 0x30000000

    or-int v0, v0, v17

    move-object/from16 v6, p11

    goto :goto_13

    :cond_19
    const/high16 v17, 0x70000000

    and-int v17, v13, v17

    move-object/from16 v6, p11

    if-nez v17, :cond_1b

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/high16 v17, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v17, 0x10000000

    :goto_12
    or-int v0, v0, v17

    :cond_1b
    :goto_13
    and-int/lit16 v6, v12, 0x400

    if-eqz v6, :cond_1c

    or-int/lit8 v6, p15, 0x6

    :goto_14
    move/from16 v17, v6

    goto :goto_16

    :cond_1c
    and-int/lit8 v6, p15, 0xe

    if-nez v6, :cond_1e

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x4

    goto :goto_15

    :cond_1d
    const/4 v6, 0x2

    :goto_15
    or-int v6, p15, v6

    goto :goto_14

    :cond_1e
    move/from16 v17, p15

    :goto_16
    const v6, 0x5b6db6db

    and-int/2addr v6, v0

    const v8, 0x12492492

    if-ne v6, v8, :cond_20

    and-int/lit8 v6, v17, 0xb

    const/4 v8, 0x2

    if-ne v6, v8, :cond_20

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_1f

    goto :goto_17

    .line 2
    :cond_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v12, p11

    move-wide v8, v9

    move-object v1, v11

    move-object/from16 v10, p9

    move/from16 v11, p10

    goto/16 :goto_21

    .line 3
    :cond_20
    :goto_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v6, v13, 0x1

    const v16, -0x70001

    if-eqz v6, :cond_24

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_18

    .line 4
    :cond_21
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v12, 0x20

    if-eqz v1, :cond_22

    and-int v0, v0, v16

    :cond_22
    and-int/lit8 v1, v12, 0x40

    if-eqz v1, :cond_23

    const v1, -0x380001

    and-int/2addr v0, v1

    :cond_23
    move-object/from16 v16, p2

    move/from16 v18, p3

    move-object/from16 v19, p4

    move-wide/from16 v20, p5

    move-object/from16 v24, p9

    move/from16 v25, p10

    move-object/from16 v26, p11

    move v6, v0

    move-wide/from16 v22, v9

    goto/16 :goto_20

    :cond_24
    :goto_18
    if-eqz v3, :cond_25

    .line 5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_19

    :cond_25
    move-object/from16 v3, p2

    :goto_19
    if-eqz v5, :cond_26

    const/4 v5, 0x1

    goto :goto_1a

    :cond_26
    move/from16 v5, p3

    :goto_1a
    if-eqz v7, :cond_27

    .line 6
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    goto :goto_1b

    :cond_27
    move-object/from16 v6, p4

    :goto_1b
    and-int/lit8 v7, v12, 0x20

    if-eqz v7, :cond_28

    .line 7
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v8, 0x6

    invoke-virtual {v7, v11, v8}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v7

    and-int v0, v0, v16

    goto :goto_1c

    :cond_28
    move-wide/from16 v7, p5

    :goto_1c
    and-int/lit8 v16, v12, 0x40

    if-eqz v16, :cond_29

    shr-int/lit8 v9, v0, 0xf

    and-int/lit8 v9, v9, 0xe

    .line 8
    invoke-static {v7, v8, v11, v9}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    const v16, -0x380001

    and-int v0, v0, v16

    :cond_29
    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    goto :goto_1d

    :cond_2a
    move-object/from16 v1, p9

    :goto_1d
    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    int-to-float v2, v2

    .line 9
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    goto :goto_1e

    :cond_2b
    move/from16 v2, p10

    :goto_1e
    if-eqz v4, :cond_2d

    const v4, -0x1d58f75c

    .line 10
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 12
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_2c

    .line 13
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v4

    .line 14
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 15
    :cond_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v0, v4

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v26, v0

    :goto_1f
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v16, v3

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move/from16 v6, p2

    goto :goto_20

    :cond_2d
    move/from16 p2, v0

    move-object/from16 v26, p11

    goto :goto_1f

    :goto_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 16
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 17
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    add-float v0, v0, v25

    .line 18
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 19
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    .line 20
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    filled-new-array {v0, v1}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v10

    .line 21
    new-instance v9, Landroidx/compose/material/SurfaceKt$Surface$7;

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-wide/from16 v3, v20

    move-object/from16 v7, v24

    const/4 v15, 0x1

    move/from16 v8, v25

    move-object/from16 v27, v9

    move/from16 v9, p0

    move-object/from16 v28, v10

    move-object/from16 v10, v26

    move-object/from16 v29, v11

    move/from16 v11, v18

    move-object/from16 v12, p1

    move-object/from16 v13, p12

    move/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt$Surface$7;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;I)V

    const v0, -0x52ec04cf

    move-object/from16 v2, v27

    move-object/from16 v1, v29

    invoke-static {v1, v0, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v2, 0x38

    move-object/from16 v3, v28

    .line 22
    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v3, v16

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    move-object/from16 v10, v24

    move/from16 v11, v25

    move-object/from16 v12, v26

    .line 23
    :goto_21
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_2e

    goto :goto_22

    :cond_2e
    new-instance v14, Landroidx/compose/material/SurfaceKt$Surface$8;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p12

    move-object/from16 v30, v14

    move/from16 v14, p14

    move-object/from16 v31, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material/SurfaceKt$Surface$8;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v30

    move-object/from16 v0, v31

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_22
    return-void
.end method

.method public static final Surface-Ny5ogXk(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 32
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p1

    move-object/from16 v14, p12

    move/from16 v13, p14

    move/from16 v12, p16

    const-string v0, "onCheckedChange"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x4ff6b910

    move-object/from16 v1, p13

    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v13, 0x6

    move/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v13, 0xe

    move/from16 v10, p0

    if-nez v0, :cond_2

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    goto :goto_1

    :cond_2
    move v0, v13

    :goto_1
    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_5

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v12, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v4, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v4, v13, 0x380

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x100

    goto :goto_4

    :cond_8
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v0, v5

    :goto_5
    and-int/lit8 v5, v12, 0x8

    if-eqz v5, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move/from16 v6, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v6, v13, 0x1c00

    if-nez v6, :cond_9

    move/from16 v6, p3

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x800

    goto :goto_6

    :cond_b
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v0, v7

    :goto_7
    and-int/lit8 v7, v12, 0x10

    if-eqz v7, :cond_d

    or-int/lit16 v0, v0, 0x6000

    :cond_c
    move-object/from16 v8, p4

    goto :goto_9

    :cond_d
    const v8, 0xe000

    and-int/2addr v8, v13

    if-nez v8, :cond_c

    move-object/from16 v8, p4

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v9, 0x4000

    goto :goto_8

    :cond_e
    const/16 v9, 0x2000

    :goto_8
    or-int/2addr v0, v9

    :goto_9
    const/high16 v9, 0x70000

    and-int/2addr v9, v13

    if-nez v9, :cond_10

    and-int/lit8 v9, v12, 0x20

    move-wide/from16 v1, p5

    if-nez v9, :cond_f

    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x10000

    :goto_a
    or-int v0, v0, v16

    goto :goto_b

    :cond_10
    move-wide/from16 v1, p5

    :goto_b
    const/high16 v16, 0x380000

    and-int v16, v13, v16

    if-nez v16, :cond_12

    and-int/lit8 v16, v12, 0x40

    move-wide/from16 v9, p7

    if-nez v16, :cond_11

    invoke-interface {v11, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v17, 0x80000

    :goto_c
    or-int v0, v0, v17

    goto :goto_d

    :cond_12
    move-wide/from16 v9, p7

    :goto_d
    and-int/lit16 v1, v12, 0x80

    if-eqz v1, :cond_14

    const/high16 v2, 0xc00000

    or-int/2addr v0, v2

    :cond_13
    move-object/from16 v2, p9

    goto :goto_f

    :cond_14
    const/high16 v2, 0x1c00000

    and-int/2addr v2, v13

    if-nez v2, :cond_13

    move-object/from16 v2, p9

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v17, 0x400000

    :goto_e
    or-int v0, v0, v17

    :goto_f
    and-int/lit16 v2, v12, 0x100

    if-eqz v2, :cond_16

    const/high16 v17, 0x6000000

    or-int v0, v0, v17

    move/from16 v4, p10

    goto :goto_11

    :cond_16
    const/high16 v17, 0xe000000

    and-int v17, v13, v17

    move/from16 v4, p10

    if-nez v17, :cond_18

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_17

    const/high16 v17, 0x4000000

    goto :goto_10

    :cond_17
    const/high16 v17, 0x2000000

    :goto_10
    or-int v0, v0, v17

    :cond_18
    :goto_11
    and-int/lit16 v4, v12, 0x200

    if-eqz v4, :cond_19

    const/high16 v17, 0x30000000

    or-int v0, v0, v17

    move-object/from16 v6, p11

    goto :goto_13

    :cond_19
    const/high16 v17, 0x70000000

    and-int v17, v13, v17

    move-object/from16 v6, p11

    if-nez v17, :cond_1b

    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/high16 v17, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v17, 0x10000000

    :goto_12
    or-int v0, v0, v17

    :cond_1b
    :goto_13
    and-int/lit16 v6, v12, 0x400

    if-eqz v6, :cond_1c

    or-int/lit8 v6, p15, 0x6

    :goto_14
    move/from16 v17, v6

    goto :goto_16

    :cond_1c
    and-int/lit8 v6, p15, 0xe

    if-nez v6, :cond_1e

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x4

    goto :goto_15

    :cond_1d
    const/4 v6, 0x2

    :goto_15
    or-int v6, p15, v6

    goto :goto_14

    :cond_1e
    move/from16 v17, p15

    :goto_16
    const v6, 0x5b6db6db

    and-int/2addr v6, v0

    const v8, 0x12492492

    if-ne v6, v8, :cond_20

    and-int/lit8 v6, v17, 0xb

    const/4 v8, 0x2

    if-ne v6, v8, :cond_20

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_1f

    goto :goto_17

    .line 25
    :cond_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v12, p11

    move-wide v8, v9

    move-object v1, v11

    move-object/from16 v10, p9

    move/from16 v11, p10

    goto/16 :goto_21

    .line 26
    :cond_20
    :goto_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v6, v13, 0x1

    const v16, -0x70001

    if-eqz v6, :cond_24

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_21

    goto :goto_18

    .line 27
    :cond_21
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v12, 0x20

    if-eqz v1, :cond_22

    and-int v0, v0, v16

    :cond_22
    and-int/lit8 v1, v12, 0x40

    if-eqz v1, :cond_23

    const v1, -0x380001

    and-int/2addr v0, v1

    :cond_23
    move-object/from16 v16, p2

    move/from16 v18, p3

    move-object/from16 v19, p4

    move-wide/from16 v20, p5

    move-object/from16 v24, p9

    move/from16 v25, p10

    move-object/from16 v26, p11

    move v6, v0

    move-wide/from16 v22, v9

    goto/16 :goto_20

    :cond_24
    :goto_18
    if-eqz v3, :cond_25

    .line 28
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_19

    :cond_25
    move-object/from16 v3, p2

    :goto_19
    if-eqz v5, :cond_26

    const/4 v5, 0x1

    goto :goto_1a

    :cond_26
    move/from16 v5, p3

    :goto_1a
    if-eqz v7, :cond_27

    .line 29
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v6

    goto :goto_1b

    :cond_27
    move-object/from16 v6, p4

    :goto_1b
    and-int/lit8 v7, v12, 0x20

    if-eqz v7, :cond_28

    .line 30
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v8, 0x6

    invoke-virtual {v7, v11, v8}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    move-result-wide v7

    and-int v0, v0, v16

    goto :goto_1c

    :cond_28
    move-wide/from16 v7, p5

    :goto_1c
    and-int/lit8 v16, v12, 0x40

    if-eqz v16, :cond_29

    shr-int/lit8 v9, v0, 0xf

    and-int/lit8 v9, v9, 0xe

    .line 31
    invoke-static {v7, v8, v11, v9}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    const v16, -0x380001

    and-int v0, v0, v16

    :cond_29
    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    goto :goto_1d

    :cond_2a
    move-object/from16 v1, p9

    :goto_1d
    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    int-to-float v2, v2

    .line 32
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    goto :goto_1e

    :cond_2b
    move/from16 v2, p10

    :goto_1e
    if-eqz v4, :cond_2d

    const v4, -0x1d58f75c

    .line 33
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 34
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 35
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p2, v0

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_2c

    .line 36
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v4

    .line 37
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 38
    :cond_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v0, v4

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v26, v0

    :goto_1f
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v16, v3

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move/from16 v6, p2

    goto :goto_20

    :cond_2d
    move/from16 p2, v0

    move-object/from16 v26, p11

    goto :goto_1f

    :goto_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 39
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 40
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    add-float v0, v0, v25

    .line 41
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 42
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    .line 43
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->getLocalAbsoluteElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    filled-new-array {v0, v1}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v10

    .line 44
    new-instance v9, Landroidx/compose/material/SurfaceKt$Surface$10;

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-wide/from16 v3, v20

    move-object/from16 v7, v24

    const/4 v15, 0x1

    move/from16 v8, v25

    move-object/from16 v27, v9

    move/from16 v9, p0

    move-object/from16 v28, v10

    move-object/from16 v10, v26

    move-object/from16 v29, v11

    move/from16 v11, v18

    move-object/from16 v12, p1

    move-object/from16 v13, p12

    move/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt$Surface$10;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V

    const v0, -0x129383b0

    move-object/from16 v2, v27

    move-object/from16 v1, v29

    invoke-static {v1, v0, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v2, 0x38

    move-object/from16 v3, v28

    .line 45
    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v3, v16

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    move-object/from16 v10, v24

    move/from16 v11, v25

    move-object/from16 v12, v26

    .line 46
    :goto_21
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_2e

    goto :goto_22

    :cond_2e
    new-instance v14, Landroidx/compose/material/SurfaceKt$Surface$11;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p12

    move-object/from16 v30, v14

    move/from16 v14, p14

    move-object/from16 v31, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material/SurfaceKt$Surface$11;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v30

    move-object/from16 v0, v31

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_22
    return-void
.end method

.method public static final synthetic access$surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SurfaceKt;->surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$surfaceColorAtElevation-cq6XJ1M(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SurfaceKt;->surfaceColorAtElevation-cq6XJ1M(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static final surface-8ww4TTg(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;
    .locals 10

    .line 1
    const/16 v8, 0x18

    .line 2
    .line 3
    const/4 v9, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move v1, p5

    .line 11
    move-object v2, p1

    .line 12
    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    sget-object p5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 19
    .line 20
    invoke-static {p5, p4, p1}, Landroidx/compose/foundation/BorderKt;->border(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object p4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 26
    .line 27
    :goto_0
    invoke-interface {p0, p4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0, p2, p3, p1}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0, p1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private static final surfaceColorAtElevation-cq6XJ1M(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J
    .locals 7
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .line 1
    const v0, 0x5d144bf8

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 8
    .line 9
    const/4 v1, 0x6

    .line 10
    invoke-virtual {v0, p4, v1}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    and-int/lit8 v0, p5, 0xe

    .line 27
    .line 28
    shr-int/lit8 v1, p5, 0x3

    .line 29
    .line 30
    and-int/lit8 v1, v1, 0x70

    .line 31
    .line 32
    or-int/2addr v0, v1

    .line 33
    shl-int/lit8 p5, p5, 0x3

    .line 34
    .line 35
    and-int/lit16 p5, p5, 0x380

    .line 36
    .line 37
    or-int v6, v0, p5

    .line 38
    .line 39
    move-object v1, p2

    .line 40
    move-wide v2, p0

    .line 41
    move v4, p3

    .line 42
    move-object v5, p4

    .line 43
    invoke-interface/range {v1 .. v6}, Landroidx/compose/material/ElevationOverlay;->apply-7g2Lkgo(JFLandroidx/compose/runtime/Composer;I)J

    .line 44
    .line 45
    .line 46
    move-result-wide p0

    .line 47
    :cond_0
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 48
    .line 49
    .line 50
    return-wide p0
.end method
