.class public final Landroidx/compose/ui/layout/ContentScaleKt;
.super Ljava/lang/Object;
.source "ContentScale.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic access$computeFillHeight-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillHeight-iLBOSCw(JJ)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$computeFillMaxDimension-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillMaxDimension-iLBOSCw(JJ)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$computeFillMinDimension-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillMinDimension-iLBOSCw(JJ)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$computeFillWidth-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillWidth-iLBOSCw(JJ)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final computeFillHeight-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    div-float/2addr p2, p0

    .line 10
    return p2
.end method

.method private static final computeFillMaxDimension-iLBOSCw(JJ)F
    .locals 1

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillWidth-iLBOSCw(JJ)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillHeight-iLBOSCw(JJ)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private static final computeFillMinDimension-iLBOSCw(JJ)F
    .locals 1

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillWidth-iLBOSCw(JJ)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillHeight-iLBOSCw(JJ)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private static final computeFillWidth-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    div-float/2addr p2, p0

    .line 10
    return p2
.end method
