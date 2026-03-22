.class public final Landroidx/compose/ui/text/android/style/LineHeightSpan;
.super Ljava/lang/Object;
.source "LineHeightSpan.kt"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final lineHeight:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightSpan;->lineHeight:F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "text"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "fontMetricsInt"

    .line 7
    .line 8
    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p6}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpanKt;->lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-gtz p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget p2, p0, Landroidx/compose/ui/text/android/style/LineHeightSpan;->lineHeight:F

    .line 19
    .line 20
    float-to-double p2, p2

    .line 21
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide p2

    .line 25
    double-to-float p2, p2

    .line 26
    float-to-int p2, p2

    .line 27
    int-to-float p3, p2

    .line 28
    const/high16 p4, 0x3f800000    # 1.0f

    .line 29
    .line 30
    mul-float/2addr p3, p4

    .line 31
    int-to-float p1, p1

    .line 32
    div-float/2addr p3, p1

    .line 33
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 34
    .line 35
    int-to-double p4, p1

    .line 36
    float-to-double v0, p3

    .line 37
    mul-double/2addr p4, v0

    .line 38
    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide p3

    .line 42
    double-to-int p1, p3

    .line 43
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 44
    .line 45
    sub-int/2addr p1, p2

    .line 46
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 47
    .line 48
    return-void
.end method

.method public final getLineHeight()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/LineHeightSpan;->lineHeight:F

    .line 2
    .line 3
    return v0
.end method
