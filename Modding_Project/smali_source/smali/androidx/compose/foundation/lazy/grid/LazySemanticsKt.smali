.class public final Landroidx/compose/foundation/lazy/grid/LazySemanticsKt;
.super Ljava/lang/Object;
.source "LazySemantics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final lazyGridSemantics(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lgt/g0;ZZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 15
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/grid/LazyGridState;
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
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p2

    .line 5
    .line 6
    move-object/from16 v3, p3

    .line 7
    .line 8
    move-object/from16 v4, p7

    .line 9
    .line 10
    const-string v5, "<this>"

    .line 11
    .line 12
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v5, "itemProvider"

    .line 16
    .line 17
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v5, "state"

    .line 21
    .line 22
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v5, "coroutineScope"

    .line 26
    .line 27
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const v5, 0x51537861

    .line 31
    .line 32
    .line 33
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 34
    .line 35
    .line 36
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    filled-new-array {v1, v2, v5, v6, v7}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const v6, -0x21de6e89

    .line 53
    .line 54
    .line 55
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 56
    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    move v7, v6

    .line 60
    move v8, v7

    .line 61
    :goto_0
    const/4 v9, 0x5

    .line 62
    if-ge v7, v9, :cond_0

    .line 63
    .line 64
    aget-object v9, v5, v7

    .line 65
    .line 66
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    or-int/2addr v8, v9

    .line 71
    add-int/lit8 v7, v7, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-nez v8, :cond_1

    .line 79
    .line 80
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 81
    .line 82
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    if-ne v5, v7, :cond_4

    .line 87
    .line 88
    :cond_1
    new-instance v9, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$indexForKeyMapping$1;

    .line 89
    .line 90
    invoke-direct {v9, v1}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$indexForKeyMapping$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)V

    .line 91
    .line 92
    .line 93
    new-instance v11, Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 94
    .line 95
    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$accessibilityScrollState$1;

    .line 96
    .line 97
    invoke-direct {v5, v2}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$accessibilityScrollState$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    .line 98
    .line 99
    .line 100
    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$accessibilityScrollState$2;

    .line 101
    .line 102
    invoke-direct {v7, v2, v1}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$accessibilityScrollState$2;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;)V

    .line 103
    .line 104
    .line 105
    move/from16 v1, p5

    .line 106
    .line 107
    invoke-direct {v11, v5, v7, v1}, Landroidx/compose/ui/semantics/ScrollAxisRange;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 108
    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    if-eqz p6, :cond_2

    .line 112
    .line 113
    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;

    .line 114
    .line 115
    move/from16 v7, p4

    .line 116
    .line 117
    invoke-direct {v5, v7, v3, v2}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollByAction$1;-><init>(ZLgt/g0;Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    .line 118
    .line 119
    .line 120
    move-object v12, v5

    .line 121
    goto :goto_1

    .line 122
    :cond_2
    move/from16 v7, p4

    .line 123
    .line 124
    move-object v12, v1

    .line 125
    :goto_1
    if-eqz p6, :cond_3

    .line 126
    .line 127
    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollToIndexAction$1;

    .line 128
    .line 129
    invoke-direct {v5, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$scrollToIndexAction$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lgt/g0;)V

    .line 130
    .line 131
    .line 132
    move-object v13, v5

    .line 133
    goto :goto_2

    .line 134
    :cond_3
    move-object v13, v1

    .line 135
    :goto_2
    new-instance v14, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 136
    .line 137
    const/4 v2, -0x1

    .line 138
    invoke-direct {v14, v2, v2}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    .line 139
    .line 140
    .line 141
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 142
    .line 143
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$1;

    .line 144
    .line 145
    move-object v8, v3

    .line 146
    move/from16 v10, p4

    .line 147
    .line 148
    invoke-direct/range {v8 .. v14}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$lazyGridSemantics$1$1;-><init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/ui/semantics/ScrollAxisRange;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/semantics/CollectionInfo;)V

    .line 149
    .line 150
    .line 151
    const/4 v5, 0x1

    .line 152
    invoke-static {v2, v6, v3, v5, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 160
    .line 161
    .line 162
    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 163
    .line 164
    invoke-interface {p0, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 169
    .line 170
    .line 171
    return-object v0
.end method
