.class public final Landroidx/compose/material/TextFieldKt;
.super Ljava/lang/Object;
.source "TextField.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final FirstBaselineOffset:F

.field private static final TextFieldBottomPadding:F

.field private static final TextFieldTopPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Landroidx/compose/material/TextFieldKt;->FirstBaselineOffset:F

    .line 9
    .line 10
    const/16 v0, 0xa

    .line 11
    .line 12
    int-to-float v0, v0

    .line 13
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Landroidx/compose/material/TextFieldKt;->TextFieldBottomPadding:F

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    int-to-float v0, v0

    .line 21
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sput v0, Landroidx/compose/material/TextFieldKt;->TextFieldTopPadding:F

    .line 26
    .line 27
    return-void
.end method

.method public static final TextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;III)V
    .locals 71
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
    .param p5    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/ui/text/input/VisualTransformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/foundation/text/KeyboardOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/foundation/text/KeyboardActions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Landroidx/compose/material/TextFieldColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]"
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
            "ZZ",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "ZI",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material/TextFieldColors;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v12, p1

    move/from16 v10, p20

    move/from16 v9, p21

    move/from16 v8, p22

    const-string v0, "value"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValueChange"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x5df95b24

    move-object/from16 v1, p19

    .line 34
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v10, 0xe

    if-nez v0, :cond_2

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    goto :goto_1

    :cond_2
    move v0, v10

    :goto_1
    and-int/lit8 v3, v8, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v10, 0x70

    if-nez v3, :cond_5

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v3, v8, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v13, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v13, v10, 0x380

    if-nez v13, :cond_6

    move-object/from16 v13, p2

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x100

    goto :goto_4

    :cond_8
    const/16 v14, 0x80

    :goto_4
    or-int/2addr v0, v14

    :goto_5
    and-int/lit8 v14, v8, 0x8

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-eqz v14, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move/from16 v1, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v1, v10, 0x1c00

    if-nez v1, :cond_9

    move/from16 v1, p3

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_b

    move/from16 v18, v17

    goto :goto_6

    :cond_b
    move/from16 v18, v16

    :goto_6
    or-int v0, v0, v18

    :goto_7
    and-int/lit8 v18, v8, 0x10

    const/16 v19, 0x4000

    const/16 v20, 0x2000

    if-eqz v18, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move/from16 v2, p4

    goto :goto_9

    :cond_c
    const v21, 0xe000

    and-int v21, v10, v21

    move/from16 v2, p4

    if-nez v21, :cond_e

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v22

    if-eqz v22, :cond_d

    move/from16 v22, v19

    goto :goto_8

    :cond_d
    move/from16 v22, v20

    :goto_8
    or-int v0, v0, v22

    :cond_e
    :goto_9
    const/high16 v22, 0x70000

    and-int v22, v10, v22

    const/high16 v23, 0x10000

    const/high16 v24, 0x20000

    if-nez v22, :cond_10

    and-int/lit8 v22, v8, 0x20

    move-object/from16 v4, p5

    if-nez v22, :cond_f

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    move/from16 v25, v24

    goto :goto_a

    :cond_f
    move/from16 v25, v23

    :goto_a
    or-int v0, v0, v25

    goto :goto_b

    :cond_10
    move-object/from16 v4, p5

    :goto_b
    and-int/lit8 v25, v8, 0x40

    const/high16 v64, 0x380000

    if-eqz v25, :cond_11

    const/high16 v26, 0x180000

    or-int v0, v0, v26

    move-object/from16 v5, p6

    goto :goto_d

    :cond_11
    and-int v26, v10, v64

    move-object/from16 v5, p6

    if-nez v26, :cond_13

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    const/high16 v27, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v27, 0x80000

    :goto_c
    or-int v0, v0, v27

    :cond_13
    :goto_d
    and-int/lit16 v6, v8, 0x80

    const/high16 v65, 0x1c00000

    if-eqz v6, :cond_14

    const/high16 v28, 0xc00000

    or-int v0, v0, v28

    move-object/from16 v11, p7

    goto :goto_f

    :cond_14
    and-int v28, v10, v65

    move-object/from16 v11, p7

    if-nez v28, :cond_16

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    const/high16 v29, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v29, 0x400000

    :goto_e
    or-int v0, v0, v29

    :cond_16
    :goto_f
    and-int/lit16 v1, v8, 0x100

    const/high16 v66, 0xe000000

    if-eqz v1, :cond_17

    const/high16 v29, 0x6000000

    or-int v0, v0, v29

    move-object/from16 v2, p8

    goto :goto_11

    :cond_17
    and-int v29, v10, v66

    move-object/from16 v2, p8

    if-nez v29, :cond_19

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    const/high16 v29, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v29, 0x2000000

    :goto_10
    or-int v0, v0, v29

    :cond_19
    :goto_11
    and-int/lit16 v2, v8, 0x200

    if-eqz v2, :cond_1a

    const/high16 v29, 0x30000000

    or-int v0, v0, v29

    move-object/from16 v4, p9

    goto :goto_13

    :cond_1a
    const/high16 v29, 0x70000000

    and-int v29, v10, v29

    move-object/from16 v4, p9

    if-nez v29, :cond_1c

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b

    const/high16 v29, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v29, 0x10000000

    :goto_12
    or-int v0, v0, v29

    :cond_1c
    :goto_13
    and-int/lit16 v4, v8, 0x400

    if-eqz v4, :cond_1d

    or-int/lit8 v21, v9, 0x6

    move/from16 v5, p10

    goto :goto_15

    :cond_1d
    and-int/lit8 v29, v9, 0xe

    move/from16 v5, p10

    if-nez v29, :cond_1f

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v29

    if-eqz v29, :cond_1e

    const/16 v21, 0x4

    goto :goto_14

    :cond_1e
    const/16 v21, 0x2

    :goto_14
    or-int v21, v9, v21

    goto :goto_15

    :cond_1f
    move/from16 v21, v9

    :goto_15
    and-int/lit16 v5, v8, 0x800

    if-eqz v5, :cond_20

    or-int/lit8 v21, v21, 0x30

    move-object/from16 v11, p11

    goto :goto_17

    :cond_20
    and-int/lit8 v29, v9, 0x70

    move-object/from16 v11, p11

    if-nez v29, :cond_22

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_21

    const/16 v26, 0x20

    goto :goto_16

    :cond_21
    const/16 v26, 0x10

    :goto_16
    or-int v21, v21, v26

    :cond_22
    :goto_17
    and-int/lit16 v11, v9, 0x380

    if-nez v11, :cond_25

    and-int/lit16 v11, v8, 0x1000

    if-nez v11, :cond_23

    move-object/from16 v11, p12

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    const/16 v27, 0x100

    goto :goto_18

    :cond_23
    move-object/from16 v11, p12

    :cond_24
    const/16 v27, 0x80

    :goto_18
    or-int v21, v21, v27

    goto :goto_19

    :cond_25
    move-object/from16 v11, p12

    :goto_19
    and-int/lit16 v11, v9, 0x1c00

    if-nez v11, :cond_28

    and-int/lit16 v11, v8, 0x2000

    if-nez v11, :cond_26

    move-object/from16 v11, p13

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    move/from16 v16, v17

    goto :goto_1a

    :cond_26
    move-object/from16 v11, p13

    :cond_27
    :goto_1a
    or-int v21, v21, v16

    :goto_1b
    move/from16 v11, v21

    goto :goto_1c

    :cond_28
    move-object/from16 v11, p13

    goto :goto_1b

    :goto_1c
    and-int/lit16 v12, v8, 0x4000

    if-eqz v12, :cond_29

    or-int/lit16 v11, v11, 0x6000

    move/from16 v13, p14

    goto :goto_1e

    :cond_29
    const v16, 0xe000

    and-int v16, v9, v16

    move/from16 v13, p14

    if-nez v16, :cond_2b

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_2a

    goto :goto_1d

    :cond_2a
    move/from16 v19, v20

    :goto_1d
    or-int v11, v11, v19

    :cond_2b
    :goto_1e
    const v16, 0x8000

    and-int v16, v8, v16

    if-eqz v16, :cond_2c

    const/high16 v17, 0x30000

    or-int v11, v11, v17

    move/from16 v13, p15

    goto :goto_20

    :cond_2c
    const/high16 v17, 0x70000

    and-int v17, v9, v17

    move/from16 v13, p15

    if-nez v17, :cond_2e

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_2d

    move/from16 v17, v24

    goto :goto_1f

    :cond_2d
    move/from16 v17, v23

    :goto_1f
    or-int v11, v11, v17

    :cond_2e
    :goto_20
    and-int v17, v8, v23

    if-eqz v17, :cond_2f

    const/high16 v19, 0x180000

    or-int v11, v11, v19

    move-object/from16 v13, p16

    goto :goto_22

    :cond_2f
    and-int v19, v9, v64

    move-object/from16 v13, p16

    if-nez v19, :cond_31

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    const/high16 v19, 0x100000

    goto :goto_21

    :cond_30
    const/high16 v19, 0x80000

    :goto_21
    or-int v11, v11, v19

    :cond_31
    :goto_22
    and-int v19, v9, v65

    if-nez v19, :cond_33

    and-int v19, v8, v24

    move-object/from16 v13, p17

    if-nez v19, :cond_32

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_32

    const/high16 v19, 0x800000

    goto :goto_23

    :cond_32
    const/high16 v19, 0x400000

    :goto_23
    or-int v11, v11, v19

    goto :goto_24

    :cond_33
    move-object/from16 v13, p17

    :goto_24
    and-int v19, v9, v66

    if-nez v19, :cond_35

    const/high16 v19, 0x40000

    and-int v19, v8, v19

    move-object/from16 v9, p18

    if-nez v19, :cond_34

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_34

    const/high16 v19, 0x4000000

    goto :goto_25

    :cond_34
    const/high16 v19, 0x2000000

    :goto_25
    or-int v11, v11, v19

    goto :goto_26

    :cond_35
    move-object/from16 v9, p18

    :goto_26
    const v19, 0x5b6db6db

    and-int v9, v0, v19

    const v13, 0x12492492

    if-ne v9, v13, :cond_37

    const v9, 0xb6db6db

    and-int/2addr v9, v11

    const v13, 0x2492492

    if-ne v9, v13, :cond_37

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_36

    goto :goto_27

    .line 35
    :cond_36
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v31, v7

    move-object/from16 v7, p6

    goto/16 :goto_3d

    .line 36
    :cond_37
    :goto_27
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v9, v10, 0x1

    if-eqz v9, :cond_3e

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v9

    if-eqz v9, :cond_38

    goto :goto_28

    .line 37
    :cond_38
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v8, 0x20

    if-eqz v1, :cond_39

    const v1, -0x70001

    and-int/2addr v0, v1

    :cond_39
    and-int/lit16 v1, v8, 0x1000

    if-eqz v1, :cond_3a

    and-int/lit16 v11, v11, -0x381

    :cond_3a
    and-int/lit16 v1, v8, 0x2000

    if-eqz v1, :cond_3b

    and-int/lit16 v11, v11, -0x1c01

    :cond_3b
    and-int v1, v8, v24

    if-eqz v1, :cond_3c

    const v1, -0x1c00001

    and-int/2addr v11, v1

    :cond_3c
    const/high16 v1, 0x40000

    and-int/2addr v1, v8

    if-eqz v1, :cond_3d

    const v1, -0xe000001

    and-int/2addr v11, v1

    :cond_3d
    move-object/from16 v12, p2

    move/from16 v10, p3

    move/from16 v19, p4

    move-object/from16 v9, p5

    move-object/from16 v67, p6

    move-object/from16 v20, p7

    move-object/from16 v21, p8

    move-object/from16 v22, p9

    move/from16 v6, p10

    move-object/from16 v23, p11

    move-object/from16 v24, p12

    move-object/from16 v25, p13

    move/from16 v26, p14

    move/from16 v68, p15

    move-object/from16 v27, p16

    move-object/from16 v4, p17

    move-object/from16 v3, p18

    goto/16 :goto_3a

    :cond_3e
    :goto_28
    if-eqz v3, :cond_3f

    .line 38
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_29

    :cond_3f
    move-object/from16 v3, p2

    :goto_29
    if-eqz v14, :cond_40

    const/4 v9, 0x1

    goto :goto_2a

    :cond_40
    move/from16 v9, p3

    :goto_2a
    if-eqz v18, :cond_41

    const/4 v14, 0x0

    goto :goto_2b

    :cond_41
    move/from16 v14, p4

    :goto_2b
    and-int/lit8 v18, v8, 0x20

    if-eqz v18, :cond_42

    .line 39
    invoke-static {}, Landroidx/compose/material/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    .line 40
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/TextStyle;

    const v18, -0x70001

    and-int v0, v0, v18

    goto :goto_2c

    :cond_42
    move-object/from16 v13, p5

    :goto_2c
    if-eqz v25, :cond_43

    const/16 v67, 0x0

    goto :goto_2d

    :cond_43
    move-object/from16 v67, p6

    :goto_2d
    if-eqz v6, :cond_44

    const/4 v6, 0x0

    goto :goto_2e

    :cond_44
    move-object/from16 v6, p7

    :goto_2e
    if-eqz v1, :cond_45

    const/4 v1, 0x0

    goto :goto_2f

    :cond_45
    move-object/from16 v1, p8

    :goto_2f
    if-eqz v2, :cond_46

    const/4 v2, 0x0

    goto :goto_30

    :cond_46
    move-object/from16 v2, p9

    :goto_30
    if-eqz v4, :cond_47

    const/4 v4, 0x0

    goto :goto_31

    :cond_47
    move/from16 v4, p10

    :goto_31
    if-eqz v5, :cond_48

    .line 41
    sget-object v5, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v5

    goto :goto_32

    :cond_48
    move-object/from16 v5, p11

    :goto_32
    and-int/lit16 v10, v8, 0x1000

    if-eqz v10, :cond_49

    .line 42
    sget-object v10, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual {v10}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v10

    and-int/lit16 v11, v11, -0x381

    goto :goto_33

    :cond_49
    move-object/from16 v10, p12

    :goto_33
    move/from16 p2, v0

    and-int/lit16 v0, v8, 0x2000

    if-eqz v0, :cond_4a

    .line 43
    new-instance v0, Landroidx/compose/foundation/text/KeyboardActions;

    const/16 v18, 0x3f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 p3, v0

    move-object/from16 p4, v20

    move-object/from16 p5, v21

    move-object/from16 p6, v22

    move-object/from16 p7, v23

    move-object/from16 p8, v25

    move-object/from16 p9, v26

    move/from16 p10, v18

    move-object/from16 p11, v19

    invoke-direct/range {p3 .. p11}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    and-int/lit16 v11, v11, -0x1c01

    goto :goto_34

    :cond_4a
    move-object/from16 v0, p13

    :goto_34
    if-eqz v12, :cond_4b

    const/4 v12, 0x0

    goto :goto_35

    :cond_4b
    move/from16 v12, p14

    :goto_35
    if-eqz v16, :cond_4c

    const v16, 0x7fffffff

    move/from16 v68, v16

    goto :goto_36

    :cond_4c
    move/from16 v68, p15

    :goto_36
    move-object/from16 p3, v0

    if-eqz v17, :cond_4e

    const v0, -0x1d58f75c

    .line 44
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 45
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 46
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p4, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_4d

    .line 47
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 48
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 49
    :cond_4d
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_37

    :cond_4e
    move-object/from16 p4, v1

    move-object/from16 v0, p16

    :goto_37
    and-int v1, v8, v24

    if-eqz v1, :cond_4f

    .line 50
    sget-object v1, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    move-object/from16 p5, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v7, v0}, Landroidx/compose/material/TextFieldDefaults;->getTextFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    const v1, -0x1c00001

    and-int/2addr v1, v11

    move v11, v1

    goto :goto_38

    :cond_4f
    move-object/from16 p5, v0

    move-object/from16 v0, p17

    :goto_38
    const/high16 v1, 0x40000

    and-int/2addr v1, v8

    if-eqz v1, :cond_50

    .line 51
    sget-object v16, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    const/16 v62, 0x30

    const v63, 0x1fffff

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v59, v7

    invoke-virtual/range {v16 .. v63}, Landroidx/compose/material/TextFieldDefaults;->textFieldColors-dx8h9Zs(JJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material/TextFieldColors;

    move-result-object v1

    const v16, -0xe000001

    and-int v11, v11, v16

    move-object/from16 v25, p3

    move-object/from16 v21, p4

    move-object/from16 v27, p5

    move-object/from16 v22, v2

    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v10

    move/from16 v26, v12

    move/from16 v19, v14

    move-object v12, v3

    move v6, v4

    move v10, v9

    move-object v9, v13

    move-object v4, v0

    move-object v3, v1

    :goto_39
    move/from16 v0, p2

    goto :goto_3a

    :cond_50
    move-object/from16 v25, p3

    move-object/from16 v21, p4

    move-object/from16 v27, p5

    move-object/from16 v22, v2

    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v10

    move/from16 v26, v12

    move/from16 v19, v14

    move-object v12, v3

    move v6, v4

    move v10, v9

    move-object v9, v13

    move-object/from16 v3, p18

    move-object v4, v0

    goto :goto_39

    :goto_3a
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endDefaults()V

    const v1, -0x31a6e0f1

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 52
    invoke-virtual {v9}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v1

    .line 53
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v13

    cmp-long v5, v1, v13

    if-eqz v5, :cond_51

    :goto_3b
    move-wide/from16 v29, v1

    goto :goto_3c

    :cond_51
    shr-int/lit8 v1, v0, 0x9

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v2, v11, 0x15

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    .line 54
    invoke-interface {v3, v10, v7, v1}, Landroidx/compose/material/TextFieldColors;->textColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v1

    goto :goto_3b

    .line 55
    :goto_3c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 56
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v28, v1

    const v52, 0x3fffe

    const/16 v53, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    invoke-direct/range {v28 .. v53}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v9, v1}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v5

    .line 57
    sget-object v1, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    shr-int/lit8 v2, v0, 0x9

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v13, v11, 0x15

    and-int/lit8 v14, v13, 0x70

    or-int/2addr v2, v14

    .line 58
    invoke-interface {v3, v10, v7, v2}, Landroidx/compose/material/TextFieldColors;->backgroundColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    move-object/from16 p16, v9

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v8

    invoke-static {v12, v8, v9, v4}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move/from16 p4, v10

    move/from16 p5, v6

    move-object/from16 p6, v27

    move-object/from16 p7, v3

    move/from16 p8, v13

    move/from16 p9, v16

    move/from16 p10, v8

    move-object/from16 p11, v9

    .line 59
    invoke-static/range {p2 .. p11}, Landroidx/compose/material/TextFieldDefaults;->indicatorLine-gv0btCI$default(Landroidx/compose/material/TextFieldDefaults;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 60
    invoke-virtual {v1}, Landroidx/compose/material/TextFieldDefaults;->getMinWidth-D9Ej5fM()F

    move-result v8

    .line 61
    invoke-virtual {v1}, Landroidx/compose/material/TextFieldDefaults;->getMinHeight-D9Ej5fM()F

    move-result v1

    .line 62
    invoke-static {v2, v8, v1}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 63
    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v8, 0x0

    move-object v13, v1

    and-int/lit8 v9, v11, 0xe

    or-int/2addr v9, v14

    invoke-interface {v3, v6, v7, v9}, Landroidx/compose/material/TextFieldColors;->cursorColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v14

    invoke-direct {v1, v14, v15, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 64
    new-instance v1, Landroidx/compose/material/TextFieldKt$TextField$5;

    move-object/from16 p2, v1

    move-object/from16 p3, p0

    move/from16 p5, v26

    move-object/from16 p6, v23

    move-object/from16 p7, v27

    move/from16 p8, v6

    move-object/from16 p9, v67

    move-object/from16 p10, v20

    move-object/from16 p11, v21

    move-object/from16 p12, v22

    move-object/from16 p13, v3

    move/from16 p14, v0

    move/from16 p15, v11

    invoke-direct/range {p2 .. p15}, Landroidx/compose/material/TextFieldKt$TextField$5;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/TextFieldColors;II)V

    const v8, -0x7be4b34d

    const/4 v9, 0x1

    invoke-static {v7, v8, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v14

    const v1, 0xfc7e

    and-int/2addr v0, v1

    shl-int/lit8 v1, v11, 0xc

    and-int v8, v1, v64

    or-int/2addr v0, v8

    sget v8, Landroidx/compose/foundation/text/KeyboardActions;->$stable:I

    shl-int/lit8 v8, v8, 0x15

    or-int/2addr v0, v8

    and-int v8, v1, v65

    or-int/2addr v0, v8

    and-int v8, v1, v66

    or-int/2addr v0, v8

    const/high16 v8, 0x70000000

    and-int/2addr v1, v8

    or-int v16, v0, v1

    shr-int/lit8 v0, v11, 0x3

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0x6000

    shr-int/lit8 v1, v11, 0xc

    and-int/lit16 v1, v1, 0x380

    or-int v17, v0, v1

    const/16 v18, 0x800

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v28, v3

    move v3, v10

    move-object/from16 v29, v4

    move/from16 v4, v19

    move/from16 v30, v6

    move-object/from16 v6, v24

    move-object/from16 v31, v7

    move-object/from16 v7, v25

    move/from16 v8, v26

    move-object/from16 v32, p16

    move/from16 v9, v68

    move/from16 v33, v10

    move-object/from16 v10, v23

    move-object/from16 v34, v12

    move-object/from16 v12, v27

    move-object/from16 v15, v31

    .line 65
    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lat/n;Landroidx/compose/runtime/Composer;III)V

    move/from16 v5, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move/from16 v15, v26

    move-object/from16 v17, v27

    move-object/from16 v19, v28

    move-object/from16 v18, v29

    move/from16 v11, v30

    move-object/from16 v6, v32

    move/from16 v4, v33

    move-object/from16 v3, v34

    move-object/from16 v7, v67

    move/from16 v16, v68

    .line 66
    :goto_3d
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-nez v2, :cond_52

    goto :goto_3e

    :cond_52
    new-instance v1, Landroidx/compose/material/TextFieldKt$TextField$6;

    move-object v0, v1

    move-object/from16 v69, v1

    move-object/from16 v1, p0

    move-object/from16 v70, v2

    move-object/from16 v2, p1

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    invoke-direct/range {v0 .. v22}, Landroidx/compose/material/TextFieldKt$TextField$6;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;III)V

    move-object/from16 v1, v69

    move-object/from16 v0, v70

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_3e
    return-void
.end method

.method public static final TextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;III)V
    .locals 71
    .param p0    # Ljava/lang/String;
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
    .param p5    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/ui/text/input/VisualTransformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/foundation/text/KeyboardOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/foundation/text/KeyboardActions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Landroidx/compose/material/TextFieldColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "ZZ",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/foundation/text/KeyboardOptions;",
            "Landroidx/compose/foundation/text/KeyboardActions;",
            "ZI",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material/TextFieldColors;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v12, p1

    move/from16 v10, p20

    move/from16 v9, p21

    move/from16 v8, p22

    const-string v0, "value"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValueChange"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x64c902f7

    move-object/from16 v1, p19

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v10, 0xe

    if-nez v0, :cond_2

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    goto :goto_1

    :cond_2
    move v0, v10

    :goto_1
    and-int/lit8 v3, v8, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v10, 0x70

    if-nez v3, :cond_5

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v3, v8, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v13, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v13, v10, 0x380

    if-nez v13, :cond_6

    move-object/from16 v13, p2

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x100

    goto :goto_4

    :cond_8
    const/16 v14, 0x80

    :goto_4
    or-int/2addr v0, v14

    :goto_5
    and-int/lit8 v14, v8, 0x8

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-eqz v14, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move/from16 v1, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v1, v10, 0x1c00

    if-nez v1, :cond_9

    move/from16 v1, p3

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_b

    move/from16 v18, v17

    goto :goto_6

    :cond_b
    move/from16 v18, v16

    :goto_6
    or-int v0, v0, v18

    :goto_7
    and-int/lit8 v18, v8, 0x10

    const/16 v19, 0x4000

    const/16 v20, 0x2000

    if-eqz v18, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move/from16 v2, p4

    goto :goto_9

    :cond_c
    const v21, 0xe000

    and-int v21, v10, v21

    move/from16 v2, p4

    if-nez v21, :cond_e

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v22

    if-eqz v22, :cond_d

    move/from16 v22, v19

    goto :goto_8

    :cond_d
    move/from16 v22, v20

    :goto_8
    or-int v0, v0, v22

    :cond_e
    :goto_9
    const/high16 v22, 0x70000

    and-int v22, v10, v22

    const/high16 v23, 0x10000

    const/high16 v24, 0x20000

    if-nez v22, :cond_10

    and-int/lit8 v22, v8, 0x20

    move-object/from16 v4, p5

    if-nez v22, :cond_f

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    move/from16 v25, v24

    goto :goto_a

    :cond_f
    move/from16 v25, v23

    :goto_a
    or-int v0, v0, v25

    goto :goto_b

    :cond_10
    move-object/from16 v4, p5

    :goto_b
    and-int/lit8 v25, v8, 0x40

    const/high16 v64, 0x380000

    if-eqz v25, :cond_11

    const/high16 v26, 0x180000

    or-int v0, v0, v26

    move-object/from16 v5, p6

    goto :goto_d

    :cond_11
    and-int v26, v10, v64

    move-object/from16 v5, p6

    if-nez v26, :cond_13

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    const/high16 v27, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v27, 0x80000

    :goto_c
    or-int v0, v0, v27

    :cond_13
    :goto_d
    and-int/lit16 v6, v8, 0x80

    const/high16 v65, 0x1c00000

    if-eqz v6, :cond_14

    const/high16 v28, 0xc00000

    or-int v0, v0, v28

    move-object/from16 v11, p7

    goto :goto_f

    :cond_14
    and-int v28, v10, v65

    move-object/from16 v11, p7

    if-nez v28, :cond_16

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    const/high16 v29, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v29, 0x400000

    :goto_e
    or-int v0, v0, v29

    :cond_16
    :goto_f
    and-int/lit16 v1, v8, 0x100

    const/high16 v66, 0xe000000

    if-eqz v1, :cond_17

    const/high16 v29, 0x6000000

    or-int v0, v0, v29

    move-object/from16 v2, p8

    goto :goto_11

    :cond_17
    and-int v29, v10, v66

    move-object/from16 v2, p8

    if-nez v29, :cond_19

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    const/high16 v29, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v29, 0x2000000

    :goto_10
    or-int v0, v0, v29

    :cond_19
    :goto_11
    and-int/lit16 v2, v8, 0x200

    if-eqz v2, :cond_1a

    const/high16 v29, 0x30000000

    or-int v0, v0, v29

    move-object/from16 v4, p9

    goto :goto_13

    :cond_1a
    const/high16 v29, 0x70000000

    and-int v29, v10, v29

    move-object/from16 v4, p9

    if-nez v29, :cond_1c

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b

    const/high16 v29, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v29, 0x10000000

    :goto_12
    or-int v0, v0, v29

    :cond_1c
    :goto_13
    and-int/lit16 v4, v8, 0x400

    if-eqz v4, :cond_1d

    or-int/lit8 v21, v9, 0x6

    move/from16 v5, p10

    goto :goto_15

    :cond_1d
    and-int/lit8 v29, v9, 0xe

    move/from16 v5, p10

    if-nez v29, :cond_1f

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v29

    if-eqz v29, :cond_1e

    const/16 v21, 0x4

    goto :goto_14

    :cond_1e
    const/16 v21, 0x2

    :goto_14
    or-int v21, v9, v21

    goto :goto_15

    :cond_1f
    move/from16 v21, v9

    :goto_15
    and-int/lit16 v5, v8, 0x800

    if-eqz v5, :cond_20

    or-int/lit8 v21, v21, 0x30

    move-object/from16 v11, p11

    goto :goto_17

    :cond_20
    and-int/lit8 v29, v9, 0x70

    move-object/from16 v11, p11

    if-nez v29, :cond_22

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_21

    const/16 v26, 0x20

    goto :goto_16

    :cond_21
    const/16 v26, 0x10

    :goto_16
    or-int v21, v21, v26

    :cond_22
    :goto_17
    and-int/lit16 v11, v9, 0x380

    if-nez v11, :cond_25

    and-int/lit16 v11, v8, 0x1000

    if-nez v11, :cond_23

    move-object/from16 v11, p12

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    const/16 v27, 0x100

    goto :goto_18

    :cond_23
    move-object/from16 v11, p12

    :cond_24
    const/16 v27, 0x80

    :goto_18
    or-int v21, v21, v27

    goto :goto_19

    :cond_25
    move-object/from16 v11, p12

    :goto_19
    and-int/lit16 v11, v9, 0x1c00

    if-nez v11, :cond_28

    and-int/lit16 v11, v8, 0x2000

    if-nez v11, :cond_26

    move-object/from16 v11, p13

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    move/from16 v16, v17

    goto :goto_1a

    :cond_26
    move-object/from16 v11, p13

    :cond_27
    :goto_1a
    or-int v21, v21, v16

    :goto_1b
    move/from16 v11, v21

    goto :goto_1c

    :cond_28
    move-object/from16 v11, p13

    goto :goto_1b

    :goto_1c
    and-int/lit16 v12, v8, 0x4000

    if-eqz v12, :cond_29

    or-int/lit16 v11, v11, 0x6000

    move/from16 v13, p14

    goto :goto_1e

    :cond_29
    const v16, 0xe000

    and-int v16, v9, v16

    move/from16 v13, p14

    if-nez v16, :cond_2b

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_2a

    goto :goto_1d

    :cond_2a
    move/from16 v19, v20

    :goto_1d
    or-int v11, v11, v19

    :cond_2b
    :goto_1e
    const v16, 0x8000

    and-int v16, v8, v16

    if-eqz v16, :cond_2c

    const/high16 v17, 0x30000

    or-int v11, v11, v17

    move/from16 v13, p15

    goto :goto_20

    :cond_2c
    const/high16 v17, 0x70000

    and-int v17, v9, v17

    move/from16 v13, p15

    if-nez v17, :cond_2e

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_2d

    move/from16 v17, v24

    goto :goto_1f

    :cond_2d
    move/from16 v17, v23

    :goto_1f
    or-int v11, v11, v17

    :cond_2e
    :goto_20
    and-int v17, v8, v23

    if-eqz v17, :cond_2f

    const/high16 v19, 0x180000

    or-int v11, v11, v19

    move-object/from16 v13, p16

    goto :goto_22

    :cond_2f
    and-int v19, v9, v64

    move-object/from16 v13, p16

    if-nez v19, :cond_31

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    const/high16 v19, 0x100000

    goto :goto_21

    :cond_30
    const/high16 v19, 0x80000

    :goto_21
    or-int v11, v11, v19

    :cond_31
    :goto_22
    and-int v19, v9, v65

    if-nez v19, :cond_33

    and-int v19, v8, v24

    move-object/from16 v13, p17

    if-nez v19, :cond_32

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_32

    const/high16 v19, 0x800000

    goto :goto_23

    :cond_32
    const/high16 v19, 0x400000

    :goto_23
    or-int v11, v11, v19

    goto :goto_24

    :cond_33
    move-object/from16 v13, p17

    :goto_24
    and-int v19, v9, v66

    if-nez v19, :cond_35

    const/high16 v19, 0x40000

    and-int v19, v8, v19

    move-object/from16 v9, p18

    if-nez v19, :cond_34

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_34

    const/high16 v19, 0x4000000

    goto :goto_25

    :cond_34
    const/high16 v19, 0x2000000

    :goto_25
    or-int v11, v11, v19

    goto :goto_26

    :cond_35
    move-object/from16 v9, p18

    :goto_26
    const v19, 0x5b6db6db

    and-int v9, v0, v19

    const v13, 0x12492492

    if-ne v9, v13, :cond_37

    const v9, 0xb6db6db

    and-int/2addr v9, v11

    const v13, 0x2492492

    if-ne v9, v13, :cond_37

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_36

    goto :goto_27

    .line 2
    :cond_36
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v31, v7

    move-object/from16 v7, p6

    goto/16 :goto_3d

    .line 3
    :cond_37
    :goto_27
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v9, v10, 0x1

    if-eqz v9, :cond_3e

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v9

    if-eqz v9, :cond_38

    goto :goto_28

    .line 4
    :cond_38
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v8, 0x20

    if-eqz v1, :cond_39

    const v1, -0x70001

    and-int/2addr v0, v1

    :cond_39
    and-int/lit16 v1, v8, 0x1000

    if-eqz v1, :cond_3a

    and-int/lit16 v11, v11, -0x381

    :cond_3a
    and-int/lit16 v1, v8, 0x2000

    if-eqz v1, :cond_3b

    and-int/lit16 v11, v11, -0x1c01

    :cond_3b
    and-int v1, v8, v24

    if-eqz v1, :cond_3c

    const v1, -0x1c00001

    and-int/2addr v11, v1

    :cond_3c
    const/high16 v1, 0x40000

    and-int/2addr v1, v8

    if-eqz v1, :cond_3d

    const v1, -0xe000001

    and-int/2addr v11, v1

    :cond_3d
    move-object/from16 v12, p2

    move/from16 v10, p3

    move/from16 v19, p4

    move-object/from16 v9, p5

    move-object/from16 v67, p6

    move-object/from16 v20, p7

    move-object/from16 v21, p8

    move-object/from16 v22, p9

    move/from16 v6, p10

    move-object/from16 v23, p11

    move-object/from16 v24, p12

    move-object/from16 v25, p13

    move/from16 v26, p14

    move/from16 v68, p15

    move-object/from16 v27, p16

    move-object/from16 v4, p17

    move-object/from16 v3, p18

    goto/16 :goto_3a

    :cond_3e
    :goto_28
    if-eqz v3, :cond_3f

    .line 5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_29

    :cond_3f
    move-object/from16 v3, p2

    :goto_29
    if-eqz v14, :cond_40

    const/4 v9, 0x1

    goto :goto_2a

    :cond_40
    move/from16 v9, p3

    :goto_2a
    if-eqz v18, :cond_41

    const/4 v14, 0x0

    goto :goto_2b

    :cond_41
    move/from16 v14, p4

    :goto_2b
    and-int/lit8 v18, v8, 0x20

    if-eqz v18, :cond_42

    .line 6
    invoke-static {}, Landroidx/compose/material/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    .line 7
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/TextStyle;

    const v18, -0x70001

    and-int v0, v0, v18

    goto :goto_2c

    :cond_42
    move-object/from16 v13, p5

    :goto_2c
    if-eqz v25, :cond_43

    const/16 v67, 0x0

    goto :goto_2d

    :cond_43
    move-object/from16 v67, p6

    :goto_2d
    if-eqz v6, :cond_44

    const/4 v6, 0x0

    goto :goto_2e

    :cond_44
    move-object/from16 v6, p7

    :goto_2e
    if-eqz v1, :cond_45

    const/4 v1, 0x0

    goto :goto_2f

    :cond_45
    move-object/from16 v1, p8

    :goto_2f
    if-eqz v2, :cond_46

    const/4 v2, 0x0

    goto :goto_30

    :cond_46
    move-object/from16 v2, p9

    :goto_30
    if-eqz v4, :cond_47

    const/4 v4, 0x0

    goto :goto_31

    :cond_47
    move/from16 v4, p10

    :goto_31
    if-eqz v5, :cond_48

    .line 8
    sget-object v5, Landroidx/compose/ui/text/input/VisualTransformation;->Companion:Landroidx/compose/ui/text/input/VisualTransformation$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->getNone()Landroidx/compose/ui/text/input/VisualTransformation;

    move-result-object v5

    goto :goto_32

    :cond_48
    move-object/from16 v5, p11

    :goto_32
    and-int/lit16 v10, v8, 0x1000

    if-eqz v10, :cond_49

    .line 9
    sget-object v10, Landroidx/compose/foundation/text/KeyboardOptions;->Companion:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual {v10}, Landroidx/compose/foundation/text/KeyboardOptions$Companion;->getDefault()Landroidx/compose/foundation/text/KeyboardOptions;

    move-result-object v10

    and-int/lit16 v11, v11, -0x381

    goto :goto_33

    :cond_49
    move-object/from16 v10, p12

    :goto_33
    move/from16 p2, v0

    and-int/lit16 v0, v8, 0x2000

    if-eqz v0, :cond_4a

    .line 10
    new-instance v0, Landroidx/compose/foundation/text/KeyboardActions;

    const/16 v18, 0x3f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 p3, v0

    move-object/from16 p4, v20

    move-object/from16 p5, v21

    move-object/from16 p6, v22

    move-object/from16 p7, v23

    move-object/from16 p8, v25

    move-object/from16 p9, v26

    move/from16 p10, v18

    move-object/from16 p11, v19

    invoke-direct/range {p3 .. p11}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    and-int/lit16 v11, v11, -0x1c01

    goto :goto_34

    :cond_4a
    move-object/from16 v0, p13

    :goto_34
    if-eqz v12, :cond_4b

    const/4 v12, 0x0

    goto :goto_35

    :cond_4b
    move/from16 v12, p14

    :goto_35
    if-eqz v16, :cond_4c

    const v16, 0x7fffffff

    move/from16 v68, v16

    goto :goto_36

    :cond_4c
    move/from16 v68, p15

    :goto_36
    move-object/from16 p3, v0

    if-eqz v17, :cond_4e

    const v0, -0x1d58f75c

    .line 11
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 12
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 13
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p4, v1

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_4d

    .line 14
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 15
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 16
    :cond_4d
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_37

    :cond_4e
    move-object/from16 p4, v1

    move-object/from16 v0, p16

    :goto_37
    and-int v1, v8, v24

    if-eqz v1, :cond_4f

    .line 17
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move-object/from16 p5, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v7, v0}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v0

    invoke-static {}, Landroidx/compose/foundation/shape/CornerSizeKt;->getZeroCornerSize()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    invoke-static {}, Landroidx/compose/foundation/shape/CornerSizeKt;->getZeroCornerSize()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v16

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 p6, v0

    move-object/from16 p7, v19

    move-object/from16 p8, v20

    move-object/from16 p9, v1

    move-object/from16 p10, v16

    move/from16 p11, v17

    move-object/from16 p12, v18

    invoke-static/range {p6 .. p12}, Landroidx/compose/foundation/shape/CornerBasedShape;->copy$default(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;ILjava/lang/Object;)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v0

    const v1, -0x1c00001

    and-int/2addr v1, v11

    move v11, v1

    goto :goto_38

    :cond_4f
    move-object/from16 p5, v0

    move-object/from16 v0, p17

    :goto_38
    const/high16 v1, 0x40000

    and-int/2addr v1, v8

    if-eqz v1, :cond_50

    .line 18
    sget-object v16, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    const/16 v62, 0x30

    const v63, 0x1fffff

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v59, v7

    invoke-virtual/range {v16 .. v63}, Landroidx/compose/material/TextFieldDefaults;->textFieldColors-dx8h9Zs(JJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material/TextFieldColors;

    move-result-object v1

    const v16, -0xe000001

    and-int v11, v11, v16

    move-object/from16 v25, p3

    move-object/from16 v21, p4

    move-object/from16 v27, p5

    move-object/from16 v22, v2

    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v10

    move/from16 v26, v12

    move/from16 v19, v14

    move-object v12, v3

    move v6, v4

    move v10, v9

    move-object v9, v13

    move-object v4, v0

    move-object v3, v1

    :goto_39
    move/from16 v0, p2

    goto :goto_3a

    :cond_50
    move-object/from16 v25, p3

    move-object/from16 v21, p4

    move-object/from16 v27, p5

    move-object/from16 v22, v2

    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v10

    move/from16 v26, v12

    move/from16 v19, v14

    move-object v12, v3

    move v6, v4

    move v10, v9

    move-object v9, v13

    move-object/from16 v3, p18

    move-object v4, v0

    goto :goto_39

    :goto_3a
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endDefaults()V

    const v1, -0x31a6fd74

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 19
    invoke-virtual {v9}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v1

    .line 20
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v13

    cmp-long v5, v1, v13

    if-eqz v5, :cond_51

    :goto_3b
    move-wide/from16 v29, v1

    goto :goto_3c

    :cond_51
    shr-int/lit8 v1, v0, 0x9

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v2, v11, 0x15

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    .line 21
    invoke-interface {v3, v10, v7, v1}, Landroidx/compose/material/TextFieldColors;->textColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v1

    goto :goto_3b

    .line 22
    :goto_3c
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 23
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v28, v1

    const v52, 0x3fffe

    const/16 v53, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    invoke-direct/range {v28 .. v53}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v9, v1}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v5

    .line 24
    sget-object v1, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    shr-int/lit8 v2, v0, 0x9

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v13, v11, 0x15

    and-int/lit8 v14, v13, 0x70

    or-int/2addr v2, v14

    .line 25
    invoke-interface {v3, v10, v7, v2}, Landroidx/compose/material/TextFieldColors;->backgroundColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    move-object/from16 p16, v9

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v8

    invoke-static {v12, v8, v9, v4}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move/from16 p4, v10

    move/from16 p5, v6

    move-object/from16 p6, v27

    move-object/from16 p7, v3

    move/from16 p8, v13

    move/from16 p9, v16

    move/from16 p10, v8

    move-object/from16 p11, v9

    .line 26
    invoke-static/range {p2 .. p11}, Landroidx/compose/material/TextFieldDefaults;->indicatorLine-gv0btCI$default(Landroidx/compose/material/TextFieldDefaults;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 27
    invoke-virtual {v1}, Landroidx/compose/material/TextFieldDefaults;->getMinWidth-D9Ej5fM()F

    move-result v8

    .line 28
    invoke-virtual {v1}, Landroidx/compose/material/TextFieldDefaults;->getMinHeight-D9Ej5fM()F

    move-result v1

    .line 29
    invoke-static {v2, v8, v1}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 30
    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v8, 0x0

    move-object v13, v1

    and-int/lit8 v9, v11, 0xe

    or-int/2addr v9, v14

    invoke-interface {v3, v6, v7, v9}, Landroidx/compose/material/TextFieldColors;->cursorColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v14

    invoke-direct {v1, v14, v15, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    new-instance v1, Landroidx/compose/material/TextFieldKt$TextField$2;

    move-object/from16 p2, v1

    move-object/from16 p3, p0

    move/from16 p5, v26

    move-object/from16 p6, v23

    move-object/from16 p7, v27

    move/from16 p8, v6

    move-object/from16 p9, v67

    move-object/from16 p10, v20

    move-object/from16 p11, v21

    move-object/from16 p12, v22

    move-object/from16 p13, v3

    move/from16 p14, v0

    move/from16 p15, v11

    invoke-direct/range {p2 .. p15}, Landroidx/compose/material/TextFieldKt$TextField$2;-><init>(Ljava/lang/String;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/TextFieldColors;II)V

    const v8, -0x76df9420

    const/4 v9, 0x1

    invoke-static {v7, v8, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v14

    const v1, 0xfc7e

    and-int/2addr v0, v1

    shl-int/lit8 v1, v11, 0xc

    and-int v8, v1, v64

    or-int/2addr v0, v8

    sget v8, Landroidx/compose/foundation/text/KeyboardActions;->$stable:I

    shl-int/lit8 v8, v8, 0x15

    or-int/2addr v0, v8

    and-int v8, v1, v65

    or-int/2addr v0, v8

    and-int v8, v1, v66

    or-int/2addr v0, v8

    const/high16 v8, 0x70000000

    and-int/2addr v1, v8

    or-int v16, v0, v1

    shr-int/lit8 v0, v11, 0x3

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0x6000

    shr-int/lit8 v1, v11, 0xc

    and-int/lit16 v1, v1, 0x380

    or-int v17, v0, v1

    const/16 v18, 0x800

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v28, v3

    move v3, v10

    move-object/from16 v29, v4

    move/from16 v4, v19

    move/from16 v30, v6

    move-object/from16 v6, v24

    move-object/from16 v31, v7

    move-object/from16 v7, v25

    move/from16 v8, v26

    move-object/from16 v32, p16

    move/from16 v9, v68

    move/from16 v33, v10

    move-object/from16 v10, v23

    move-object/from16 v34, v12

    move-object/from16 v12, v27

    move-object/from16 v15, v31

    .line 32
    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lat/n;Landroidx/compose/runtime/Composer;III)V

    move/from16 v5, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move/from16 v15, v26

    move-object/from16 v17, v27

    move-object/from16 v19, v28

    move-object/from16 v18, v29

    move/from16 v11, v30

    move-object/from16 v6, v32

    move/from16 v4, v33

    move-object/from16 v3, v34

    move-object/from16 v7, v67

    move/from16 v16, v68

    .line 33
    :goto_3d
    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v2

    if-nez v2, :cond_52

    goto :goto_3e

    :cond_52
    new-instance v1, Landroidx/compose/material/TextFieldKt$TextField$3;

    move-object v0, v1

    move-object/from16 v69, v1

    move-object/from16 v1, p0

    move-object/from16 v70, v2

    move-object/from16 v2, p1

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    invoke-direct/range {v0 .. v22}, Landroidx/compose/material/TextFieldKt$TextField$3;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;III)V

    move-object/from16 v1, v69

    move-object/from16 v0, v70

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_3e
    return-void
.end method

.method public static final TextFieldLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lat/n;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 26
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/foundation/layout/PaddingValues;
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
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/n<",
            "-",
            "Landroidx/compose/ui/Modifier;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;ZF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v6, p5

    .line 12
    .line 13
    move/from16 v7, p6

    .line 14
    .line 15
    move/from16 v8, p7

    .line 16
    .line 17
    move-object/from16 v9, p8

    .line 18
    .line 19
    move/from16 v10, p10

    .line 20
    .line 21
    const-string v11, "modifier"

    .line 22
    .line 23
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v11, "textField"

    .line 27
    .line 28
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v11, "paddingValues"

    .line 32
    .line 33
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const v11, -0x7dea4cb5

    .line 37
    .line 38
    .line 39
    move-object/from16 v12, p9

    .line 40
    .line 41
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    and-int/lit8 v12, v10, 0xe

    .line 46
    .line 47
    if-nez v12, :cond_1

    .line 48
    .line 49
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    if-eqz v12, :cond_0

    .line 54
    .line 55
    const/4 v12, 0x4

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v12, 0x2

    .line 58
    :goto_0
    or-int/2addr v12, v10

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v12, v10

    .line 61
    :goto_1
    and-int/lit8 v13, v10, 0x70

    .line 62
    .line 63
    if-nez v13, :cond_3

    .line 64
    .line 65
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    if-eqz v13, :cond_2

    .line 70
    .line 71
    const/16 v13, 0x20

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const/16 v13, 0x10

    .line 75
    .line 76
    :goto_2
    or-int/2addr v12, v13

    .line 77
    :cond_3
    and-int/lit16 v13, v10, 0x380

    .line 78
    .line 79
    if-nez v13, :cond_5

    .line 80
    .line 81
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    if-eqz v13, :cond_4

    .line 86
    .line 87
    const/16 v13, 0x100

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_4
    const/16 v13, 0x80

    .line 91
    .line 92
    :goto_3
    or-int/2addr v12, v13

    .line 93
    :cond_5
    and-int/lit16 v13, v10, 0x1c00

    .line 94
    .line 95
    if-nez v13, :cond_7

    .line 96
    .line 97
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-eqz v13, :cond_6

    .line 102
    .line 103
    const/16 v13, 0x800

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    const/16 v13, 0x400

    .line 107
    .line 108
    :goto_4
    or-int/2addr v12, v13

    .line 109
    :cond_7
    const v13, 0xe000

    .line 110
    .line 111
    .line 112
    and-int/2addr v13, v10

    .line 113
    if-nez v13, :cond_9

    .line 114
    .line 115
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    if-eqz v13, :cond_8

    .line 120
    .line 121
    const/16 v13, 0x4000

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_8
    const/16 v13, 0x2000

    .line 125
    .line 126
    :goto_5
    or-int/2addr v12, v13

    .line 127
    :cond_9
    const/high16 v13, 0x70000

    .line 128
    .line 129
    and-int/2addr v13, v10

    .line 130
    if-nez v13, :cond_b

    .line 131
    .line 132
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    if-eqz v13, :cond_a

    .line 137
    .line 138
    const/high16 v13, 0x20000

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_a
    const/high16 v13, 0x10000

    .line 142
    .line 143
    :goto_6
    or-int/2addr v12, v13

    .line 144
    :cond_b
    const/high16 v13, 0x380000

    .line 145
    .line 146
    and-int/2addr v13, v10

    .line 147
    if-nez v13, :cond_d

    .line 148
    .line 149
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    if-eqz v13, :cond_c

    .line 154
    .line 155
    const/high16 v13, 0x100000

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_c
    const/high16 v13, 0x80000

    .line 159
    .line 160
    :goto_7
    or-int/2addr v12, v13

    .line 161
    :cond_d
    const/high16 v13, 0x1c00000

    .line 162
    .line 163
    and-int/2addr v13, v10

    .line 164
    if-nez v13, :cond_f

    .line 165
    .line 166
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    if-eqz v13, :cond_e

    .line 171
    .line 172
    const/high16 v13, 0x800000

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_e
    const/high16 v13, 0x400000

    .line 176
    .line 177
    :goto_8
    or-int/2addr v12, v13

    .line 178
    :cond_f
    const/high16 v13, 0xe000000

    .line 179
    .line 180
    and-int/2addr v13, v10

    .line 181
    if-nez v13, :cond_11

    .line 182
    .line 183
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-eqz v13, :cond_10

    .line 188
    .line 189
    const/high16 v13, 0x4000000

    .line 190
    .line 191
    goto :goto_9

    .line 192
    :cond_10
    const/high16 v13, 0x2000000

    .line 193
    .line 194
    :goto_9
    or-int/2addr v12, v13

    .line 195
    :cond_11
    const v13, 0xb6db6db

    .line 196
    .line 197
    .line 198
    and-int/2addr v13, v12

    .line 199
    const v14, 0x2492492

    .line 200
    .line 201
    .line 202
    if-ne v13, v14, :cond_13

    .line 203
    .line 204
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 205
    .line 206
    .line 207
    move-result v13

    .line 208
    if-nez v13, :cond_12

    .line 209
    .line 210
    goto :goto_a

    .line 211
    :cond_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_12

    .line 215
    .line 216
    :cond_13
    :goto_a
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 221
    .line 222
    .line 223
    move-result-object v14

    .line 224
    const v15, 0x607fb4c4

    .line 225
    .line 226
    .line 227
    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v14

    .line 238
    or-int/2addr v13, v14

    .line 239
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v14

    .line 243
    or-int/2addr v13, v14

    .line 244
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v14

    .line 248
    if-nez v13, :cond_14

    .line 249
    .line 250
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 251
    .line 252
    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v13

    .line 256
    if-ne v14, v13, :cond_15

    .line 257
    .line 258
    :cond_14
    new-instance v14, Landroidx/compose/material/TextFieldMeasurePolicy;

    .line 259
    .line 260
    invoke-direct {v14, v7, v8, v9}, Landroidx/compose/material/TextFieldMeasurePolicy;-><init>(ZFLandroidx/compose/foundation/layout/PaddingValues;)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_15
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 267
    .line 268
    .line 269
    check-cast v14, Landroidx/compose/material/TextFieldMeasurePolicy;

    .line 270
    .line 271
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 272
    .line 273
    .line 274
    move-result-object v13

    .line 275
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v13

    .line 279
    check-cast v13, Landroidx/compose/ui/unit/LayoutDirection;

    .line 280
    .line 281
    const v15, -0x4ee9b9da

    .line 282
    .line 283
    .line 284
    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 285
    .line 286
    .line 287
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 288
    .line 289
    .line 290
    move-result-object v15

    .line 291
    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v15

    .line 295
    check-cast v15, Landroidx/compose/ui/unit/Density;

    .line 296
    .line 297
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 306
    .line 307
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 316
    .line 317
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 318
    .line 319
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 328
    .line 329
    .line 330
    move-result-object v17

    .line 331
    if-nez v17, :cond_16

    .line 332
    .line 333
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 334
    .line 335
    .line 336
    :cond_16
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 337
    .line 338
    .line 339
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 340
    .line 341
    .line 342
    move-result v17

    .line 343
    if-eqz v17, :cond_17

    .line 344
    .line 345
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 346
    .line 347
    .line 348
    goto :goto_b

    .line 349
    :cond_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 350
    .line 351
    .line 352
    :goto_b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 353
    .line 354
    .line 355
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 356
    .line 357
    .line 358
    move-result-object v7

    .line 359
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    invoke-static {v7, v14, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 367
    .line 368
    .line 369
    move-result-object v10

    .line 370
    invoke-static {v7, v15, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 374
    .line 375
    .line 376
    move-result-object v10

    .line 377
    invoke-static {v7, v0, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {v7, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 388
    .line 389
    .line 390
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    const/4 v1, 0x0

    .line 399
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    invoke-interface {v8, v0, v11, v7}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    const v0, 0x7ab4aae9

    .line 407
    .line 408
    .line 409
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 410
    .line 411
    .line 412
    const v7, 0x264e5502

    .line 413
    .line 414
    .line 415
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 416
    .line 417
    .line 418
    const v7, 0xf302fc2

    .line 419
    .line 420
    .line 421
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 422
    .line 423
    .line 424
    const v8, 0x2bb5b5d7

    .line 425
    .line 426
    .line 427
    if-eqz v5, :cond_1a

    .line 428
    .line 429
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 430
    .line 431
    const-string v14, "Leading"

    .line 432
    .line 433
    invoke-static {v10, v14}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 434
    .line 435
    .line 436
    move-result-object v10

    .line 437
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getIconDefaultSizeModifier()Landroidx/compose/ui/Modifier;

    .line 438
    .line 439
    .line 440
    move-result-object v14

    .line 441
    invoke-interface {v10, v14}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 442
    .line 443
    .line 444
    move-result-object v10

    .line 445
    sget-object v14, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 446
    .line 447
    invoke-virtual {v14}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 448
    .line 449
    .line 450
    move-result-object v14

    .line 451
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 452
    .line 453
    .line 454
    const/4 v15, 0x6

    .line 455
    invoke-static {v14, v1, v11, v15}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 456
    .line 457
    .line 458
    move-result-object v14

    .line 459
    const v15, -0x4ee9b9da

    .line 460
    .line 461
    .line 462
    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 463
    .line 464
    .line 465
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 466
    .line 467
    .line 468
    move-result-object v15

    .line 469
    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v15

    .line 473
    check-cast v15, Landroidx/compose/ui/unit/Density;

    .line 474
    .line 475
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 476
    .line 477
    .line 478
    move-result-object v8

    .line 479
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v8

    .line 483
    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    .line 484
    .line 485
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 486
    .line 487
    .line 488
    move-result-object v7

    .line 489
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v7

    .line 493
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 494
    .line 495
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 500
    .line 501
    .line 502
    move-result-object v10

    .line 503
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 504
    .line 505
    .line 506
    move-result-object v18

    .line 507
    if-nez v18, :cond_18

    .line 508
    .line 509
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 510
    .line 511
    .line 512
    :cond_18
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 513
    .line 514
    .line 515
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 516
    .line 517
    .line 518
    move-result v18

    .line 519
    if-eqz v18, :cond_19

    .line 520
    .line 521
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 522
    .line 523
    .line 524
    goto :goto_c

    .line 525
    :cond_19
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 526
    .line 527
    .line 528
    :goto_c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 529
    .line 530
    .line 531
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-static {v0, v14, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    invoke-static {v0, v15, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    invoke-static {v0, v8, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    invoke-static {v0, v7, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 561
    .line 562
    .line 563
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 564
    .line 565
    .line 566
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    const/4 v1, 0x0

    .line 575
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 576
    .line 577
    .line 578
    move-result-object v7

    .line 579
    invoke-interface {v10, v0, v11, v7}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    const v0, 0x7ab4aae9

    .line 583
    .line 584
    .line 585
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 586
    .line 587
    .line 588
    const v0, -0x7f65a980

    .line 589
    .line 590
    .line 591
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 592
    .line 593
    .line 594
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 595
    .line 596
    const v0, 0x3109dfa3

    .line 597
    .line 598
    .line 599
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 600
    .line 601
    .line 602
    shr-int/lit8 v0, v12, 0xc

    .line 603
    .line 604
    and-int/lit8 v0, v0, 0xe

    .line 605
    .line 606
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-interface {v5, v11, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 614
    .line 615
    .line 616
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 617
    .line 618
    .line 619
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 620
    .line 621
    .line 622
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 623
    .line 624
    .line 625
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 626
    .line 627
    .line 628
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 629
    .line 630
    .line 631
    :cond_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 632
    .line 633
    .line 634
    const v0, 0xf3030df

    .line 635
    .line 636
    .line 637
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 638
    .line 639
    .line 640
    if-eqz v6, :cond_1d

    .line 641
    .line 642
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 643
    .line 644
    const-string v1, "Trailing"

    .line 645
    .line 646
    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getIconDefaultSizeModifier()Landroidx/compose/ui/Modifier;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 659
    .line 660
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    const v7, 0x2bb5b5d7

    .line 665
    .line 666
    .line 667
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 668
    .line 669
    .line 670
    const/4 v7, 0x0

    .line 671
    const/4 v8, 0x6

    .line 672
    invoke-static {v1, v7, v11, v8}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    const v7, -0x4ee9b9da

    .line 677
    .line 678
    .line 679
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 680
    .line 681
    .line 682
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 683
    .line 684
    .line 685
    move-result-object v7

    .line 686
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v7

    .line 690
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 691
    .line 692
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 693
    .line 694
    .line 695
    move-result-object v8

    .line 696
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v8

    .line 700
    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    .line 701
    .line 702
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 703
    .line 704
    .line 705
    move-result-object v10

    .line 706
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v10

    .line 710
    check-cast v10, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 711
    .line 712
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 713
    .line 714
    .line 715
    move-result-object v14

    .line 716
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 721
    .line 722
    .line 723
    move-result-object v15

    .line 724
    if-nez v15, :cond_1b

    .line 725
    .line 726
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 727
    .line 728
    .line 729
    :cond_1b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 730
    .line 731
    .line 732
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 733
    .line 734
    .line 735
    move-result v15

    .line 736
    if-eqz v15, :cond_1c

    .line 737
    .line 738
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 739
    .line 740
    .line 741
    goto :goto_d

    .line 742
    :cond_1c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 743
    .line 744
    .line 745
    :goto_d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 746
    .line 747
    .line 748
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 749
    .line 750
    .line 751
    move-result-object v14

    .line 752
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 753
    .line 754
    .line 755
    move-result-object v15

    .line 756
    invoke-static {v14, v1, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 757
    .line 758
    .line 759
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    invoke-static {v14, v7, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    invoke-static {v14, v8, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    invoke-static {v14, v10, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 778
    .line 779
    .line 780
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 781
    .line 782
    .line 783
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 784
    .line 785
    .line 786
    move-result-object v1

    .line 787
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    const/4 v7, 0x0

    .line 792
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 793
    .line 794
    .line 795
    move-result-object v8

    .line 796
    invoke-interface {v0, v1, v11, v8}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    const v0, 0x7ab4aae9

    .line 800
    .line 801
    .line 802
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 803
    .line 804
    .line 805
    const v0, -0x7f65a980

    .line 806
    .line 807
    .line 808
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 809
    .line 810
    .line 811
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 812
    .line 813
    const v0, -0x3c139426

    .line 814
    .line 815
    .line 816
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 817
    .line 818
    .line 819
    shr-int/lit8 v0, v12, 0xf

    .line 820
    .line 821
    and-int/lit8 v0, v0, 0xe

    .line 822
    .line 823
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    invoke-interface {v6, v11, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 831
    .line 832
    .line 833
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 834
    .line 835
    .line 836
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 837
    .line 838
    .line 839
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 840
    .line 841
    .line 842
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 843
    .line 844
    .line 845
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 846
    .line 847
    .line 848
    :cond_1d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 849
    .line 850
    .line 851
    invoke-static {v9, v13}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 852
    .line 853
    .line 854
    move-result v0

    .line 855
    invoke-static {v9, v13}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 856
    .line 857
    .line 858
    move-result v1

    .line 859
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 860
    .line 861
    if-eqz v5, :cond_1e

    .line 862
    .line 863
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getHorizontalIconPadding()F

    .line 864
    .line 865
    .line 866
    move-result v8

    .line 867
    sub-float/2addr v0, v8

    .line 868
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    const/4 v8, 0x0

    .line 873
    int-to-float v10, v8

    .line 874
    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 875
    .line 876
    .line 877
    move-result v10

    .line 878
    invoke-static {v0, v10}, Lkotlin/ranges/e;->d(FF)F

    .line 879
    .line 880
    .line 881
    move-result v0

    .line 882
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 883
    .line 884
    .line 885
    move-result v0

    .line 886
    :goto_e
    move/from16 v20, v0

    .line 887
    .line 888
    goto :goto_f

    .line 889
    :cond_1e
    const/4 v8, 0x0

    .line 890
    goto :goto_e

    .line 891
    :goto_f
    if-eqz v6, :cond_1f

    .line 892
    .line 893
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getHorizontalIconPadding()F

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    sub-float/2addr v1, v0

    .line 898
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 899
    .line 900
    .line 901
    move-result v0

    .line 902
    int-to-float v1, v8

    .line 903
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 904
    .line 905
    .line 906
    move-result v1

    .line 907
    invoke-static {v0, v1}, Lkotlin/ranges/e;->d(FF)F

    .line 908
    .line 909
    .line 910
    move-result v0

    .line 911
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 912
    .line 913
    .line 914
    move-result v1

    .line 915
    :cond_1f
    move/from16 v22, v1

    .line 916
    .line 917
    const/16 v24, 0xa

    .line 918
    .line 919
    const/16 v25, 0x0

    .line 920
    .line 921
    const/16 v21, 0x0

    .line 922
    .line 923
    const/16 v23, 0x0

    .line 924
    .line 925
    move-object/from16 v19, v7

    .line 926
    .line 927
    invoke-static/range {v19 .. v25}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    const v1, 0xf3034d2

    .line 932
    .line 933
    .line 934
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 935
    .line 936
    .line 937
    if-eqz v4, :cond_20

    .line 938
    .line 939
    const-string v1, "Hint"

    .line 940
    .line 941
    invoke-static {v7, v1}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 942
    .line 943
    .line 944
    move-result-object v1

    .line 945
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    const/4 v8, 0x6

    .line 950
    shr-int/lit8 v10, v12, 0x6

    .line 951
    .line 952
    and-int/lit8 v8, v10, 0x70

    .line 953
    .line 954
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 955
    .line 956
    .line 957
    move-result-object v8

    .line 958
    invoke-interface {v4, v1, v11, v8}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    .line 960
    .line 961
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 962
    .line 963
    .line 964
    const v1, 0xf303553

    .line 965
    .line 966
    .line 967
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 968
    .line 969
    .line 970
    if-eqz v3, :cond_23

    .line 971
    .line 972
    const-string v1, "Label"

    .line 973
    .line 974
    invoke-static {v7, v1}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 975
    .line 976
    .line 977
    move-result-object v1

    .line 978
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 979
    .line 980
    .line 981
    move-result-object v1

    .line 982
    const v8, 0x2bb5b5d7

    .line 983
    .line 984
    .line 985
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 986
    .line 987
    .line 988
    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 989
    .line 990
    invoke-virtual {v8}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 991
    .line 992
    .line 993
    move-result-object v8

    .line 994
    const/4 v10, 0x0

    .line 995
    invoke-static {v8, v10, v11, v10}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 996
    .line 997
    .line 998
    move-result-object v8

    .line 999
    const v10, -0x4ee9b9da

    .line 1000
    .line 1001
    .line 1002
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1003
    .line 1004
    .line 1005
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v10

    .line 1009
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v10

    .line 1013
    check-cast v10, Landroidx/compose/ui/unit/Density;

    .line 1014
    .line 1015
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v13

    .line 1019
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v13

    .line 1023
    check-cast v13, Landroidx/compose/ui/unit/LayoutDirection;

    .line 1024
    .line 1025
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v14

    .line 1029
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v14

    .line 1033
    check-cast v14, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 1034
    .line 1035
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v15

    .line 1039
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v1

    .line 1043
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v19

    .line 1047
    if-nez v19, :cond_21

    .line 1048
    .line 1049
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1050
    .line 1051
    .line 1052
    :cond_21
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1053
    .line 1054
    .line 1055
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 1056
    .line 1057
    .line 1058
    move-result v19

    .line 1059
    if-eqz v19, :cond_22

    .line 1060
    .line 1061
    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1062
    .line 1063
    .line 1064
    goto :goto_10

    .line 1065
    :cond_22
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1066
    .line 1067
    .line 1068
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 1069
    .line 1070
    .line 1071
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v15

    .line 1075
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v4

    .line 1079
    invoke-static {v15, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v4

    .line 1086
    invoke-static {v15, v10, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v4

    .line 1093
    invoke-static {v15, v13, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v4

    .line 1100
    invoke-static {v15, v14, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1101
    .line 1102
    .line 1103
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 1104
    .line 1105
    .line 1106
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v4

    .line 1110
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v4

    .line 1114
    const/4 v8, 0x0

    .line 1115
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v10

    .line 1119
    invoke-interface {v1, v4, v11, v10}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    const v1, 0x7ab4aae9

    .line 1123
    .line 1124
    .line 1125
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1126
    .line 1127
    .line 1128
    const v1, -0x7f65a980

    .line 1129
    .line 1130
    .line 1131
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1132
    .line 1133
    .line 1134
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 1135
    .line 1136
    const v1, 0x4ea219dc

    .line 1137
    .line 1138
    .line 1139
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1140
    .line 1141
    .line 1142
    const/4 v1, 0x6

    .line 1143
    shr-int/lit8 v1, v12, 0x6

    .line 1144
    .line 1145
    and-int/lit8 v1, v1, 0xe

    .line 1146
    .line 1147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v1

    .line 1151
    invoke-interface {v3, v11, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    .line 1153
    .line 1154
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1155
    .line 1156
    .line 1157
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1158
    .line 1159
    .line 1160
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1161
    .line 1162
    .line 1163
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1164
    .line 1165
    .line 1166
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1167
    .line 1168
    .line 1169
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1170
    .line 1171
    .line 1172
    :cond_23
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1173
    .line 1174
    .line 1175
    const-string v1, "TextField"

    .line 1176
    .line 1177
    invoke-static {v7, v1}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v1

    .line 1181
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    const v1, 0x2bb5b5d7

    .line 1186
    .line 1187
    .line 1188
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1189
    .line 1190
    .line 1191
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 1192
    .line 1193
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v1

    .line 1197
    const/16 v4, 0x30

    .line 1198
    .line 1199
    const/4 v7, 0x1

    .line 1200
    invoke-static {v1, v7, v11, v4}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v1

    .line 1204
    const v4, -0x4ee9b9da

    .line 1205
    .line 1206
    .line 1207
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1208
    .line 1209
    .line 1210
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v4

    .line 1214
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v4

    .line 1218
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 1219
    .line 1220
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v7

    .line 1224
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v7

    .line 1228
    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    .line 1229
    .line 1230
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v8

    .line 1234
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v8

    .line 1238
    check-cast v8, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 1239
    .line 1240
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v10

    .line 1244
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v0

    .line 1248
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v13

    .line 1252
    if-nez v13, :cond_24

    .line 1253
    .line 1254
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1255
    .line 1256
    .line 1257
    :cond_24
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1258
    .line 1259
    .line 1260
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 1261
    .line 1262
    .line 1263
    move-result v13

    .line 1264
    if-eqz v13, :cond_25

    .line 1265
    .line 1266
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1267
    .line 1268
    .line 1269
    goto :goto_11

    .line 1270
    :cond_25
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1271
    .line 1272
    .line 1273
    :goto_11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 1274
    .line 1275
    .line 1276
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v10

    .line 1280
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v13

    .line 1284
    invoke-static {v10, v1, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v1

    .line 1291
    invoke-static {v10, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v1

    .line 1298
    invoke-static {v10, v7, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v1

    .line 1305
    invoke-static {v10, v8, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1306
    .line 1307
    .line 1308
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 1309
    .line 1310
    .line 1311
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v1

    .line 1315
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v1

    .line 1319
    const/4 v4, 0x0

    .line 1320
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v4

    .line 1324
    invoke-interface {v0, v1, v11, v4}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    .line 1326
    .line 1327
    const v0, 0x7ab4aae9

    .line 1328
    .line 1329
    .line 1330
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1331
    .line 1332
    .line 1333
    const v0, -0x7f65a980

    .line 1334
    .line 1335
    .line 1336
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1337
    .line 1338
    .line 1339
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 1340
    .line 1341
    const v0, -0x7a203878

    .line 1342
    .line 1343
    .line 1344
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1345
    .line 1346
    .line 1347
    shr-int/lit8 v0, v12, 0x3

    .line 1348
    .line 1349
    and-int/lit8 v0, v0, 0xe

    .line 1350
    .line 1351
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v0

    .line 1355
    invoke-interface {v2, v11, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    .line 1357
    .line 1358
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1359
    .line 1360
    .line 1361
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1362
    .line 1363
    .line 1364
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1365
    .line 1366
    .line 1367
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1368
    .line 1369
    .line 1370
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1371
    .line 1372
    .line 1373
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1374
    .line 1375
    .line 1376
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1377
    .line 1378
    .line 1379
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1380
    .line 1381
    .line 1382
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1383
    .line 1384
    .line 1385
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1386
    .line 1387
    .line 1388
    :goto_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v11

    .line 1392
    if-nez v11, :cond_26

    .line 1393
    .line 1394
    goto :goto_13

    .line 1395
    :cond_26
    new-instance v12, Landroidx/compose/material/TextFieldKt$TextFieldLayout$2;

    .line 1396
    .line 1397
    move-object v0, v12

    .line 1398
    move-object/from16 v1, p0

    .line 1399
    .line 1400
    move-object/from16 v2, p1

    .line 1401
    .line 1402
    move-object/from16 v3, p2

    .line 1403
    .line 1404
    move-object/from16 v4, p3

    .line 1405
    .line 1406
    move-object/from16 v5, p4

    .line 1407
    .line 1408
    move-object/from16 v6, p5

    .line 1409
    .line 1410
    move/from16 v7, p6

    .line 1411
    .line 1412
    move/from16 v8, p7

    .line 1413
    .line 1414
    move-object/from16 v9, p8

    .line 1415
    .line 1416
    move/from16 v10, p10

    .line 1417
    .line 1418
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/TextFieldKt$TextFieldLayout$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lat/n;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/foundation/layout/PaddingValues;I)V

    .line 1419
    .line 1420
    .line 1421
    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 1422
    .line 1423
    .line 1424
    :goto_13
    return-void
.end method

.method public static final synthetic access$calculateHeight-O3s9Psw(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/material/TextFieldKt;->calculateHeight-O3s9Psw(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$calculateWidth-VsPV1Ek(IIIIIJ)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/TextFieldKt;->calculateWidth-VsPV1Ek(IIIIIJ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$placeWithLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZIIFF)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p12}, Landroidx/compose/material/TextFieldKt;->placeWithLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZIIFF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$placeWithoutLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZFLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/material/TextFieldKt;->placeWithoutLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZFLandroidx/compose/foundation/layout/PaddingValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final calculateHeight-O3s9Psw(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I
    .locals 2

    .line 1
    sget v0, Landroidx/compose/material/TextFieldKt;->TextFieldTopPadding:F

    .line 2
    .line 3
    mul-float/2addr v0, p8

    .line 4
    invoke-interface {p9}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    mul-float/2addr v1, p8

    .line 9
    invoke-interface {p9}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 10
    .line 11
    .line 12
    move-result p9

    .line 13
    mul-float/2addr p9, p8

    .line 14
    invoke-static {p0, p5}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    int-to-float p1, p2

    .line 21
    add-float/2addr p1, v0

    .line 22
    int-to-float p0, p0

    .line 23
    add-float/2addr p1, p0

    .line 24
    add-float/2addr p1, p9

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    int-to-float p0, p0

    .line 27
    add-float/2addr v1, p0

    .line 28
    add-float p1, v1, p9

    .line 29
    .line 30
    :goto_0
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p6, p7}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method private static final calculateWidth-VsPV1Ek(IIIIIJ)I
    .locals 0

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    add-int/2addr p0, p2

    .line 10
    add-int/2addr p0, p1

    .line 11
    invoke-static {p5, p6}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static final drawIndicatorLine(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/BorderStroke;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/BorderStroke;
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
    const-string v0, "indicatorBorder"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/foundation/BorderStroke;->getWidth-D9Ej5fM()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Landroidx/compose/material/TextFieldKt$drawIndicatorLine$1;

    .line 16
    .line 17
    invoke-direct {v1, v0, p1}, Landroidx/compose/material/TextFieldKt$drawIndicatorLine$1;-><init>(FLandroidx/compose/foundation/BorderStroke;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1}, Landroidx/compose/ui/draw/DrawModifierKt;->drawWithContent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final getFirstBaselineOffset()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TextFieldKt;->FirstBaselineOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public static final getTextFieldBottomPadding()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TextFieldKt;->TextFieldBottomPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public static final getTextFieldTopPadding()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TextFieldKt;->TextFieldTopPadding:F

    .line 2
    .line 3
    return v0
.end method

.method private static final placeWithLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZIIFF)V
    .locals 16

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    const/4 v8, 0x4

    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    move-object/from16 v3, p0

    .line 24
    .line 25
    move-object/from16 v4, p6

    .line 26
    .line 27
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    if-eqz p7, :cond_1

    .line 31
    .line 32
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sub-int v4, p1, v1

    .line 37
    .line 38
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const/4 v7, 0x4

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    move-object/from16 v2, p0

    .line 56
    .line 57
    move-object/from16 v3, p7

    .line 58
    .line 59
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    if-eqz p4, :cond_3

    .line 63
    .line 64
    if-eqz p8, :cond_2

    .line 65
    .line 66
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-interface {v1, v2, v0}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getTextFieldPadding()F

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    mul-float v0, v0, p12

    .line 86
    .line 87
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    :goto_0
    sub-int v1, v0, p9

    .line 92
    .line 93
    int-to-float v1, v1

    .line 94
    mul-float v1, v1, p11

    .line 95
    .line 96
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    sub-int v5, v0, v1

    .line 101
    .line 102
    invoke-static/range {p6 .. p6}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    const/4 v7, 0x4

    .line 107
    const/4 v8, 0x0

    .line 108
    const/4 v6, 0x0

    .line 109
    move-object/from16 v2, p0

    .line 110
    .line 111
    move-object/from16 v3, p4

    .line 112
    .line 113
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-static/range {p6 .. p6}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    const/4 v14, 0x4

    .line 121
    const/4 v15, 0x0

    .line 122
    const/4 v13, 0x0

    .line 123
    move-object/from16 v9, p0

    .line 124
    .line 125
    move-object/from16 v10, p3

    .line 126
    .line 127
    move/from16 v12, p10

    .line 128
    .line 129
    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    if-eqz p5, :cond_4

    .line 133
    .line 134
    invoke-static/range {p6 .. p6}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    const/4 v5, 0x4

    .line 139
    const/4 v6, 0x0

    .line 140
    const/4 v4, 0x0

    .line 141
    move-object/from16 v0, p0

    .line 142
    .line 143
    move-object/from16 v1, p5

    .line 144
    .line 145
    move/from16 v3, p10

    .line 146
    .line 147
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    return-void
.end method

.method private static final placeWithoutLabel(Landroidx/compose/ui/layout/Placeable$PlacementScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ZFLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 11

    .line 1
    move v0, p2

    .line 2
    invoke-interface/range {p9 .. p9}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    mul-float v1, v1, p8

    .line 7
    .line 8
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz p5, :cond_0

    .line 13
    .line 14
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-interface {v2, v3, p2}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    const/4 v9, 0x4

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    move-object v4, p0

    .line 33
    move-object/from16 v5, p5

    .line 34
    .line 35
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    if-eqz p6, :cond_1

    .line 39
    .line 40
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    sub-int v5, p1, v2

    .line 45
    .line 46
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-interface {v2, v3, p2}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const/4 v8, 0x4

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    move-object v3, p0

    .line 64
    move-object/from16 v4, p6

    .line 65
    .line 66
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    if-eqz p7, :cond_2

    .line 70
    .line 71
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-interface {v2, v3, p2}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    move v6, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move v6, v1

    .line 88
    :goto_0
    invoke-static/range {p5 .. p5}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    const/4 v8, 0x4

    .line 93
    const/4 v9, 0x0

    .line 94
    const/4 v7, 0x0

    .line 95
    move-object v3, p0

    .line 96
    move-object v4, p3

    .line 97
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    if-eqz p4, :cond_4

    .line 101
    .line 102
    if-eqz p7, :cond_3

    .line 103
    .line 104
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-interface {v1, v2, p2}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    :cond_3
    move v5, v1

    .line 119
    invoke-static/range {p5 .. p5}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    const/4 v7, 0x4

    .line 124
    const/4 v8, 0x0

    .line 125
    const/4 v6, 0x0

    .line 126
    move-object v2, p0

    .line 127
    move-object v3, p4

    .line 128
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    return-void
.end method
