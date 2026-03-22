.class public final Landroidx/compose/ui/graphics/AndroidPaint;
.super Ljava/lang/Object;
.source "AndroidPaint.android.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/Paint;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private _blendMode:I

.field private internalColorFilter:Landroidx/compose/ui/graphics/ColorFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private internalPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private internalShader:Landroid/graphics/Shader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pathEffect:Landroidx/compose/ui/graphics/PathEffect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->makeNativePaint()Landroid/graphics/Paint;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 9
    .line 10
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcOver-0nO6VwU()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public asFrameworkPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeAlpha(Landroid/graphics/Paint;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBlendMode-0nO6VwU()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getColor-0d7_KjU()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeColor(Landroid/graphics/Paint;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalColorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFilterQuality-f-v9h1I()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeFilterQuality(Landroid/graphics/Paint;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPathEffect()Landroidx/compose/ui/graphics/PathEffect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->pathEffect:Landroidx/compose/ui/graphics/PathEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalShader:Landroid/graphics/Shader;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStrokeCap-KaPHkGw()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeStrokeCap(Landroid/graphics/Paint;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStrokeJoin-LxFBmk8()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeStrokeJoin(Landroid/graphics/Paint;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStrokeMiterLimit()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeStrokeMiterLimit(Landroid/graphics/Paint;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeStrokeWidth(Landroid/graphics/Paint;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStyle-TiuSbCo()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeStyle(Landroid/graphics/Paint;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isAntiAlias()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeAntiAlias(Landroid/graphics/Paint;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeAlpha(Landroid/graphics/Paint;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeAntiAlias(Landroid/graphics/Paint;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBlendMode-s9anfk8(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeBlendMode-GB0RdKg(Landroid/graphics/Paint;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setColor-8_81llA(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeColor-4WTKRHQ(Landroid/graphics/Paint;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalColorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeColorFilter(Landroid/graphics/Paint;Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFilterQuality-vDHp3xo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeFilterQuality-50PEsBU(Landroid/graphics/Paint;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPathEffect(Landroidx/compose/ui/graphics/PathEffect;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/PathEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativePathEffect(Landroid/graphics/Paint;Landroidx/compose/ui/graphics/PathEffect;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->pathEffect:Landroidx/compose/ui/graphics/PathEffect;

    .line 7
    .line 8
    return-void
.end method

.method public setShader(Landroid/graphics/Shader;)V
    .locals 1
    .param p1    # Landroid/graphics/Shader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalShader:Landroid/graphics/Shader;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeShader(Landroid/graphics/Paint;Landroid/graphics/Shader;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setStrokeCap-BeK7IIE(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeStrokeCap-CSYIeUk(Landroid/graphics/Paint;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStrokeJoin-Ww9F2mQ(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeStrokeJoin-kLtJ_vA(Landroid/graphics/Paint;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStrokeMiterLimit(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeStrokeMiterLimit(Landroid/graphics/Paint;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeStrokeWidth(Landroid/graphics/Paint;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStyle-k9PVt8s(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeStyle--5YerkU(Landroid/graphics/Paint;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
