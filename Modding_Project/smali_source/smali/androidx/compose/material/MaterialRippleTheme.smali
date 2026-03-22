.class final Landroidx/compose/material/MaterialRippleTheme;
.super Ljava/lang/Object;
.source "MaterialTheme.kt"

# interfaces
.implements Landroidx/compose/material/ripple/RippleTheme;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/MaterialRippleTheme;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/MaterialRippleTheme;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/MaterialRippleTheme;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/MaterialRippleTheme;->INSTANCE:Landroidx/compose/material/MaterialRippleTheme;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public defaultColor-WaAFU9c(Landroidx/compose/runtime/Composer;I)J
    .locals 4
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    const p2, 0x20d0860f

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    sget-object p2, Landroidx/compose/material/ripple/RippleTheme;->Companion:Landroidx/compose/material/ripple/RippleTheme$Companion;

    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 24
    .line 25
    const/4 v3, 0x6

    .line 26
    invoke-virtual {v2, p1, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->isLight()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p2, v0, v1, v2}, Landroidx/compose/material/ripple/RippleTheme$Companion;->defaultRippleColor-5vOe2sY(JZ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 39
    .line 40
    .line 41
    return-wide v0
.end method

.method public rippleAlpha(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/ripple/RippleAlpha;
    .locals 4
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const p2, -0x549fdb56

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    sget-object p2, Landroidx/compose/material/ripple/RippleTheme;->Companion:Landroidx/compose/material/ripple/RippleTheme$Companion;

    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 24
    .line 25
    const/4 v3, 0x6

    .line 26
    invoke-virtual {v2, p1, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->isLight()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p2, v0, v1, v2}, Landroidx/compose/material/ripple/RippleTheme$Companion;->defaultRippleAlpha-DxMtmZc(JZ)Landroidx/compose/material/ripple/RippleAlpha;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 39
    .line 40
    .line 41
    return-object p2
.end method
