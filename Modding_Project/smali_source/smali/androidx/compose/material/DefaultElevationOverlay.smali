.class final Landroidx/compose/material/DefaultElevationOverlay;
.super Ljava/lang/Object;
.source "ElevationOverlay.kt"

# interfaces
.implements Landroidx/compose/material/ElevationOverlay;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/DefaultElevationOverlay;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/DefaultElevationOverlay;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/DefaultElevationOverlay;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/DefaultElevationOverlay;->INSTANCE:Landroidx/compose/material/DefaultElevationOverlay;

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
.method public apply-7g2Lkgo(JFLandroidx/compose/runtime/Composer;I)J
    .locals 2
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ReadOnlyComposable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, p4, v1}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    int-to-float v1, v1

    .line 10
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {p3, v1}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->isLight()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    and-int/lit8 p5, p5, 0x7e

    .line 27
    .line 28
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/compose/material/ElevationOverlayKt;->access$calculateForegroundColor-CLU3JFs(JFLandroidx/compose/runtime/Composer;I)J

    .line 29
    .line 30
    .line 31
    move-result-wide p3

    .line 32
    invoke-static {p3, p4, p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    :cond_0
    return-wide p1
.end method
