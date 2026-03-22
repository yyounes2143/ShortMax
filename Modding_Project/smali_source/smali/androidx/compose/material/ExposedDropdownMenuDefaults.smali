.class public final Landroidx/compose/material/ExposedDropdownMenuDefaults;
.super Ljava/lang/Object;
.source "ExposedDropdownMenu.kt"


# annotations
.annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material/ExposedDropdownMenuDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/ExposedDropdownMenuDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/ExposedDropdownMenuDefaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/ExposedDropdownMenuDefaults;->INSTANCE:Landroidx/compose/material/ExposedDropdownMenuDefaults;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final TrailingIcon(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 12
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move v2, p1

    .line 2
    const v0, 0x3437e13d

    .line 3
    .line 4
    .line 5
    move-object v1, p3

    .line 6
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    and-int/lit8 v1, p5, 0x1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    or-int/lit8 v1, p4, 0x6

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    and-int/lit8 v1, p4, 0xe

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-interface {v0, p1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x2

    .line 30
    :goto_0
    or-int v1, p4, v1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move/from16 v1, p4

    .line 34
    .line 35
    :goto_1
    and-int/lit8 v3, p5, 0x2

    .line 36
    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    or-int/lit8 v1, v1, 0x30

    .line 40
    .line 41
    :cond_3
    move-object v4, p2

    .line 42
    goto :goto_3

    .line 43
    :cond_4
    and-int/lit8 v4, p4, 0x70

    .line 44
    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    move-object v4, p2

    .line 48
    invoke-interface {v0, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_5

    .line 53
    .line 54
    const/16 v5, 0x20

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_5
    const/16 v5, 0x10

    .line 58
    .line 59
    :goto_2
    or-int/2addr v1, v5

    .line 60
    :goto_3
    and-int/lit8 v5, v1, 0x5b

    .line 61
    .line 62
    const/16 v6, 0x12

    .line 63
    .line 64
    if-ne v5, v6, :cond_7

    .line 65
    .line 66
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_6

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 74
    .line 75
    .line 76
    move-object v3, v4

    .line 77
    goto :goto_6

    .line 78
    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 79
    .line 80
    sget-object v3, Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$1;->INSTANCE:Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$1;

    .line 81
    .line 82
    move-object v11, v3

    .line 83
    goto :goto_5

    .line 84
    :cond_8
    move-object v11, v4

    .line 85
    :goto_5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 86
    .line 87
    sget-object v4, Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$2;->INSTANCE:Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$2;

    .line 88
    .line 89
    invoke-static {v3, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->clearAndSetSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    new-instance v3, Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$3;

    .line 94
    .line 95
    invoke-direct {v3, p1}, Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$3;-><init>(Z)V

    .line 96
    .line 97
    .line 98
    const v5, 0x2b47c0d9

    .line 99
    .line 100
    .line 101
    const/4 v6, 0x1

    .line 102
    invoke-static {v0, v5, v6, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    shr-int/lit8 v1, v1, 0x3

    .line 107
    .line 108
    and-int/lit8 v1, v1, 0xe

    .line 109
    .line 110
    or-int/lit16 v9, v1, 0x6000

    .line 111
    .line 112
    const/16 v10, 0xc

    .line 113
    .line 114
    const/4 v5, 0x0

    .line 115
    const/4 v6, 0x0

    .line 116
    move-object v3, v11

    .line 117
    move-object v8, v0

    .line 118
    invoke-static/range {v3 .. v10}, Landroidx/compose/material/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 119
    .line 120
    .line 121
    :goto_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    if-nez v6, :cond_9

    .line 126
    .line 127
    goto :goto_7

    .line 128
    :cond_9
    new-instance v7, Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$4;

    .line 129
    .line 130
    move-object v0, v7

    .line 131
    move-object v1, p0

    .line 132
    move v2, p1

    .line 133
    move/from16 v4, p4

    .line 134
    .line 135
    move/from16 v5, p5

    .line 136
    .line 137
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/ExposedDropdownMenuDefaults$TrailingIcon$4;-><init>(Landroidx/compose/material/ExposedDropdownMenuDefaults;ZLkotlin/jvm/functions/Function0;II)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    :goto_7
    return-void
.end method

.method public final outlinedTextFieldColors-DlUQjxs(JJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material/TextFieldColors;
    .locals 52
    .param p45    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p45

    move/from16 v1, p49

    const v2, 0x454c7f1e

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 1
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 2
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v3

    .line 3
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 4
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    const/4 v12, 0x6

    if-eqz v4, :cond_1

    .line 6
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/16 v10, 0xe

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, v2

    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide v7, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v7, p3

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 7
    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v4

    move-wide/from16 v35, v4

    goto :goto_2

    :cond_2
    move-wide/from16 v35, p5

    :goto_2
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_3

    .line 8
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v4

    move-wide v9, v4

    goto :goto_3

    :cond_3
    move-wide/from16 v9, p7

    :goto_3
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_4

    .line 9
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getError-0d7_KjU()J

    move-result-wide v4

    move-wide v13, v4

    goto :goto_4

    :cond_4
    move-wide/from16 v13, p9

    :goto_4
    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_5

    .line 10
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/16 v11, 0xe

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v16

    move/from16 p5, v17

    move/from16 p6, v18

    move/from16 p7, v11

    move-object/from16 p8, v15

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide v15, v4

    goto :goto_5

    :cond_5
    move-wide/from16 v15, p11

    :goto_5
    and-int/lit8 v4, v1, 0x40

    if-eqz v4, :cond_6

    .line 11
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/16 v11, 0xe

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v18

    move/from16 p5, v19

    move/from16 p6, v20

    move/from16 p7, v11

    move-object/from16 p8, v17

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v17, v4

    goto :goto_6

    :cond_6
    move-wide/from16 v17, p13

    :goto_6
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_7

    .line 12
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 p1, v17

    move/from16 p3, v4

    move/from16 p4, v11

    move/from16 p5, v19

    move/from16 p6, v20

    move/from16 p7, v5

    move-object/from16 p8, v6

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v19, v4

    goto :goto_7

    :cond_7
    move-wide/from16 v19, p15

    :goto_7
    and-int/lit16 v4, v1, 0x100

    if-eqz v4, :cond_8

    .line 13
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getError-0d7_KjU()J

    move-result-wide v4

    move-wide/from16 v21, v4

    goto :goto_8

    :cond_8
    move-wide/from16 v21, p17

    :goto_8
    and-int/lit16 v4, v1, 0x200

    if-eqz v4, :cond_9

    .line 14
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v4

    const/16 v6, 0xe

    const/4 v11, 0x0

    const v23, 0x3f0a3d71    # 0.54f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v23

    move/from16 p4, v24

    move/from16 p5, v25

    move/from16 p6, v26

    move/from16 p7, v6

    move-object/from16 p8, v11

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v23, v4

    goto :goto_9

    :cond_9
    move-wide/from16 v23, p19

    :goto_9
    and-int/lit16 v4, v1, 0x400

    if-eqz v4, :cond_a

    .line 15
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-wide/from16 p1, v23

    move/from16 p3, v4

    move/from16 p4, v11

    move/from16 p5, v25

    move/from16 p6, v26

    move/from16 p7, v5

    move-object/from16 p8, v6

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v25, v4

    goto :goto_a

    :cond_a
    move-wide/from16 v25, p21

    :goto_a
    and-int/lit16 v4, v1, 0x800

    if-eqz v4, :cond_b

    move-wide/from16 v27, v23

    goto :goto_b

    :cond_b
    move-wide/from16 v27, p23

    :goto_b
    and-int/lit16 v4, v1, 0x1000

    if-eqz v4, :cond_c

    .line 16
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v4

    const/16 v6, 0xe

    const/4 v11, 0x0

    const v29, 0x3f0a3d71    # 0.54f

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v29

    move/from16 p4, v30

    move/from16 p5, v31

    move/from16 p6, v32

    move/from16 p7, v6

    move-object/from16 p8, v11

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v29, v4

    goto :goto_c

    :cond_c
    move-wide/from16 v29, p25

    :goto_c
    and-int/lit16 v4, v1, 0x2000

    if-eqz v4, :cond_d

    .line 17
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/16 v11, 0xe

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v32

    move/from16 p5, v33

    move/from16 p6, v34

    move/from16 p7, v11

    move-object/from16 p8, v31

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v31, v4

    goto :goto_d

    :cond_d
    move-wide/from16 v31, p27

    :goto_d
    and-int/lit16 v4, v1, 0x4000

    if-eqz v4, :cond_e

    .line 18
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-wide/from16 p1, v29

    move/from16 p3, v4

    move/from16 p4, v11

    move/from16 p5, v33

    move/from16 p6, v34

    move/from16 p7, v5

    move-object/from16 p8, v6

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v33, v4

    goto :goto_e

    :cond_e
    move-wide/from16 v33, p29

    :goto_e
    const v4, 0x8000

    and-int/2addr v4, v1

    if-eqz v4, :cond_f

    .line 19
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getError-0d7_KjU()J

    move-result-wide v4

    move-wide/from16 v37, v4

    goto :goto_f

    :cond_f
    move-wide/from16 v37, p31

    :goto_f
    const/high16 v4, 0x10000

    and-int/2addr v4, v1

    if-eqz v4, :cond_10

    .line 20
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/16 v11, 0xe

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v40

    move/from16 p5, v41

    move/from16 p6, v42

    move/from16 p7, v11

    move-object/from16 p8, v39

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v39, v4

    goto :goto_10

    :cond_10
    move-wide/from16 v39, p33

    :goto_10
    const/high16 v4, 0x20000

    and-int/2addr v4, v1

    if-eqz v4, :cond_11

    .line 21
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->getMedium(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/16 v11, 0xe

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v42

    move/from16 p5, v43

    move/from16 p6, v44

    move/from16 p7, v11

    move-object/from16 p8, v41

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v41, v4

    goto :goto_11

    :cond_11
    move-wide/from16 v41, p35

    :goto_11
    const/high16 v4, 0x40000

    and-int/2addr v4, v1

    if-eqz v4, :cond_12

    .line 22
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-wide/from16 p1, v41

    move/from16 p3, v4

    move/from16 p4, v11

    move/from16 p5, v43

    move/from16 p6, v44

    move/from16 p7, v5

    move-object/from16 p8, v6

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v43, v4

    goto :goto_12

    :cond_12
    move-wide/from16 v43, p37

    :goto_12
    const/high16 v4, 0x80000

    and-int/2addr v4, v1

    if-eqz v4, :cond_13

    .line 23
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getError-0d7_KjU()J

    move-result-wide v4

    move-wide/from16 v45, v4

    goto :goto_13

    :cond_13
    move-wide/from16 v45, p39

    :goto_13
    const/high16 v4, 0x100000

    and-int/2addr v4, v1

    if-eqz v4, :cond_14

    .line 24
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->getMedium(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/16 v11, 0xe

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v48

    move/from16 p5, v49

    move/from16 p6, v50

    move/from16 p7, v11

    move-object/from16 p8, v47

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v47, v4

    goto :goto_14

    :cond_14
    move-wide/from16 v47, p41

    :goto_14
    const/high16 v4, 0x200000

    and-int/2addr v1, v4

    if-eqz v1, :cond_15

    .line 25
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v1, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v1

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 p1, v47

    move/from16 p3, v1

    move/from16 p4, v6

    move/from16 p5, v11

    move/from16 p6, v12

    move/from16 p7, v4

    move-object/from16 p8, v5

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v50, v4

    goto :goto_15

    :cond_15
    move-wide/from16 v50, p43

    .line 26
    :goto_15
    new-instance v1, Landroidx/compose/material/DefaultTextFieldForExposedDropdownMenusColors;

    move-object v4, v1

    const/16 v49, 0x0

    move-wide v5, v2

    move-wide v11, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v27

    move-wide/from16 v27, v29

    move-wide/from16 v29, v31

    move-wide/from16 v31, v33

    move-wide/from16 v33, v37

    move-wide/from16 v37, v39

    move-wide/from16 v39, v41

    move-wide/from16 v41, v43

    move-wide/from16 v43, v45

    move-wide/from16 v45, v47

    move-wide/from16 v47, v50

    invoke-direct/range {v4 .. v49}, Landroidx/compose/material/DefaultTextFieldForExposedDropdownMenusColors;-><init>(JJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface/range {p45 .. p45}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public final textFieldColors-DlUQjxs(JJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIII)Landroidx/compose/material/TextFieldColors;
    .locals 52
    .param p45    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p45

    move/from16 v1, p49

    const v2, 0x48032de0    # 134327.5f

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 1
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 2
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v3

    .line 3
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 4
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    const/4 v12, 0x6

    if-eqz v4, :cond_1

    .line 6
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/16 v10, 0xe

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, v2

    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide v7, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v7, p3

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 7
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v13

    const/16 v19, 0xe

    const/16 v20, 0x0

    const v15, 0x3df5c28f    # 0.12f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v35, v4

    goto :goto_2

    :cond_2
    move-wide/from16 v35, p5

    :goto_2
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_3

    .line 8
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v4

    move-wide v9, v4

    goto :goto_3

    :cond_3
    move-wide/from16 v9, p7

    :goto_3
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_4

    .line 9
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getError-0d7_KjU()J

    move-result-wide v4

    move-wide v13, v4

    goto :goto_4

    :cond_4
    move-wide/from16 v13, p9

    :goto_4
    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_5

    .line 10
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/16 v11, 0xe

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v16

    move/from16 p5, v17

    move/from16 p6, v18

    move/from16 p7, v11

    move-object/from16 p8, v15

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide v15, v4

    goto :goto_5

    :cond_5
    move-wide/from16 v15, p11

    :goto_5
    and-int/lit8 v4, v1, 0x40

    if-eqz v4, :cond_6

    .line 11
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v4

    const/16 v6, 0xe

    const/4 v11, 0x0

    const v17, 0x3ed70a3d    # 0.42f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v17

    move/from16 p4, v18

    move/from16 p5, v19

    move/from16 p6, v20

    move/from16 p7, v6

    move-object/from16 p8, v11

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v17, v4

    goto :goto_6

    :cond_6
    move-wide/from16 v17, p13

    :goto_6
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_7

    .line 12
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-wide/from16 p1, v17

    move/from16 p3, v4

    move/from16 p4, v11

    move/from16 p5, v19

    move/from16 p6, v20

    move/from16 p7, v5

    move-object/from16 p8, v6

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v19, v4

    goto :goto_7

    :cond_7
    move-wide/from16 v19, p15

    :goto_7
    and-int/lit16 v4, v1, 0x100

    if-eqz v4, :cond_8

    .line 13
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getError-0d7_KjU()J

    move-result-wide v4

    move-wide/from16 v21, v4

    goto :goto_8

    :cond_8
    move-wide/from16 v21, p17

    :goto_8
    and-int/lit16 v4, v1, 0x200

    if-eqz v4, :cond_9

    .line 14
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v4

    const/16 v6, 0xe

    const/4 v11, 0x0

    const v23, 0x3f0a3d71    # 0.54f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v23

    move/from16 p4, v24

    move/from16 p5, v25

    move/from16 p6, v26

    move/from16 p7, v6

    move-object/from16 p8, v11

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v23, v4

    goto :goto_9

    :cond_9
    move-wide/from16 v23, p19

    :goto_9
    and-int/lit16 v4, v1, 0x400

    if-eqz v4, :cond_a

    .line 15
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-wide/from16 p1, v23

    move/from16 p3, v4

    move/from16 p4, v11

    move/from16 p5, v25

    move/from16 p6, v26

    move/from16 p7, v5

    move-object/from16 p8, v6

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v25, v4

    goto :goto_a

    :cond_a
    move-wide/from16 v25, p21

    :goto_a
    and-int/lit16 v4, v1, 0x800

    if-eqz v4, :cond_b

    move-wide/from16 v27, v23

    goto :goto_b

    :cond_b
    move-wide/from16 v27, p23

    :goto_b
    and-int/lit16 v4, v1, 0x1000

    if-eqz v4, :cond_c

    .line 16
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v4

    const/16 v6, 0xe

    const/4 v11, 0x0

    const v29, 0x3f0a3d71    # 0.54f

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v29

    move/from16 p4, v30

    move/from16 p5, v31

    move/from16 p6, v32

    move/from16 p7, v6

    move-object/from16 p8, v11

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v29, v4

    goto :goto_c

    :cond_c
    move-wide/from16 v29, p25

    :goto_c
    and-int/lit16 v4, v1, 0x2000

    if-eqz v4, :cond_d

    .line 17
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/16 v11, 0xe

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v32

    move/from16 p5, v33

    move/from16 p6, v34

    move/from16 p7, v11

    move-object/from16 p8, v31

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v31, v4

    goto :goto_d

    :cond_d
    move-wide/from16 v31, p27

    :goto_d
    and-int/lit16 v4, v1, 0x4000

    if-eqz v4, :cond_e

    .line 18
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-wide/from16 p1, v29

    move/from16 p3, v4

    move/from16 p4, v11

    move/from16 p5, v33

    move/from16 p6, v34

    move/from16 p7, v5

    move-object/from16 p8, v6

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v33, v4

    goto :goto_e

    :cond_e
    move-wide/from16 v33, p29

    :goto_e
    const v4, 0x8000

    and-int/2addr v4, v1

    if-eqz v4, :cond_f

    .line 19
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getError-0d7_KjU()J

    move-result-wide v4

    move-wide/from16 v37, v4

    goto :goto_f

    :cond_f
    move-wide/from16 v37, p31

    :goto_f
    const/high16 v4, 0x10000

    and-int/2addr v4, v1

    if-eqz v4, :cond_10

    .line 20
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/16 v11, 0xe

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v40

    move/from16 p5, v41

    move/from16 p6, v42

    move/from16 p7, v11

    move-object/from16 p8, v39

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v39, v4

    goto :goto_10

    :cond_10
    move-wide/from16 v39, p33

    :goto_10
    const/high16 v4, 0x20000

    and-int/2addr v4, v1

    if-eqz v4, :cond_11

    .line 21
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->getMedium(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/16 v11, 0xe

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v42

    move/from16 p5, v43

    move/from16 p6, v44

    move/from16 p7, v11

    move-object/from16 p8, v41

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v41, v4

    goto :goto_11

    :cond_11
    move-wide/from16 v41, p35

    :goto_11
    const/high16 v4, 0x40000

    and-int/2addr v4, v1

    if-eqz v4, :cond_12

    .line 22
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-wide/from16 p1, v41

    move/from16 p3, v4

    move/from16 p4, v11

    move/from16 p5, v43

    move/from16 p6, v44

    move/from16 p7, v5

    move-object/from16 p8, v6

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v43, v4

    goto :goto_12

    :cond_12
    move-wide/from16 v43, p37

    :goto_12
    const/high16 v4, 0x80000

    and-int/2addr v4, v1

    if-eqz v4, :cond_13

    .line 23
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getError-0d7_KjU()J

    move-result-wide v4

    move-wide/from16 v45, v4

    goto :goto_13

    :cond_13
    move-wide/from16 v45, p39

    :goto_13
    const/high16 v4, 0x100000

    and-int/2addr v4, v1

    if-eqz v4, :cond_14

    .line 24
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    invoke-virtual {v4, v0, v12}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    move-result-wide v4

    sget-object v6, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v6, v0, v12}, Landroidx/compose/material/ContentAlpha;->getMedium(Landroidx/compose/runtime/Composer;I)F

    move-result v6

    const/16 v11, 0xe

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-wide/from16 p1, v4

    move/from16 p3, v6

    move/from16 p4, v48

    move/from16 p5, v49

    move/from16 p6, v50

    move/from16 p7, v11

    move-object/from16 p8, v47

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v47, v4

    goto :goto_14

    :cond_14
    move-wide/from16 v47, p41

    :goto_14
    const/high16 v4, 0x200000

    and-int/2addr v1, v4

    if-eqz v1, :cond_15

    .line 25
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {v1, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result v1

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 p1, v47

    move/from16 p3, v1

    move/from16 p4, v6

    move/from16 p5, v11

    move/from16 p6, v12

    move/from16 p7, v4

    move-object/from16 p8, v5

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide/from16 v50, v4

    goto :goto_15

    :cond_15
    move-wide/from16 v50, p43

    .line 26
    :goto_15
    new-instance v1, Landroidx/compose/material/DefaultTextFieldForExposedDropdownMenusColors;

    move-object v4, v1

    const/16 v49, 0x0

    move-wide v5, v2

    move-wide v11, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v25

    move-wide/from16 v25, v27

    move-wide/from16 v27, v29

    move-wide/from16 v29, v31

    move-wide/from16 v31, v33

    move-wide/from16 v33, v37

    move-wide/from16 v37, v39

    move-wide/from16 v39, v41

    move-wide/from16 v41, v43

    move-wide/from16 v43, v45

    move-wide/from16 v45, v47

    move-wide/from16 v47, v50

    invoke-direct/range {v4 .. v49}, Landroidx/compose/material/DefaultTextFieldForExposedDropdownMenusColors;-><init>(JJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface/range {p45 .. p45}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method
