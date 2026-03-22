.class public final Landroidx/compose/ui/text/android/style/LineHeightStyleSpanKt;
.super Ljava/lang/Object;
.source "LineHeightStyleSpan.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 1
    .param p0    # Landroid/graphics/Paint$FontMetricsInt;
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
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 7
    .line 8
    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 9
    .line 10
    sub-int/2addr v0, p0

    .line 11
    return v0
.end method
