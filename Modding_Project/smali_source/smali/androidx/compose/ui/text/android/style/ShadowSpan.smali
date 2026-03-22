.class public final Landroidx/compose/ui/text/android/style/ShadowSpan;
.super Landroid/text/style/CharacterStyle;
.source "ShadowSpan.kt"


# annotations
.annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final color:I

.field private final offsetX:F

.field private final offsetY:F

.field private final radius:F


# direct methods
.method public constructor <init>(IFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->color:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetX:F

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetY:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->radius:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->color:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOffsetX()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetX:F

    .line 2
    .line 3
    return v0
.end method

.method public final getOffsetY()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetY:F

    .line 2
    .line 3
    return v0
.end method

.method public final getRadius()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->radius:F

    .line 2
    .line 3
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 4
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->radius:F

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetX:F

    .line 9
    .line 10
    iget v2, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->offsetY:F

    .line 11
    .line 12
    iget v3, p0, Landroidx/compose/ui/text/android/style/ShadowSpan;->color:I

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
