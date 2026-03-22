.class final Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BackdropScaffold.kt"

# interfaces
.implements Lat/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lat/o<",
        "Landroidx/compose/ui/unit/Constraints;",
        "Ljava/lang/Float;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $frontLayerBackgroundColor:J

.field final synthetic $frontLayerContent:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $frontLayerContentColor:J

.field final synthetic $frontLayerElevation:F

.field final synthetic $frontLayerScrimColor:J

.field final synthetic $frontLayerShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $gesturesEnabled:Z

.field final synthetic $headerHeight:F

.field final synthetic $headerHeightPx:F

.field final synthetic $peekHeight:F

.field final synthetic $peekHeightPx:F

.field final synthetic $scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

.field final synthetic $scope:Lgt/g0;

.field final synthetic $snackbarHost:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroidx/compose/material/SnackbarHostState;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stickyFrontLayer:Z


# direct methods
.method constructor <init>(FZZLandroidx/compose/material/BackdropScaffoldState;FILandroidx/compose/ui/graphics/Shape;JJFIFLgt/g0;FLkotlin/jvm/functions/Function2;JLat/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZZ",
            "Landroidx/compose/material/BackdropScaffoldState;",
            "FI",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFIF",
            "Lgt/g0;",
            "F",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;J",
            "Lat/n<",
            "-",
            "Landroidx/compose/material/SnackbarHostState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$headerHeightPx:F

    .line 4
    .line 5
    move v1, p2

    .line 6
    iput-boolean v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$stickyFrontLayer:Z

    .line 7
    .line 8
    move v1, p3

    .line 9
    iput-boolean v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$gesturesEnabled:Z

    .line 10
    .line 11
    move-object v1, p4

    .line 12
    iput-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 13
    .line 14
    move v1, p5

    .line 15
    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$peekHeightPx:F

    .line 16
    .line 17
    move v1, p6

    .line 18
    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$$dirty:I

    .line 19
    .line 20
    move-object v1, p7

    .line 21
    iput-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerShape:Landroidx/compose/ui/graphics/Shape;

    .line 22
    .line 23
    move-wide v1, p8

    .line 24
    iput-wide v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerBackgroundColor:J

    .line 25
    .line 26
    move-wide v1, p10

    .line 27
    iput-wide v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerContentColor:J

    .line 28
    .line 29
    move v1, p12

    .line 30
    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerElevation:F

    .line 31
    .line 32
    move/from16 v1, p13

    .line 33
    .line 34
    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$$dirty1:I

    .line 35
    .line 36
    move/from16 v1, p14

    .line 37
    .line 38
    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$headerHeight:F

    .line 39
    .line 40
    move-object/from16 v1, p15

    .line 41
    .line 42
    iput-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scope:Lgt/g0;

    .line 43
    .line 44
    move/from16 v1, p16

    .line 45
    .line 46
    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$peekHeight:F

    .line 47
    .line 48
    move-object/from16 v1, p17

    .line 49
    .line 50
    iput-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerContent:Lkotlin/jvm/functions/Function2;

    .line 51
    .line 52
    move-wide/from16 v1, p18

    .line 53
    .line 54
    iput-wide v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerScrimColor:J

    .line 55
    .line 56
    move-object/from16 v1, p20

    .line 57
    .line 58
    iput-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$snackbarHost:Lat/n;

    .line 59
    .line 60
    const/4 v1, 0x4

    .line 61
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Landroidx/compose/ui/unit/Constraints;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    check-cast p2, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    move-object v4, p3

    .line 14
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    check-cast p4, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    move-object v0, p0

    .line 23
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->invoke-jYbf7pk(JFLandroidx/compose/runtime/Composer;I)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p1
.end method

.method public final invoke-jYbf7pk(JFLandroidx/compose/runtime/Composer;I)V
    .locals 31
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v13, p4

    .line 6
    .line 7
    and-int/lit8 v2, p5, 0xe

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    move-wide/from16 v4, p1

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v13, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v3

    .line 23
    :goto_0
    or-int v2, p5, v2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move/from16 v2, p5

    .line 27
    .line 28
    :goto_1
    and-int/lit8 v6, p5, 0x70

    .line 29
    .line 30
    if-nez v6, :cond_3

    .line 31
    .line 32
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_2

    .line 37
    .line 38
    const/16 v6, 0x20

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v6, 0x10

    .line 42
    .line 43
    :goto_2
    or-int/2addr v2, v6

    .line 44
    :cond_3
    and-int/lit16 v2, v2, 0x2db

    .line 45
    .line 46
    const/16 v6, 0x92

    .line 47
    .line 48
    if-ne v2, v6, :cond_5

    .line 49
    .line 50
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_4

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_8

    .line 61
    .line 62
    :cond_5
    :goto_3
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    int-to-float v15, v2

    .line 67
    iget v2, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$headerHeightPx:F

    .line 68
    .line 69
    sub-float v2, v15, v2

    .line 70
    .line 71
    iget-boolean v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$stickyFrontLayer:Z

    .line 72
    .line 73
    if-eqz v4, :cond_6

    .line 74
    .line 75
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    :cond_6
    move/from16 v16, v2

    .line 80
    .line 81
    iget-boolean v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$gesturesEnabled:Z

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 87
    .line 88
    iget-object v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroidx/compose/material/BackdropScaffoldState;->getNestedScrollConnection$material_release()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v1, v4, v2, v3, v2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    goto :goto_4

    .line 99
    :cond_7
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 100
    .line 101
    :goto_4
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 102
    .line 103
    invoke-virtual {v12, v1}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 104
    .line 105
    .line 106
    move-result-object v17

    .line 107
    iget-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 108
    .line 109
    iget v3, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$peekHeightPx:F

    .line 110
    .line 111
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    sget-object v4, Landroidx/compose/material/BackdropValue;->Concealed:Landroidx/compose/material/BackdropValue;

    .line 116
    .line 117
    invoke-static {v3, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    sget-object v5, Landroidx/compose/material/BackdropValue;->Revealed:Landroidx/compose/material/BackdropValue;

    .line 126
    .line 127
    invoke-static {v4, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    filled-new-array {v3, v4}, [Lkotlin/Pair;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v3}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 136
    .line 137
    .line 138
    move-result-object v19

    .line 139
    sget-object v20, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 140
    .line 141
    iget-boolean v3, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$gesturesEnabled:Z

    .line 142
    .line 143
    const/16 v27, 0x1f0

    .line 144
    .line 145
    const/16 v28, 0x0

    .line 146
    .line 147
    const/16 v22, 0x0

    .line 148
    .line 149
    const/16 v23, 0x0

    .line 150
    .line 151
    const/16 v24, 0x0

    .line 152
    .line 153
    const/16 v25, 0x0

    .line 154
    .line 155
    const/16 v26, 0x0

    .line 156
    .line 157
    move-object/from16 v18, v1

    .line 158
    .line 159
    move/from16 v21, v3

    .line 160
    .line 161
    invoke-static/range {v17 .. v28}, Landroidx/compose/material/SwipeableKt;->swipeable-pPrIpRY$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ResistanceConfig;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    new-instance v3, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$swipeable$1;

    .line 166
    .line 167
    iget-object v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 168
    .line 169
    iget-object v5, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scope:Lgt/g0;

    .line 170
    .line 171
    invoke-direct {v3, v4, v5}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$swipeable$1;-><init>(Landroidx/compose/material/BackdropScaffoldState;Lgt/g0;)V

    .line 172
    .line 173
    .line 174
    const/4 v11, 0x0

    .line 175
    const/4 v4, 0x1

    .line 176
    invoke-static {v1, v11, v3, v4, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iget-object v2, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 181
    .line 182
    const v3, 0x44faf204

    .line 183
    .line 184
    .line 185
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    if-nez v3, :cond_8

    .line 197
    .line 198
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 199
    .line 200
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    if-ne v5, v3, :cond_9

    .line 205
    .line 206
    :cond_8
    new-instance v5, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$1$1;

    .line 207
    .line 208
    invoke-direct {v5, v2}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$1$1;-><init>(Landroidx/compose/material/BackdropScaffoldState;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_9
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 215
    .line 216
    .line 217
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 218
    .line 219
    invoke-static {v12, v5}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-interface {v2, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    iget-object v2, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerShape:Landroidx/compose/ui/graphics/Shape;

    .line 228
    .line 229
    iget-wide v5, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerBackgroundColor:J

    .line 230
    .line 231
    iget-wide v7, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerContentColor:J

    .line 232
    .line 233
    iget v9, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerElevation:F

    .line 234
    .line 235
    new-instance v3, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;

    .line 236
    .line 237
    iget v10, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$peekHeight:F

    .line 238
    .line 239
    iget-object v11, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerContent:Lkotlin/jvm/functions/Function2;

    .line 240
    .line 241
    iget v14, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$$dirty:I

    .line 242
    .line 243
    move-wide/from16 v29, v5

    .line 244
    .line 245
    iget-wide v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerScrimColor:J

    .line 246
    .line 247
    iget-object v6, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 248
    .line 249
    move-object/from16 p3, v12

    .line 250
    .line 251
    iget v12, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$$dirty1:I

    .line 252
    .line 253
    move/from16 v28, v15

    .line 254
    .line 255
    iget-boolean v15, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$gesturesEnabled:Z

    .line 256
    .line 257
    move/from16 p5, v9

    .line 258
    .line 259
    iget-object v9, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scope:Lgt/g0;

    .line 260
    .line 261
    move-object/from16 v17, v3

    .line 262
    .line 263
    move/from16 v18, v10

    .line 264
    .line 265
    move-object/from16 v19, v11

    .line 266
    .line 267
    move/from16 v20, v14

    .line 268
    .line 269
    move-wide/from16 v21, v4

    .line 270
    .line 271
    move-object/from16 v23, v6

    .line 272
    .line 273
    move/from16 v24, v12

    .line 274
    .line 275
    move/from16 v25, v15

    .line 276
    .line 277
    move-object/from16 v26, v9

    .line 278
    .line 279
    invoke-direct/range {v17 .. v26}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;-><init>(FLkotlin/jvm/functions/Function2;IJLandroidx/compose/material/BackdropScaffoldState;IZLgt/g0;)V

    .line 280
    .line 281
    .line 282
    const v4, -0x3f7f2e2f

    .line 283
    .line 284
    .line 285
    const/4 v5, 0x1

    .line 286
    invoke-static {v13, v4, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    iget v3, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$$dirty1:I

    .line 291
    .line 292
    shr-int/lit8 v4, v3, 0x3

    .line 293
    .line 294
    and-int/lit8 v4, v4, 0x70

    .line 295
    .line 296
    const/high16 v5, 0x180000

    .line 297
    .line 298
    or-int/2addr v4, v5

    .line 299
    const/4 v5, 0x6

    .line 300
    shr-int/lit8 v6, v3, 0x6

    .line 301
    .line 302
    and-int/lit16 v6, v6, 0x380

    .line 303
    .line 304
    or-int/2addr v4, v6

    .line 305
    shr-int/lit8 v6, v3, 0x6

    .line 306
    .line 307
    and-int/lit16 v6, v6, 0x1c00

    .line 308
    .line 309
    or-int/2addr v4, v6

    .line 310
    const/high16 v6, 0x70000

    .line 311
    .line 312
    shl-int/2addr v3, v5

    .line 313
    and-int/2addr v3, v6

    .line 314
    or-int v11, v4, v3

    .line 315
    .line 316
    const/16 v12, 0x10

    .line 317
    .line 318
    const/4 v10, 0x0

    .line 319
    move-wide/from16 v3, v29

    .line 320
    .line 321
    move-wide v5, v7

    .line 322
    move-object v7, v10

    .line 323
    move/from16 v8, p5

    .line 324
    .line 325
    move-object/from16 v10, p4

    .line 326
    .line 327
    const/4 v14, 0x0

    .line 328
    move-object/from16 v15, p3

    .line 329
    .line 330
    invoke-static/range {v1 .. v12}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 331
    .line 332
    .line 333
    iget-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 334
    .line 335
    invoke-virtual {v1}, Landroidx/compose/material/BackdropScaffoldState;->isRevealed()Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_a

    .line 340
    .line 341
    iget v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$headerHeightPx:F

    .line 342
    .line 343
    sub-float v1, v28, v1

    .line 344
    .line 345
    cmpg-float v1, v16, v1

    .line 346
    .line 347
    if-nez v1, :cond_a

    .line 348
    .line 349
    iget v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$headerHeight:F

    .line 350
    .line 351
    :goto_5
    move v7, v1

    .line 352
    goto :goto_6

    .line 353
    :cond_a
    int-to-float v1, v14

    .line 354
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    goto :goto_5

    .line 359
    :goto_6
    const/4 v8, 0x7

    .line 360
    const/4 v9, 0x0

    .line 361
    const/4 v4, 0x0

    .line 362
    const/4 v5, 0x0

    .line 363
    const/4 v6, 0x0

    .line 364
    move-object v3, v15

    .line 365
    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 370
    .line 371
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getBottomCenter()Landroidx/compose/ui/Alignment;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    iget-object v3, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$snackbarHost:Lat/n;

    .line 376
    .line 377
    iget-object v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 378
    .line 379
    iget v5, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$$dirty1:I

    .line 380
    .line 381
    const v6, 0x2bb5b5d7

    .line 382
    .line 383
    .line 384
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 385
    .line 386
    .line 387
    const/4 v6, 0x6

    .line 388
    invoke-static {v2, v14, v13, v6}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    const v6, -0x4ee9b9da

    .line 393
    .line 394
    .line 395
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 396
    .line 397
    .line 398
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 407
    .line 408
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    .line 417
    .line 418
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 419
    .line 420
    .line 421
    move-result-object v8

    .line 422
    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v8

    .line 426
    check-cast v8, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 427
    .line 428
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 429
    .line 430
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 439
    .line 440
    .line 441
    move-result-object v11

    .line 442
    if-nez v11, :cond_b

    .line 443
    .line 444
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 445
    .line 446
    .line 447
    :cond_b
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 448
    .line 449
    .line 450
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 451
    .line 452
    .line 453
    move-result v11

    .line 454
    if-eqz v11, :cond_c

    .line 455
    .line 456
    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 457
    .line 458
    .line 459
    goto :goto_7

    .line 460
    :cond_c
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 461
    .line 462
    .line 463
    :goto_7
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 464
    .line 465
    .line 466
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 467
    .line 468
    .line 469
    move-result-object v10

    .line 470
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 471
    .line 472
    .line 473
    move-result-object v11

    .line 474
    invoke-static {v10, v2, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    invoke-static {v10, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-static {v10, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    invoke-static {v10, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 496
    .line 497
    .line 498
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 499
    .line 500
    .line 501
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 510
    .line 511
    .line 512
    move-result-object v6

    .line 513
    invoke-interface {v1, v2, v13, v6}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    const v1, 0x7ab4aae9

    .line 517
    .line 518
    .line 519
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 520
    .line 521
    .line 522
    const v1, -0x7f65a980

    .line 523
    .line 524
    .line 525
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 526
    .line 527
    .line 528
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 529
    .line 530
    const v1, 0x6c3c879b

    .line 531
    .line 532
    .line 533
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v4}, Landroidx/compose/material/BackdropScaffoldState;->getSnackbarHostState()Landroidx/compose/material/SnackbarHostState;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    shr-int/lit8 v2, v5, 0x12

    .line 541
    .line 542
    and-int/lit8 v2, v2, 0x70

    .line 543
    .line 544
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    invoke-interface {v3, v1, v13, v2}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 552
    .line 553
    .line 554
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 555
    .line 556
    .line 557
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 558
    .line 559
    .line 560
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 561
    .line 562
    .line 563
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 564
    .line 565
    .line 566
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 567
    .line 568
    .line 569
    :goto_8
    return-void
.end method
