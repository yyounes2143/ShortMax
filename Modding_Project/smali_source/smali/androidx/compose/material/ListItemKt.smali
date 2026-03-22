.class public final Landroidx/compose/material/ListItemKt;
.super Ljava/lang/Object;
.source "ListItem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private static final BaselinesOffsetColumn(Ljava/util/List;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 9
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
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
    const v0, 0x61395931

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    and-int/lit8 v0, p5, 0x2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 13
    .line 14
    :cond_0
    move-object v2, p1

    .line 15
    new-instance p1, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1;-><init>(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    shr-int/lit8 v0, p4, 0x6

    .line 21
    .line 22
    and-int/lit8 v0, v0, 0xe

    .line 23
    .line 24
    and-int/lit8 v1, p4, 0x70

    .line 25
    .line 26
    or-int/2addr v0, v1

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
    move-result-object v3

    .line 47
    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 52
    .line 53
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 62
    .line 63
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 64
    .line 65
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    shl-int/lit8 v0, v0, 0x9

    .line 74
    .line 75
    and-int/lit16 v0, v0, 0x1c00

    .line 76
    .line 77
    or-int/lit8 v0, v0, 0x6

    .line 78
    .line 79
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    if-nez v8, :cond_1

    .line 84
    .line 85
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 89
    .line 90
    .line 91
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-eqz v8, :cond_2

    .line 96
    .line 97
    invoke-interface {p3, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 102
    .line 103
    .line 104
    :goto_0
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 105
    .line 106
    .line 107
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-static {v6, p1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v6, v1, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v6, v3, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {v6, v4, p1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 140
    .line 141
    .line 142
    invoke-static {p3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const/4 v1, 0x0

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-interface {v7, p1, p3, v1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    const p1, 0x7ab4aae9

    .line 159
    .line 160
    .line 161
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 162
    .line 163
    .line 164
    shr-int/lit8 p1, v0, 0x9

    .line 165
    .line 166
    and-int/lit8 p1, p1, 0xe

    .line 167
    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-interface {p2, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 176
    .line 177
    .line 178
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 179
    .line 180
    .line 181
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 182
    .line 183
    .line 184
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-nez p1, :cond_3

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_3
    new-instance p3, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$2;

    .line 192
    .line 193
    move-object v0, p3

    .line 194
    move-object v1, p0

    .line 195
    move-object v3, p2

    .line 196
    move v4, p4

    .line 197
    move v5, p5

    .line 198
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$2;-><init>(Ljava/util/List;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;II)V

    .line 199
    .line 200
    .line 201
    invoke-interface {p1, p3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 202
    .line 203
    .line 204
    :goto_1
    return-void
.end method

.method public static final ListItem(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
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
    .param p6    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][_][_][_][_]]"
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
            ">;Z",
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
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p6

    .line 2
    .line 3
    move/from16 v8, p8

    .line 4
    .line 5
    const-string v0, "text"

    .line 6
    .line 7
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v0, -0x1ae08b49

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p7

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    and-int/lit8 v1, p9, 0x1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    or-int/lit8 v2, v8, 0x6

    .line 24
    .line 25
    move v3, v2

    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    and-int/lit8 v2, v8, 0xe

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    move-object/from16 v2, p0

    .line 34
    .line 35
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    const/4 v3, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, 0x2

    .line 44
    :goto_0
    or-int/2addr v3, v8

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object/from16 v2, p0

    .line 47
    .line 48
    move v3, v8

    .line 49
    :goto_1
    and-int/lit8 v4, p9, 0x2

    .line 50
    .line 51
    if-eqz v4, :cond_4

    .line 52
    .line 53
    or-int/lit8 v3, v3, 0x30

    .line 54
    .line 55
    :cond_3
    move-object/from16 v5, p1

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    and-int/lit8 v5, v8, 0x70

    .line 59
    .line 60
    if-nez v5, :cond_3

    .line 61
    .line 62
    move-object/from16 v5, p1

    .line 63
    .line 64
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_5

    .line 69
    .line 70
    const/16 v6, 0x20

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    const/16 v6, 0x10

    .line 74
    .line 75
    :goto_2
    or-int/2addr v3, v6

    .line 76
    :goto_3
    and-int/lit8 v6, p9, 0x4

    .line 77
    .line 78
    if-eqz v6, :cond_7

    .line 79
    .line 80
    or-int/lit16 v3, v3, 0x180

    .line 81
    .line 82
    :cond_6
    move-object/from16 v9, p2

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_7
    and-int/lit16 v9, v8, 0x380

    .line 86
    .line 87
    if-nez v9, :cond_6

    .line 88
    .line 89
    move-object/from16 v9, p2

    .line 90
    .line 91
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_8

    .line 96
    .line 97
    const/16 v10, 0x100

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_8
    const/16 v10, 0x80

    .line 101
    .line 102
    :goto_4
    or-int/2addr v3, v10

    .line 103
    :goto_5
    and-int/lit8 v10, p9, 0x8

    .line 104
    .line 105
    if-eqz v10, :cond_a

    .line 106
    .line 107
    or-int/lit16 v3, v3, 0xc00

    .line 108
    .line 109
    :cond_9
    move/from16 v11, p3

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_a
    and-int/lit16 v11, v8, 0x1c00

    .line 113
    .line 114
    if-nez v11, :cond_9

    .line 115
    .line 116
    move/from16 v11, p3

    .line 117
    .line 118
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    if-eqz v12, :cond_b

    .line 123
    .line 124
    const/16 v12, 0x800

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_b
    const/16 v12, 0x400

    .line 128
    .line 129
    :goto_6
    or-int/2addr v3, v12

    .line 130
    :goto_7
    and-int/lit8 v12, p9, 0x10

    .line 131
    .line 132
    if-eqz v12, :cond_d

    .line 133
    .line 134
    or-int/lit16 v3, v3, 0x6000

    .line 135
    .line 136
    :cond_c
    move-object/from16 v13, p4

    .line 137
    .line 138
    goto :goto_9

    .line 139
    :cond_d
    const v13, 0xe000

    .line 140
    .line 141
    .line 142
    and-int/2addr v13, v8

    .line 143
    if-nez v13, :cond_c

    .line 144
    .line 145
    move-object/from16 v13, p4

    .line 146
    .line 147
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v3, v14

    .line 159
    :goto_9
    and-int/lit8 v14, p9, 0x20

    .line 160
    .line 161
    if-eqz v14, :cond_10

    .line 162
    .line 163
    const/high16 v15, 0x30000

    .line 164
    .line 165
    or-int/2addr v3, v15

    .line 166
    :cond_f
    move-object/from16 v15, p5

    .line 167
    .line 168
    goto :goto_b

    .line 169
    :cond_10
    const/high16 v15, 0x70000

    .line 170
    .line 171
    and-int/2addr v15, v8

    .line 172
    if-nez v15, :cond_f

    .line 173
    .line 174
    move-object/from16 v15, p5

    .line 175
    .line 176
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    or-int v3, v3, v16

    .line 188
    .line 189
    :goto_b
    and-int/lit8 v16, p9, 0x40

    .line 190
    .line 191
    const/high16 v17, 0x180000

    .line 192
    .line 193
    if-eqz v16, :cond_12

    .line 194
    .line 195
    or-int v3, v3, v17

    .line 196
    .line 197
    goto :goto_d

    .line 198
    :cond_12
    const/high16 v16, 0x380000

    .line 199
    .line 200
    and-int v16, v8, v16

    .line 201
    .line 202
    if-nez v16, :cond_14

    .line 203
    .line 204
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    :goto_c
    or-int v3, v3, v16

    .line 216
    .line 217
    :cond_14
    :goto_d
    const v16, 0x2db6db

    .line 218
    .line 219
    .line 220
    and-int v2, v3, v16

    .line 221
    .line 222
    const v5, 0x92492

    .line 223
    .line 224
    .line 225
    if-ne v2, v5, :cond_16

    .line 226
    .line 227
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-nez v2, :cond_15

    .line 232
    .line 233
    goto :goto_e

    .line 234
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 235
    .line 236
    .line 237
    move-object/from16 v1, p0

    .line 238
    .line 239
    move-object/from16 v2, p1

    .line 240
    .line 241
    move-object v3, v9

    .line 242
    move v4, v11

    .line 243
    move-object v5, v13

    .line 244
    move-object v6, v15

    .line 245
    goto/16 :goto_15

    .line 246
    .line 247
    :cond_16
    :goto_e
    if-eqz v1, :cond_17

    .line 248
    .line 249
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 250
    .line 251
    goto :goto_f

    .line 252
    :cond_17
    move-object/from16 v1, p0

    .line 253
    .line 254
    :goto_f
    const/4 v2, 0x0

    .line 255
    if-eqz v4, :cond_18

    .line 256
    .line 257
    move-object v4, v2

    .line 258
    goto :goto_10

    .line 259
    :cond_18
    move-object/from16 v4, p1

    .line 260
    .line 261
    :goto_10
    if-eqz v6, :cond_19

    .line 262
    .line 263
    move-object v5, v2

    .line 264
    goto :goto_11

    .line 265
    :cond_19
    move-object v5, v9

    .line 266
    :goto_11
    if-eqz v10, :cond_1a

    .line 267
    .line 268
    const/16 v19, 0x1

    .line 269
    .line 270
    goto :goto_12

    .line 271
    :cond_1a
    move/from16 v19, v11

    .line 272
    .line 273
    :goto_12
    if-eqz v12, :cond_1b

    .line 274
    .line 275
    move-object v13, v2

    .line 276
    :cond_1b
    if-eqz v14, :cond_1c

    .line 277
    .line 278
    goto :goto_13

    .line 279
    :cond_1c
    move-object v2, v15

    .line 280
    :goto_13
    sget-object v9, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 281
    .line 282
    const/4 v10, 0x6

    .line 283
    invoke-virtual {v9, v0, v10}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    invoke-virtual {v9}, Landroidx/compose/material/Typography;->getSubtitle1()Landroidx/compose/ui/text/TextStyle;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    sget-object v12, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 292
    .line 293
    invoke-virtual {v12, v0, v10}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    .line 294
    .line 295
    .line 296
    move-result v14

    .line 297
    invoke-static {v11, v14, v7}, Landroidx/compose/material/ListItemKt;->applyTextStyle(Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;)Lkotlin/jvm/functions/Function2;

    .line 298
    .line 299
    .line 300
    move-result-object v14

    .line 301
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v9}, Landroidx/compose/material/Typography;->getBody2()Landroidx/compose/ui/text/TextStyle;

    .line 305
    .line 306
    .line 307
    move-result-object v11

    .line 308
    invoke-virtual {v12, v0, v10}, Landroidx/compose/material/ContentAlpha;->getMedium(Landroidx/compose/runtime/Composer;I)F

    .line 309
    .line 310
    .line 311
    move-result v15

    .line 312
    invoke-static {v11, v15, v5}, Landroidx/compose/material/ListItemKt;->applyTextStyle(Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;)Lkotlin/jvm/functions/Function2;

    .line 313
    .line 314
    .line 315
    move-result-object v15

    .line 316
    invoke-virtual {v9}, Landroidx/compose/material/Typography;->getOverline()Landroidx/compose/ui/text/TextStyle;

    .line 317
    .line 318
    .line 319
    move-result-object v11

    .line 320
    invoke-virtual {v12, v0, v10}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    invoke-static {v11, v6, v13}, Landroidx/compose/material/ListItemKt;->applyTextStyle(Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;)Lkotlin/jvm/functions/Function2;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    invoke-virtual {v9}, Landroidx/compose/material/Typography;->getCaption()Landroidx/compose/ui/text/TextStyle;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    invoke-virtual {v12, v0, v10}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    .line 333
    .line 334
    .line 335
    move-result v10

    .line 336
    invoke-static {v9, v10, v2}, Landroidx/compose/material/ListItemKt;->applyTextStyle(Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;)Lkotlin/jvm/functions/Function2;

    .line 337
    .line 338
    .line 339
    move-result-object v16

    .line 340
    sget-object v9, Landroidx/compose/material/ListItemKt$ListItem$semanticsModifier$1;->INSTANCE:Landroidx/compose/material/ListItemKt$ListItem$semanticsModifier$1;

    .line 341
    .line 342
    const/4 v10, 0x1

    .line 343
    invoke-static {v1, v10, v9}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    if-nez v15, :cond_1d

    .line 348
    .line 349
    if-nez v6, :cond_1d

    .line 350
    .line 351
    const v6, -0xc88a083

    .line 352
    .line 353
    .line 354
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 355
    .line 356
    .line 357
    sget-object v9, Landroidx/compose/material/OneLine;->INSTANCE:Landroidx/compose/material/OneLine;

    .line 358
    .line 359
    and-int/lit8 v3, v3, 0x70

    .line 360
    .line 361
    or-int/lit16 v15, v3, 0x6000

    .line 362
    .line 363
    const/4 v3, 0x0

    .line 364
    move-object v11, v4

    .line 365
    move-object v12, v14

    .line 366
    move-object/from16 v20, v13

    .line 367
    .line 368
    move-object/from16 v13, v16

    .line 369
    .line 370
    move-object v14, v0

    .line 371
    move/from16 v16, v3

    .line 372
    .line 373
    invoke-virtual/range {v9 .. v16}, Landroidx/compose/material/OneLine;->ListItem(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 374
    .line 375
    .line 376
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 377
    .line 378
    .line 379
    goto :goto_14

    .line 380
    :cond_1d
    move-object/from16 v20, v13

    .line 381
    .line 382
    if-nez v6, :cond_1e

    .line 383
    .line 384
    if-nez v19, :cond_1f

    .line 385
    .line 386
    :cond_1e
    if-nez v15, :cond_20

    .line 387
    .line 388
    :cond_1f
    const v9, -0xc889fbe

    .line 389
    .line 390
    .line 391
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 392
    .line 393
    .line 394
    sget-object v9, Landroidx/compose/material/TwoLine;->INSTANCE:Landroidx/compose/material/TwoLine;

    .line 395
    .line 396
    and-int/lit8 v3, v3, 0x70

    .line 397
    .line 398
    or-int v17, v3, v17

    .line 399
    .line 400
    const/16 v18, 0x0

    .line 401
    .line 402
    move-object v11, v4

    .line 403
    move-object v12, v14

    .line 404
    move-object v13, v15

    .line 405
    move-object v14, v6

    .line 406
    move-object/from16 v15, v16

    .line 407
    .line 408
    move-object/from16 v16, v0

    .line 409
    .line 410
    invoke-virtual/range {v9 .. v18}, Landroidx/compose/material/TwoLine;->ListItem(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 411
    .line 412
    .line 413
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 414
    .line 415
    .line 416
    goto :goto_14

    .line 417
    :cond_20
    const v9, -0xc889ee8

    .line 418
    .line 419
    .line 420
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 421
    .line 422
    .line 423
    sget-object v9, Landroidx/compose/material/ThreeLine;->INSTANCE:Landroidx/compose/material/ThreeLine;

    .line 424
    .line 425
    and-int/lit8 v3, v3, 0x70

    .line 426
    .line 427
    or-int v17, v3, v17

    .line 428
    .line 429
    const/16 v18, 0x0

    .line 430
    .line 431
    move-object v11, v4

    .line 432
    move-object v12, v14

    .line 433
    move-object v13, v15

    .line 434
    move-object v14, v6

    .line 435
    move-object/from16 v15, v16

    .line 436
    .line 437
    move-object/from16 v16, v0

    .line 438
    .line 439
    invoke-virtual/range {v9 .. v18}, Landroidx/compose/material/ThreeLine;->ListItem(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 440
    .line 441
    .line 442
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 443
    .line 444
    .line 445
    :goto_14
    move-object v6, v2

    .line 446
    move-object v2, v4

    .line 447
    move-object v3, v5

    .line 448
    move/from16 v4, v19

    .line 449
    .line 450
    move-object/from16 v5, v20

    .line 451
    .line 452
    :goto_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 453
    .line 454
    .line 455
    move-result-object v10

    .line 456
    if-nez v10, :cond_21

    .line 457
    .line 458
    goto :goto_16

    .line 459
    :cond_21
    new-instance v11, Landroidx/compose/material/ListItemKt$ListItem$1;

    .line 460
    .line 461
    move-object v0, v11

    .line 462
    move-object/from16 v7, p6

    .line 463
    .line 464
    move/from16 v8, p8

    .line 465
    .line 466
    move/from16 v9, p9

    .line 467
    .line 468
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/ListItemKt$ListItem$1;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    .line 469
    .line 470
    .line 471
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 472
    .line 473
    .line 474
    :goto_16
    return-void
.end method

.method private static final OffsetToBaselineOrCenter-Kz89ssw(FLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 9
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/ui/Modifier;",
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
    const v0, -0x3f57674d

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    and-int/lit8 v0, p5, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    or-int/lit8 v0, p4, 0x6

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    and-int/lit8 v0, p4, 0xe

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x2

    .line 28
    :goto_0
    or-int/2addr v0, p4

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v0, p4

    .line 31
    :goto_1
    and-int/lit8 v1, p5, 0x2

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    or-int/lit8 v0, v0, 0x30

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    and-int/lit8 v2, p4, 0x70

    .line 39
    .line 40
    if-nez v2, :cond_5

    .line 41
    .line 42
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    const/16 v2, 0x20

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const/16 v2, 0x10

    .line 52
    .line 53
    :goto_2
    or-int/2addr v0, v2

    .line 54
    :cond_5
    :goto_3
    and-int/lit8 v2, p5, 0x4

    .line 55
    .line 56
    if-eqz v2, :cond_6

    .line 57
    .line 58
    or-int/lit16 v0, v0, 0x180

    .line 59
    .line 60
    goto :goto_5

    .line 61
    :cond_6
    and-int/lit16 v2, p4, 0x380

    .line 62
    .line 63
    if-nez v2, :cond_8

    .line 64
    .line 65
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_7

    .line 70
    .line 71
    const/16 v2, 0x100

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_7
    const/16 v2, 0x80

    .line 75
    .line 76
    :goto_4
    or-int/2addr v0, v2

    .line 77
    :cond_8
    :goto_5
    and-int/lit16 v2, v0, 0x2db

    .line 78
    .line 79
    const/16 v3, 0x92

    .line 80
    .line 81
    if-ne v2, v3, :cond_a

    .line 82
    .line 83
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_9

    .line 88
    .line 89
    goto :goto_7

    .line 90
    :cond_9
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 91
    .line 92
    .line 93
    :goto_6
    move-object v3, p1

    .line 94
    goto/16 :goto_9

    .line 95
    .line 96
    :cond_a
    :goto_7
    if-eqz v1, :cond_b

    .line 97
    .line 98
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 99
    .line 100
    :cond_b
    new-instance v1, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1;

    .line 101
    .line 102
    invoke-direct {v1, p0}, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1;-><init>(F)V

    .line 103
    .line 104
    .line 105
    shr-int/lit8 v2, v0, 0x6

    .line 106
    .line 107
    and-int/lit8 v2, v2, 0xe

    .line 108
    .line 109
    and-int/lit8 v0, v0, 0x70

    .line 110
    .line 111
    or-int/2addr v0, v2

    .line 112
    const v2, -0x4ee9b9da

    .line 113
    .line 114
    .line 115
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 127
    .line 128
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 137
    .line 138
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 147
    .line 148
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 149
    .line 150
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    shl-int/lit8 v0, v0, 0x9

    .line 159
    .line 160
    and-int/lit16 v0, v0, 0x1c00

    .line 161
    .line 162
    or-int/lit8 v0, v0, 0x6

    .line 163
    .line 164
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    if-nez v8, :cond_c

    .line 169
    .line 170
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 171
    .line 172
    .line 173
    :cond_c
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 174
    .line 175
    .line 176
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-eqz v8, :cond_d

    .line 181
    .line 182
    invoke-interface {p3, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 183
    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_d
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 187
    .line 188
    .line 189
    :goto_8
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 190
    .line 191
    .line 192
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-static {v6, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v6, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-static {v6, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 225
    .line 226
    .line 227
    invoke-static {p3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const/4 v2, 0x0

    .line 236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-interface {v7, v1, p3, v2}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    const v1, 0x7ab4aae9

    .line 244
    .line 245
    .line 246
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 247
    .line 248
    .line 249
    shr-int/lit8 v0, v0, 0x9

    .line 250
    .line 251
    and-int/lit8 v0, v0, 0xe

    .line 252
    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-interface {p2, p3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 261
    .line 262
    .line 263
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 264
    .line 265
    .line 266
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_6

    .line 270
    .line 271
    :goto_9
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    if-nez p1, :cond_e

    .line 276
    .line 277
    goto :goto_a

    .line 278
    :cond_e
    new-instance p3, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$2;

    .line 279
    .line 280
    move-object v1, p3

    .line 281
    move v2, p0

    .line 282
    move-object v4, p2

    .line 283
    move v5, p4

    .line 284
    move v6, p5

    .line 285
    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$2;-><init>(FLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;II)V

    .line 286
    .line 287
    .line 288
    invoke-interface {p1, p3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 289
    .line 290
    .line 291
    :goto_a
    return-void
.end method

.method public static final synthetic access$BaselinesOffsetColumn(Ljava/util/List;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/ListItemKt;->BaselinesOffsetColumn(Ljava/util/List;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$OffsetToBaselineOrCenter-Kz89ssw(FLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/ListItemKt;->OffsetToBaselineOrCenter-Kz89ssw(FLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final applyTextStyle(Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/TextStyle;",
            "F",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Landroidx/compose/material/ListItemKt$applyTextStyle$1;

    .line 6
    .line 7
    invoke-direct {v0, p1, p0, p2}, Landroidx/compose/material/ListItemKt$applyTextStyle$1;-><init>(FLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    const p0, -0x317b7e5c

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
