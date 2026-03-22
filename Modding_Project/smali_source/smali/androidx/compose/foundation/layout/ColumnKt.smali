.class public final Landroidx/compose/foundation/layout/ColumnKt;
.super Ljava/lang/Object;
.source "Column.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final DefaultColumnMeasurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Vertical:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v2, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    .line 14
    .line 15
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->horizontal$foundation_layout_release(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget-object v3, Landroidx/compose/foundation/layout/SizeMode;->Wrap:Landroidx/compose/foundation/layout/SizeMode;

    .line 26
    .line 27
    sget-object v4, Landroidx/compose/foundation/layout/ColumnKt$DefaultColumnMeasurePolicy$1;->INSTANCE:Landroidx/compose/foundation/layout/ColumnKt$DefaultColumnMeasurePolicy$1;

    .line 28
    .line 29
    invoke-static {v0, v4, v1, v3, v2}, Landroidx/compose/foundation/layout/RowColumnImplKt;->rowColumnMeasurePolicy-TDGSqEk(Landroidx/compose/foundation/layout/LayoutOrientation;Lat/p;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/compose/foundation/layout/ColumnKt;->DefaultColumnMeasurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 34
    .line 35
    return-void
.end method

.method public static final Column(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 4
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
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
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, -0x1cd0f17e

    .line 7
    .line 8
    .line 9
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 10
    .line 11
    .line 12
    and-int/lit8 v0, p6, 0x1

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 17
    .line 18
    :cond_0
    and-int/lit8 v0, p6, 0x2

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object p1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :cond_1
    and-int/lit8 p6, p6, 0x4

    .line 29
    .line 30
    if-eqz p6, :cond_2

    .line 31
    .line 32
    sget-object p2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    :cond_2
    shr-int/lit8 p6, p5, 0x3

    .line 39
    .line 40
    and-int/lit8 p6, p6, 0x7e

    .line 41
    .line 42
    invoke-static {p1, p2, p4, p6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const p2, -0x4ee9b9da

    .line 47
    .line 48
    .line 49
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Landroidx/compose/ui/unit/Density;

    .line 61
    .line 62
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 63
    .line 64
    .line 65
    move-result-object p6

    .line 66
    invoke-interface {p4, p6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p6

    .line 70
    check-cast p6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 71
    .line 72
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 81
    .line 82
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-nez v3, :cond_3

    .line 97
    .line 98
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 99
    .line 100
    .line 101
    :cond_3
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 102
    .line 103
    .line 104
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 118
    .line 119
    .line 120
    invoke-static {p4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-static {v2, p1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {v2, p2, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {v2, p6, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {v2, v0, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 153
    .line 154
    .line 155
    invoke-static {p4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const/4 p2, 0x0

    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-interface {p0, p1, p4, p2}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    const p0, 0x7ab4aae9

    .line 172
    .line 173
    .line 174
    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 175
    .line 176
    .line 177
    const p0, -0x455f09d5

    .line 178
    .line 179
    .line 180
    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 181
    .line 182
    .line 183
    sget-object p0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 184
    .line 185
    shr-int/lit8 p1, p5, 0x6

    .line 186
    .line 187
    and-int/lit8 p1, p1, 0x70

    .line 188
    .line 189
    or-int/lit8 p1, p1, 0x6

    .line 190
    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-interface {p3, p0, p4, p1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 199
    .line 200
    .line 201
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 202
    .line 203
    .line 204
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 205
    .line 206
    .line 207
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 208
    .line 209
    .line 210
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public static final columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 3
    .param p0    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "verticalArrangement"

    .line 2
    .line 3
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "horizontalAlignment"

    .line 7
    .line 8
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const p3, 0x40f63170

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    const p3, 0x1e7b2b64

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    or-int/2addr p3, v0

    .line 32
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez p3, :cond_0

    .line 37
    .line 38
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 39
    .line 40
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    if-ne v0, p3, :cond_2

    .line 45
    .line 46
    :cond_0
    sget-object p3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 47
    .line 48
    invoke-virtual {p3}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    if-eqz p3, :cond_1

    .line 57
    .line 58
    sget-object p3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 59
    .line 60
    invoke-virtual {p3}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_1

    .line 69
    .line 70
    sget-object p0, Landroidx/compose/foundation/layout/ColumnKt;->DefaultColumnMeasurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 71
    .line 72
    :goto_0
    move-object v0, p0

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    sget-object p3, Landroidx/compose/foundation/layout/LayoutOrientation;->Vertical:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 75
    .line 76
    invoke-interface {p0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    sget-object v1, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    .line 81
    .line 82
    invoke-virtual {v1, p1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->horizontal$foundation_layout_release(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    sget-object v1, Landroidx/compose/foundation/layout/SizeMode;->Wrap:Landroidx/compose/foundation/layout/SizeMode;

    .line 87
    .line 88
    new-instance v2, Landroidx/compose/foundation/layout/ColumnKt$columnMeasurePolicy$1$1;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Landroidx/compose/foundation/layout/ColumnKt$columnMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/layout/Arrangement$Vertical;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p3, v2, v0, v1, p1}, Landroidx/compose/foundation/layout/RowColumnImplKt;->rowColumnMeasurePolicy-TDGSqEk(Landroidx/compose/foundation/layout/LayoutOrientation;Lat/p;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    goto :goto_0

    .line 98
    :goto_1
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 102
    .line 103
    .line 104
    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 105
    .line 106
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 107
    .line 108
    .line 109
    return-object v0
.end method

.method public static final getDefaultColumnMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/ColumnKt;->DefaultColumnMeasurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getDefaultColumnMeasurePolicy$annotations()V
    .locals 0

    .line 1
    return-void
.end method
