.class public final Landroidx/compose/material/SnackbarDefaults;
.super Ljava/lang/Object;
.source "Snackbar.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x0

.field public static final INSTANCE:Landroidx/compose/material/SnackbarDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SnackbarOverlayAlpha:F = 0.8f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/SnackbarDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/SnackbarDefaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/SnackbarDefaults;->INSTANCE:Landroidx/compose/material/SnackbarDefaults;

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
.method public final getBackgroundColor(Landroidx/compose/runtime/Composer;I)J
    .locals 10
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    const p2, 0x6135bce4

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    sget-object p2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    const/16 v8, 0xe

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    const v4, 0x3f4ccccd    # 0.8f

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 44
    .line 45
    .line 46
    return-wide v0
.end method

.method public final getPrimaryActionColor(Landroidx/compose/runtime/Composer;I)J
    .locals 10
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    const p2, -0x304ca53a

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    sget-object p2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Landroidx/compose/material/Colors;->isLight()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-virtual {p2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    const/16 v8, 0xe

    .line 29
    .line 30
    const/4 v9, 0x0

    .line 31
    const v4, 0x3f19999a    # 0.6f

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/material/Colors;->getPrimaryVariant-0d7_KjU()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    :goto_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 51
    .line 52
    .line 53
    return-wide v0
.end method
