.class public final Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;
.super Ljava/lang/Object;
.source "SelectionAdjustment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final ensureAtLeastOneChar(IIZZ)J
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0

    .line 8
    :cond_0
    if-nez p0, :cond_2

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    const/4 p1, 0x1

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    :goto_0
    return-wide p0

    .line 24
    :cond_2
    if-ne p0, p1, :cond_4

    .line 25
    .line 26
    if-eqz p2, :cond_3

    .line 27
    .line 28
    add-int/lit8 p0, p1, -0x1

    .line 29
    .line 30
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    add-int/lit8 p0, p1, -0x1

    .line 36
    .line 37
    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    :goto_1
    return-wide p0

    .line 42
    :cond_4
    if-eqz p2, :cond_6

    .line 43
    .line 44
    if-nez p3, :cond_5

    .line 45
    .line 46
    add-int/lit8 p1, p0, -0x1

    .line 47
    .line 48
    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    .line 49
    .line 50
    .line 51
    move-result-wide p0

    .line 52
    goto :goto_2

    .line 53
    :cond_5
    add-int/lit8 p1, p0, 0x1

    .line 54
    .line 55
    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    .line 56
    .line 57
    .line 58
    move-result-wide p0

    .line 59
    goto :goto_2

    .line 60
    :cond_6
    if-nez p3, :cond_7

    .line 61
    .line 62
    add-int/lit8 p1, p0, 0x1

    .line 63
    .line 64
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    .line 65
    .line 66
    .line 67
    move-result-wide p0

    .line 68
    goto :goto_2

    .line 69
    :cond_7
    add-int/lit8 p1, p0, -0x1

    .line 70
    .line 71
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    .line 72
    .line 73
    .line 74
    move-result-wide p0

    .line 75
    :goto_2
    return-wide p0
.end method
