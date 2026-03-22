.class public final Landroidx/compose/ui/graphics/AndroidPaint_androidKt;
.super Ljava/lang/Object;
.source "AndroidPaint.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/AndroidPaint_androidKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final Paint()Landroidx/compose/ui/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPaint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final getNativeAlpha(Landroid/graphics/Paint;)F
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    int-to-float p0, p0

    .line 11
    const/high16 v0, 0x437f0000    # 255.0f

    .line 12
    .line 13
    div-float/2addr p0, v0

    .line 14
    return p0
.end method

.method public static final getNativeAntiAlias(Landroid/graphics/Paint;)Z
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Paint;->isAntiAlias()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final getNativeColor(Landroid/graphics/Paint;)J
    .locals 2
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public static final getNativeFilterQuality(Landroid/graphics/Paint;)I
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    sget-object p0, Landroidx/compose/ui/graphics/FilterQuality;->Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/FilterQuality$Companion;->getNone-f-v9h1I()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/FilterQuality;->Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/FilterQuality$Companion;->getLow-f-v9h1I()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    :goto_0
    return p0
.end method

.method public static final getNativeStrokeCap(Landroid/graphics/Paint;)I
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/AndroidPaint_androidKt$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    aget p0, v0, p0

    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x1

    .line 23
    if-eq p0, v0, :cond_3

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    if-eq p0, v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    if-eq p0, v0, :cond_1

    .line 30
    .line 31
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getSquare-KaPHkGw()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    sget-object p0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    :goto_1
    return p0
.end method

.method public static final getNativeStrokeJoin(Landroid/graphics/Paint;)I
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/AndroidPaint_androidKt$WhenMappings;->$EnumSwitchMapping$2:[I

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    aget p0, v0, p0

    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x1

    .line 23
    if-eq p0, v0, :cond_3

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    if-eq p0, v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    if-eq p0, v0, :cond_1

    .line 30
    .line 31
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getRound-LxFBmk8()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    sget-object p0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    :goto_1
    return p0
.end method

.method public static final getNativeStrokeMiterLimit(Landroid/graphics/Paint;)F
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final getNativeStrokeWidth(Landroid/graphics/Paint;)F
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final getNativeStyle(Landroid/graphics/Paint;)I
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/AndroidPaint_androidKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    aget p0, v0, p0

    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x1

    .line 23
    if-ne p0, v0, :cond_1

    .line 24
    .line 25
    sget-object p0, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->getStroke-TiuSbCo()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget-object p0, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->getFill-TiuSbCo()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    :goto_1
    return p0
.end method

.method public static final makeNativePaint()Landroid/graphics/Paint;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static final setNativeAlpha(Landroid/graphics/Paint;F)V
    .locals 2
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x437f0000    # 255.0f

    .line 7
    .line 8
    mul-float/2addr p1, v0

    .line 9
    float-to-double v0, p1

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    double-to-float p1, v0

    .line 15
    float-to-int p1, p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final setNativeAntiAlias(Landroid/graphics/Paint;Z)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final setNativeBlendMode-GB0RdKg(Landroid/graphics/Paint;I)V
    .locals 2
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$setNativeBlendMode"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1d

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/ui/graphics/WrapperVerificationHelperMethods;->INSTANCE:Landroidx/compose/ui/graphics/WrapperVerificationHelperMethods;

    .line 13
    .line 14
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/graphics/WrapperVerificationHelperMethods;->setBlendMode-GB0RdKg(Landroid/graphics/Paint;I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 19
    .line 20
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidBlendMode_androidKt;->toPorterDuffMode-s9anfk8(I)Landroid/graphics/PorterDuff$Mode;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public static final setNativeColor-4WTKRHQ(Landroid/graphics/Paint;J)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$setNativeColor"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final setNativeColorFilter(Landroid/graphics/Paint;Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidColorFilter_androidKt;->asAndroidColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final setNativeFilterQuality-50PEsBU(Landroid/graphics/Paint;I)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$setNativeFilterQuality"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/graphics/FilterQuality;->Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/FilterQuality$Companion;->getNone-f-v9h1I()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/FilterQuality;->equals-impl0(II)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    xor-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final setNativePathEffect(Landroid/graphics/Paint;Landroidx/compose/ui/graphics/PathEffect;)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/PathEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/compose/ui/graphics/AndroidPathEffect;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/AndroidPathEffect;->getNativePathEffect()Landroid/graphics/PathEffect;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final setNativeShader(Landroid/graphics/Paint;Landroid/graphics/Shader;)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Shader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final setNativeStrokeCap-CSYIeUk(Landroid/graphics/Paint;I)V
    .locals 2
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$setNativeStrokeCap"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getSquare-KaPHkGw()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static final setNativeStrokeJoin-kLtJ_vA(Landroid/graphics/Paint;I)V
    .locals 2
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$setNativeStrokeJoin"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getRound-LxFBmk8()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 48
    .line 49
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static final setNativeStrokeMiterLimit(Landroid/graphics/Paint;F)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final setNativeStrokeWidth(Landroid/graphics/Paint;F)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final setNativeStyle--5YerkU(Landroid/graphics/Paint;I)V
    .locals 1
    .param p0    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$setNativeStyle"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->getStroke-TiuSbCo()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/PaintingStyle;->equals-impl0(II)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
