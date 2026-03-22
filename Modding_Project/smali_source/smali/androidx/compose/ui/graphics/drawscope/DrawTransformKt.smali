.class public final Landroidx/compose/ui/graphics/drawscope/DrawTransformKt;
.super Ljava/lang/Object;
.source "DrawTransform.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final inset(Landroidx/compose/ui/graphics/drawscope/DrawTransform;F)V
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/drawscope/DrawTransform;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0, p1, p1, p1, p1}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    return-void
.end method

.method public static final inset(Landroidx/compose/ui/graphics/drawscope/DrawTransform;FF)V
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/drawscope/DrawTransform;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1, p2, p1, p2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    return-void
.end method

.method public static synthetic inset$default(Landroidx/compose/ui/graphics/drawscope/DrawTransform;FFILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move p2, v0

    .line 12
    :cond_1
    const-string p3, "<this>"

    .line 13
    .line 14
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, p1, p2, p1, p2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final rotateRad-0AR0LA0(Landroidx/compose/ui/graphics/drawscope/DrawTransform;FJ)V
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/drawscope/DrawTransform;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$rotateRad"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/graphics/DegreesKt;->degrees(F)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->rotate-Uv8p0NA(FJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic rotateRad-0AR0LA0$default(Landroidx/compose/ui/graphics/drawscope/DrawTransform;FJILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->getCenter-F1C5BW0()J

    .line 6
    .line 7
    .line 8
    move-result-wide p2

    .line 9
    :cond_0
    const-string p4, "$this$rotateRad"

    .line 10
    .line 11
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroidx/compose/ui/graphics/DegreesKt;->degrees(F)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->rotate-Uv8p0NA(FJ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final scale-0AR0LA0(Landroidx/compose/ui/graphics/drawscope/DrawTransform;FJ)V
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/drawscope/DrawTransform;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$scale"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1, p1, p2, p3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->scale-0AR0LA0(FFJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic scale-0AR0LA0$default(Landroidx/compose/ui/graphics/drawscope/DrawTransform;FJILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->getCenter-F1C5BW0()J

    .line 6
    .line 7
    .line 8
    move-result-wide p2

    .line 9
    :cond_0
    const-string p4, "$this$scale"

    .line 10
    .line 11
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, p1, p1, p2, p3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->scale-0AR0LA0(FFJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
