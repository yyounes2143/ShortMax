.class public final Landroidx/compose/foundation/ImageKt;
.super Ljava/lang/Object;
.source "Image.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic Image(Landroidx/compose/ui/graphics/ImageBitmap;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V
    .locals 14
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation runtime Lms/c;
    .end annotation

    move/from16 v0, p8

    const-string v1, "bitmap"

    move-object v2, p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, -0x7e8de601

    move-object/from16 v13, p7

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, p9, 0x4

    if-eqz v1, :cond_0

    .line 1
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p3

    :goto_1
    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_2

    .line 3
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object/from16 v6, p4

    :goto_2
    and-int/lit8 v1, p9, 0x20

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    move v7, v1

    goto :goto_3

    :cond_3
    move/from16 v7, p5

    :goto_3
    and-int/lit8 v1, p9, 0x40

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move-object v8, v1

    goto :goto_4

    :cond_4
    move-object/from16 v8, p6

    .line 4
    :goto_4
    sget-object v1, Landroidx/compose/ui/graphics/FilterQuality;->Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/FilterQuality$Companion;->getLow-f-v9h1I()I

    move-result v9

    and-int/lit8 v1, v0, 0x70

    or-int/lit8 v1, v1, 0x8

    and-int/lit16 v3, v0, 0x380

    or-int/2addr v1, v3

    and-int/lit16 v3, v0, 0x1c00

    or-int/2addr v1, v3

    const v3, 0xe000

    and-int/2addr v3, v0

    or-int/2addr v1, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v0

    or-int/2addr v1, v3

    const/high16 v3, 0x380000

    and-int/2addr v0, v3

    or-int v11, v1, v0

    const/4 v12, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v10, p7

    .line 5
    invoke-static/range {v2 .. v12}, Landroidx/compose/foundation/ImageKt;->Image-5h-nEew(Landroidx/compose/ui/graphics/ImageBitmap;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V

    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V
    .locals 19
    .param p0    # Landroidx/compose/ui/graphics/painter/Painter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    move-object/from16 v2, p1

    const-string v0, "painter"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x441d0e20

    move-object/from16 v3, p7

    .line 12
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v0

    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_0

    .line 13
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v3

    goto :goto_0

    :cond_0
    move-object/from16 v12, p2

    :goto_0
    and-int/lit8 v3, p9, 0x8

    if-eqz v3, :cond_1

    .line 14
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    :cond_1
    move-object/from16 v13, p3

    :goto_1
    and-int/lit8 v3, p9, 0x10

    if-eqz v3, :cond_2

    .line 15
    sget-object v3, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v3

    move-object v14, v3

    goto :goto_2

    :cond_2
    move-object/from16 v14, p4

    :goto_2
    and-int/lit8 v3, p9, 0x20

    if-eqz v3, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    move v15, v3

    goto :goto_3

    :cond_3
    move/from16 v15, p5

    :goto_3
    and-int/lit8 v3, p9, 0x40

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    move-object/from16 v16, v4

    goto :goto_4

    :cond_4
    move-object/from16 v16, p6

    :goto_4
    const v3, -0x30af4a0b

    .line 16
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const/4 v11, 0x0

    if-eqz v2, :cond_7

    .line 17
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const v5, 0x44faf204

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 18
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 19
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_5

    .line 20
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_6

    .line 21
    :cond_5
    new-instance v6, Landroidx/compose/foundation/ImageKt$Image$semantics$1$1;

    invoke-direct {v6, v2}, Landroidx/compose/foundation/ImageKt$Image$semantics$1$1;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 23
    :cond_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x1

    .line 24
    invoke-static {v3, v11, v6, v5, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    goto :goto_5

    .line 25
    :cond_7
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 26
    :goto_5
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 27
    invoke-interface {v12, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v10, 0x2

    const/16 v17, 0x0

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object v6, v13

    move-object v7, v14

    move v8, v15

    move-object/from16 v9, v16

    move/from16 v18, v11

    move-object/from16 v11, v17

    invoke-static/range {v3 .. v11}, Landroidx/compose/ui/draw/PainterModifierKt;->paint$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 28
    sget-object v4, Landroidx/compose/foundation/ImageKt$Image$2;->INSTANCE:Landroidx/compose/foundation/ImageKt$Image$2;

    const v5, -0x4ee9b9da

    .line 29
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 30
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    .line 31
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    .line 32
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 33
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v6

    .line 34
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    .line 35
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 36
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    .line 37
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    .line 38
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 39
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v9

    .line 40
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    move-result-object v3

    .line 41
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    if-nez v10, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 42
    :cond_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 43
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 44
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    .line 45
    :cond_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 46
    :goto_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 47
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .line 48
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v9, v4, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 49
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v9, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 50
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v9, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 51
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v9, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 52
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 53
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v0, v5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7ab4aae9

    .line 54
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v3, -0x7bdbb269

    .line 55
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 56
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 57
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 58
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 59
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 60
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-nez v10, :cond_a

    goto :goto_7

    :cond_a
    new-instance v11, Landroidx/compose/foundation/ImageKt$Image$3;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move v6, v15

    move-object/from16 v7, v16

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt$Image$3;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;II)V

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_7
    return-void
.end method

.method public static final Image(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V
    .locals 11
    .param p0    # Landroidx/compose/ui/graphics/vector/ImageVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    move-object v0, p0

    move-object/from16 v10, p7

    move/from16 v1, p8

    const-string v2, "imageVector"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x5f1f9c13

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_0

    .line 6
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    and-int/lit8 v3, p9, 0x8

    if-eqz v3, :cond_1

    .line 7
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p9, 0x10

    if-eqz v4, :cond_2

    .line 8
    sget-object v4, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p9, 0x20

    if-eqz v5, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    move/from16 v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x40

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v1, 0xe

    .line 9
    invoke-static {p0, v10, v7}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/VectorPainter;

    move-result-object v0

    .line 10
    sget v7, Landroidx/compose/ui/graphics/vector/VectorPainter;->$stable:I

    and-int/lit8 v8, v1, 0x70

    or-int/2addr v7, v8

    and-int/lit16 v8, v1, 0x380

    or-int/2addr v7, v8

    and-int/lit16 v8, v1, 0x1c00

    or-int/2addr v7, v8

    const v8, 0xe000

    and-int/2addr v8, v1

    or-int/2addr v7, v8

    const/high16 v8, 0x70000

    and-int/2addr v8, v1

    or-int/2addr v7, v8

    const/high16 v8, 0x380000

    and-int/2addr v1, v8

    or-int v8, v7, v1

    const/4 v9, 0x0

    move-object v1, p1

    move-object/from16 v7, p7

    .line 11
    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final Image-5h-nEew(Landroidx/compose/ui/graphics/ImageBitmap;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p0    # Landroidx/compose/ui/graphics/ImageBitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/runtime/Composer;
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
    move-object/from16 v10, p8

    .line 4
    .line 5
    move/from16 v8, p9

    .line 6
    .line 7
    move/from16 v1, p10

    .line 8
    .line 9
    const-string v2, "bitmap"

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, -0x53393f7c

    .line 15
    .line 16
    .line 17
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 18
    .line 19
    .line 20
    and-int/lit8 v2, v1, 0x4

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 25
    .line 26
    move-object v9, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object/from16 v9, p2

    .line 29
    .line 30
    :goto_0
    and-int/lit8 v2, v1, 0x8

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    move-object v11, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object/from16 v11, p3

    .line 43
    .line 44
    :goto_1
    and-int/lit8 v2, v1, 0x10

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    sget-object v2, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    move-object v12, v2

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move-object/from16 v12, p4

    .line 57
    .line 58
    :goto_2
    and-int/lit8 v2, v1, 0x20

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    .line 64
    move v13, v2

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move/from16 v13, p5

    .line 67
    .line 68
    :goto_3
    and-int/lit8 v2, v1, 0x40

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    move-object v14, v2

    .line 74
    goto :goto_4

    .line 75
    :cond_4
    move-object/from16 v14, p6

    .line 76
    .line 77
    :goto_4
    and-int/lit16 v1, v1, 0x80

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    sget-object v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    move v5, v1

    .line 88
    goto :goto_5

    .line 89
    :cond_5
    move/from16 v5, p7

    .line 90
    .line 91
    :goto_5
    const v1, 0x44faf204

    .line 92
    .line 93
    .line 94
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-nez v1, :cond_6

    .line 106
    .line 107
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-ne v2, v1, :cond_7

    .line 114
    .line 115
    :cond_6
    const/4 v6, 0x6

    .line 116
    const/4 v7, 0x0

    .line 117
    const-wide/16 v1, 0x0

    .line 118
    .line 119
    const-wide/16 v3, 0x0

    .line 120
    .line 121
    move-object/from16 v0, p0

    .line 122
    .line 123
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/painter/BitmapPainterKt;->BitmapPainter-QZhYCtY$default(Landroidx/compose/ui/graphics/ImageBitmap;JJIILjava/lang/Object;)Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_7
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 131
    .line 132
    .line 133
    move-object v0, v2

    .line 134
    check-cast v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 135
    .line 136
    and-int/lit8 v1, v8, 0x70

    .line 137
    .line 138
    or-int/lit8 v1, v1, 0x8

    .line 139
    .line 140
    and-int/lit16 v2, v8, 0x380

    .line 141
    .line 142
    or-int/2addr v1, v2

    .line 143
    and-int/lit16 v2, v8, 0x1c00

    .line 144
    .line 145
    or-int/2addr v1, v2

    .line 146
    const v2, 0xe000

    .line 147
    .line 148
    .line 149
    and-int/2addr v2, v8

    .line 150
    or-int/2addr v1, v2

    .line 151
    const/high16 v2, 0x70000

    .line 152
    .line 153
    and-int/2addr v2, v8

    .line 154
    or-int/2addr v1, v2

    .line 155
    const/high16 v2, 0x380000

    .line 156
    .line 157
    and-int/2addr v2, v8

    .line 158
    or-int v8, v1, v2

    .line 159
    .line 160
    const/4 v15, 0x0

    .line 161
    move-object/from16 v1, p1

    .line 162
    .line 163
    move-object v2, v9

    .line 164
    move-object v3, v11

    .line 165
    move-object v4, v12

    .line 166
    move v5, v13

    .line 167
    move-object v6, v14

    .line 168
    move-object/from16 v7, p8

    .line 169
    .line 170
    move v9, v15

    .line 171
    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 172
    .line 173
    .line 174
    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 175
    .line 176
    .line 177
    return-void
.end method
