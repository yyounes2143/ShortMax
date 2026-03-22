.class public final Landroidx/compose/ui/text/android/TextLayoutKt;
.super Ljava/lang/Object;
.source "TextLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final EmptyPair:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/Pair;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-direct {v0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/compose/ui/text/android/TextLayoutKt;->EmptyPair:Lkotlin/Pair;

    .line 12
    .line 13
    return-void
.end method

.method public static final synthetic access$getLineHeightPaddings(Landroidx/compose/ui/text/android/TextLayout;)Lkotlin/Pair;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->getLineHeightPaddings(Landroidx/compose/ui/text/android/TextLayout;)Lkotlin/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)Lkotlin/Pair;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)Lkotlin/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final getLineHeightPaddings(Landroidx/compose/ui/text/android/TextLayout;)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/TextLayout;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    .line 11
    aget-object v4, p0, v1

    .line 12
    .line 13
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getFirstAscentDiff()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-gez v5, :cond_0

    .line 18
    .line 19
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getFirstAscentDiff()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :cond_0
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getLastDescentDiff()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-gez v5, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getLastDescentDiff()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    if-nez v2, :cond_3

    .line 53
    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    sget-object p0, Landroidx/compose/ui/text/android/TextLayoutKt;->EmptyPair:Lkotlin/Pair;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    new-instance p0, Lkotlin/Pair;

    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-object p0
.end method

.method private static final getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroid/text/Spanned;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-array p0, v1, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/text/Spanned;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const-class v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 28
    .line 29
    invoke-interface {v0, v1, p0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 34
    .line 35
    const-string v0, "lineHeightStyleSpans"

    .line 36
    .line 37
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    array-length v0, p0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    new-array p0, v1, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 44
    .line 45
    :cond_1
    return-object p0
.end method

.method public static final getTextDirectionHeuristic(I)Landroid/text/TextDirectionHeuristic;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const-string v1, "FIRSTSTRONG_LTR"

    .line 8
    .line 9
    if-eq p0, v0, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p0, v0, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x5

    .line 18
    if-eq p0, v0, :cond_0

    .line 19
    .line 20
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 21
    .line 22
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    .line 27
    .line 28
    const-string v0, "LOCALE"

    .line 29
    .line 30
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    .line 35
    .line 36
    const-string v0, "ANYRTL_LTR"

    .line 37
    .line 38
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 43
    .line 44
    const-string v0, "FIRSTSTRONG_RTL"

    .line 45
    .line 46
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 51
    .line 52
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 57
    .line 58
    const-string v0, "RTL"

    .line 59
    .line 60
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 65
    .line 66
    const-string v0, "LTR"

    .line 67
    .line 68
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-object p0
.end method

.method private static final getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/TextLayout;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getIncludePadding()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v0, :cond_5

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->isFallbackLinespacingApplied$ui_text_release()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "paint"

    .line 37
    .line 38
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v3, "text"

    .line 42
    .line 43
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineStart(I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-static {v0, v2, v3, v4}, Landroidx/compose/ui/text/android/PaintExtensionsKt;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineAscent(I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 75
    .line 76
    if-ge v4, v1, :cond_1

    .line 77
    .line 78
    sub-int/2addr v1, v4

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/text/Layout;->getTopPadding()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    const/4 v5, 0x1

    .line 93
    if-ne v4, v5, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    sub-int/2addr v3, v5

    .line 105
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineStart(I)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v6, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-static {v0, v2, v4, v3}, Landroidx/compose/ui/text/android/PaintExtensionsKt;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    sub-int/2addr v2, v5

    .line 138
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineDescent(I)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 143
    .line 144
    if-le v2, v0, :cond_3

    .line 145
    .line 146
    sub-int/2addr v2, v0

    .line 147
    goto :goto_2

    .line 148
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Landroid/text/Layout;->getBottomPadding()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    :goto_2
    if-nez v1, :cond_4

    .line 157
    .line 158
    if-nez v2, :cond_4

    .line 159
    .line 160
    sget-object p0, Landroidx/compose/ui/text/android/TextLayoutKt;->EmptyPair:Lkotlin/Pair;

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    new-instance p0, Lkotlin/Pair;

    .line 164
    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :goto_3
    return-object p0

    .line 177
    :cond_5
    :goto_4
    new-instance p0, Lkotlin/Pair;

    .line 178
    .line 179
    invoke-direct {p0, v2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    return-object p0
.end method
