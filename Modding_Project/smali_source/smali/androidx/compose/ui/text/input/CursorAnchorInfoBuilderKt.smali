.class public final Landroidx/compose/ui/text/input/CursorAnchorInfoBuilderKt;
.super Ljava/lang/Object;
.source "CursorAnchorInfoBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final build(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/TextLayoutResult;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 2
    .param p0    # Landroid/view/inputmethod/CursorAnchorInfo$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/input/TextFieldValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/TextLayoutResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
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
    const-string v0, "textFieldValue"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "textLayoutResult"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "matrix"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p0, p3, v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p3, p2}, Landroidx/compose/ui/text/input/CursorAnchorInfoBuilderKt;->setInsertionMarker(Landroid/view/inputmethod/CursorAnchorInfo$Builder;ILandroidx/compose/ui/text/TextLayoutResult;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const/4 p3, -0x1

    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p2}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move p2, p3

    .line 66
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    :cond_1
    if-ltz p2, :cond_2

    .line 81
    .line 82
    if-ge p2, p3, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p2, p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const-string p1, "build()"

    .line 100
    .line 101
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object p0
.end method

.method private static final setInsertionMarker(Landroid/view/inputmethod/CursorAnchorInfo$Builder;ILandroidx/compose/ui/text/TextLayoutResult;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 8

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object p2, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-ne p1, p2, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move p1, v1

    .line 20
    :goto_0
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    :cond_2
    move v7, v1

    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    move-object v2, p0

    .line 41
    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 42
    .line 43
    .line 44
    return-object p0
.end method
