.class public final Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;
.super Ljava/lang/Object;
.source "PlaceholderExtensions.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private static final getSpanUnit--R2X_6o(J)I
    .locals 3

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    sget-object v0, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x2

    .line 32
    :goto_0
    return p0
.end method

.method private static synthetic getSpanUnit--R2X_6o$annotations(J)V
    .locals 0

    .line 1
    return-void
.end method

.method private static final getSpanVerticalAlign-do9X-Gg(I)I
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->Companion:Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->getAboveBaseline-J6kI3mc()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p0, v1}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->getTop-J6kI3mc()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {p0, v1}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->getBottom-J6kI3mc()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {p0, v1}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/4 p0, 0x2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->getCenter-J6kI3mc()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {p0, v1}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    const/4 p0, 0x3

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->getTextTop-J6kI3mc()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {p0, v1}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const/4 p0, 0x4

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->getTextBottom-J6kI3mc()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {p0, v1}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    const/4 p0, 0x5

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->getTextCenter-J6kI3mc()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {p0, v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->equals-impl0(II)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_6

    .line 84
    .line 85
    const/4 p0, 0x6

    .line 86
    :goto_0
    return p0

    .line 87
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v0, "Invalid PlaceholderVerticalAlign"

    .line 90
    .line 91
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0
.end method

.method private static synthetic getSpanVerticalAlign-do9X-Gg$annotations(I)V
    .locals 0

    .line 1
    return-void
.end method

.method private static final setPlaceholder(Landroid/text/Spannable;Landroidx/compose/ui/text/Placeholder;IILandroidx/compose/ui/unit/Density;)V
    .locals 8

    .line 1
    new-instance v7, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/text/Placeholder;->getWidth-XSAIIZE()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/text/Placeholder;->getWidth-XSAIIZE()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-static {v2, v3}, Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;->getSpanUnit--R2X_6o(J)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/text/Placeholder;->getHeight-XSAIIZE()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p1}, Landroidx/compose/ui/text/Placeholder;->getHeight-XSAIIZE()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    invoke-static {v4, v5}, Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;->getSpanUnit--R2X_6o(J)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-interface {p4}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-interface {p4}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    mul-float v5, v0, p4

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/compose/ui/text/Placeholder;->getPlaceholderVerticalAlign-J6kI3mc()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;->getSpanVerticalAlign-do9X-Gg(I)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    move-object v0, v7

    .line 54
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;-><init>(FIFIFI)V

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v7, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->setSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static final setPlaceholders(Landroid/text/Spannable;Ljava/util/List;Landroidx/compose/ui/unit/Density;)V
    .locals 5
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "placeholders"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "density"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->component1()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroidx/compose/ui/text/Placeholder;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->component2()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->component3()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {p0, v3, v4, v2, p2}, Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;->setPlaceholder(Landroid/text/Spannable;Landroidx/compose/ui/text/Placeholder;IILandroidx/compose/ui/unit/Density;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method
