.class public final Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
.super Ljava/lang/Object;
.source "LineHeightStyleSpan.kt"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private ascent:I

.field private descent:I

.field private final endIndex:I

.field private firstAscent:I

.field private firstAscentDiff:I

.field private lastDescent:I

.field private lastDescentDiff:I

.field private final lineHeight:F

.field private final startIndex:I

.field private final topPercentage:I

.field private final trimFirstLineTop:Z

.field private final trimLastLineBottom:Z


# direct methods
.method public constructor <init>(FIIZZI)V
    .locals 0
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->startIndex:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->endIndex:I

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    .line 13
    .line 14
    iput p6, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topPercentage:I

    .line 15
    .line 16
    if-ltz p6, :cond_0

    .line 17
    .line 18
    const/16 p1, 0x65

    .line 19
    .line 20
    if-ge p6, p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, -0x1

    .line 24
    if-ne p6, p1, :cond_1

    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string p2, "topRatio should be in [0..100] range or -1"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method private final calculateTargetMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpanKt;->lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    .line 6
    .line 7
    float-to-double v1, v1

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    double-to-float v1, v1

    .line 13
    float-to-int v1, v1

    .line 14
    sub-int v0, v1, v0

    .line 15
    .line 16
    iget v2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->topPercentage:I

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    const/high16 v4, 0x42c80000    # 100.0f

    .line 20
    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {p1}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpanKt;->lineHeight(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    int-to-float v3, v3

    .line 35
    div-float/2addr v2, v3

    .line 36
    mul-float/2addr v2, v4

    .line 37
    float-to-int v2, v2

    .line 38
    :cond_0
    if-gtz v0, :cond_1

    .line 39
    .line 40
    mul-int/2addr v0, v2

    .line 41
    int-to-float v0, v0

    .line 42
    div-float/2addr v0, v4

    .line 43
    float-to-double v2, v0

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    :goto_0
    double-to-float v0, v2

    .line 49
    float-to-int v0, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    rsub-int/lit8 v2, v2, 0x64

    .line 52
    .line 53
    mul-int/2addr v0, v2

    .line 54
    int-to-float v0, v0

    .line 55
    div-float/2addr v0, v4

    .line 56
    float-to-double v2, v0

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    goto :goto_0

    .line 62
    :goto_1
    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 63
    .line 64
    add-int/2addr v0, v2

    .line 65
    iput v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    .line 66
    .line 67
    sub-int v1, v0, v1

    .line 68
    .line 69
    iput v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    .line 70
    .line 71
    iget-boolean v3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 76
    .line 77
    :cond_2
    iput v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    .line 78
    .line 79
    iget-boolean v3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    .line 80
    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    move v0, v2

    .line 84
    :cond_3
    iput v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    .line 85
    .line 86
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 87
    .line 88
    sub-int/2addr p1, v1

    .line 89
    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscentDiff:I

    .line 90
    .line 91
    sub-int/2addr v0, v2

    .line 92
    iput v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescentDiff:I

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p4, "text"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->startIndex:I

    .line 19
    .line 20
    const/4 p4, 0x0

    .line 21
    const/4 p5, 0x1

    .line 22
    if-ne p2, p1, :cond_1

    .line 23
    .line 24
    move p1, p5

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move p1, p4

    .line 27
    :goto_0
    iget p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->endIndex:I

    .line 28
    .line 29
    if-ne p3, p2, :cond_2

    .line 30
    .line 31
    move p4, p5

    .line 32
    :cond_2
    if-eqz p1, :cond_3

    .line 33
    .line 34
    if-eqz p4, :cond_3

    .line 35
    .line 36
    iget-boolean p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimFirstLineTop:Z

    .line 37
    .line 38
    if-eqz p2, :cond_3

    .line 39
    .line 40
    iget-boolean p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->trimLastLineBottom:Z

    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    if-eqz p1, :cond_4

    .line 46
    .line 47
    invoke-direct {p0, p6}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->calculateTargetMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    .line 48
    .line 49
    .line 50
    :cond_4
    if-eqz p1, :cond_5

    .line 51
    .line 52
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscent:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_5
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->ascent:I

    .line 56
    .line 57
    :goto_1
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 58
    .line 59
    if-eqz p4, :cond_6

    .line 60
    .line 61
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescent:I

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_6
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->descent:I

    .line 65
    .line 66
    :goto_2
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 67
    .line 68
    return-void
.end method

.method public final getFirstAscentDiff()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->firstAscentDiff:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLastDescentDiff()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lastDescentDiff:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLineHeight()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->lineHeight:F

    .line 2
    .line 3
    return v0
.end method
