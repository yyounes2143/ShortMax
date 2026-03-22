.class public final Landroidx/compose/foundation/AndroidOverscrollKt;
.super Ljava/lang/Object;
.source "AndroidOverscroll.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final NoOpOverscrollEffect:Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final StretchOverscrollNonClippingLayer:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/AndroidOverscrollKt;->NoOpOverscrollEffect:Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;

    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x1f

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 15
    .line 16
    sget-object v1, Landroidx/compose/foundation/AndroidOverscrollKt$StretchOverscrollNonClippingLayer$1;->INSTANCE:Landroidx/compose/foundation/AndroidOverscrollKt$StretchOverscrollNonClippingLayer$1;

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lat/n;)Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Landroidx/compose/foundation/AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2;->INSTANCE:Landroidx/compose/foundation/AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2;

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lat/n;)Landroidx/compose/ui/Modifier;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 30
    .line 31
    :goto_0
    sput-object v0, Landroidx/compose/foundation/AndroidOverscrollKt;->StretchOverscrollNonClippingLayer:Landroidx/compose/ui/Modifier;

    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic access$getStretchOverscrollNonClippingLayer$p()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/AndroidOverscrollKt;->StretchOverscrollNonClippingLayer:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic getNoOpOverscrollEffect$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final rememberOverscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;
    .locals 3
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const p1, -0x4d61273

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {}, Landroidx/compose/foundation/OverscrollConfigurationKt;->getLocalOverscrollConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/compose/foundation/OverscrollConfiguration;

    .line 26
    .line 27
    const v1, 0x1e7b2b64

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    or-int/2addr v1, v2

    .line 42
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-ne v2, v1, :cond_2

    .line 55
    .line 56
    :cond_0
    if-eqz v0, :cond_1

    .line 57
    .line 58
    new-instance v1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 59
    .line 60
    invoke-direct {v1, p1, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;-><init>(Landroid/content/Context;Landroidx/compose/foundation/OverscrollConfiguration;)V

    .line 61
    .line 62
    .line 63
    move-object v2, v1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget-object p1, Landroidx/compose/foundation/AndroidOverscrollKt;->NoOpOverscrollEffect:Landroidx/compose/foundation/AndroidOverscrollKt$NoOpOverscrollEffect$1;

    .line 66
    .line 67
    move-object v2, p1

    .line 68
    :goto_0
    invoke-interface {p0, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 72
    .line 73
    .line 74
    check-cast v2, Landroidx/compose/foundation/OverscrollEffect;

    .line 75
    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 77
    .line 78
    .line 79
    return-object v2
.end method
