.class public final Landroidx/compose/material/SliderKt;
.super Ljava/lang/Object;
.source "Slider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final DefaultSliderConstraints:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SliderHeight:F

.field private static final SliderMinWidth:F

.field private static final SliderToTickAnimation:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ThumbDefaultElevation:F

.field private static final ThumbPressedElevation:F

.field private static final ThumbRadius:F

.field private static final ThumbRippleRadius:F

.field private static final TrackHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0xa

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
    sput v0, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .line 9
    .line 10
    const/16 v0, 0x18

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
    sput v0, Landroidx/compose/material/SliderKt;->ThumbRippleRadius:F

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    int-to-float v1, v0

    .line 21
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sput v1, Landroidx/compose/material/SliderKt;->ThumbDefaultElevation:F

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    int-to-float v1, v1

    .line 29
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    sput v1, Landroidx/compose/material/SliderKt;->ThumbPressedElevation:F

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    int-to-float v1, v1

    .line 37
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    sput v1, Landroidx/compose/material/SliderKt;->TrackHeight:F

    .line 42
    .line 43
    const/16 v1, 0x30

    .line 44
    .line 45
    int-to-float v1, v1

    .line 46
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    sput v1, Landroidx/compose/material/SliderKt;->SliderHeight:F

    .line 51
    .line 52
    const/16 v2, 0x90

    .line 53
    .line 54
    int-to-float v2, v2

    .line 55
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    sput v2, Landroidx/compose/material/SliderKt;->SliderMinWidth:F

    .line 60
    .line 61
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x2

    .line 65
    const/4 v6, 0x0

    .line 66
    invoke-static {v3, v2, v4, v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2, v4, v1, v0, v6}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Landroidx/compose/material/SliderKt;->DefaultSliderConstraints:Landroidx/compose/ui/Modifier;

    .line 75
    .line 76
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    .line 77
    .line 78
    const/4 v5, 0x6

    .line 79
    const/16 v2, 0x64

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    const/4 v4, 0x0

    .line 83
    move-object v1, v0

    .line 84
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Landroidx/compose/material/SliderKt;->SliderToTickAnimation:Landroidx/compose/animation/core/TweenSpec;

    .line 88
    .line 89
    return-void
.end method

.method private static final CorrectValueSideEffect(Lkotlin/jvm/functions/Function1;Ldt/b;Ldt/b;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V
    .locals 9
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;F",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    const v0, -0x2c580438

    .line 2
    .line 3
    .line 4
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    .line 7
    move-result-object p5

    .line 8
    and-int/lit8 v0, p6, 0xe

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int/2addr v0, p6

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p6

    .line 24
    :goto_1
    and-int/lit8 v1, p6, 0x70

    .line 25
    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    invoke-interface {p5, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const/16 v1, 0x20

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/16 v1, 0x10

    .line 38
    .line 39
    :goto_2
    or-int/2addr v0, v1

    .line 40
    :cond_3
    and-int/lit16 v1, p6, 0x380

    .line 41
    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    invoke-interface {p5, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    const/16 v1, 0x100

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    const/16 v1, 0x80

    .line 54
    .line 55
    :goto_3
    or-int/2addr v0, v1

    .line 56
    :cond_5
    and-int/lit16 v1, p6, 0x1c00

    .line 57
    .line 58
    if-nez v1, :cond_7

    .line 59
    .line 60
    invoke-interface {p5, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_6

    .line 65
    .line 66
    const/16 v1, 0x800

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_6
    const/16 v1, 0x400

    .line 70
    .line 71
    :goto_4
    or-int/2addr v0, v1

    .line 72
    :cond_7
    const v1, 0xe000

    .line 73
    .line 74
    .line 75
    and-int/2addr v1, p6

    .line 76
    if-nez v1, :cond_9

    .line 77
    .line 78
    invoke-interface {p5, p4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_8

    .line 83
    .line 84
    const/16 v1, 0x4000

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_8
    const/16 v1, 0x2000

    .line 88
    .line 89
    :goto_5
    or-int/2addr v0, v1

    .line 90
    :cond_9
    const v1, 0xb6db

    .line 91
    .line 92
    .line 93
    and-int/2addr v0, v1

    .line 94
    const/16 v1, 0x2492

    .line 95
    .line 96
    if-ne v0, v1, :cond_b

    .line 97
    .line 98
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_a

    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_a
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 106
    .line 107
    .line 108
    goto :goto_8

    .line 109
    :cond_b
    :goto_6
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    filled-new-array {p1, p0, v0, p3, p2}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const v1, -0x21de6e89

    .line 118
    .line 119
    .line 120
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 121
    .line 122
    .line 123
    const/4 v1, 0x0

    .line 124
    move v2, v1

    .line 125
    move v3, v2

    .line 126
    :goto_7
    const/4 v4, 0x5

    .line 127
    if-ge v2, v4, :cond_c

    .line 128
    .line 129
    aget-object v4, v0, v2

    .line 130
    .line 131
    invoke-interface {p5, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    or-int/2addr v3, v4

    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    goto :goto_7

    .line 139
    :cond_c
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-nez v3, :cond_d

    .line 144
    .line 145
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 146
    .line 147
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-ne v0, v2, :cond_e

    .line 152
    .line 153
    :cond_d
    new-instance v0, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$1$1;

    .line 154
    .line 155
    move-object v3, v0

    .line 156
    move-object v4, p1

    .line 157
    move-object v5, p0

    .line 158
    move v6, p4

    .line 159
    move-object v7, p3

    .line 160
    move-object v8, p2

    .line 161
    invoke-direct/range {v3 .. v8}, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$1$1;-><init>(Ldt/b;Lkotlin/jvm/functions/Function1;FLandroidx/compose/runtime/MutableState;Ldt/b;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_e
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 168
    .line 169
    .line 170
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 171
    .line 172
    invoke-static {v0, p5, v1}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 173
    .line 174
    .line 175
    :goto_8
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 176
    .line 177
    .line 178
    move-result-object p5

    .line 179
    if-nez p5, :cond_f

    .line 180
    .line 181
    goto :goto_9

    .line 182
    :cond_f
    new-instance v7, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$2;

    .line 183
    .line 184
    move-object v0, v7

    .line 185
    move-object v1, p0

    .line 186
    move-object v2, p1

    .line 187
    move-object v3, p2

    .line 188
    move-object v4, p3

    .line 189
    move v5, p4

    .line 190
    move v6, p6

    .line 191
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$2;-><init>(Lkotlin/jvm/functions/Function1;Ldt/b;Ldt/b;Landroidx/compose/runtime/MutableState;FI)V

    .line 192
    .line 193
    .line 194
    invoke-interface {p5, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 195
    .line 196
    .line 197
    :goto_9
    return-void
.end method

.method public static final RangeSlider(Ldt/b;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLdt/b;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V
    .locals 41
    .param p0    # Ldt/b;
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
    .param p4    # Ldt/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/material/SliderColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/runtime/Composer;
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
            "(",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material/SliderColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move/from16 v14, p9

    .line 6
    .line 7
    move/from16 v15, p10

    .line 8
    .line 9
    const-string v0, "values"

    .line 10
    .line 11
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "onValueChange"

    .line 15
    .line 16
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, -0x5cc177f3

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p8

    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    .line 27
    move-result-object v11

    .line 28
    and-int/lit8 v0, v15, 0x1

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    or-int/lit8 v0, v14, 0x6

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    and-int/lit8 v0, v14, 0xe

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v14

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v0, v14

    .line 51
    :goto_1
    and-int/lit8 v3, v15, 0x2

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    or-int/lit8 v0, v0, 0x30

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    and-int/lit8 v3, v14, 0x70

    .line 59
    .line 60
    if-nez v3, :cond_5

    .line 61
    .line 62
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    const/16 v3, 0x20

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    const/16 v3, 0x10

    .line 72
    .line 73
    :goto_2
    or-int/2addr v0, v3

    .line 74
    :cond_5
    :goto_3
    and-int/lit8 v3, v15, 0x4

    .line 75
    .line 76
    if-eqz v3, :cond_7

    .line 77
    .line 78
    or-int/lit16 v0, v0, 0x180

    .line 79
    .line 80
    :cond_6
    move-object/from16 v4, p2

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_7
    and-int/lit16 v4, v14, 0x380

    .line 84
    .line 85
    if-nez v4, :cond_6

    .line 86
    .line 87
    move-object/from16 v4, p2

    .line 88
    .line 89
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_8

    .line 94
    .line 95
    const/16 v5, 0x100

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_8
    const/16 v5, 0x80

    .line 99
    .line 100
    :goto_4
    or-int/2addr v0, v5

    .line 101
    :goto_5
    and-int/lit8 v5, v15, 0x8

    .line 102
    .line 103
    if-eqz v5, :cond_a

    .line 104
    .line 105
    or-int/lit16 v0, v0, 0xc00

    .line 106
    .line 107
    :cond_9
    move/from16 v6, p3

    .line 108
    .line 109
    goto :goto_7

    .line 110
    :cond_a
    and-int/lit16 v6, v14, 0x1c00

    .line 111
    .line 112
    if-nez v6, :cond_9

    .line 113
    .line 114
    move/from16 v6, p3

    .line 115
    .line 116
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_b

    .line 121
    .line 122
    const/16 v7, 0x800

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_b
    const/16 v7, 0x400

    .line 126
    .line 127
    :goto_6
    or-int/2addr v0, v7

    .line 128
    :goto_7
    const v7, 0xe000

    .line 129
    .line 130
    .line 131
    and-int/2addr v7, v14

    .line 132
    if-nez v7, :cond_e

    .line 133
    .line 134
    and-int/lit8 v7, v15, 0x10

    .line 135
    .line 136
    if-nez v7, :cond_c

    .line 137
    .line 138
    move-object/from16 v7, p4

    .line 139
    .line 140
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_d

    .line 145
    .line 146
    const/16 v8, 0x4000

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_c
    move-object/from16 v7, p4

    .line 150
    .line 151
    :cond_d
    const/16 v8, 0x2000

    .line 152
    .line 153
    :goto_8
    or-int/2addr v0, v8

    .line 154
    goto :goto_9

    .line 155
    :cond_e
    move-object/from16 v7, p4

    .line 156
    .line 157
    :goto_9
    and-int/lit8 v8, v15, 0x20

    .line 158
    .line 159
    if-eqz v8, :cond_10

    .line 160
    .line 161
    const/high16 v9, 0x30000

    .line 162
    .line 163
    or-int/2addr v0, v9

    .line 164
    :cond_f
    move/from16 v9, p5

    .line 165
    .line 166
    goto :goto_b

    .line 167
    :cond_10
    const/high16 v9, 0x70000

    .line 168
    .line 169
    and-int/2addr v9, v14

    .line 170
    if-nez v9, :cond_f

    .line 171
    .line 172
    move/from16 v9, p5

    .line 173
    .line 174
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    if-eqz v10, :cond_11

    .line 179
    .line 180
    const/high16 v10, 0x20000

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_11
    const/high16 v10, 0x10000

    .line 184
    .line 185
    :goto_a
    or-int/2addr v0, v10

    .line 186
    :goto_b
    and-int/lit8 v10, v15, 0x40

    .line 187
    .line 188
    if-eqz v10, :cond_12

    .line 189
    .line 190
    const/high16 v16, 0x180000

    .line 191
    .line 192
    or-int v0, v0, v16

    .line 193
    .line 194
    move-object/from16 v1, p6

    .line 195
    .line 196
    goto :goto_d

    .line 197
    :cond_12
    const/high16 v16, 0x380000

    .line 198
    .line 199
    and-int v16, v14, v16

    .line 200
    .line 201
    move-object/from16 v1, p6

    .line 202
    .line 203
    if-nez v16, :cond_14

    .line 204
    .line 205
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v16

    .line 209
    if-eqz v16, :cond_13

    .line 210
    .line 211
    const/high16 v16, 0x100000

    .line 212
    .line 213
    goto :goto_c

    .line 214
    :cond_13
    const/high16 v16, 0x80000

    .line 215
    .line 216
    :goto_c
    or-int v0, v0, v16

    .line 217
    .line 218
    :cond_14
    :goto_d
    const/high16 v16, 0x1c00000

    .line 219
    .line 220
    and-int v16, v14, v16

    .line 221
    .line 222
    if-nez v16, :cond_17

    .line 223
    .line 224
    and-int/lit16 v2, v15, 0x80

    .line 225
    .line 226
    if-nez v2, :cond_15

    .line 227
    .line 228
    move-object/from16 v2, p7

    .line 229
    .line 230
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v16

    .line 234
    if-eqz v16, :cond_16

    .line 235
    .line 236
    const/high16 v16, 0x800000

    .line 237
    .line 238
    goto :goto_e

    .line 239
    :cond_15
    move-object/from16 v2, p7

    .line 240
    .line 241
    :cond_16
    const/high16 v16, 0x400000

    .line 242
    .line 243
    :goto_e
    or-int v0, v0, v16

    .line 244
    .line 245
    goto :goto_f

    .line 246
    :cond_17
    move-object/from16 v2, p7

    .line 247
    .line 248
    :goto_f
    const v16, 0x16db6db

    .line 249
    .line 250
    .line 251
    and-int v1, v0, v16

    .line 252
    .line 253
    const v2, 0x492492

    .line 254
    .line 255
    .line 256
    if-ne v1, v2, :cond_19

    .line 257
    .line 258
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-nez v1, :cond_18

    .line 263
    .line 264
    goto :goto_10

    .line 265
    :cond_18
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 266
    .line 267
    .line 268
    move-object/from16 v8, p7

    .line 269
    .line 270
    move-object v3, v4

    .line 271
    move v4, v6

    .line 272
    move-object v5, v7

    .line 273
    move v6, v9

    .line 274
    move-object v14, v11

    .line 275
    move-object/from16 v7, p6

    .line 276
    .line 277
    goto/16 :goto_16

    .line 278
    .line 279
    :cond_19
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 280
    .line 281
    .line 282
    and-int/lit8 v1, v14, 0x1

    .line 283
    .line 284
    const v16, -0xe001

    .line 285
    .line 286
    .line 287
    const/4 v2, 0x1

    .line 288
    if-eqz v1, :cond_1d

    .line 289
    .line 290
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_1a

    .line 295
    .line 296
    goto :goto_11

    .line 297
    :cond_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 298
    .line 299
    .line 300
    and-int/lit8 v1, v15, 0x10

    .line 301
    .line 302
    if-eqz v1, :cond_1b

    .line 303
    .line 304
    and-int v0, v0, v16

    .line 305
    .line 306
    :cond_1b
    and-int/lit16 v1, v15, 0x80

    .line 307
    .line 308
    if-eqz v1, :cond_1c

    .line 309
    .line 310
    const v1, -0x1c00001

    .line 311
    .line 312
    .line 313
    and-int/2addr v0, v1

    .line 314
    :cond_1c
    move-object/from16 v20, p6

    .line 315
    .line 316
    move-object/from16 v21, p7

    .line 317
    .line 318
    move v3, v0

    .line 319
    move-object/from16 v16, v4

    .line 320
    .line 321
    move/from16 v17, v6

    .line 322
    .line 323
    move-object/from16 v18, v7

    .line 324
    .line 325
    move/from16 v19, v9

    .line 326
    .line 327
    goto/16 :goto_15

    .line 328
    .line 329
    :cond_1d
    :goto_11
    if-eqz v3, :cond_1e

    .line 330
    .line 331
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 332
    .line 333
    goto :goto_12

    .line 334
    :cond_1e
    move-object v1, v4

    .line 335
    :goto_12
    if-eqz v5, :cond_1f

    .line 336
    .line 337
    move v6, v2

    .line 338
    :cond_1f
    and-int/lit8 v3, v15, 0x10

    .line 339
    .line 340
    if-eqz v3, :cond_20

    .line 341
    .line 342
    const/4 v3, 0x0

    .line 343
    const/high16 v4, 0x3f800000    # 1.0f

    .line 344
    .line 345
    invoke-static {v3, v4}, Lkotlin/ranges/e;->b(FF)Ldt/b;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    and-int v0, v0, v16

    .line 350
    .line 351
    move-object v7, v3

    .line 352
    :cond_20
    if-eqz v8, :cond_21

    .line 353
    .line 354
    const/4 v3, 0x0

    .line 355
    move v9, v3

    .line 356
    :cond_21
    if-eqz v10, :cond_22

    .line 357
    .line 358
    const/4 v3, 0x0

    .line 359
    goto :goto_13

    .line 360
    :cond_22
    move-object/from16 v3, p6

    .line 361
    .line 362
    :goto_13
    and-int/lit16 v4, v15, 0x80

    .line 363
    .line 364
    if-eqz v4, :cond_23

    .line 365
    .line 366
    sget-object v16, Landroidx/compose/material/SliderDefaults;->INSTANCE:Landroidx/compose/material/SliderDefaults;

    .line 367
    .line 368
    const/16 v39, 0x6

    .line 369
    .line 370
    const/16 v40, 0x3ff

    .line 371
    .line 372
    const-wide/16 v17, 0x0

    .line 373
    .line 374
    const-wide/16 v19, 0x0

    .line 375
    .line 376
    const-wide/16 v21, 0x0

    .line 377
    .line 378
    const-wide/16 v23, 0x0

    .line 379
    .line 380
    const-wide/16 v25, 0x0

    .line 381
    .line 382
    const-wide/16 v27, 0x0

    .line 383
    .line 384
    const-wide/16 v29, 0x0

    .line 385
    .line 386
    const-wide/16 v31, 0x0

    .line 387
    .line 388
    const-wide/16 v33, 0x0

    .line 389
    .line 390
    const-wide/16 v35, 0x0

    .line 391
    .line 392
    const/16 v38, 0x0

    .line 393
    .line 394
    move-object/from16 v37, v11

    .line 395
    .line 396
    invoke-virtual/range {v16 .. v40}, Landroidx/compose/material/SliderDefaults;->colors-q0g_0yA(JJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SliderColors;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    const v5, -0x1c00001

    .line 401
    .line 402
    .line 403
    and-int/2addr v0, v5

    .line 404
    move-object/from16 v16, v1

    .line 405
    .line 406
    move-object/from16 v20, v3

    .line 407
    .line 408
    move-object/from16 v21, v4

    .line 409
    .line 410
    :goto_14
    move/from16 v17, v6

    .line 411
    .line 412
    move-object/from16 v18, v7

    .line 413
    .line 414
    move/from16 v19, v9

    .line 415
    .line 416
    move v3, v0

    .line 417
    goto :goto_15

    .line 418
    :cond_23
    move-object/from16 v21, p7

    .line 419
    .line 420
    move-object/from16 v16, v1

    .line 421
    .line 422
    move-object/from16 v20, v3

    .line 423
    .line 424
    goto :goto_14

    .line 425
    :goto_15
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 426
    .line 427
    .line 428
    const v0, -0x1d58f75c

    .line 429
    .line 430
    .line 431
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 432
    .line 433
    .line 434
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 439
    .line 440
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    if-ne v1, v5, :cond_24

    .line 445
    .line 446
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    :cond_24
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 454
    .line 455
    .line 456
    move-object v5, v1

    .line 457
    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 458
    .line 459
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 460
    .line 461
    .line 462
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    if-ne v0, v1, :cond_25

    .line 471
    .line 472
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    :cond_25
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 480
    .line 481
    .line 482
    move-object v6, v0

    .line 483
    check-cast v6, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 484
    .line 485
    if-ltz v19, :cond_29

    .line 486
    .line 487
    shr-int/lit8 v0, v3, 0x3

    .line 488
    .line 489
    and-int/lit8 v0, v0, 0xe

    .line 490
    .line 491
    invoke-static {v13, v11, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    const v1, 0x44faf204

    .line 500
    .line 501
    .line 502
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 503
    .line 504
    .line 505
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    if-nez v0, :cond_26

    .line 514
    .line 515
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    if-ne v1, v0, :cond_27

    .line 520
    .line 521
    :cond_26
    invoke-static/range {v19 .. v19}, Landroidx/compose/material/SliderKt;->stepsToTickFractions(I)Ljava/util/List;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    :cond_27
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 529
    .line 530
    .line 531
    move-object v8, v1

    .line 532
    check-cast v8, Ljava/util/List;

    .line 533
    .line 534
    invoke-static/range {v16 .. v16}, Landroidx/compose/material/TouchTargetKt;->minimumTouchTargetSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 535
    .line 536
    .line 537
    move-result-object v22

    .line 538
    sget v0, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .line 539
    .line 540
    const/4 v1, 0x4

    .line 541
    int-to-float v1, v1

    .line 542
    mul-float/2addr v1, v0

    .line 543
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 544
    .line 545
    .line 546
    move-result v23

    .line 547
    const/4 v1, 0x2

    .line 548
    int-to-float v1, v1

    .line 549
    mul-float/2addr v0, v1

    .line 550
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 551
    .line 552
    .line 553
    move-result v24

    .line 554
    const/16 v27, 0xc

    .line 555
    .line 556
    const/16 v28, 0x0

    .line 557
    .line 558
    const/16 v25, 0x0

    .line 559
    .line 560
    const/16 v26, 0x0

    .line 561
    .line 562
    invoke-static/range {v22 .. v28}, Landroidx/compose/foundation/layout/SizeKt;->requiredSizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 563
    .line 564
    .line 565
    move-result-object v22

    .line 566
    new-instance v10, Landroidx/compose/material/SliderKt$RangeSlider$2;

    .line 567
    .line 568
    move-object v0, v10

    .line 569
    move-object/from16 v1, v18

    .line 570
    .line 571
    move v9, v2

    .line 572
    move-object/from16 v2, p0

    .line 573
    .line 574
    move-object v4, v7

    .line 575
    move/from16 v7, v17

    .line 576
    .line 577
    move v12, v9

    .line 578
    move/from16 v9, v19

    .line 579
    .line 580
    move-object v13, v10

    .line 581
    move-object/from16 v10, v21

    .line 582
    .line 583
    move-object v14, v11

    .line 584
    move-object/from16 v11, v20

    .line 585
    .line 586
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/SliderKt$RangeSlider$2;-><init>(Ldt/b;Ldt/b;ILandroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/util/List;ILandroidx/compose/material/SliderColors;Lkotlin/jvm/functions/Function0;)V

    .line 587
    .line 588
    .line 589
    const v0, 0x26e5bb63

    .line 590
    .line 591
    .line 592
    invoke-static {v14, v0, v12, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    const/16 v1, 0xc00

    .line 597
    .line 598
    const/4 v2, 0x6

    .line 599
    const/4 v3, 0x0

    .line 600
    const/4 v4, 0x0

    .line 601
    move-object/from16 p2, v22

    .line 602
    .line 603
    move-object/from16 p3, v3

    .line 604
    .line 605
    move/from16 p4, v4

    .line 606
    .line 607
    move-object/from16 p5, v0

    .line 608
    .line 609
    move-object/from16 p6, v14

    .line 610
    .line 611
    move/from16 p7, v1

    .line 612
    .line 613
    move/from16 p8, v2

    .line 614
    .line 615
    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLat/n;Landroidx/compose/runtime/Composer;II)V

    .line 616
    .line 617
    .line 618
    move-object/from16 v3, v16

    .line 619
    .line 620
    move/from16 v4, v17

    .line 621
    .line 622
    move-object/from16 v5, v18

    .line 623
    .line 624
    move/from16 v6, v19

    .line 625
    .line 626
    move-object/from16 v7, v20

    .line 627
    .line 628
    move-object/from16 v8, v21

    .line 629
    .line 630
    :goto_16
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 631
    .line 632
    .line 633
    move-result-object v11

    .line 634
    if-nez v11, :cond_28

    .line 635
    .line 636
    goto :goto_17

    .line 637
    :cond_28
    new-instance v12, Landroidx/compose/material/SliderKt$RangeSlider$3;

    .line 638
    .line 639
    move-object v0, v12

    .line 640
    move-object/from16 v1, p0

    .line 641
    .line 642
    move-object/from16 v2, p1

    .line 643
    .line 644
    move/from16 v9, p9

    .line 645
    .line 646
    move/from16 v10, p10

    .line 647
    .line 648
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/SliderKt$RangeSlider$3;-><init>(Ldt/b;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLdt/b;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/SliderColors;II)V

    .line 649
    .line 650
    .line 651
    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 652
    .line 653
    .line 654
    :goto_17
    return-void

    .line 655
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 656
    .line 657
    const-string v1, "steps should be >= 0"

    .line 658
    .line 659
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    throw v0
.end method

.method private static final RangeSliderImpl(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZFF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material/SliderColors;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    const v0, -0x109f9c61

    .line 2
    .line 3
    .line 4
    move-object/from16 v1, p11

    .line 5
    .line 6
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/material/Strings$Companion;->getSliderRangeStart-UdPEhr4()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x6

    .line 17
    invoke-static {v2, v0, v3}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v11

    .line 21
    invoke-virtual {v1}, Landroidx/compose/material/Strings$Companion;->getSliderRangeEnd-UdPEhr4()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1, v0, v3}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    sget-object v1, Landroidx/compose/material/SliderKt;->DefaultSliderConstraints:Landroidx/compose/ui/Modifier;

    .line 30
    .line 31
    move-object/from16 v15, p8

    .line 32
    .line 33
    invoke-interface {v15, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const v2, 0x2bb5b5d7

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static {v4, v5, v0, v5}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const v6, -0x4ee9b9da

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 69
    .line 70
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    .line 79
    .line 80
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    check-cast v8, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 89
    .line 90
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 91
    .line 92
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    if-nez v13, :cond_0

    .line 105
    .line 106
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 107
    .line 108
    .line 109
    :cond_0
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 110
    .line 111
    .line 112
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-eqz v13, :cond_1

    .line 117
    .line 118
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 123
    .line 124
    .line 125
    :goto_0
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    invoke-static {v10, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {v10, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-static {v10, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v10, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 161
    .line 162
    .line 163
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-interface {v1, v4, v0, v5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    const v1, 0x7ab4aae9

    .line 179
    .line 180
    .line 181
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 182
    .line 183
    .line 184
    const v1, -0x7f65a980

    .line 185
    .line 186
    .line 187
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 188
    .line 189
    .line 190
    sget-object v13, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 191
    .line 192
    const v1, 0x79d8e259

    .line 193
    .line 194
    .line 195
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 196
    .line 197
    .line 198
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 207
    .line 208
    sget v4, Landroidx/compose/material/SliderKt;->TrackHeight:F

    .line 209
    .line 210
    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    sget v4, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .line 215
    .line 216
    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    move/from16 v14, p5

    .line 221
    .line 222
    invoke-interface {v1, v14}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 227
    .line 228
    const/4 v5, 0x2

    .line 229
    int-to-float v5, v5

    .line 230
    mul-float/2addr v4, v5

    .line 231
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 232
    .line 233
    .line 234
    move-result v16

    .line 235
    mul-float v4, v1, p1

    .line 236
    .line 237
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 238
    .line 239
    .line 240
    move-result v17

    .line 241
    mul-float v1, v1, p2

    .line 242
    .line 243
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 244
    .line 245
    .line 246
    move-result v18

    .line 247
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 248
    .line 249
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterStart()Landroidx/compose/ui/Alignment;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-interface {v13, v10, v1}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    const/4 v2, 0x0

    .line 258
    const/4 v4, 0x0

    .line 259
    const/4 v9, 0x1

    .line 260
    invoke-static {v1, v2, v9, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    shr-int/lit8 v6, p12, 0x9

    .line 265
    .line 266
    and-int/lit8 v2, v6, 0x70

    .line 267
    .line 268
    const/high16 v4, 0x40000

    .line 269
    .line 270
    or-int/2addr v2, v4

    .line 271
    shl-int/lit8 v3, p12, 0x6

    .line 272
    .line 273
    and-int/lit16 v4, v3, 0x380

    .line 274
    .line 275
    or-int/2addr v2, v4

    .line 276
    and-int/lit16 v4, v3, 0x1c00

    .line 277
    .line 278
    or-int/2addr v2, v4

    .line 279
    const v19, 0xe000

    .line 280
    .line 281
    .line 282
    and-int v3, v3, v19

    .line 283
    .line 284
    or-int v20, v2, v3

    .line 285
    .line 286
    move-object/from16 v2, p4

    .line 287
    .line 288
    move/from16 v3, p0

    .line 289
    .line 290
    move/from16 v4, p1

    .line 291
    .line 292
    move/from16 v5, p2

    .line 293
    .line 294
    move v14, v6

    .line 295
    move-object/from16 v6, p3

    .line 296
    .line 297
    move v15, v9

    .line 298
    move-object v9, v0

    .line 299
    move-object/from16 p11, v12

    .line 300
    .line 301
    move-object v12, v10

    .line 302
    move/from16 v10, v20

    .line 303
    .line 304
    invoke-static/range {v1 .. v10}, Landroidx/compose/material/SliderKt;->Track(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V

    .line 305
    .line 306
    .line 307
    const v10, 0x44faf204

    .line 308
    .line 309
    .line 310
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    if-nez v1, :cond_2

    .line 322
    .line 323
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 324
    .line 325
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    if-ne v2, v1, :cond_3

    .line 330
    .line 331
    :cond_2
    new-instance v2, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$2$1;

    .line 332
    .line 333
    invoke-direct {v2, v11}, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$2$1;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    :cond_3
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 340
    .line 341
    .line 342
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 343
    .line 344
    invoke-static {v12, v15, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    move-object/from16 v11, p6

    .line 349
    .line 350
    invoke-static {v1, v15, v11}, Landroidx/compose/foundation/FocusableKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    move-object/from16 v9, p9

    .line 355
    .line 356
    invoke-interface {v1, v9}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    and-int/lit16 v1, v14, 0x1c00

    .line 361
    .line 362
    const v14, 0x180006

    .line 363
    .line 364
    .line 365
    or-int/2addr v1, v14

    .line 366
    and-int v19, p12, v19

    .line 367
    .line 368
    or-int v1, v1, v19

    .line 369
    .line 370
    shl-int/lit8 v3, p12, 0xf

    .line 371
    .line 372
    const/high16 v4, 0x70000

    .line 373
    .line 374
    and-int v20, v3, v4

    .line 375
    .line 376
    or-int v21, v1, v20

    .line 377
    .line 378
    move-object v1, v13

    .line 379
    move/from16 v3, v17

    .line 380
    .line 381
    move-object/from16 v4, p6

    .line 382
    .line 383
    move-object/from16 v5, p4

    .line 384
    .line 385
    move/from16 v6, p0

    .line 386
    .line 387
    move/from16 v7, v16

    .line 388
    .line 389
    move-object v8, v0

    .line 390
    move/from16 v9, v21

    .line 391
    .line 392
    invoke-static/range {v1 .. v9}, Landroidx/compose/material/SliderKt;->SliderThumb-PcYyNuk(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V

    .line 393
    .line 394
    .line 395
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 396
    .line 397
    .line 398
    move-object/from16 v1, p11

    .line 399
    .line 400
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    if-nez v2, :cond_4

    .line 409
    .line 410
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 411
    .line 412
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    if-ne v3, v2, :cond_5

    .line 417
    .line 418
    :cond_4
    new-instance v3, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$3$1;

    .line 419
    .line 420
    invoke-direct {v3, v1}, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$3$1;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    :cond_5
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 427
    .line 428
    .line 429
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 430
    .line 431
    invoke-static {v12, v15, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    move-object/from16 v10, p7

    .line 436
    .line 437
    invoke-static {v1, v15, v10}, Landroidx/compose/foundation/FocusableKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    move-object/from16 v12, p10

    .line 442
    .line 443
    invoke-interface {v1, v12}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    shr-int/lit8 v1, p12, 0xc

    .line 448
    .line 449
    and-int/lit16 v1, v1, 0x1c00

    .line 450
    .line 451
    or-int/2addr v1, v14

    .line 452
    or-int v1, v1, v19

    .line 453
    .line 454
    or-int v9, v1, v20

    .line 455
    .line 456
    move-object v1, v13

    .line 457
    move/from16 v3, v18

    .line 458
    .line 459
    move-object/from16 v4, p7

    .line 460
    .line 461
    move-object/from16 v5, p4

    .line 462
    .line 463
    move/from16 v6, p0

    .line 464
    .line 465
    move/from16 v7, v16

    .line 466
    .line 467
    move-object v8, v0

    .line 468
    invoke-static/range {v1 .. v9}, Landroidx/compose/material/SliderKt;->SliderThumb-PcYyNuk(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V

    .line 469
    .line 470
    .line 471
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 472
    .line 473
    .line 474
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 475
    .line 476
    .line 477
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 478
    .line 479
    .line 480
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 481
    .line 482
    .line 483
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 484
    .line 485
    .line 486
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 487
    .line 488
    .line 489
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    if-nez v0, :cond_6

    .line 494
    .line 495
    goto :goto_1

    .line 496
    :cond_6
    new-instance v1, Landroidx/compose/material/SliderKt$RangeSliderImpl$2;

    .line 497
    .line 498
    move-object v13, v1

    .line 499
    move/from16 v14, p0

    .line 500
    .line 501
    move/from16 v15, p1

    .line 502
    .line 503
    move/from16 v16, p2

    .line 504
    .line 505
    move-object/from16 v17, p3

    .line 506
    .line 507
    move-object/from16 v18, p4

    .line 508
    .line 509
    move/from16 v19, p5

    .line 510
    .line 511
    move-object/from16 v20, p6

    .line 512
    .line 513
    move-object/from16 v21, p7

    .line 514
    .line 515
    move-object/from16 v22, p8

    .line 516
    .line 517
    move-object/from16 v23, p9

    .line 518
    .line 519
    move-object/from16 v24, p10

    .line 520
    .line 521
    move/from16 v25, p12

    .line 522
    .line 523
    move/from16 v26, p13

    .line 524
    .line 525
    invoke-direct/range {v13 .. v26}, Landroidx/compose/material/SliderKt$RangeSliderImpl$2;-><init>(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;II)V

    .line 526
    .line 527
    .line 528
    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 529
    .line 530
    .line 531
    :goto_1
    return-void
.end method

.method public static final Slider(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLdt/b;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V
    .locals 37
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ldt/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/material/SliderColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
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
            "(F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/material/SliderColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v10, p10

    .line 4
    .line 5
    move/from16 v11, p11

    .line 6
    .line 7
    const-string v0, "onValueChange"

    .line 8
    .line 9
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, -0x74f6dbdc

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p9

    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    and-int/lit8 v1, v11, 0x1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    or-int/lit8 v1, v10, 0x6

    .line 26
    .line 27
    move v4, v1

    .line 28
    move/from16 v1, p0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    and-int/lit8 v1, v10, 0xe

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    move/from16 v1, p0

    .line 36
    .line 37
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    const/4 v4, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v4, 0x2

    .line 46
    :goto_0
    or-int/2addr v4, v10

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move/from16 v1, p0

    .line 49
    .line 50
    move v4, v10

    .line 51
    :goto_1
    and-int/lit8 v5, v11, 0x2

    .line 52
    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    or-int/lit8 v4, v4, 0x30

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    and-int/lit8 v5, v10, 0x70

    .line 59
    .line 60
    if-nez v5, :cond_5

    .line 61
    .line 62
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    const/16 v5, 0x20

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    const/16 v5, 0x10

    .line 72
    .line 73
    :goto_2
    or-int/2addr v4, v5

    .line 74
    :cond_5
    :goto_3
    and-int/lit8 v5, v11, 0x4

    .line 75
    .line 76
    if-eqz v5, :cond_7

    .line 77
    .line 78
    or-int/lit16 v4, v4, 0x180

    .line 79
    .line 80
    :cond_6
    move-object/from16 v6, p2

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_7
    and-int/lit16 v6, v10, 0x380

    .line 84
    .line 85
    if-nez v6, :cond_6

    .line 86
    .line 87
    move-object/from16 v6, p2

    .line 88
    .line 89
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_8

    .line 94
    .line 95
    const/16 v7, 0x100

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_8
    const/16 v7, 0x80

    .line 99
    .line 100
    :goto_4
    or-int/2addr v4, v7

    .line 101
    :goto_5
    and-int/lit8 v7, v11, 0x8

    .line 102
    .line 103
    if-eqz v7, :cond_a

    .line 104
    .line 105
    or-int/lit16 v4, v4, 0xc00

    .line 106
    .line 107
    :cond_9
    move/from16 v8, p3

    .line 108
    .line 109
    goto :goto_7

    .line 110
    :cond_a
    and-int/lit16 v8, v10, 0x1c00

    .line 111
    .line 112
    if-nez v8, :cond_9

    .line 113
    .line 114
    move/from16 v8, p3

    .line 115
    .line 116
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-eqz v9, :cond_b

    .line 121
    .line 122
    const/16 v9, 0x800

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_b
    const/16 v9, 0x400

    .line 126
    .line 127
    :goto_6
    or-int/2addr v4, v9

    .line 128
    :goto_7
    const v9, 0xe000

    .line 129
    .line 130
    .line 131
    and-int/2addr v9, v10

    .line 132
    if-nez v9, :cond_e

    .line 133
    .line 134
    and-int/lit8 v9, v11, 0x10

    .line 135
    .line 136
    if-nez v9, :cond_c

    .line 137
    .line 138
    move-object/from16 v9, p4

    .line 139
    .line 140
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    if-eqz v12, :cond_d

    .line 145
    .line 146
    const/16 v12, 0x4000

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_c
    move-object/from16 v9, p4

    .line 150
    .line 151
    :cond_d
    const/16 v12, 0x2000

    .line 152
    .line 153
    :goto_8
    or-int/2addr v4, v12

    .line 154
    goto :goto_9

    .line 155
    :cond_e
    move-object/from16 v9, p4

    .line 156
    .line 157
    :goto_9
    and-int/lit8 v12, v11, 0x20

    .line 158
    .line 159
    if-eqz v12, :cond_10

    .line 160
    .line 161
    const/high16 v13, 0x30000

    .line 162
    .line 163
    or-int/2addr v4, v13

    .line 164
    :cond_f
    move/from16 v13, p5

    .line 165
    .line 166
    goto :goto_b

    .line 167
    :cond_10
    const/high16 v13, 0x70000

    .line 168
    .line 169
    and-int/2addr v13, v10

    .line 170
    if-nez v13, :cond_f

    .line 171
    .line 172
    move/from16 v13, p5

    .line 173
    .line 174
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    if-eqz v14, :cond_11

    .line 179
    .line 180
    const/high16 v14, 0x20000

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_11
    const/high16 v14, 0x10000

    .line 184
    .line 185
    :goto_a
    or-int/2addr v4, v14

    .line 186
    :goto_b
    and-int/lit8 v14, v11, 0x40

    .line 187
    .line 188
    if-eqz v14, :cond_13

    .line 189
    .line 190
    const/high16 v15, 0x180000

    .line 191
    .line 192
    or-int/2addr v4, v15

    .line 193
    :cond_12
    move-object/from16 v15, p6

    .line 194
    .line 195
    goto :goto_d

    .line 196
    :cond_13
    const/high16 v15, 0x380000

    .line 197
    .line 198
    and-int/2addr v15, v10

    .line 199
    if-nez v15, :cond_12

    .line 200
    .line 201
    move-object/from16 v15, p6

    .line 202
    .line 203
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v16

    .line 207
    if-eqz v16, :cond_14

    .line 208
    .line 209
    const/high16 v16, 0x100000

    .line 210
    .line 211
    goto :goto_c

    .line 212
    :cond_14
    const/high16 v16, 0x80000

    .line 213
    .line 214
    :goto_c
    or-int v4, v4, v16

    .line 215
    .line 216
    :goto_d
    and-int/lit16 v3, v11, 0x80

    .line 217
    .line 218
    if-eqz v3, :cond_15

    .line 219
    .line 220
    const/high16 v16, 0xc00000

    .line 221
    .line 222
    or-int v4, v4, v16

    .line 223
    .line 224
    move-object/from16 v1, p7

    .line 225
    .line 226
    goto :goto_f

    .line 227
    :cond_15
    const/high16 v16, 0x1c00000

    .line 228
    .line 229
    and-int v16, v10, v16

    .line 230
    .line 231
    move-object/from16 v1, p7

    .line 232
    .line 233
    if-nez v16, :cond_17

    .line 234
    .line 235
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v16

    .line 239
    if-eqz v16, :cond_16

    .line 240
    .line 241
    const/high16 v16, 0x800000

    .line 242
    .line 243
    goto :goto_e

    .line 244
    :cond_16
    const/high16 v16, 0x400000

    .line 245
    .line 246
    :goto_e
    or-int v4, v4, v16

    .line 247
    .line 248
    :cond_17
    :goto_f
    const/high16 v16, 0xe000000

    .line 249
    .line 250
    and-int v16, v10, v16

    .line 251
    .line 252
    if-nez v16, :cond_1a

    .line 253
    .line 254
    and-int/lit16 v1, v11, 0x100

    .line 255
    .line 256
    if-nez v1, :cond_18

    .line 257
    .line 258
    move-object/from16 v1, p8

    .line 259
    .line 260
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v16

    .line 264
    if-eqz v16, :cond_19

    .line 265
    .line 266
    const/high16 v16, 0x4000000

    .line 267
    .line 268
    goto :goto_10

    .line 269
    :cond_18
    move-object/from16 v1, p8

    .line 270
    .line 271
    :cond_19
    const/high16 v16, 0x2000000

    .line 272
    .line 273
    :goto_10
    or-int v4, v4, v16

    .line 274
    .line 275
    goto :goto_11

    .line 276
    :cond_1a
    move-object/from16 v1, p8

    .line 277
    .line 278
    :goto_11
    const v16, 0xb6db6db

    .line 279
    .line 280
    .line 281
    and-int v1, v4, v16

    .line 282
    .line 283
    const v6, 0x2492492

    .line 284
    .line 285
    .line 286
    if-ne v1, v6, :cond_1c

    .line 287
    .line 288
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-nez v1, :cond_1b

    .line 293
    .line 294
    goto :goto_12

    .line 295
    :cond_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 296
    .line 297
    .line 298
    move-object/from16 v3, p2

    .line 299
    .line 300
    move v4, v8

    .line 301
    move-object v5, v9

    .line 302
    move v6, v13

    .line 303
    move-object v7, v15

    .line 304
    move-object/from16 v8, p7

    .line 305
    .line 306
    move-object/from16 v9, p8

    .line 307
    .line 308
    goto/16 :goto_1b

    .line 309
    .line 310
    :cond_1c
    :goto_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 311
    .line 312
    .line 313
    and-int/lit8 v1, v10, 0x1

    .line 314
    .line 315
    const v6, -0xe000001

    .line 316
    .line 317
    .line 318
    const v16, -0xe001

    .line 319
    .line 320
    .line 321
    const/4 v15, 0x1

    .line 322
    if-eqz v1, :cond_20

    .line 323
    .line 324
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_1d

    .line 329
    .line 330
    goto :goto_14

    .line 331
    :cond_1d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 332
    .line 333
    .line 334
    and-int/lit8 v1, v11, 0x10

    .line 335
    .line 336
    if-eqz v1, :cond_1e

    .line 337
    .line 338
    and-int v4, v4, v16

    .line 339
    .line 340
    :cond_1e
    and-int/lit16 v1, v11, 0x100

    .line 341
    .line 342
    if-eqz v1, :cond_1f

    .line 343
    .line 344
    and-int v1, v4, v6

    .line 345
    .line 346
    move-object/from16 v3, p7

    .line 347
    .line 348
    move-object/from16 v4, p8

    .line 349
    .line 350
    move v14, v1

    .line 351
    move-object v5, v9

    .line 352
    move v7, v13

    .line 353
    move-object/from16 v1, p2

    .line 354
    .line 355
    move-object/from16 v9, p6

    .line 356
    .line 357
    goto/16 :goto_1a

    .line 358
    .line 359
    :cond_1f
    move-object/from16 v1, p2

    .line 360
    .line 361
    move-object/from16 v3, p7

    .line 362
    .line 363
    move v14, v4

    .line 364
    move-object v5, v9

    .line 365
    move v7, v13

    .line 366
    move-object/from16 v9, p6

    .line 367
    .line 368
    :goto_13
    move-object/from16 v4, p8

    .line 369
    .line 370
    goto/16 :goto_1a

    .line 371
    .line 372
    :cond_20
    :goto_14
    if-eqz v5, :cond_21

    .line 373
    .line 374
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 375
    .line 376
    goto :goto_15

    .line 377
    :cond_21
    move-object/from16 v1, p2

    .line 378
    .line 379
    :goto_15
    if-eqz v7, :cond_22

    .line 380
    .line 381
    move v8, v15

    .line 382
    :cond_22
    and-int/lit8 v5, v11, 0x10

    .line 383
    .line 384
    if-eqz v5, :cond_23

    .line 385
    .line 386
    const/4 v5, 0x0

    .line 387
    const/high16 v7, 0x3f800000    # 1.0f

    .line 388
    .line 389
    invoke-static {v5, v7}, Lkotlin/ranges/e;->b(FF)Ldt/b;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    and-int v4, v4, v16

    .line 394
    .line 395
    goto :goto_16

    .line 396
    :cond_23
    move-object v5, v9

    .line 397
    :goto_16
    if-eqz v12, :cond_24

    .line 398
    .line 399
    const/4 v7, 0x0

    .line 400
    goto :goto_17

    .line 401
    :cond_24
    move v7, v13

    .line 402
    :goto_17
    if-eqz v14, :cond_25

    .line 403
    .line 404
    const/4 v9, 0x0

    .line 405
    goto :goto_18

    .line 406
    :cond_25
    move-object/from16 v9, p6

    .line 407
    .line 408
    :goto_18
    if-eqz v3, :cond_27

    .line 409
    .line 410
    const v3, -0x1d58f75c

    .line 411
    .line 412
    .line 413
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 414
    .line 415
    .line 416
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 421
    .line 422
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v12

    .line 426
    if-ne v3, v12, :cond_26

    .line 427
    .line 428
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    :cond_26
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 436
    .line 437
    .line 438
    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 439
    .line 440
    goto :goto_19

    .line 441
    :cond_27
    move-object/from16 v3, p7

    .line 442
    .line 443
    :goto_19
    and-int/lit16 v12, v11, 0x100

    .line 444
    .line 445
    if-eqz v12, :cond_28

    .line 446
    .line 447
    sget-object v12, Landroidx/compose/material/SliderDefaults;->INSTANCE:Landroidx/compose/material/SliderDefaults;

    .line 448
    .line 449
    const/16 v35, 0x6

    .line 450
    .line 451
    const/16 v36, 0x3ff

    .line 452
    .line 453
    const-wide/16 v13, 0x0

    .line 454
    .line 455
    const-wide/16 v16, 0x0

    .line 456
    .line 457
    move-wide/from16 v15, v16

    .line 458
    .line 459
    const-wide/16 v17, 0x0

    .line 460
    .line 461
    const-wide/16 v19, 0x0

    .line 462
    .line 463
    const-wide/16 v21, 0x0

    .line 464
    .line 465
    const-wide/16 v23, 0x0

    .line 466
    .line 467
    const-wide/16 v25, 0x0

    .line 468
    .line 469
    const-wide/16 v27, 0x0

    .line 470
    .line 471
    const-wide/16 v29, 0x0

    .line 472
    .line 473
    const-wide/16 v31, 0x0

    .line 474
    .line 475
    const/16 v34, 0x0

    .line 476
    .line 477
    move-object/from16 v33, v0

    .line 478
    .line 479
    invoke-virtual/range {v12 .. v36}, Landroidx/compose/material/SliderDefaults;->colors-q0g_0yA(JJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SliderColors;

    .line 480
    .line 481
    .line 482
    move-result-object v12

    .line 483
    and-int/2addr v4, v6

    .line 484
    move v14, v4

    .line 485
    move-object v4, v12

    .line 486
    goto :goto_1a

    .line 487
    :cond_28
    move v14, v4

    .line 488
    goto :goto_13

    .line 489
    :goto_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 490
    .line 491
    .line 492
    if-ltz v7, :cond_2c

    .line 493
    .line 494
    shr-int/lit8 v6, v14, 0x3

    .line 495
    .line 496
    and-int/lit8 v6, v6, 0xe

    .line 497
    .line 498
    invoke-static {v2, v0, v6}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 499
    .line 500
    .line 501
    move-result-object v20

    .line 502
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 503
    .line 504
    .line 505
    move-result-object v6

    .line 506
    const v12, 0x44faf204

    .line 507
    .line 508
    .line 509
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 510
    .line 511
    .line 512
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v6

    .line 516
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v12

    .line 520
    if-nez v6, :cond_29

    .line 521
    .line 522
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 523
    .line 524
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v6

    .line 528
    if-ne v12, v6, :cond_2a

    .line 529
    .line 530
    :cond_29
    invoke-static {v7}, Landroidx/compose/material/SliderKt;->stepsToTickFractions(I)Ljava/util/List;

    .line 531
    .line 532
    .line 533
    move-result-object v12

    .line 534
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    :cond_2a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 538
    .line 539
    .line 540
    move-object/from16 v18, v12

    .line 541
    .line 542
    check-cast v18, Ljava/util/List;

    .line 543
    .line 544
    invoke-static {v1}, Landroidx/compose/material/TouchTargetKt;->minimumTouchTargetSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    sget v12, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .line 549
    .line 550
    const/4 v13, 0x2

    .line 551
    int-to-float v13, v13

    .line 552
    mul-float v15, v12, v13

    .line 553
    .line 554
    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 555
    .line 556
    .line 557
    move-result v15

    .line 558
    mul-float/2addr v12, v13

    .line 559
    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 560
    .line 561
    .line 562
    move-result v12

    .line 563
    const/16 v13, 0xc

    .line 564
    .line 565
    const/16 v16, 0x0

    .line 566
    .line 567
    const/16 v17, 0x0

    .line 568
    .line 569
    const/16 v19, 0x0

    .line 570
    .line 571
    move-object/from16 p2, v6

    .line 572
    .line 573
    move/from16 p3, v15

    .line 574
    .line 575
    move/from16 p4, v12

    .line 576
    .line 577
    move/from16 p5, v17

    .line 578
    .line 579
    move/from16 p6, v19

    .line 580
    .line 581
    move/from16 p7, v13

    .line 582
    .line 583
    move-object/from16 p8, v16

    .line 584
    .line 585
    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/SizeKt;->requiredSizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 586
    .line 587
    .line 588
    move-result-object v6

    .line 589
    move-object/from16 p2, v6

    .line 590
    .line 591
    move/from16 p3, p0

    .line 592
    .line 593
    move-object/from16 p4, v18

    .line 594
    .line 595
    move/from16 p5, v8

    .line 596
    .line 597
    move-object/from16 p6, p1

    .line 598
    .line 599
    move-object/from16 p7, v5

    .line 600
    .line 601
    move/from16 p8, v7

    .line 602
    .line 603
    invoke-static/range {p2 .. p8}, Landroidx/compose/material/SliderKt;->sliderSemantics(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLkotlin/jvm/functions/Function1;Ldt/b;I)Landroidx/compose/ui/Modifier;

    .line 604
    .line 605
    .line 606
    move-result-object v6

    .line 607
    invoke-static {v6, v8, v3}, Landroidx/compose/foundation/FocusableKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 608
    .line 609
    .line 610
    move-result-object v6

    .line 611
    new-instance v15, Landroidx/compose/material/SliderKt$Slider$3;

    .line 612
    .line 613
    move-object v12, v15

    .line 614
    move-object v13, v5

    .line 615
    move-object/from16 p9, v1

    .line 616
    .line 617
    move-object v1, v15

    .line 618
    move/from16 v15, p0

    .line 619
    .line 620
    move-object/from16 v16, v3

    .line 621
    .line 622
    move/from16 v17, v8

    .line 623
    .line 624
    move-object/from16 v19, v4

    .line 625
    .line 626
    move-object/from16 v21, v9

    .line 627
    .line 628
    invoke-direct/range {v12 .. v21}, Landroidx/compose/material/SliderKt$Slider$3;-><init>(Ldt/b;IFLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/util/List;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;)V

    .line 629
    .line 630
    .line 631
    const v12, 0x7c485b8e

    .line 632
    .line 633
    .line 634
    const/4 v13, 0x1

    .line 635
    invoke-static {v0, v12, v13, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    const/16 v12, 0xc00

    .line 640
    .line 641
    const/4 v13, 0x6

    .line 642
    const/4 v14, 0x0

    .line 643
    const/4 v15, 0x0

    .line 644
    move-object/from16 p2, v6

    .line 645
    .line 646
    move-object/from16 p3, v14

    .line 647
    .line 648
    move/from16 p4, v15

    .line 649
    .line 650
    move-object/from16 p5, v1

    .line 651
    .line 652
    move-object/from16 p6, v0

    .line 653
    .line 654
    move/from16 p7, v12

    .line 655
    .line 656
    move/from16 p8, v13

    .line 657
    .line 658
    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLat/n;Landroidx/compose/runtime/Composer;II)V

    .line 659
    .line 660
    .line 661
    move v6, v7

    .line 662
    move-object v7, v9

    .line 663
    move-object v9, v4

    .line 664
    move v4, v8

    .line 665
    move-object v8, v3

    .line 666
    move-object/from16 v3, p9

    .line 667
    .line 668
    :goto_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 669
    .line 670
    .line 671
    move-result-object v12

    .line 672
    if-nez v12, :cond_2b

    .line 673
    .line 674
    goto :goto_1c

    .line 675
    :cond_2b
    new-instance v13, Landroidx/compose/material/SliderKt$Slider$4;

    .line 676
    .line 677
    move-object v0, v13

    .line 678
    move/from16 v1, p0

    .line 679
    .line 680
    move-object/from16 v2, p1

    .line 681
    .line 682
    move/from16 v10, p10

    .line 683
    .line 684
    move/from16 v11, p11

    .line 685
    .line 686
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/SliderKt$Slider$4;-><init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLdt/b;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;II)V

    .line 687
    .line 688
    .line 689
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 690
    .line 691
    .line 692
    :goto_1c
    return-void

    .line 693
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 694
    .line 695
    const-string v1, "steps should be >= 0"

    .line 696
    .line 697
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    throw v0
.end method

.method private static final SliderImpl(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 20
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material/SliderColors;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    const v0, 0x641dece1

    .line 2
    .line 3
    .line 4
    move-object/from16 v1, p7

    .line 5
    .line 6
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroidx/compose/material/SliderKt;->DefaultSliderConstraints:Landroidx/compose/ui/Modifier;

    .line 11
    .line 12
    move-object/from16 v11, p6

    .line 13
    .line 14
    invoke-interface {v11, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v2, 0x2bb5b5d7

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v2, v3, v0, v3}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const v4, -0x4ee9b9da

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 50
    .line 51
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 60
    .line 61
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 70
    .line 71
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 72
    .line 73
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    if-nez v9, :cond_0

    .line 86
    .line 87
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 88
    .line 89
    .line 90
    :cond_0
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-eqz v9, :cond_1

    .line 98
    .line 99
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 104
    .line 105
    .line 106
    :goto_0
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    invoke-static {v8, v2, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v8, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-static {v8, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-static {v8, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-interface {v1, v2, v0, v3}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    const v1, 0x7ab4aae9

    .line 160
    .line 161
    .line 162
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 163
    .line 164
    .line 165
    const v1, -0x7f65a980

    .line 166
    .line 167
    .line 168
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 169
    .line 170
    .line 171
    sget-object v12, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 172
    .line 173
    const v1, 0xdc99b1b

    .line 174
    .line 175
    .line 176
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 188
    .line 189
    sget v2, Landroidx/compose/material/SliderKt;->TrackHeight:F

    .line 190
    .line 191
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    sget v2, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .line 196
    .line 197
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    move/from16 v13, p4

    .line 202
    .line 203
    invoke-interface {v1, v13}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    const/4 v3, 0x2

    .line 208
    int-to-float v3, v3

    .line 209
    mul-float/2addr v2, v3

    .line 210
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    mul-float v1, v1, p1

    .line 215
    .line 216
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 217
    .line 218
    .line 219
    move-result v15

    .line 220
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 221
    .line 222
    const/4 v1, 0x1

    .line 223
    const/4 v2, 0x0

    .line 224
    const/4 v3, 0x0

    .line 225
    invoke-static {v10, v3, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    shr-int/lit8 v9, p8, 0x6

    .line 230
    .line 231
    and-int/lit8 v2, v9, 0x70

    .line 232
    .line 233
    const v3, 0x40c06

    .line 234
    .line 235
    .line 236
    or-int/2addr v2, v3

    .line 237
    shl-int/lit8 v3, p8, 0x6

    .line 238
    .line 239
    and-int/lit16 v3, v3, 0x380

    .line 240
    .line 241
    or-int/2addr v2, v3

    .line 242
    shl-int/lit8 v3, p8, 0x9

    .line 243
    .line 244
    const v16, 0xe000

    .line 245
    .line 246
    .line 247
    and-int v3, v3, v16

    .line 248
    .line 249
    or-int v17, v2, v3

    .line 250
    .line 251
    const/4 v4, 0x0

    .line 252
    move-object/from16 v2, p3

    .line 253
    .line 254
    move/from16 v3, p0

    .line 255
    .line 256
    move/from16 v5, p1

    .line 257
    .line 258
    move-object/from16 v6, p2

    .line 259
    .line 260
    move/from16 v18, v9

    .line 261
    .line 262
    move-object v9, v0

    .line 263
    move-object/from16 v19, v10

    .line 264
    .line 265
    move/from16 v10, v17

    .line 266
    .line 267
    invoke-static/range {v1 .. v10}, Landroidx/compose/material/SliderKt;->Track(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V

    .line 268
    .line 269
    .line 270
    move/from16 v1, v18

    .line 271
    .line 272
    and-int/lit16 v1, v1, 0x1c00

    .line 273
    .line 274
    const v2, 0x180036

    .line 275
    .line 276
    .line 277
    or-int/2addr v1, v2

    .line 278
    shl-int/lit8 v2, p8, 0x3

    .line 279
    .line 280
    and-int v2, v2, v16

    .line 281
    .line 282
    or-int/2addr v1, v2

    .line 283
    shl-int/lit8 v2, p8, 0xf

    .line 284
    .line 285
    const/high16 v3, 0x70000

    .line 286
    .line 287
    and-int/2addr v2, v3

    .line 288
    or-int v9, v1, v2

    .line 289
    .line 290
    move-object v1, v12

    .line 291
    move-object/from16 v2, v19

    .line 292
    .line 293
    move v3, v15

    .line 294
    move-object/from16 v4, p5

    .line 295
    .line 296
    move-object/from16 v5, p3

    .line 297
    .line 298
    move/from16 v6, p0

    .line 299
    .line 300
    move v7, v14

    .line 301
    move-object v8, v0

    .line 302
    invoke-static/range {v1 .. v9}, Landroidx/compose/material/SliderKt;->SliderThumb-PcYyNuk(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V

    .line 303
    .line 304
    .line 305
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 306
    .line 307
    .line 308
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 309
    .line 310
    .line 311
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 312
    .line 313
    .line 314
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 315
    .line 316
    .line 317
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 318
    .line 319
    .line 320
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 321
    .line 322
    .line 323
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    if-nez v0, :cond_2

    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_2
    new-instance v1, Landroidx/compose/material/SliderKt$SliderImpl$2;

    .line 331
    .line 332
    move-object v2, v1

    .line 333
    move/from16 v3, p0

    .line 334
    .line 335
    move/from16 v4, p1

    .line 336
    .line 337
    move-object/from16 v5, p2

    .line 338
    .line 339
    move-object/from16 v6, p3

    .line 340
    .line 341
    move/from16 v7, p4

    .line 342
    .line 343
    move-object/from16 v8, p5

    .line 344
    .line 345
    move-object/from16 v9, p6

    .line 346
    .line 347
    move/from16 v10, p8

    .line 348
    .line 349
    invoke-direct/range {v2 .. v10}, Landroidx/compose/material/SliderKt$SliderImpl$2;-><init>(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;I)V

    .line 350
    .line 351
    .line 352
    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 353
    .line 354
    .line 355
    :goto_1
    return-void
.end method

.method private static final SliderThumb-PcYyNuk(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V
    .locals 28
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    move/from16 v6, p5

    .line 10
    .line 11
    move/from16 v7, p6

    .line 12
    .line 13
    move/from16 v8, p8

    .line 14
    .line 15
    const v0, 0x19909aaa

    .line 16
    .line 17
    .line 18
    move-object/from16 v3, p7

    .line 19
    .line 20
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    and-int/lit8 v3, v8, 0xe

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v3, 0x2

    .line 37
    :goto_0
    or-int/2addr v3, v8

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v3, v8

    .line 40
    :goto_1
    and-int/lit8 v9, v8, 0x70

    .line 41
    .line 42
    if-nez v9, :cond_3

    .line 43
    .line 44
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    if-eqz v9, :cond_2

    .line 49
    .line 50
    const/16 v9, 0x20

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v9, 0x10

    .line 54
    .line 55
    :goto_2
    or-int/2addr v3, v9

    .line 56
    :cond_3
    and-int/lit16 v9, v8, 0x380

    .line 57
    .line 58
    move/from16 v14, p2

    .line 59
    .line 60
    if-nez v9, :cond_5

    .line 61
    .line 62
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-eqz v9, :cond_4

    .line 67
    .line 68
    const/16 v9, 0x100

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/16 v9, 0x80

    .line 72
    .line 73
    :goto_3
    or-int/2addr v3, v9

    .line 74
    :cond_5
    and-int/lit16 v9, v8, 0x1c00

    .line 75
    .line 76
    if-nez v9, :cond_7

    .line 77
    .line 78
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-eqz v9, :cond_6

    .line 83
    .line 84
    const/16 v9, 0x800

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_6
    const/16 v9, 0x400

    .line 88
    .line 89
    :goto_4
    or-int/2addr v3, v9

    .line 90
    :cond_7
    const v9, 0xe000

    .line 91
    .line 92
    .line 93
    and-int/2addr v9, v8

    .line 94
    if-nez v9, :cond_9

    .line 95
    .line 96
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_8

    .line 101
    .line 102
    const/16 v9, 0x4000

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_8
    const/16 v9, 0x2000

    .line 106
    .line 107
    :goto_5
    or-int/2addr v3, v9

    .line 108
    :cond_9
    const/high16 v9, 0x70000

    .line 109
    .line 110
    and-int/2addr v9, v8

    .line 111
    if-nez v9, :cond_b

    .line 112
    .line 113
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-eqz v9, :cond_a

    .line 118
    .line 119
    const/high16 v9, 0x20000

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_a
    const/high16 v9, 0x10000

    .line 123
    .line 124
    :goto_6
    or-int/2addr v3, v9

    .line 125
    :cond_b
    const/high16 v9, 0x380000

    .line 126
    .line 127
    and-int/2addr v9, v8

    .line 128
    if-nez v9, :cond_d

    .line 129
    .line 130
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_c

    .line 135
    .line 136
    const/high16 v9, 0x100000

    .line 137
    .line 138
    goto :goto_7

    .line 139
    :cond_c
    const/high16 v9, 0x80000

    .line 140
    .line 141
    :goto_7
    or-int/2addr v3, v9

    .line 142
    :cond_d
    const v9, 0x2db6db

    .line 143
    .line 144
    .line 145
    and-int/2addr v9, v3

    .line 146
    const v10, 0x92492

    .line 147
    .line 148
    .line 149
    if-ne v9, v10, :cond_f

    .line 150
    .line 151
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-nez v9, :cond_e

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_c

    .line 162
    .line 163
    :cond_f
    :goto_8
    sget-object v16, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 164
    .line 165
    const/16 v21, 0xe

    .line 166
    .line 167
    const/16 v22, 0x0

    .line 168
    .line 169
    const/16 v18, 0x0

    .line 170
    .line 171
    const/16 v19, 0x0

    .line 172
    .line 173
    const/16 v20, 0x0

    .line 174
    .line 175
    move/from16 v17, p2

    .line 176
    .line 177
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 182
    .line 183
    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getCenterStart()Landroidx/compose/ui/Alignment;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    invoke-interface {v1, v9, v11}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    const v11, 0x2bb5b5d7

    .line 192
    .line 193
    .line 194
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    const/4 v13, 0x0

    .line 202
    invoke-static {v10, v13, v0, v13}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    const v11, -0x4ee9b9da

    .line 207
    .line 208
    .line 209
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 210
    .line 211
    .line 212
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 221
    .line 222
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 231
    .line 232
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 233
    .line 234
    .line 235
    move-result-object v15

    .line 236
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v15

    .line 240
    check-cast v15, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 241
    .line 242
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 243
    .line 244
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 253
    .line 254
    .line 255
    move-result-object v18

    .line 256
    if-nez v18, :cond_10

    .line 257
    .line 258
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 259
    .line 260
    .line 261
    :cond_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 262
    .line 263
    .line 264
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 265
    .line 266
    .line 267
    move-result v18

    .line 268
    if-eqz v18, :cond_11

    .line 269
    .line 270
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 271
    .line 272
    .line 273
    goto :goto_9

    .line 274
    :cond_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 275
    .line 276
    .line 277
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 278
    .line 279
    .line 280
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 281
    .line 282
    .line 283
    move-result-object v13

    .line 284
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-static {v13, v10, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-static {v13, v11, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-static {v13, v12, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-static {v13, v15, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 310
    .line 311
    .line 312
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 313
    .line 314
    .line 315
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    const/4 v13, 0x0

    .line 324
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v10

    .line 328
    invoke-interface {v9, v1, v0, v10}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    const v1, 0x7ab4aae9

    .line 332
    .line 333
    .line 334
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 335
    .line 336
    .line 337
    const v1, -0x7f65a980

    .line 338
    .line 339
    .line 340
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 341
    .line 342
    .line 343
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 344
    .line 345
    const v1, -0x2306c2d0

    .line 346
    .line 347
    .line 348
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 349
    .line 350
    .line 351
    const v1, -0x1d58f75c

    .line 352
    .line 353
    .line 354
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 355
    .line 356
    .line 357
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 362
    .line 363
    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    if-ne v1, v10, :cond_12

    .line 368
    .line 369
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 377
    .line 378
    .line 379
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 380
    .line 381
    shr-int/lit8 v16, v3, 0x9

    .line 382
    .line 383
    and-int/lit8 v10, v16, 0xe

    .line 384
    .line 385
    const v11, 0x1e7b2b64

    .line 386
    .line 387
    .line 388
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 389
    .line 390
    .line 391
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v11

    .line 395
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v12

    .line 399
    or-int/2addr v11, v12

    .line 400
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v12

    .line 404
    const/4 v15, 0x0

    .line 405
    if-nez v11, :cond_13

    .line 406
    .line 407
    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    if-ne v12, v9, :cond_14

    .line 412
    .line 413
    :cond_13
    new-instance v12, Landroidx/compose/material/SliderKt$SliderThumb$1$1$1;

    .line 414
    .line 415
    invoke-direct {v12, v4, v1, v15}, Landroidx/compose/material/SliderKt$SliderThumb$1$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lrs/c;)V

    .line 416
    .line 417
    .line 418
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 422
    .line 423
    .line 424
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 425
    .line 426
    invoke-static {v4, v12, v0, v10}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 427
    .line 428
    .line 429
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-nez v1, :cond_15

    .line 434
    .line 435
    sget v1, Landroidx/compose/material/SliderKt;->ThumbPressedElevation:F

    .line 436
    .line 437
    goto :goto_a

    .line 438
    :cond_15
    sget v1, Landroidx/compose/material/SliderKt;->ThumbDefaultElevation:F

    .line 439
    .line 440
    :goto_a
    invoke-static {v2, v7, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 441
    .line 442
    .line 443
    move-result-object v11

    .line 444
    sget v10, Landroidx/compose/material/SliderKt;->ThumbRippleRadius:F

    .line 445
    .line 446
    const/16 v17, 0x36

    .line 447
    .line 448
    const/16 v18, 0x4

    .line 449
    .line 450
    const/4 v9, 0x0

    .line 451
    const-wide/16 v19, 0x0

    .line 452
    .line 453
    move-object/from16 v23, v11

    .line 454
    .line 455
    move-wide/from16 v11, v19

    .line 456
    .line 457
    move-object v13, v0

    .line 458
    move/from16 v14, v17

    .line 459
    .line 460
    move/from16 v17, v1

    .line 461
    .line 462
    move-object v2, v15

    .line 463
    const/4 v1, 0x2

    .line 464
    move/from16 v15, v18

    .line 465
    .line 466
    invoke-static/range {v9 .. v15}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 467
    .line 468
    .line 469
    move-result-object v9

    .line 470
    move-object/from16 v10, v23

    .line 471
    .line 472
    invoke-static {v10, v4, v9}, Landroidx/compose/foundation/IndicationKt;->indication(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    .line 473
    .line 474
    .line 475
    move-result-object v9

    .line 476
    const/4 v10, 0x0

    .line 477
    invoke-static {v9, v4, v10, v1, v2}, Landroidx/compose/foundation/HoverableKt;->hoverable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 478
    .line 479
    .line 480
    move-result-object v18

    .line 481
    if-eqz v6, :cond_16

    .line 482
    .line 483
    move/from16 v19, v17

    .line 484
    .line 485
    goto :goto_b

    .line 486
    :cond_16
    int-to-float v1, v10

    .line 487
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    move/from16 v19, v1

    .line 492
    .line 493
    :goto_b
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 494
    .line 495
    .line 496
    move-result-object v20

    .line 497
    const/16 v26, 0x18

    .line 498
    .line 499
    const/16 v27, 0x0

    .line 500
    .line 501
    const/16 v21, 0x0

    .line 502
    .line 503
    const-wide/16 v22, 0x0

    .line 504
    .line 505
    const-wide/16 v24, 0x0

    .line 506
    .line 507
    invoke-static/range {v18 .. v27}, Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    shr-int/lit8 v2, v3, 0xf

    .line 512
    .line 513
    and-int/lit8 v2, v2, 0xe

    .line 514
    .line 515
    and-int/lit8 v3, v16, 0x70

    .line 516
    .line 517
    or-int/2addr v2, v3

    .line 518
    invoke-interface {v5, v6, v0, v2}, Landroidx/compose/material/SliderColors;->thumbColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 527
    .line 528
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 529
    .line 530
    .line 531
    move-result-wide v2

    .line 532
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 533
    .line 534
    .line 535
    move-result-object v9

    .line 536
    invoke-static {v1, v2, v3, v9}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-static {v1, v0, v10}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 541
    .line 542
    .line 543
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 544
    .line 545
    .line 546
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 547
    .line 548
    .line 549
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 550
    .line 551
    .line 552
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 553
    .line 554
    .line 555
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 556
    .line 557
    .line 558
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 559
    .line 560
    .line 561
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 562
    .line 563
    .line 564
    move-result-object v9

    .line 565
    if-nez v9, :cond_17

    .line 566
    .line 567
    goto :goto_d

    .line 568
    :cond_17
    new-instance v10, Landroidx/compose/material/SliderKt$SliderThumb$2;

    .line 569
    .line 570
    move-object v0, v10

    .line 571
    move-object/from16 v1, p0

    .line 572
    .line 573
    move-object/from16 v2, p1

    .line 574
    .line 575
    move/from16 v3, p2

    .line 576
    .line 577
    move-object/from16 v4, p3

    .line 578
    .line 579
    move-object/from16 v5, p4

    .line 580
    .line 581
    move/from16 v6, p5

    .line 582
    .line 583
    move/from16 v7, p6

    .line 584
    .line 585
    move/from16 v8, p8

    .line 586
    .line 587
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/SliderKt$SliderThumb$2;-><init>(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFI)V

    .line 588
    .line 589
    .line 590
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 591
    .line 592
    .line 593
    :goto_d
    return-void
.end method

.method private static final Track(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V
    .locals 15
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/SliderColors;",
            "ZFF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;FF",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    const v0, 0x6d4348a2

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p8

    .line 9
    .line 10
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    shr-int/lit8 v1, p9, 0x6

    .line 15
    .line 16
    and-int/lit8 v1, v1, 0xe

    .line 17
    .line 18
    or-int/lit8 v1, v1, 0x30

    .line 19
    .line 20
    shl-int/lit8 v4, p9, 0x3

    .line 21
    .line 22
    and-int/lit16 v4, v4, 0x380

    .line 23
    .line 24
    or-int/2addr v1, v4

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-interface {v2, v3, v4, v0, v1}, Landroidx/compose/material/SliderColors;->trackColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    const/4 v5, 0x1

    .line 31
    invoke-interface {v2, v3, v5, v0, v1}, Landroidx/compose/material/SliderColors;->trackColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 32
    .line 33
    .line 34
    move-result-object v11

    .line 35
    invoke-interface {v2, v3, v4, v0, v1}, Landroidx/compose/material/SliderColors;->tickColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 36
    .line 37
    .line 38
    move-result-object v13

    .line 39
    invoke-interface {v2, v3, v5, v0, v1}, Landroidx/compose/material/SliderColors;->tickColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 40
    .line 41
    .line 42
    move-result-object v14

    .line 43
    new-instance v1, Landroidx/compose/material/SliderKt$Track$1;

    .line 44
    .line 45
    move-object v5, v1

    .line 46
    move/from16 v6, p6

    .line 47
    .line 48
    move/from16 v8, p7

    .line 49
    .line 50
    move/from16 v9, p4

    .line 51
    .line 52
    move/from16 v10, p3

    .line 53
    .line 54
    move-object/from16 v12, p5

    .line 55
    .line 56
    invoke-direct/range {v5 .. v14}, Landroidx/compose/material/SliderKt$Track$1;-><init>(FLandroidx/compose/runtime/State;FFFLandroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 57
    .line 58
    .line 59
    and-int/lit8 v4, p9, 0xe

    .line 60
    .line 61
    move-object v5, p0

    .line 62
    invoke-static {p0, v1, v0, v4}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    if-nez v10, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance v11, Landroidx/compose/material/SliderKt$Track$2;

    .line 73
    .line 74
    move-object v0, v11

    .line 75
    move-object v1, p0

    .line 76
    move-object/from16 v2, p1

    .line 77
    .line 78
    move/from16 v3, p2

    .line 79
    .line 80
    move/from16 v4, p3

    .line 81
    .line 82
    move/from16 v5, p4

    .line 83
    .line 84
    move-object/from16 v6, p5

    .line 85
    .line 86
    move/from16 v7, p6

    .line 87
    .line 88
    move/from16 v8, p7

    .line 89
    .line 90
    move/from16 v9, p9

    .line 91
    .line 92
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/SliderKt$Track$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFI)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method

.method public static final synthetic access$CorrectValueSideEffect(Lkotlin/jvm/functions/Function1;Ldt/b;Ldt/b;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/SliderKt;->CorrectValueSideEffect(Lkotlin/jvm/functions/Function1;Ldt/b;Ldt/b;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$RangeSliderImpl(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p13}, Landroidx/compose/material/SliderKt;->RangeSliderImpl(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$SliderImpl(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material/SliderKt;->SliderImpl(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$SliderThumb-PcYyNuk(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material/SliderKt;->SliderThumb-PcYyNuk(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$Track(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/material/SliderKt;->Track(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$animateToTarget(Landroidx/compose/foundation/gestures/DraggableState;FFFLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->animateToTarget(Landroidx/compose/foundation/gestures/DraggableState;FFFLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$awaitSlop-8vUncbI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->awaitSlop-8vUncbI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$calcFraction(FFF)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material/SliderKt;->calcFraction(FFF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getSliderToTickAnimation$p()Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/SliderKt;->SliderToTickAnimation:Landroidx/compose/animation/core/TweenSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$rangeSliderPressDragModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZZFLdt/b;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Landroidx/compose/material/SliderKt;->rangeSliderPressDragModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZZFLdt/b;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$scale(FFFFF)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->scale(FFFFF)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$scale(FFLdt/b;FF)Ldt/b;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->scale(FFLdt/b;FF)Ldt/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sliderSemantics(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLkotlin/jvm/functions/Function1;Ldt/b;I)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/SliderKt;->sliderSemantics(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLkotlin/jvm/functions/Function1;Ldt/b;I)Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$sliderTapModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material/SliderKt;->sliderTapModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$snapValueToTick(FLjava/util/List;FF)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt;->snapValueToTick(FLjava/util/List;FF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final animateToTarget(Landroidx/compose/foundation/gestures/DraggableState;FFFLrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "FFF",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v2, Landroidx/compose/material/SliderKt$animateToTarget$2;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v2, p1, p2, p3, v0}, Landroidx/compose/material/SliderKt$animateToTarget$2;-><init>(FFFLrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move-object v3, p4

    .line 12
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DraggableState;->drag$default(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method private static final awaitSlop-8vUncbI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILrs/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "JI",
            "Lrs/c<",
            "-",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Float;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Landroidx/compose/material/SliderKt$awaitSlop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Landroidx/compose/material/SliderKt$awaitSlop$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/material/SliderKt$awaitSlop$1;

    .line 22
    .line 23
    invoke-direct {v0, p4}, Landroidx/compose/material/SliderKt$awaitSlop$1;-><init>(Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p4, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p0, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 43
    .line 44
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p4, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 60
    .line 61
    invoke-direct {p4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v5, Landroidx/compose/material/SliderKt$awaitSlop$postPointerSlop$1;

    .line 65
    .line 66
    invoke-direct {v5, p4}, Landroidx/compose/material/SliderKt$awaitSlop$postPointerSlop$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    .line 67
    .line 68
    .line 69
    iput-object p4, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput v2, v6, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    .line 72
    .line 73
    move-object v1, p0

    .line 74
    move-wide v2, p1

    .line 75
    move v4, p3

    .line 76
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/DragGestureDetectorCopyKt;->awaitHorizontalPointerSlopOrCancellation-gDDlDlE(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-ne p0, v0, :cond_3

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    move-object v7, p4

    .line 84
    move-object p4, p0

    .line 85
    move-object p0, v7

    .line 86
    :goto_2
    check-cast p4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 87
    .line 88
    if-eqz p4, :cond_4

    .line 89
    .line 90
    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 91
    .line 92
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p4, p0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    const/4 p0, 0x0

    .line 102
    :goto_3
    return-object p0
.end method

.method private static final calcFraction(FFF)F
    .locals 2

    .line 1
    sub-float/2addr p1, p0

    .line 2
    const/4 v0, 0x0

    .line 3
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    move p2, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sub-float/2addr p2, p0

    .line 10
    div-float/2addr p2, p1

    .line 11
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-static {p2, v0, p0}, Lkotlin/ranges/e;->m(FFF)F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final getThumbRadius()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .line 2
    .line 3
    return v0
.end method

.method public static final getTrackHeight()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SliderKt;->TrackHeight:F

    .line 2
    .line 3
    return v0
.end method

.method private static final rangeSliderPressDragModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZZFLdt/b;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;ZZF",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    move-object v3, p1

    .line 12
    move-object v4, p2

    .line 13
    move-object/from16 v2, p8

    .line 14
    .line 15
    filled-new-array {p1, p2, v0, v1, v2}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1;

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    move-object v2, v1

    .line 23
    move-object v5, p3

    .line 24
    move-object/from16 v6, p4

    .line 25
    .line 26
    move-object/from16 v7, p10

    .line 27
    .line 28
    move/from16 v8, p6

    .line 29
    .line 30
    move/from16 v9, p7

    .line 31
    .line 32
    move-object/from16 v10, p9

    .line 33
    .line 34
    invoke-direct/range {v2 .. v11}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZFLandroidx/compose/runtime/State;Lrs/c;)V

    .line 35
    .line 36
    .line 37
    move-object v2, p0

    .line 38
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v2, p0

    .line 44
    move-object v0, v2

    .line 45
    :goto_0
    return-object v0
.end method

.method private static final scale(FFFFF)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material/SliderKt;->calcFraction(FFF)F

    move-result p0

    invoke-static {p3, p4, p0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private static final scale(FFLdt/b;FF)Ldt/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;FF)",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p2}, Ldt/c;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {p0, p1, v0, p3, p4}, Landroidx/compose/material/SliderKt;->scale(FFFFF)F

    move-result v0

    invoke-interface {p2}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->scale(FFFFF)F

    move-result p0

    invoke-static {v0, p0}, Lkotlin/ranges/e;->b(FF)Ldt/b;

    move-result-object p0

    return-object p0
.end method

.method private static final sliderSemantics(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLkotlin/jvm/functions/Function1;Ldt/b;I)Landroidx/compose/ui/Modifier;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "F",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;I)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    invoke-interface {p5}, Ldt/c;->getStart()Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p5}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {p1, v0, v1}, Lkotlin/ranges/e;->m(FFF)F

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    new-instance v0, Landroidx/compose/material/SliderKt$sliderSemantics$1;

    .line 26
    .line 27
    move-object v2, v0

    .line 28
    move v3, p3

    .line 29
    move-object v4, p5

    .line 30
    move v5, p6

    .line 31
    move-object v6, p2

    .line 32
    move-object v8, p4

    .line 33
    invoke-direct/range {v2 .. v8}, Landroidx/compose/material/SliderKt$sliderSemantics$1;-><init>(ZLdt/b;ILjava/util/List;FLkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    const/4 p3, 0x0

    .line 38
    const/4 p4, 0x0

    .line 39
    invoke-static {p0, p4, v0, p2, p3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0, p1, p5, p6}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;FLdt/b;I)Landroidx/compose/ui/Modifier;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method static synthetic sliderSemantics$default(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLkotlin/jvm/functions/Function1;Ldt/b;IILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x10

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const/4 p5, 0x0

    .line 6
    const/high16 p8, 0x3f800000    # 1.0f

    .line 7
    .line 8
    invoke-static {p5, p8}, Lkotlin/ranges/e;->b(FF)Ldt/b;

    .line 9
    .line 10
    .line 11
    move-result-object p5

    .line 12
    :cond_0
    move-object v5, p5

    .line 13
    and-int/lit8 p5, p7, 0x20

    .line 14
    .line 15
    if-eqz p5, :cond_1

    .line 16
    .line 17
    const/4 p6, 0x0

    .line 18
    :cond_1
    move v6, p6

    .line 19
    move-object v0, p0

    .line 20
    move v1, p1

    .line 21
    move-object v2, p2

    .line 22
    move v3, p3

    .line 23
    move-object v4, p4

    .line 24
    invoke-static/range {v0 .. v6}, Landroidx/compose/material/SliderKt;->sliderSemantics(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLkotlin/jvm/functions/Function1;Ldt/b;I)Landroidx/compose/ui/Modifier;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method private static final sliderTapModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)Landroidx/compose/ui/Modifier;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "FZ",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;Z)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move v4, p3

    .line 13
    move v5, p4

    .line 14
    move-object/from16 v6, p5

    .line 15
    .line 16
    move-object/from16 v7, p6

    .line 17
    .line 18
    move-object/from16 v8, p7

    .line 19
    .line 20
    move/from16 v9, p8

    .line 21
    .line 22
    invoke-direct/range {v1 .. v9}, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    new-instance v10, Landroidx/compose/material/SliderKt$sliderTapModifier$2;

    .line 31
    .line 32
    move-object v1, v10

    .line 33
    move/from16 v2, p8

    .line 34
    .line 35
    move-object v3, p1

    .line 36
    move-object v4, p2

    .line 37
    move v5, p3

    .line 38
    move v6, p4

    .line 39
    move-object/from16 v7, p7

    .line 40
    .line 41
    move-object/from16 v8, p5

    .line 42
    .line 43
    move-object/from16 v9, p6

    .line 44
    .line 45
    invoke-direct/range {v1 .. v9}, Landroidx/compose/material/SliderKt$sliderTapModifier$2;-><init>(ZLandroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 46
    .line 47
    .line 48
    move-object v1, p0

    .line 49
    invoke-static {p0, v0, v10}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lat/n;)Landroidx/compose/ui/Modifier;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method private static final snapValueToTick(FLjava/util/List;FF)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;FF)F"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    :goto_0
    move-object p1, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v1, v0

    .line 28
    check-cast v1, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {p2, p3, v1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-float/2addr v1, p0

    .line 39
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object v3, v2

    .line 48
    check-cast v3, Ljava/lang/Number;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-static {p2, p3, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    sub-float/2addr v3, p0

    .line 59
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-lez v4, :cond_3

    .line 68
    .line 69
    move-object v0, v2

    .line 70
    move v1, v3

    .line 71
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :goto_1
    check-cast p1, Ljava/lang/Float;

    .line 79
    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-static {p2, p3, p0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    :cond_4
    return p0
.end method

.method private static final stepsToTickFractions(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    add-int/lit8 v0, p0, 0x2

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v0, :cond_1

    .line 17
    .line 18
    int-to-float v3, v2

    .line 19
    add-int/lit8 v4, p0, 0x1

    .line 20
    .line 21
    int-to-float v4, v4

    .line 22
    div-float/2addr v3, v4

    .line 23
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object p0, v1

    .line 34
    :goto_1
    return-object p0
.end method
