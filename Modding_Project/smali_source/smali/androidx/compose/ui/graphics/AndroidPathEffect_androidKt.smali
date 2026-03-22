.class public final Landroidx/compose/ui/graphics/AndroidPathEffect_androidKt;
.super Ljava/lang/Object;
.source "AndroidPathEffect.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final actualChainPathEffect(Landroidx/compose/ui/graphics/PathEffect;Landroidx/compose/ui/graphics/PathEffect;)Landroidx/compose/ui/graphics/PathEffect;
    .locals 2
    .param p0    # Landroidx/compose/ui/graphics/PathEffect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/PathEffect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "outer"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inner"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    .line 12
    .line 13
    new-instance v1, Landroid/graphics/ComposePathEffect;

    .line 14
    .line 15
    check-cast p0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidPathEffect;->getNativePathEffect()Landroid/graphics/PathEffect;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p1, Landroidx/compose/ui/graphics/AndroidPathEffect;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/AndroidPathEffect;->getNativePathEffect()Landroid/graphics/PathEffect;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v1, p0, p1}, Landroid/graphics/ComposePathEffect;-><init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidPathEffect;-><init>(Landroid/graphics/PathEffect;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public static final actualCornerPathEffect(F)Landroidx/compose/ui/graphics/PathEffect;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/CornerPathEffect;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidPathEffect;-><init>(Landroid/graphics/PathEffect;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final actualDashPathEffect([FF)Landroidx/compose/ui/graphics/PathEffect;
    .locals 2
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "intervals"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    .line 7
    .line 8
    new-instance v1, Landroid/graphics/DashPathEffect;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidPathEffect;-><init>(Landroid/graphics/PathEffect;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static final actualStampedPathEffect-7aD1DOk(Landroidx/compose/ui/graphics/Path;FFI)Landroidx/compose/ui/graphics/PathEffect;
    .locals 3
    .param p0    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "shape"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    .line 7
    .line 8
    new-instance v1, Landroid/graphics/PathDashPathEffect;

    .line 9
    .line 10
    instance-of v2, p0, Landroidx/compose/ui/graphics/AndroidPath;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast p0, Landroidx/compose/ui/graphics/AndroidPath;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidPath;->getInternalPath()Landroid/graphics/Path;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p3}, Landroidx/compose/ui/graphics/AndroidPathEffect_androidKt;->toAndroidPathDashPathEffectStyle-oQv6xUo(I)Landroid/graphics/PathDashPathEffect$Style;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/graphics/PathDashPathEffect;-><init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidPathEffect;-><init>(Landroid/graphics/PathEffect;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 32
    .line 33
    const-string p1, "Unable to obtain android.graphics.Path"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public static final asAndroidPathEffect(Landroidx/compose/ui/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/PathEffect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidPathEffect;->getNativePathEffect()Landroid/graphics/PathEffect;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final toAndroidPathDashPathEffectStyle-oQv6xUo(I)Landroid/graphics/PathDashPathEffect$Style;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/StampedPathEffectStyle;->Companion:Landroidx/compose/ui/graphics/StampedPathEffectStyle$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StampedPathEffectStyle$Companion;->getMorph-Ypspkwk()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p0, v1}, Landroidx/compose/ui/graphics/StampedPathEffectStyle;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object p0, Landroid/graphics/PathDashPathEffect$Style;->MORPH:Landroid/graphics/PathDashPathEffect$Style;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StampedPathEffectStyle$Companion;->getRotate-Ypspkwk()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p0, v1}, Landroidx/compose/ui/graphics/StampedPathEffectStyle;->equals-impl0(II)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sget-object p0, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StampedPathEffectStyle$Companion;->getTranslate-Ypspkwk()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/StampedPathEffectStyle;->equals-impl0(II)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    sget-object p0, Landroid/graphics/PathDashPathEffect$Style;->TRANSLATE:Landroid/graphics/PathDashPathEffect$Style;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget-object p0, Landroid/graphics/PathDashPathEffect$Style;->TRANSLATE:Landroid/graphics/PathDashPathEffect$Style;

    .line 43
    .line 44
    :goto_0
    return-object p0
.end method

.method public static final toComposePathEffect(Landroid/graphics/PathEffect;)Landroidx/compose/ui/graphics/PathEffect;
    .locals 1
    .param p0    # Landroid/graphics/PathEffect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/AndroidPathEffect;-><init>(Landroid/graphics/PathEffect;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
