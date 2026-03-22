.class public final Landroidx/compose/ui/text/platform/AndroidTextPaint;
.super Landroid/text/TextPaint;
.source "AndroidTextPaint.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private brush:Landroidx/compose/ui/graphics/Brush;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private brushSize:Landroidx/compose/ui/geometry/Size;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shadow:Landroidx/compose/ui/graphics/Shadow;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private textDecoration:Landroidx/compose/ui/text/style/TextDecoration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/text/TextPaint;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroid/text/TextPaint;->density:F

    .line 5
    .line 6
    sget-object p1, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getNone()Landroidx/compose/ui/text/style/TextDecoration;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 13
    .line 14
    sget-object p1, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow$Companion;->getNone()Landroidx/compose/ui/graphics/Shadow;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final setBrush-d16Qtg0(Landroidx/compose/ui/graphics/Brush;J)V
    .locals 5
    .param p1    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 9
    .line 10
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brushSize:Landroidx/compose/ui/geometry/Size;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    move v1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-static {v3, v4, p2, p3}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :goto_0
    if-nez v1, :cond_5

    .line 32
    .line 33
    :cond_2
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 34
    .line 35
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->brushSize:Landroidx/compose/ui/geometry/Size;

    .line 40
    .line 41
    instance-of v1, p1, Landroidx/compose/ui/graphics/SolidColor;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 46
    .line 47
    .line 48
    check-cast p1, Landroidx/compose/ui/graphics/SolidColor;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/SolidColor;->getValue-0d7_KjU()J

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    instance-of v0, p1, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    cmp-long v0, p2, v0

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    :cond_4
    if-eqz v2, :cond_5

    .line 74
    .line 75
    check-cast p1, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 76
    .line 77
    invoke-virtual {p1, p2, p3}, Landroidx/compose/ui/graphics/ShaderBrush;->createShader-uvyYCjk(J)Landroid/graphics/Shader;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 82
    .line 83
    .line 84
    :cond_5
    :goto_1
    return-void
.end method

.method public final setColor-8_81llA(J)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

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
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eq p2, p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final setShadow(Landroidx/compose/ui/graphics/Shadow;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/graphics/Shadow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow$Companion;->getNone()Landroidx/compose/ui/graphics/Shadow;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 18
    .line 19
    sget-object v0, Landroidx/compose/ui/graphics/Shadow;->Companion:Landroidx/compose/ui/graphics/Shadow$Companion;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Shadow$Companion;->getNone()Landroidx/compose/ui/graphics/Shadow;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->getBlurRadius()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Shadow;->getOffset-F1C5BW0()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Shadow;->getOffset-F1C5BW0()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Shadow;->getColor-0d7_KjU()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public final setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/text/style/TextDecoration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getNone()Landroidx/compose/ui/text/style/TextDecoration;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 18
    .line 19
    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/style/TextDecoration;->contains(Landroidx/compose/ui/text/style/TextDecoration;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getLineThrough()Landroidx/compose/ui/text/style/TextDecoration;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/style/TextDecoration;->contains(Landroidx/compose/ui/text/style/TextDecoration;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
