.class public interface abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;
.super Ljava/lang/Object;
.source "LazyLayoutMeasureScope.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureScope;


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract measure-0kLqBqw(IJ)[Landroidx/compose/ui/layout/Placeable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public toDp-GaN1DYA(J)F
    .locals 4
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    mul-float/2addr p1, p2

    .line 26
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string p2, "Only Sp can convert to Px"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public toDp-u2uoSUM(F)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    div-float/2addr p1, v0

    .line 4
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    return p1
.end method

.method public toDp-u2uoSUM(I)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    int-to-float p1, p1

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    div-float/2addr p1, v0

    .line 2
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    return p1
.end method

.method public toDpSize-k-rfVVM(J)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-interface {p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->toDp-u2uoSUM(F)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-interface {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->toDp-u2uoSUM(F)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {v0, p1}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object p1, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/unit/DpSize$Companion;->getUnspecified-MYxV2XQ()J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    :goto_0
    return-wide p1
.end method

.method public toSize-XkaWNTQ(J)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/unit/DpSize$Companion;->getUnspecified-MYxV2XQ()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {v0, p1}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    :goto_0
    return-wide p1
.end method

.method public toSp-0xMU5do(F)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-float/2addr p1, v0

    .line 6
    invoke-static {p1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(F)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public toSp-kPz2Gy4(F)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSp-kPz2Gy4(I)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    int-to-float p1, p1

    .line 2
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    invoke-static {p1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(F)J

    move-result-wide v0

    return-wide v0
.end method
