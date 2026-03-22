.class public final Landroidx/compose/foundation/text/CoreTextKt;
.super Ljava/lang/Object;
.source "CoreText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final EmptyInlineContent:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Lat/n<",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/Pair;

    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/compose/foundation/text/CoreTextKt;->EmptyInlineContent:Lkotlin/Pair;

    .line 15
    .line 16
    return-void
.end method

.method public static final InlineChildren(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V
    .locals 17
    .param p0    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Lat/n<",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;>;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "text"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "inlineContents"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const v2, -0x69c49a4

    .line 16
    .line 17
    .line 18
    move-object/from16 v3, p2

    .line 19
    .line 20
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    :goto_0
    if-ge v4, v3, :cond_2

    .line 34
    .line 35
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 40
    .line 41
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->component1()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Lat/n;

    .line 46
    .line 47
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->component2()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->component3()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    sget-object v9, Landroidx/compose/foundation/text/CoreTextKt$InlineChildren$1$2;->INSTANCE:Landroidx/compose/foundation/text/CoreTextKt$InlineChildren$1$2;

    .line 56
    .line 57
    const v10, -0x4ee9b9da

    .line 58
    .line 59
    .line 60
    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 61
    .line 62
    .line 63
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 64
    .line 65
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 74
    .line 75
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 84
    .line 85
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    check-cast v13, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 94
    .line 95
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 96
    .line 97
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 98
    .line 99
    .line 100
    move-result-object v15

    .line 101
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 106
    .line 107
    .line 108
    move-result-object v16

    .line 109
    if-nez v16, :cond_0

    .line 110
    .line 111
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 112
    .line 113
    .line 114
    :cond_0
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 115
    .line 116
    .line 117
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 118
    .line 119
    .line 120
    move-result v16

    .line 121
    if-eqz v16, :cond_1

    .line 122
    .line 123
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 128
    .line 129
    .line 130
    :goto_1
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 131
    .line 132
    .line 133
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 134
    .line 135
    .line 136
    move-result-object v15

    .line 137
    move/from16 p2, v3

    .line 138
    .line 139
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v15, v9, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-static {v15, v11, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-static {v15, v12, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-static {v15, v13, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 168
    .line 169
    .line 170
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-interface {v10, v3, v2, v5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    const v3, 0x7ab4aae9

    .line 182
    .line 183
    .line 184
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 185
    .line 186
    .line 187
    const v3, -0x45128e5

    .line 188
    .line 189
    .line 190
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v8, v6}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-interface {v7, v3, v2, v5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 205
    .line 206
    .line 207
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 208
    .line 209
    .line 210
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 211
    .line 212
    .line 213
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v4, v4, 0x1

    .line 217
    .line 218
    move/from16 v3, p2

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_2
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    if-nez v2, :cond_3

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_3
    new-instance v3, Landroidx/compose/foundation/text/CoreTextKt$InlineChildren$2;

    .line 230
    .line 231
    move/from16 v4, p3

    .line 232
    .line 233
    invoke-direct {v3, v0, v1, v4}, Landroidx/compose/foundation/text/CoreTextKt$InlineChildren$2;-><init>(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;I)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v2, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 237
    .line 238
    .line 239
    :goto_2
    return-void
.end method

.method public static final resolveInlineContent(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/Map;)Lkotlin/Pair;
    .locals 10
    .param p0    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Lat/n<",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inlineContent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object p0, Landroidx/compose/foundation/text/CoreTextKt;->EmptyInlineContent:Lkotlin/Pair;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-string v1, "androidx.compose.foundation.text.inlineContent"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0, v1, v2, v0}, Landroidx/compose/ui/text/AnnotatedString;->getStringAnnotations(Ljava/lang/String;II)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    :goto_0
    if-ge v2, v3, :cond_2

    .line 46
    .line 47
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 52
    .line 53
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Landroidx/compose/foundation/text/InlineTextContent;

    .line 62
    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 66
    .line 67
    invoke-virtual {v5}, Landroidx/compose/foundation/text/InlineTextContent;->getPlaceholder()Landroidx/compose/ui/text/Placeholder;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    invoke-direct {v6, v7, v8, v9}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 86
    .line 87
    invoke-virtual {v5}, Landroidx/compose/foundation/text/InlineTextContent;->getChildren()Lat/n;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-direct {v6, v5, v7, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    new-instance p0, Lkotlin/Pair;

    .line 109
    .line 110
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return-object p0
.end method

.method public static final updateTextDelegate-x_uQXYA(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZIILjava/util/List;)Landroidx/compose/foundation/text/TextDelegate;
    .locals 12
    .param p0    # Landroidx/compose/foundation/text/TextDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/TextDelegate;",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "ZII",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;)",
            "Landroidx/compose/foundation/text/TextDelegate;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v1, p1

    .line 2
    move-object v2, p2

    .line 3
    move-object v6, p3

    .line 4
    move-object/from16 v7, p4

    .line 5
    .line 6
    move-object/from16 v8, p8

    .line 7
    .line 8
    const-string v0, "current"

    .line 9
    .line 10
    move-object v3, p0

    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "text"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "style"

    .line 20
    .line 21
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "density"

    .line 25
    .line 26
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "fontFamilyResolver"

    .line 30
    .line 31
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "placeholders"

    .line 35
    .line 36
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getStyle()Landroidx/compose/ui/text/TextStyle;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getSoftWrap()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    move/from16 v4, p5

    .line 64
    .line 65
    if-ne v0, v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getOverflow-gIe3tQ8()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    move/from16 v5, p6

    .line 72
    .line 73
    invoke-static {v0, v5}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getMaxLines()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    move/from16 v9, p7

    .line 84
    .line 85
    if-ne v0, v9, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getPlaceholders()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eq v0, v7, :cond_0

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_0
    move-object v10, v3

    .line 115
    goto :goto_3

    .line 116
    :cond_1
    :goto_0
    move/from16 v9, p7

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    :goto_1
    move/from16 v5, p6

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    move/from16 v4, p5

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    :goto_2
    new-instance v10, Landroidx/compose/foundation/text/TextDelegate;

    .line 126
    .line 127
    const/4 v11, 0x0

    .line 128
    move-object v0, v10

    .line 129
    move-object v1, p1

    .line 130
    move-object v2, p2

    .line 131
    move/from16 v3, p7

    .line 132
    .line 133
    move/from16 v4, p5

    .line 134
    .line 135
    move/from16 v5, p6

    .line 136
    .line 137
    move-object v6, p3

    .line 138
    move-object/from16 v7, p4

    .line 139
    .line 140
    move-object/from16 v8, p8

    .line 141
    .line 142
    move-object v9, v11

    .line 143
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    .line 145
    .line 146
    :goto_3
    return-object v10
.end method

.method public static synthetic updateTextDelegate-x_uQXYA$default(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZIILjava/util/List;ILjava/lang/Object;)Landroidx/compose/foundation/text/TextDelegate;
    .locals 11

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x20

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    move v7, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v7, p5

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x40

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    move v8, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move/from16 v8, p6

    .line 25
    .line 26
    :goto_1
    and-int/lit16 v0, v0, 0x80

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const v0, 0x7fffffff

    .line 31
    .line 32
    .line 33
    move v9, v0

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move/from16 v9, p7

    .line 36
    .line 37
    :goto_2
    move-object v2, p0

    .line 38
    move-object v3, p1

    .line 39
    move-object v4, p2

    .line 40
    move-object v5, p3

    .line 41
    move-object v6, p4

    .line 42
    move-object/from16 v10, p8

    .line 43
    .line 44
    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/text/CoreTextKt;->updateTextDelegate-x_uQXYA(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZIILjava/util/List;)Landroidx/compose/foundation/text/TextDelegate;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public static final updateTextDelegate-y0k-MQk(Landroidx/compose/foundation/text/TextDelegate;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZII)Landroidx/compose/foundation/text/TextDelegate;
    .locals 17
    .param p0    # Landroidx/compose/foundation/text/TextDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v6, p2

    .line 4
    .line 5
    move-object/from16 v7, p3

    .line 6
    .line 7
    move-object/from16 v8, p4

    .line 8
    .line 9
    const-string v0, "current"

    .line 10
    .line 11
    move-object/from16 v2, p0

    .line 12
    .line 13
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "text"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "style"

    .line 22
    .line 23
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "density"

    .line 27
    .line 28
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "fontFamilyResolver"

    .line 32
    .line 33
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->getStyle()Landroidx/compose/ui/text/TextStyle;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->getSoftWrap()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    move/from16 v9, p5

    .line 65
    .line 66
    if-ne v0, v9, :cond_2

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->getOverflow-gIe3tQ8()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    move/from16 v10, p6

    .line 73
    .line 74
    invoke-static {v0, v10}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->getMaxLines()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    move/from16 v11, p7

    .line 85
    .line 86
    if-ne v0, v11, :cond_4

    .line 87
    .line 88
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text/TextDelegate;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eq v0, v8, :cond_0

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_0
    move-object v13, v2

    .line 106
    goto :goto_3

    .line 107
    :cond_1
    :goto_0
    move/from16 v11, p7

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    :goto_1
    move/from16 v10, p6

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    move/from16 v9, p5

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    :goto_2
    new-instance v12, Landroidx/compose/ui/text/AnnotatedString;

    .line 117
    .line 118
    const/4 v4, 0x6

    .line 119
    const/4 v5, 0x0

    .line 120
    const/4 v2, 0x0

    .line 121
    const/4 v3, 0x0

    .line 122
    move-object v0, v12

    .line 123
    move-object/from16 v1, p1

    .line 124
    .line 125
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    .line 127
    .line 128
    new-instance v13, Landroidx/compose/foundation/text/TextDelegate;

    .line 129
    .line 130
    const/16 v14, 0x80

    .line 131
    .line 132
    const/4 v15, 0x0

    .line 133
    const/16 v16, 0x0

    .line 134
    .line 135
    move-object v0, v13

    .line 136
    move-object v1, v12

    .line 137
    move-object/from16 v2, p2

    .line 138
    .line 139
    move/from16 v3, p7

    .line 140
    .line 141
    move/from16 v4, p5

    .line 142
    .line 143
    move/from16 v5, p6

    .line 144
    .line 145
    move-object/from16 v6, p3

    .line 146
    .line 147
    move-object/from16 v7, p4

    .line 148
    .line 149
    move-object/from16 v8, v16

    .line 150
    .line 151
    move v9, v14

    .line 152
    move-object v10, v15

    .line 153
    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 154
    .line 155
    .line 156
    :goto_3
    return-object v13
.end method

.method public static synthetic updateTextDelegate-y0k-MQk$default(Landroidx/compose/foundation/text/TextDelegate;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZIIILjava/lang/Object;)Landroidx/compose/foundation/text/TextDelegate;
    .locals 10

    .line 1
    move/from16 v0, p8

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x20

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    move v7, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v7, p5

    .line 11
    :goto_0
    and-int/lit8 v1, v0, 0x40

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    move v8, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move/from16 v8, p6

    .line 24
    .line 25
    :goto_1
    and-int/lit16 v0, v0, 0x80

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const v0, 0x7fffffff

    .line 30
    .line 31
    .line 32
    move v9, v0

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move/from16 v9, p7

    .line 35
    .line 36
    :goto_2
    move-object v2, p0

    .line 37
    move-object v3, p1

    .line 38
    move-object v4, p2

    .line 39
    move-object v5, p3

    .line 40
    move-object v6, p4

    .line 41
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/text/CoreTextKt;->updateTextDelegate-y0k-MQk(Landroidx/compose/foundation/text/TextDelegate;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZII)Landroidx/compose/foundation/text/TextDelegate;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
