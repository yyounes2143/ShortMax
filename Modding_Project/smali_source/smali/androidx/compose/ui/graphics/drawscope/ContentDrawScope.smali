.class public interface abstract Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
.super Ljava/lang/Object;
.source "ContentDrawScope.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/drawscope/DrawScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/drawscope/ContentDrawScope$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic access$drawImage-AZ2fEMs$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-AZ2fEMs(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$getCenter-F1C5BW0$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)J
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic access$getSize-NH-jbRc$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)J
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic access$roundToPx--R2X_6o$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->roundToPx--R2X_6o(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$roundToPx-0680j_4$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$toDp-GaN1DYA$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)F
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toDp-GaN1DYA(J)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$toDp-u2uoSUM$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)F
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result p0

    return p0
.end method

.method public static synthetic access$toDp-u2uoSUM$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;I)F
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p0

    return p0
.end method

.method public static synthetic access$toDpSize-k-rfVVM$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)J
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toDpSize-k-rfVVM(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$toPx--R2X_6o$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)F
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$toPx-0680j_4$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)F
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$toRect$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/compose/ui/unit/Density;->toRect(Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$toSize-XkaWNTQ$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)J
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$toSp-0xMU5do$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)J
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/compose/ui/unit/Density;->toSp-0xMU5do(F)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)J
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/compose/ui/unit/Density;->toSp-kPz2Gy4(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;I)J
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/compose/ui/unit/Density;->toSp-kPz2Gy4(I)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public abstract drawContent()V
.end method
