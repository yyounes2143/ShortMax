.class public final Landroidx/compose/foundation/text/CoreTextFieldKt;
.super Ljava/lang/Object;
.source "CoreTextField.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLat/n;Landroidx/compose/runtime/Composer;III)V
    .locals 43
    .param p0    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/input/VisualTransformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/ui/text/input/ImeOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/foundation/text/KeyboardActions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Brush;",
            "ZI",
            "Landroidx/compose/ui/text/input/ImeOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "ZZ",
            "Lat/n<",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p16

    move/from16 v12, p17

    move/from16 v11, p18

    const-string v0, "value"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValueChange"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x683fead

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

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v8, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v13, 0x380

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v0, v9

    :goto_5
    and-int/lit8 v9, v11, 0x8

    const/16 v16, 0x800

    const/16 v17, 0x400

    if-eqz v9, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move-object/from16 v1, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v1, v13, 0x1c00

    if-nez v1, :cond_9

    move-object/from16 v1, p3

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    move/from16 v18, v16

    goto :goto_6

    :cond_b
    move/from16 v18, v17

    :goto_6
    or-int v0, v0, v18

    :goto_7
    and-int/lit8 v18, v11, 0x10

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-eqz v18, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move-object/from16 v4, p4

    goto :goto_9

    :cond_c
    const v21, 0xe000

    and-int v21, v13, v21

    move-object/from16 v4, p4

    if-nez v21, :cond_e

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    move/from16 v22, v20

    goto :goto_8

    :cond_d
    move/from16 v22, v19

    :goto_8
    or-int v0, v0, v22

    :cond_e
    :goto_9
    and-int/lit8 v22, v11, 0x20

    if-eqz v22, :cond_f

    const/high16 v23, 0x30000

    or-int v0, v0, v23

    move-object/from16 v5, p5

    goto :goto_b

    :cond_f
    const/high16 v23, 0x70000

    and-int v23, v13, v23

    move-object/from16 v5, p5

    if-nez v23, :cond_11

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v24, 0x10000

    :goto_a
    or-int v0, v0, v24

    :cond_11
    :goto_b
    and-int/lit8 v24, v11, 0x40

    if-eqz v24, :cond_12

    const/high16 v25, 0x180000

    or-int v0, v0, v25

    move-object/from16 v6, p6

    goto :goto_d

    :cond_12
    const/high16 v25, 0x380000

    and-int v25, v13, v25

    move-object/from16 v6, p6

    if-nez v25, :cond_14

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    const/high16 v26, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v26, 0x80000

    :goto_c
    or-int v0, v0, v26

    :cond_14
    :goto_d
    const/high16 v26, 0x1c00000

    and-int v26, v13, v26

    if-nez v26, :cond_17

    and-int/lit16 v7, v11, 0x80

    if-nez v7, :cond_15

    move-object/from16 v7, p7

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    const/high16 v27, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v7, p7

    :cond_16
    const/high16 v27, 0x400000

    :goto_e
    or-int v0, v0, v27

    goto :goto_f

    :cond_17
    move-object/from16 v7, p7

    :goto_f
    and-int/lit16 v2, v11, 0x100

    if-eqz v2, :cond_18

    const/high16 v28, 0x6000000

    or-int v0, v0, v28

    move/from16 v1, p8

    goto :goto_11

    :cond_18
    const/high16 v28, 0xe000000

    and-int v28, v13, v28

    move/from16 v1, p8

    if-nez v28, :cond_1a

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_19

    const/high16 v28, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v28, 0x2000000

    :goto_10
    or-int v0, v0, v28

    :cond_1a
    :goto_11
    and-int/lit16 v1, v11, 0x200

    if-eqz v1, :cond_1b

    const/high16 v28, 0x30000000

    or-int v0, v0, v28

    move/from16 v4, p9

    goto :goto_13

    :cond_1b
    const/high16 v28, 0x70000000

    and-int v28, v13, v28

    move/from16 v4, p9

    if-nez v28, :cond_1d

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v28

    if-eqz v28, :cond_1c

    const/high16 v28, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v28, 0x10000000

    :goto_12
    or-int v0, v0, v28

    :cond_1d
    :goto_13
    and-int/lit8 v28, v12, 0xe

    if-nez v28, :cond_20

    and-int/lit16 v4, v11, 0x400

    if-nez v4, :cond_1e

    move-object/from16 v4, p10

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1f

    const/16 v28, 0x4

    goto :goto_14

    :cond_1e
    move-object/from16 v4, p10

    :cond_1f
    const/16 v28, 0x2

    :goto_14
    or-int v28, v12, v28

    goto :goto_15

    :cond_20
    move-object/from16 v4, p10

    move/from16 v28, v12

    :goto_15
    and-int/lit16 v4, v11, 0x800

    if-eqz v4, :cond_22

    or-int/lit8 v28, v28, 0x30

    :cond_21
    :goto_16
    move/from16 v5, v28

    goto :goto_18

    :cond_22
    and-int/lit8 v29, v12, 0x70

    move-object/from16 v5, p11

    if-nez v29, :cond_21

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_23

    const/16 v21, 0x20

    goto :goto_17

    :cond_23
    const/16 v21, 0x10

    :goto_17
    or-int v28, v28, v21

    goto :goto_16

    :goto_18
    and-int/lit16 v6, v11, 0x1000

    if-eqz v6, :cond_25

    or-int/lit16 v5, v5, 0x180

    :cond_24
    move/from16 v7, p12

    goto :goto_1a

    :cond_25
    and-int/lit16 v7, v12, 0x380

    if-nez v7, :cond_24

    move/from16 v7, p12

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_26

    const/16 v25, 0x100

    goto :goto_19

    :cond_26
    const/16 v25, 0x80

    :goto_19
    or-int v5, v5, v25

    :goto_1a
    and-int/lit16 v7, v11, 0x2000

    if-eqz v7, :cond_28

    or-int/lit16 v5, v5, 0xc00

    :cond_27
    move/from16 v8, p13

    goto :goto_1c

    :cond_28
    and-int/lit16 v8, v12, 0x1c00

    if-nez v8, :cond_27

    move/from16 v8, p13

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_29

    goto :goto_1b

    :cond_29
    move/from16 v16, v17

    :goto_1b
    or-int v5, v5, v16

    :goto_1c
    and-int/lit16 v8, v11, 0x4000

    if-eqz v8, :cond_2a

    or-int/lit16 v5, v5, 0x6000

    move-object/from16 v12, p14

    goto :goto_1d

    :cond_2a
    const v16, 0xe000

    and-int v16, v12, v16

    move-object/from16 v12, p14

    if-nez v16, :cond_2c

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b

    move/from16 v19, v20

    :cond_2b
    or-int v5, v5, v19

    :cond_2c
    :goto_1d
    const v16, 0x5b6db6db

    and-int v0, v0, v16

    const v12, 0x12492492

    if-ne v0, v12, :cond_2e

    const v0, 0xb6db

    and-int/2addr v0, v5

    const/16 v12, 0x2492

    if-ne v0, v12, :cond_2e

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_1e

    .line 2
    :cond_2d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object v1, v10

    move/from16 v10, p9

    goto/16 :goto_3a

    .line 3
    :cond_2e
    :goto_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    if-eqz v0, :cond_31

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_1f

    .line 4
    :cond_2f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x400

    if-eqz v0, :cond_30

    and-int/lit8 v0, v5, -0xf

    move-object/from16 v14, p2

    move-object/from16 v18, p3

    move-object/from16 v13, p4

    move-object/from16 v20, p5

    move-object/from16 v12, p6

    move-object/from16 v21, p7

    move/from16 v22, p8

    move/from16 v9, p9

    move-object/from16 v8, p10

    move-object/from16 v23, p11

    move/from16 v7, p12

    move/from16 v24, p13

    move-object/from16 v25, p14

    move v2, v0

    goto/16 :goto_2d

    :cond_30
    move-object/from16 v14, p2

    move-object/from16 v18, p3

    move-object/from16 v13, p4

    move-object/from16 v20, p5

    move-object/from16 v12, p6

    move-object/from16 v21, p7

    move/from16 v22, p8

    move/from16 v9, p9

    move-object/from16 v8, p10

    move-object/from16 v23, p11

    move/from16 v7, p12

    move/from16 v24, p13

    move-object/from16 v25, p14

    move v2, v5

    goto/16 :goto_2d

    :cond_31
    :goto_1f
    if-eqz v3, :cond_32

    .line 5
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_20

    :cond_32
    move-object/from16 v0, p2

    :goto_20
    if-eqz v9, :cond_33

    .line 6
    sget-object v3, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    goto :goto_21

    :cond_33
    move-object/from16 v3, p3

    :goto_21
    if-eqz v18, :cond_34

    .line 7
    sget-object v9, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v9

    goto :goto_22

    :cond_34
    move-object/from16 v9, p4

    :goto_22
    if-eqz v22, :cond_35

    .line 8
    sget-object v17, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$1;->INSTANCE:Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$1;

    goto :goto_23

    :cond_35
    move-object/from16 v17, p5

    :goto_23
    if-eqz v24, :cond_36

    const/16 v18, 0x0

    goto :goto_24

    :cond_36
    move-object/from16 v18, p6

    :goto_24
    and-int/lit16 v12, v11, 0x80

    if-eqz v12, :cond_37

    .line 9
    new-instance v12, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v20, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v13

    move-object/from16 p2, v0

    const/4 v0, 0x0

    invoke-direct {v12, v13, v14, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_25

    :cond_37
    move-object/from16 p2, v0

    move-object/from16 v12, p7

    :goto_25
    if-eqz v2, :cond_38

    const/4 v0, 0x1

    goto :goto_26

    :cond_38
    move/from16 v0, p8

    :goto_26
    if-eqz v1, :cond_39

    const v1, 0x7fffffff

    goto :goto_27

    :cond_39
    move/from16 v1, p9

    :goto_27
    and-int/lit16 v2, v11, 0x400

    if-eqz v2, :cond_3a

    .line 10
    sget-object v2, Landroidx/compose/ui/text/input/ImeOptions;->Companion:Landroidx/compose/ui/text/input/ImeOptions$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/input/ImeOptions$Companion;->getDefault()Landroidx/compose/ui/text/input/ImeOptions;

    move-result-object v2

    and-int/lit8 v5, v5, -0xf

    goto :goto_28

    :cond_3a
    move-object/from16 v2, p10

    :goto_28
    if-eqz v4, :cond_3b

    .line 11
    sget-object v4, Landroidx/compose/foundation/text/KeyboardActions;->Companion:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual {v4}, Landroidx/compose/foundation/text/KeyboardActions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardActions;

    move-result-object v4

    goto :goto_29

    :cond_3b
    move-object/from16 v4, p11

    :goto_29
    if-eqz v6, :cond_3c

    const/4 v6, 0x1

    goto :goto_2a

    :cond_3c
    move/from16 v6, p12

    :goto_2a
    if-eqz v7, :cond_3d

    const/4 v7, 0x0

    goto :goto_2b

    :cond_3d
    move/from16 v7, p13

    :goto_2b
    if-eqz v8, :cond_3e

    .line 12
    sget-object v8, Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;

    invoke-virtual {v8}, Landroidx/compose/foundation/text/ComposableSingletons$CoreTextFieldKt;->getLambda-1$foundation_release()Lat/n;

    move-result-object v8

    move-object/from16 v14, p2

    move/from16 v22, v0

    move-object/from16 v23, v4

    move/from16 v24, v7

    move-object/from16 v25, v8

    move-object v13, v9

    move-object/from16 v21, v12

    move-object/from16 v20, v17

    move-object/from16 v12, v18

    move v9, v1

    move-object v8, v2

    move-object/from16 v18, v3

    move v2, v5

    :goto_2c
    move v7, v6

    goto :goto_2d

    :cond_3e
    move-object/from16 v14, p2

    move-object/from16 v25, p14

    move/from16 v22, v0

    move-object v8, v2

    move-object/from16 v23, v4

    move v2, v5

    move/from16 v24, v7

    move-object v13, v9

    move-object/from16 v21, v12

    move-object/from16 v20, v17

    move-object/from16 v12, v18

    move v9, v1

    move-object/from16 v18, v3

    goto :goto_2c

    :goto_2d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 13
    new-instance v0, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    const v1, -0x3477010

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    if-eqz v7, :cond_40

    if-eqz v24, :cond_3f

    goto :goto_2e

    .line 14
    :cond_3f
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalTextInputService()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    .line 15
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/input/TextInputService;

    goto :goto_2f

    :cond_40
    :goto_2e
    const/4 v1, 0x0

    .line 16
    :goto_2f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 17
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    .line 18
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    .line 19
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 20
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    .line 21
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    .line 22
    check-cast v4, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 23
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    .line 24
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 25
    invoke-virtual {v5}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    move-result-wide v5

    .line 26
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFocusManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    .line 27
    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    .line 28
    check-cast v11, Landroidx/compose/ui/focus/FocusManager;

    move-object/from16 v17, v14

    const/4 v14, 0x1

    if-ne v9, v14, :cond_41

    if-nez v22, :cond_41

    .line 29
    invoke-virtual {v8}, Landroidx/compose/ui/text/input/ImeOptions;->getSingleLine()Z

    move-result v14

    if-eqz v14, :cond_41

    .line 30
    sget-object v14, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_30

    :cond_41
    sget-object v14, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 31
    :goto_30
    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v26

    .line 32
    sget-object v28, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->Companion:Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/foundation/text/TextFieldScrollerPosition$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v28

    move/from16 v29, v9

    const v9, 0x44faf204

    .line 33
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 34
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    move/from16 p13, v2

    .line 35
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v9, :cond_42

    .line 36
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v2, v9, :cond_43

    .line 37
    :cond_42
    new-instance v2, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$scrollerPosition$1$1;

    invoke-direct {v2, v14}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$scrollerPosition$1$1;-><init>(Landroidx/compose/foundation/gestures/Orientation;)V

    .line 38
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 39
    :cond_43
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/16 v9, 0x48

    const/4 v14, 0x4

    const/16 v30, 0x0

    move-object/from16 p2, v26

    move-object/from16 p3, v28

    move-object/from16 p4, v30

    move-object/from16 p5, v2

    move-object/from16 p6, v10

    move/from16 p7, v9

    move/from16 p8, v14

    .line 40
    invoke-static/range {p2 .. p8}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    const v2, 0x1e7b2b64

    .line 41
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 42
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v2, v14

    .line 43
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v2, :cond_45

    .line 44
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_44

    goto :goto_31

    :cond_44
    move/from16 v26, v7

    move-object/from16 p14, v8

    goto :goto_34

    .line 45
    :cond_45
    :goto_31
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v2

    invoke-interface {v13, v2}, Landroidx/compose/ui/text/input/VisualTransformation;->filter(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v2

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v14

    move/from16 v26, v7

    move-object/from16 p14, v8

    if-eqz v14, :cond_47

    invoke-virtual {v14}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v7

    .line 47
    sget-object v14, Landroidx/compose/foundation/text/TextFieldDelegate;->Companion:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    invoke-virtual {v14, v7, v8, v2}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->applyCompositionDecoration-72CqOWE(JLandroidx/compose/ui/text/input/TransformedText;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object v7

    if-nez v7, :cond_46

    goto :goto_32

    :cond_46
    move-object v14, v7

    goto :goto_33

    :cond_47
    :goto_32
    move-object v14, v2

    .line 48
    :goto_33
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 49
    :goto_34
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 50
    move-object v2, v14

    check-cast v2, Landroidx/compose/ui/text/input/TransformedText;

    .line 51
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v7

    .line 52
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TransformedText;->getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v8

    move-object/from16 v28, v9

    const/4 v14, 0x0

    .line 53
    invoke-static {v10, v14}, Landroidx/compose/runtime/ComposablesKt;->getCurrentRecomposeScope(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/RecomposeScope;

    move-result-object v9

    const v14, -0x1d58f75c

    .line 54
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 55
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .line 56
    sget-object v31, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v32, v2

    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v14, v2, :cond_48

    .line 57
    new-instance v14, Landroidx/compose/foundation/text/TextFieldState;

    .line 58
    new-instance v2, Landroidx/compose/foundation/text/TextDelegate;

    const/16 v33, 0x94

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 p2, v2

    move-object/from16 p3, v7

    move-object/from16 p4, v18

    move/from16 p5, v35

    move/from16 p6, v22

    move/from16 p7, v36

    move-object/from16 p8, v3

    move-object/from16 p9, v4

    move-object/from16 p10, v37

    move/from16 p11, v33

    move-object/from16 p12, v34

    invoke-direct/range {p2 .. p12}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    invoke-direct {v14, v2, v9}, Landroidx/compose/foundation/text/TextFieldState;-><init>(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/runtime/RecomposeScope;)V

    .line 60
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 61
    :cond_48
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 62
    check-cast v14, Landroidx/compose/foundation/text/TextFieldState;

    move-object/from16 p2, v14

    move-object/from16 p3, v7

    move-object/from16 p4, v18

    move/from16 p5, v22

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, p1

    move-object/from16 p9, v23

    move-object/from16 p10, v11

    move-wide/from16 p11, v5

    .line 63
    invoke-virtual/range {p2 .. p12}, Landroidx/compose/foundation/text/TextFieldState;->update-aKPr-nQ(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/ui/focus/FocusManager;J)V

    .line 64
    invoke-virtual {v14}, Landroidx/compose/foundation/text/TextFieldState;->getProcessor()Landroidx/compose/ui/text/input/EditProcessor;

    move-result-object v2

    invoke-virtual {v14}, Landroidx/compose/foundation/text/TextFieldState;->getInputSession()Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroidx/compose/ui/text/input/EditProcessor;->reset(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextInputSession;)V

    const v2, -0x1d58f75c

    .line 65
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 66
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 67
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_49

    .line 68
    new-instance v2, Landroidx/compose/foundation/text/UndoManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Landroidx/compose/foundation/text/UndoManager;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 70
    :cond_49
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 71
    check-cast v2, Landroidx/compose/foundation/text/UndoManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 p2, v2

    move-object/from16 p3, p0

    move-wide/from16 p4, v5

    move/from16 p6, v3

    move-object/from16 p7, v4

    .line 72
    invoke-static/range {p2 .. p7}, Landroidx/compose/foundation/text/UndoManager;->snapshotIfNeeded$default(Landroidx/compose/foundation/text/UndoManager;Landroidx/compose/ui/text/input/TextFieldValue;JILjava/lang/Object;)V

    const v3, -0x1d58f75c

    .line 73
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 74
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 75
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_4a

    .line 76
    new-instance v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-direct {v3, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;-><init>(Landroidx/compose/foundation/text/UndoManager;)V

    .line 77
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 78
    :cond_4a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 79
    move-object v11, v3

    check-cast v11, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 80
    invoke-virtual {v11, v8}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setOffsetMapping$foundation_release(Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 81
    invoke-virtual {v11, v13}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setVisualTransformation$foundation_release(Landroidx/compose/ui/text/input/VisualTransformation;)V

    .line 82
    invoke-virtual {v14}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setOnValueChange$foundation_release(Lkotlin/jvm/functions/Function1;)V

    .line 83
    invoke-virtual {v11, v14}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setState$foundation_release(Landroidx/compose/foundation/text/TextFieldState;)V

    .line 84
    invoke-virtual {v11, v15}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setValue$foundation_release(Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 85
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalClipboardManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    .line 86
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/platform/ClipboardManager;

    .line 87
    invoke-virtual {v11, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setClipboardManager$foundation_release(Landroidx/compose/ui/platform/ClipboardManager;)V

    .line 88
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalTextToolbar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    .line 89
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/platform/TextToolbar;

    .line 90
    invoke-virtual {v11, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setTextToolbar(Landroidx/compose/ui/platform/TextToolbar;)V

    .line 91
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalHapticFeedback()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    .line 92
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 93
    invoke-virtual {v11, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setHapticFeedBack(Landroidx/compose/ui/hapticfeedback/HapticFeedback;)V

    .line 94
    invoke-virtual {v11, v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setFocusRequester(Landroidx/compose/ui/focus/FocusRequester;)V

    xor-int/lit8 v3, v24, 0x1

    .line 95
    invoke-virtual {v11, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->setEditable(Z)V

    const v3, 0x2e20b340

    .line 96
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v3, -0x1d58f75c

    .line 97
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 98
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 99
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_4b

    .line 100
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v3, v10}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lgt/g0;

    move-result-object v3

    .line 101
    new-instance v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v4, v3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lgt/g0;)V

    .line 102
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v3, v4

    .line 103
    :cond_4b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 104
    check-cast v3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 105
    invoke-virtual {v3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lgt/g0;

    move-result-object v3

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v4, -0x1d58f75c

    .line 106
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 107
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 108
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_4c

    .line 109
    invoke-static {}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt;->BringIntoViewRequester()Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    move-result-object v4

    .line 110
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 111
    :cond_4c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 112
    move-object/from16 v30, v4

    check-cast v30, Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 113
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    new-instance v5, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;

    move-object/from16 p2, v5

    move-object/from16 p3, v14

    move-object/from16 p4, v1

    move-object/from16 p5, p0

    move-object/from16 p6, p14

    move-object/from16 p7, v11

    move-object/from16 p8, v3

    move-object/from16 p9, v30

    move-object/from16 p10, v8

    invoke-direct/range {p2 .. p10}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lgt/g0;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/OffsetMapping;)V

    move/from16 v7, v26

    invoke-static {v4, v7, v0, v12, v5}, Landroidx/compose/foundation/text/TextFieldGestureModifiersKt;->textFieldFocusModifier(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/focus/FocusRequester;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 114
    new-instance v5, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$2;

    invoke-direct {v5, v14}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$2;-><init>(Landroidx/compose/foundation/text/TextFieldState;)V

    const/16 v6, 0x8

    invoke-static {v14, v5, v10, v6}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 115
    invoke-static {}, Landroidx/compose/foundation/text/TouchMode_androidKt;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 116
    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTouchSelectionObserver$foundation_release()Landroidx/compose/foundation/text/TextDragObserver;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroidx/compose/foundation/text/TextFieldGestureModifiersKt;->longPressDragGestureFilter(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextDragObserver;Z)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 117
    new-instance v9, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$pointerModifier$1;

    move-object/from16 p2, v9

    move-object/from16 p3, v14

    move-object/from16 p4, v0

    move/from16 p5, v24

    move-object/from16 p6, v11

    move-object/from16 p7, v8

    invoke-direct/range {p2 .. p7}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$pointerModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusRequester;ZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/OffsetMapping;)V

    invoke-static {v4, v12, v7, v9}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt;->tapPressTextFieldModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 118
    invoke-interface {v9, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move-object/from16 p15, v3

    move-object/from16 v16, v12

    const/4 v3, 0x0

    goto :goto_35

    .line 119
    :cond_4d
    invoke-virtual {v11}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getMouseSelectionObserver$foundation_release()Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    move-result-object v5

    .line 120
    invoke-static {v4, v5, v7}, Landroidx/compose/foundation/text/TextFieldGestureModifiersKt;->mouseDragGestureDetector(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Z)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 121
    invoke-static {}, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->getTextPointerIcon()Landroidx/compose/ui/input/pointer/PointerIcon;

    move-result-object v9

    move-object/from16 p15, v3

    move-object/from16 v16, v12

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v12, 0x0

    invoke-static {v5, v9, v3, v6, v12}, Landroidx/compose/ui/input/pointer/PointerIconKt;->pointerHoverIcon$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/PointerIcon;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    .line 122
    :goto_35
    new-instance v6, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$drawModifier$1;

    invoke-direct {v6, v14, v15, v8}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$drawModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    invoke-static {v4, v6}, Landroidx/compose/ui/draw/DrawModifierKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 123
    new-instance v6, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$onPositionedModifier$1;

    invoke-direct {v6, v14, v7, v11}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$onPositionedModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;ZLandroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    invoke-static {v4, v6}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    .line 124
    instance-of v6, v13, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    .line 125
    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;

    move-object/from16 p2, v3

    move-object/from16 p3, p14

    move-object/from16 p4, v32

    move-object/from16 p5, p0

    move/from16 p6, v7

    move/from16 p7, v6

    move/from16 p8, v24

    move-object/from16 p9, v14

    move-object/from16 p10, v8

    move-object/from16 p11, v11

    move-object/from16 p12, v0

    invoke-direct/range {p2 .. p12}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;-><init>(Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/input/TextFieldValue;ZZZLandroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/focus/FocusRequester;)V

    const/4 v0, 0x1

    invoke-static {v4, v0, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v7, :cond_4e

    if-nez v24, :cond_4e

    const/4 v0, 0x1

    goto :goto_36

    :cond_4e
    const/4 v0, 0x0

    :goto_36
    move-object/from16 p2, v4

    move-object/from16 p3, v14

    move-object/from16 p4, p0

    move-object/from16 p5, v8

    move-object/from16 p6, v21

    move/from16 p7, v0

    .line 126
    invoke-static/range {p2 .. p7}, Landroidx/compose/foundation/text/TextFieldCursorKt;->cursor(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/graphics/Brush;Z)Landroidx/compose/ui/Modifier;

    move-result-object v31

    .line 127
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$3;

    invoke-direct {v0, v11}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    const/16 v6, 0x8

    invoke-static {v11, v0, v10, v6}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 128
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$4;

    move-object/from16 v6, p14

    invoke-direct {v0, v1, v14, v15, v6}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$4;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;)V

    and-int/lit8 v1, p13, 0xe

    invoke-static {v6, v0, v10, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 129
    invoke-virtual {v14}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    xor-int/lit8 v1, v24, 0x1

    move-object/from16 v19, v10

    move/from16 v10, v29

    const/4 v15, 0x1

    if-ne v10, v15, :cond_4f

    move/from16 v26, v15

    goto :goto_37

    :cond_4f
    const/16 v26, 0x0

    :goto_37
    move-object/from16 p2, v4

    move-object/from16 p3, v14

    move-object/from16 p4, v11

    move-object/from16 p5, p0

    move-object/from16 p6, v0

    move/from16 p7, v1

    move/from16 p8, v26

    move-object/from16 p9, v8

    move-object/from16 p10, v2

    .line 130
    invoke-static/range {p2 .. p10}, Landroidx/compose/foundation/text/TextFieldKeyInputKt;->textFieldKeyInput(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/UndoManager;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v1, p15

    move-object/from16 v8, v17

    .line 131
    invoke-interface {v8, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 132
    invoke-static {v1, v14, v11}, Landroidx/compose/foundation/text/CoreTextFieldKt;->previewKeyEventToDeselectOnBack(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 133
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v2, v16

    move-object/from16 v1, v28

    .line 134
    invoke-static {v0, v1, v2, v7}, Landroidx/compose/foundation/text/TextFieldScrollKt;->textFieldScrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 135
    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 136
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 137
    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$decorationBoxModifier$1;

    invoke-direct {v3, v14}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$decorationBoxModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;)V

    invoke-static {v0, v3}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v7, :cond_50

    .line 138
    invoke-virtual {v14}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {}, Landroidx/compose/foundation/text/TouchMode_androidKt;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_50

    move/from16 v27, v15

    goto :goto_38

    :cond_50
    const/16 v27, 0x0

    :goto_38
    if-eqz v27, :cond_51

    .line 139
    invoke-static {v4, v11}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->textFieldMagnifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_39

    :cond_51
    move-object/from16 v16, v4

    .line 140
    :goto_39
    new-instance v4, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;

    move-object v0, v4

    move-object/from16 v17, v1

    move-object/from16 v1, v25

    move-object/from16 v26, v2

    move/from16 v2, p13

    move v3, v10

    move-object/from16 v38, v4

    move-object/from16 v4, v18

    move-object/from16 v39, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    move-object/from16 v6, p0

    move/from16 v28, v7

    move-object v7, v13

    move-object/from16 v29, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v31

    move/from16 v31, v10

    move-object/from16 v40, v19

    move-object v10, v12

    move-object v12, v11

    move-object/from16 v11, v16

    move-object/from16 p2, v12

    move-object/from16 v19, v26

    move-object/from16 v12, v30

    move-object/from16 v26, v13

    move-object v13, v14

    move-object/from16 v30, v17

    move-object/from16 v14, p2

    move/from16 v15, v27

    move/from16 v16, v24

    move-object/from16 v17, v20

    invoke-direct/range {v0 .. v17}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;-><init>(Lat/n;IILandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLkotlin/jvm/functions/Function1;)V

    const v0, -0x705d0edd

    move-object/from16 v3, v38

    move-object/from16 v1, v40

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v2, 0x1c0

    move-object/from16 v3, p2

    move-object/from16 v4, v39

    invoke-static {v4, v3, v0, v1, v2}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v6, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v12, v23

    move/from16 v14, v24

    move-object/from16 v15, v25

    move-object/from16 v5, v26

    move/from16 v13, v28

    move-object/from16 v11, v29

    move-object/from16 v3, v30

    move/from16 v10, v31

    .line 141
    :goto_3a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-nez v2, :cond_52

    goto :goto_3b

    :cond_52
    new-instance v1, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$6;

    move-object v0, v1

    move-object/from16 v41, v1

    move-object/from16 v1, p0

    move-object/from16 v42, v2

    move-object/from16 v2, p1

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$6;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLat/n;III)V

    move-object/from16 v1, v41

    move-object/from16 v0, v42

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_3b
    return-void
.end method

.method private static final CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 8
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    const v0, -0x1399887

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    const v0, 0x2bb5b5d7

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v1, 0x30

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-static {v0, v2, p3, v1}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v1, -0x4ee9b9da

    .line 28
    .line 29
    .line 30
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 42
    .line 43
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .line 52
    .line 53
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 62
    .line 63
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    if-nez v7, :cond_0

    .line 78
    .line 79
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 83
    .line 84
    .line 85
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_1

    .line 90
    .line 91
    invoke-interface {p3, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 96
    .line 97
    .line 98
    :goto_0
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 99
    .line 100
    .line 101
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {v5, v0, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v5, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v5, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v5, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 134
    .line 135
    .line 136
    invoke-static {p3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const/4 v1, 0x0

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-interface {v6, v0, p3, v1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    const v0, 0x7ab4aae9

    .line 153
    .line 154
    .line 155
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 156
    .line 157
    .line 158
    const v0, -0x7f65a980

    .line 159
    .line 160
    .line 161
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 162
    .line 163
    .line 164
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 165
    .line 166
    const v0, 0x5ae1f37f

    .line 167
    .line 168
    .line 169
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 170
    .line 171
    .line 172
    shr-int/lit8 v0, p4, 0x3

    .line 173
    .line 174
    and-int/lit8 v0, v0, 0x70

    .line 175
    .line 176
    or-int/lit8 v0, v0, 0x8

    .line 177
    .line 178
    invoke-static {p1, p2, p3, v0}, Landroidx/compose/foundation/text/ContextMenu_androidKt;->ContextMenuArea(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 179
    .line 180
    .line 181
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 182
    .line 183
    .line 184
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 185
    .line 186
    .line 187
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 188
    .line 189
    .line 190
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 191
    .line 192
    .line 193
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 194
    .line 195
    .line 196
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 197
    .line 198
    .line 199
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 200
    .line 201
    .line 202
    move-result-object p3

    .line 203
    if-nez p3, :cond_2

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_2
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextFieldRootBox$2;

    .line 207
    .line 208
    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextFieldRootBox$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;I)V

    .line 209
    .line 210
    .line 211
    invoke-interface {p3, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 212
    .line 213
    .line 214
    :goto_1
    return-void
.end method

.method private static final SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V
    .locals 6
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    const v0, 0x25552d88

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-eqz p1, :cond_6

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getOffsetMapping$foundation_release()Landroidx/compose/ui/text/input/OffsetMapping;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-interface {v1, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getOffsetMapping$foundation_release()Landroidx/compose/ui/text/input/OffsetMapping;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-interface {v3, v4}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/4 v4, 0x1

    .line 92
    sub-int/2addr v3, v4

    .line 93
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const v3, -0x1db4ed05

    .line 102
    .line 103
    .line 104
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const/16 v5, 0x206

    .line 112
    .line 113
    if-eqz v3, :cond_2

    .line 114
    .line 115
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextFieldState;->getShowSelectionHandleStart()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-ne v3, v4, :cond_2

    .line 120
    .line 121
    invoke-static {v4, v1, p0, p2, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextFieldState;->getShowSelectionHandleEnd()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-ne v1, v4, :cond_3

    .line 138
    .line 139
    invoke-static {v2, v0, p0, p2, v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    .line 140
    .line 141
    .line 142
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->isTextChanged$foundation_release()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_4

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text/TextFieldState;->setShowFloatingToolbar(Z)V

    .line 155
    .line 156
    .line 157
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_7

    .line 162
    .line 163
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getShowFloatingToolbar()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_5

    .line 168
    .line 169
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->showSelectionToolbar$foundation_release()V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation_release()V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation_release()V

    .line 178
    .line 179
    .line 180
    :cond_7
    :goto_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    if-nez p2, :cond_8

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_8
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$SelectionToolbarAndHandles$2;

    .line 188
    .line 189
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/text/CoreTextFieldKt$SelectionToolbarAndHandles$2;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZI)V

    .line 190
    .line 191
    .line 192
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 193
    .line 194
    .line 195
    :goto_2
    return-void
.end method

.method public static final TextFieldCursorHandle(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V
    .locals 8
    .param p0    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, -0x5597ad88

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getShowCursorHandle()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_4

    .line 25
    .line 26
    const v0, 0x44faf204

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-ne v3, v2, :cond_1

    .line 49
    .line 50
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->cursorDragObserver$foundation_release()Landroidx/compose/foundation/text/TextDragObserver;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 58
    .line 59
    .line 60
    check-cast v3, Landroidx/compose/foundation/text/TextDragObserver;

    .line 61
    .line 62
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getCursorPosition-tuRUvjQ$foundation_release(Landroidx/compose/ui/unit/Density;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 77
    .line 78
    new-instance v6, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1;

    .line 79
    .line 80
    const/4 v7, 0x0

    .line 81
    invoke-direct {v6, v3, v7}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Lrs/c;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v2, v3, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-ne v3, v0, :cond_3

    .line 112
    .line 113
    :cond_2
    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;

    .line 114
    .line 115
    invoke-direct {v3, v4, v5}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;-><init>(J)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 122
    .line 123
    .line 124
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    invoke-static {v2, v0, v3, v1, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const/4 v0, 0x0

    .line 132
    const/16 v6, 0x180

    .line 133
    .line 134
    move-wide v1, v4

    .line 135
    move-object v4, v0

    .line 136
    move-object v5, p1

    .line 137
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandle-ULxng0E(JLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 138
    .line 139
    .line 140
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-nez p1, :cond_5

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$3;

    .line 148
    .line 149
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$3;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 150
    .line 151
    .line 152
    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    :goto_0
    return-void
.end method

.method public static final synthetic access$CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextFieldRootBox(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/CoreTextFieldKt;->SelectionToolbarAndHandles(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$notifyTextInputServiceOnFocusChange(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/CoreTextFieldKt;->notifyTextInputServiceOnFocusChange(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onBlur(Landroidx/compose/foundation/text/TextFieldState;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/text/CoreTextFieldKt;->onBlur(Landroidx/compose/foundation/text/TextFieldState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$tapToFocus(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusRequester;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt;->tapToFocus(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusRequester;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final bringSelectionEndIntoView(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p0    # Landroidx/compose/foundation/relocation/BringIntoViewRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/text/TextDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/text/TextLayoutResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/input/OffsetMapping;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/foundation/text/TextDelegate;",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Landroidx/compose/ui/text/input/OffsetMapping;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-interface {p4, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p3}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    invoke-virtual {p4}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    invoke-virtual {p4}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    if-ge p1, p4, :cond_0

    .line 26
    .line 27
    invoke-virtual {p3, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    add-int/lit8 p1, p1, -0x1

    .line 35
    .line 36
    invoke-virtual {p3, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextDelegate;->getStyle()Landroidx/compose/ui/text/TextStyle;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextDelegate;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextDelegate;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/16 v5, 0x18

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->computeSizeForDefaultText$default(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;IILjava/lang/Object;)J

    .line 59
    .line 60
    .line 61
    move-result-wide p1

    .line 62
    new-instance p3, Landroidx/compose/ui/geometry/Rect;

    .line 63
    .line 64
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    int-to-float p1, p1

    .line 69
    const/4 p2, 0x0

    .line 70
    const/high16 p4, 0x3f800000    # 1.0f

    .line 71
    .line 72
    invoke-direct {p3, p2, p2, p4, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 73
    .line 74
    .line 75
    move-object p1, p3

    .line 76
    :goto_0
    invoke-interface {p0, p1, p5}, Landroidx/compose/foundation/relocation/BringIntoViewRequester;->bringIntoView(Landroidx/compose/ui/geometry/Rect;Lrs/c;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p0, p1, :cond_2

    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    return-object p0
.end method

.method private static final notifyTextInputServiceOnFocusChange(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/foundation/text/TextFieldDelegate;->Companion:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->getProcessor()Landroidx/compose/ui/text/input/EditProcessor;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->getOnImeActionPerformed()Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    move-object v2, p0

    .line 22
    move-object v3, p2

    .line 23
    move-object v5, p3

    .line 24
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->onFocus$foundation_release(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/EditProcessor;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/input/TextInputSession;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/text/TextFieldState;->setInputSession(Landroidx/compose/ui/text/input/TextInputSession;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p1}, Landroidx/compose/foundation/text/CoreTextFieldKt;->onBlur(Landroidx/compose/foundation/text/TextFieldState;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private static final onBlur(Landroidx/compose/foundation/text/TextFieldState;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getInputSession()Landroidx/compose/ui/text/input/TextInputSession;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/foundation/text/TextFieldDelegate;->Companion:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getProcessor()Landroidx/compose/ui/text/input/EditProcessor;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1, v0, v2, v3}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->onBlur$foundation_release(Landroidx/compose/ui/text/input/TextInputSession;Landroidx/compose/ui/text/input/EditProcessor;Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/TextFieldState;->setInputSession(Landroidx/compose/ui/text/input/TextInputSession;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static final previewKeyEventToDeselectOnBack(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$previewKeyEventToDeselectOnBack$1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$previewKeyEventToDeselectOnBack$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final tapToFocus(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusRequester;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getInputSession()Landroidx/compose/ui/text/input/TextInputSession;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextInputSession;->showSoftwareKeyboard()Z

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method
