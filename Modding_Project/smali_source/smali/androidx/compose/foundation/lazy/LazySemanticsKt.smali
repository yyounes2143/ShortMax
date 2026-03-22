.class public final Landroidx/compose/foundation/lazy/LazySemanticsKt;
.super Ljava/lang/Object;
.source "LazySemantics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final lazyListSemantics(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/LazyListState;Lgt/g0;ZZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 16
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/LazyListItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/LazyListState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    const-string v5, "<this>"

    .line 14
    .line 15
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v5, "itemProvider"

    .line 19
    .line 20
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v5, "state"

    .line 24
    .line 25
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v5, "coroutineScope"

    .line 29
    .line 30
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const v5, -0x67003725

    .line 34
    .line 35
    .line 36
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 37
    .line 38
    .line 39
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    filled-new-array {v1, v2, v5, v6, v7}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const v6, -0x21de6e89

    .line 56
    .line 57
    .line 58
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 59
    .line 60
    .line 61
    const/4 v9, 0x0

    .line 62
    move v6, v9

    .line 63
    move v7, v6

    .line 64
    :goto_0
    const/4 v10, 0x5

    .line 65
    if-ge v6, v10, :cond_0

    .line 66
    .line 67
    aget-object v10, v5, v6

    .line 68
    .line 69
    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    or-int/2addr v7, v10

    .line 74
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    if-nez v7, :cond_1

    .line 82
    .line 83
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 84
    .line 85
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    if-ne v5, v6, :cond_6

    .line 90
    .line 91
    :cond_1
    new-instance v5, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1;

    .line 92
    .line 93
    invoke-direct {v5, v1}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1;-><init>(Landroidx/compose/foundation/lazy/LazyListItemProvider;)V

    .line 94
    .line 95
    .line 96
    new-instance v6, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 97
    .line 98
    new-instance v7, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$1;

    .line 99
    .line 100
    invoke-direct {v7, v2}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 101
    .line 102
    .line 103
    new-instance v10, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$2;

    .line 104
    .line 105
    invoke-direct {v10, v2, v1}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListItemProvider;)V

    .line 106
    .line 107
    .line 108
    move/from16 v1, p5

    .line 109
    .line 110
    invoke-direct {v6, v7, v10, v1}, Landroidx/compose/ui/semantics/ScrollAxisRange;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 111
    .line 112
    .line 113
    const/4 v10, 0x0

    .line 114
    if-eqz p6, :cond_2

    .line 115
    .line 116
    new-instance v1, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollByAction$1;

    .line 117
    .line 118
    invoke-direct {v1, v4, v3, v2}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollByAction$1;-><init>(ZLgt/g0;Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 119
    .line 120
    .line 121
    move-object v7, v1

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    move-object v7, v10

    .line 124
    :goto_1
    if-eqz p6, :cond_3

    .line 125
    .line 126
    new-instance v1, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1;

    .line 127
    .line 128
    invoke-direct {v1, v2, v3}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lgt/g0;)V

    .line 129
    .line 130
    .line 131
    move-object v11, v1

    .line 132
    goto :goto_2

    .line 133
    :cond_3
    move-object v11, v10

    .line 134
    :goto_2
    new-instance v12, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 135
    .line 136
    const/4 v1, -0x1

    .line 137
    const/4 v13, 0x1

    .line 138
    if-eqz v4, :cond_4

    .line 139
    .line 140
    move v2, v1

    .line 141
    goto :goto_3

    .line 142
    :cond_4
    move v2, v13

    .line 143
    :goto_3
    if-eqz v4, :cond_5

    .line 144
    .line 145
    move v1, v13

    .line 146
    :cond_5
    invoke-direct {v12, v2, v1}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    .line 147
    .line 148
    .line 149
    sget-object v14, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 150
    .line 151
    new-instance v15, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$1;

    .line 152
    .line 153
    move-object v1, v15

    .line 154
    move-object v2, v5

    .line 155
    move/from16 v3, p4

    .line 156
    .line 157
    move-object v4, v6

    .line 158
    move-object v5, v7

    .line 159
    move-object v6, v11

    .line 160
    move-object v7, v12

    .line 161
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/lazy/LazySemanticsKt$lazyListSemantics$1$1;-><init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/semantics/ScrollAxisRange;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/semantics/CollectionInfo;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v14, v9, v15, v13, v10}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_6
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 172
    .line 173
    .line 174
    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 175
    .line 176
    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 181
    .line 182
    .line 183
    return-object v0
.end method
