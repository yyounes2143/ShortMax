.class public final Landroidx/compose/ui/graphics/drawscope/ContentDrawScope$DefaultImpls;
.super Ljava/lang/Object;
.source "ContentDrawScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static drawImage-AZ2fEMs(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/ImageBitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "style"

    .line 7
    .line 8
    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static/range {p0 .. p14}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$drawImage-AZ2fEMs$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static getCenter-F1C5BW0(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)J
    .locals 2
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$getCenter-F1C5BW0$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static getSize-NH-jbRc(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)J
    .locals 2
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$getSize-NH-jbRc$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static roundToPx--R2X_6o(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)I
    .locals 0
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$roundToPx--R2X_6o$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static roundToPx-0680j_4(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)I
    .locals 0
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$roundToPx-0680j_4$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static toDp-GaN1DYA(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)F
    .locals 0
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$toDp-GaN1DYA$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static toDp-u2uoSUM(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)F
    .locals 0
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$toDp-u2uoSUM$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)F

    move-result p0

    return p0
.end method

.method public static toDp-u2uoSUM(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;I)F
    .locals 0
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$toDp-u2uoSUM$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;I)F

    move-result p0

    return p0
.end method

.method public static toDpSize-k-rfVVM(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)J
    .locals 0
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$toDpSize-k-rfVVM$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static toPx--R2X_6o(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)F
    .locals 0
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$toPx--R2X_6o$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static toPx-0680j_4(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)F
    .locals 0
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$toPx-0680j_4$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static toRect(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/unit/DpRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "receiver"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$toRect$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static toSize-XkaWNTQ(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)J
    .locals 0
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$toSize-XkaWNTQ$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static toSp-0xMU5do(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)J
    .locals 0
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$toSp-0xMU5do$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static toSp-kPz2Gy4(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)J
    .locals 0
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toSp-kPz2Gy4(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;I)J
    .locals 0
    .param p0    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;I)J

    move-result-wide p0

    return-wide p0
.end method
