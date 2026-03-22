.class public final Landroidx/compose/ui/graphics/AndroidColorFilter_androidKt;
.super Ljava/lang/Object;
.source "AndroidColorFilter.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final actualColorMatrixColorFilter-jHG-Opc([F)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 2
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "colorMatrix"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/ui/graphics/ColorFilter;

    .line 7
    .line 8
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/ColorFilter;-><init>(Landroid/graphics/ColorFilter;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static final actualLightingColorFilter--OWjLjI(JJ)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/ColorFilter;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/LightingColorFilter;

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-direct {v1, p0, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/ColorFilter;-><init>(Landroid/graphics/ColorFilter;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static final actualTintColorFilter-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/graphics/BlendModeColorFilterHelper;->INSTANCE:Landroidx/compose/ui/graphics/BlendModeColorFilterHelper;

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/graphics/BlendModeColorFilterHelper;->BlendModeColorFilter-xETnrds(JI)Landroid/graphics/BlendModeColorFilter;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p2}, Landroidx/compose/ui/graphics/AndroidBlendMode_androidKt;->toPorterDuffMode-s9anfk8(I)Landroid/graphics/PorterDuff$Mode;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 25
    .line 26
    .line 27
    move-object p0, v0

    .line 28
    :goto_0
    new-instance p1, Landroidx/compose/ui/graphics/ColorFilter;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/ColorFilter;-><init>(Landroid/graphics/ColorFilter;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public static final asAndroidColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/ColorFilter;
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
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/ColorFilter;->getNativeColorFilter$ui_graphics_release()Landroid/graphics/ColorFilter;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final asComposeColorFilter(Landroid/graphics/ColorFilter;)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 1
    .param p0    # Landroid/graphics/ColorFilter;
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
    new-instance v0, Landroidx/compose/ui/graphics/ColorFilter;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/ColorFilter;-><init>(Landroid/graphics/ColorFilter;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
