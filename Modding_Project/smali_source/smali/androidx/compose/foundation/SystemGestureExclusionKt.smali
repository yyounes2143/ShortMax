.class public final Landroidx/compose/foundation/SystemGestureExclusionKt;
.super Ljava/lang/Object;
.source "SystemGestureExclusion.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private static final excludeFromSystemGestureR(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    const p2, 0xc13b6bc

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroid/view/View;

    .line 16
    .line 17
    const v0, 0x1e7b2b64

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    or-int/2addr v0, v1

    .line 32
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-ne v1, v0, :cond_1

    .line 45
    .line 46
    :cond_0
    new-instance v1, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;

    .line 47
    .line 48
    invoke-direct {v1, p2, p0}, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 55
    .line 56
    .line 57
    check-cast v1, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;

    .line 58
    .line 59
    new-instance p0, Landroidx/compose/foundation/SystemGestureExclusionKt$excludeFromSystemGestureR$1;

    .line 60
    .line 61
    invoke-direct {p0, v1}, Landroidx/compose/foundation/SystemGestureExclusionKt$excludeFromSystemGestureR$1;-><init>(Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;)V

    .line 62
    .line 63
    .line 64
    const/4 p2, 0x0

    .line 65
    invoke-static {v1, p0, p1, p2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 69
    .line 70
    .line 71
    return-object v1
.end method

.method public static final systemGestureExclusion(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/foundation/SystemGestureExclusionKt$systemGestureExclusion$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/foundation/SystemGestureExclusionKt$systemGestureExclusion$$inlined$debugInspectorInfo$1;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 3
    :goto_0
    sget-object v1, Landroidx/compose/foundation/SystemGestureExclusionKt$systemGestureExclusion$2;->INSTANCE:Landroidx/compose/foundation/SystemGestureExclusionKt$systemGestureExclusion$2;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lat/n;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final systemGestureExclusion(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exclusion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/foundation/SystemGestureExclusionKt$systemGestureExclusion$$inlined$debugInspectorInfo$2;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/SystemGestureExclusionKt$systemGestureExclusion$$inlined$debugInspectorInfo$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 6
    :goto_0
    new-instance v1, Landroidx/compose/foundation/SystemGestureExclusionKt$systemGestureExclusion$4;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/SystemGestureExclusionKt$systemGestureExclusion$4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lat/n;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :goto_1
    return-object p0
.end method
