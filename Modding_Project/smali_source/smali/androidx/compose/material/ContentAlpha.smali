.class public final Landroidx/compose/material/ContentAlpha;
.super Ljava/lang/Object;
.source "ContentAlpha.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material/ContentAlpha;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/ContentAlpha;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/ContentAlpha;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

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

.method private final contentAlpha(FFLandroidx/compose/runtime/Composer;I)F
    .locals 4
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    const p4, -0x5b18edc7

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    check-cast p4, Landroidx/compose/ui/graphics/Color;

    .line 16
    .line 17
    invoke-virtual {p4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    sget-object p4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 22
    .line 23
    const/4 v2, 0x6

    .line 24
    invoke-virtual {p4, p3, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    invoke-virtual {p4}, Landroidx/compose/material/Colors;->isLight()Z

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 33
    .line 34
    if-eqz p4, :cond_0

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->luminance-8_81llA(J)F

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    float-to-double v0, p4

    .line 41
    cmpl-double p4, v0, v2

    .line 42
    .line 43
    if-lez p4, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->luminance-8_81llA(J)F

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    float-to-double v0, p4

    .line 51
    cmpg-double p4, v0, v2

    .line 52
    .line 53
    if-gez p4, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move p1, p2

    .line 57
    :goto_0
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 58
    .line 59
    .line 60
    return p1
.end method


# virtual methods
.method public final getDisabled(Landroidx/compose/runtime/Composer;I)F
    .locals 1
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    const v0, 0x2506827f

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    shl-int/lit8 p2, p2, 0x6

    .line 8
    .line 9
    and-int/lit16 p2, p2, 0x380

    .line 10
    .line 11
    or-int/lit8 p2, p2, 0x36

    .line 12
    .line 13
    const v0, 0x3ec28f5c    # 0.38f

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, v0, p1, p2}, Landroidx/compose/material/ContentAlpha;->contentAlpha(FFLandroidx/compose/runtime/Composer;I)F

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 21
    .line 22
    .line 23
    return p2
.end method

.method public final getHigh(Landroidx/compose/runtime/Composer;I)F
    .locals 2
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    const v0, 0x258041bf

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    shl-int/lit8 p2, p2, 0x6

    .line 8
    .line 9
    and-int/lit16 p2, p2, 0x380

    .line 10
    .line 11
    or-int/lit8 p2, p2, 0x36

    .line 12
    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    .line 15
    const v1, 0x3f5eb852    # 0.87f

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0, v1, p1, p2}, Landroidx/compose/material/ContentAlpha;->contentAlpha(FFLandroidx/compose/runtime/Composer;I)F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 23
    .line 24
    .line 25
    return p2
.end method

.method public final getMedium(Landroidx/compose/runtime/Composer;I)F
    .locals 2
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    const v0, 0x7727281f

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    shl-int/lit8 p2, p2, 0x6

    .line 8
    .line 9
    and-int/lit16 p2, p2, 0x380

    .line 10
    .line 11
    or-int/lit8 p2, p2, 0x36

    .line 12
    .line 13
    const v0, 0x3f3d70a4    # 0.74f

    .line 14
    .line 15
    .line 16
    const v1, 0x3f19999a    # 0.6f

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0, v1, p1, p2}, Landroidx/compose/material/ContentAlpha;->contentAlpha(FFLandroidx/compose/runtime/Composer;I)F

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 24
    .line 25
    .line 26
    return p2
.end method
