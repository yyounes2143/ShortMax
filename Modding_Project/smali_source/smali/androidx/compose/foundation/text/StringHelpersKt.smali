.class public final Landroidx/compose/foundation/text/StringHelpersKt;
.super Ljava/lang/Object;
.source "StringHelpers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final findParagraphEnd(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0    # Ljava/lang/CharSequence;
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
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    return p1

    .line 23
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public static final findParagraphStart(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
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
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    :goto_0
    if-lez p1, :cond_1

    .line 9
    .line 10
    add-int/lit8 v0, p1, -0x1

    .line 11
    .line 12
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    return p1

    .line 21
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static final getParagraphBoundary(Ljava/lang/CharSequence;I)J
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
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
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(Ljava/lang/CharSequence;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(Ljava/lang/CharSequence;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {v0, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    return-wide p0
.end method
