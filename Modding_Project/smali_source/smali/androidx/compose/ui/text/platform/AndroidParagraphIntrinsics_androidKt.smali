.class public final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics_androidKt;
.super Ljava/lang/Object;
.source "AndroidParagraphIntrinsics.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final ActualParagraphIntrinsics(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/ui/text/ParagraphIntrinsics;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            ")",
            "Landroidx/compose/ui/text/ParagraphIntrinsics;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "style"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "spanStyles"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "placeholders"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "density"

    .line 22
    .line 23
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "fontFamilyResolver"

    .line 27
    .line 28
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    move-object v2, p0

    .line 35
    move-object v3, p1

    .line 36
    move-object v4, p2

    .line 37
    move-object v5, p3

    .line 38
    move-object v6, p5

    .line 39
    move-object v7, p4

    .line 40
    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public static final resolveTextDirectionHeuristics-9GRLPo0(Landroidx/compose/ui/text/style/TextDirection;Landroidx/compose/ui/text/intl/LocaleList;)I
    .locals 6
    .param p0    # Landroidx/compose/ui/text/style/TextDirection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/intl/LocaleList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextDirection;->unbox-impl()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getContent-s_7X-co()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    :goto_0
    sget-object v0, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getContentOrLtr-s_7X-co()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x2

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getContentOrRtl-s_7X-co()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v3, 0x3

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    :cond_2
    move v2, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getLtr-s_7X-co()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v4, 0x0

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    move v2, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getRtl-s_7X-co()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v5, 0x1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    move v2, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getContent-s_7X-co()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_9

    .line 76
    .line 77
    if-eqz p1, :cond_6

    .line 78
    .line 79
    invoke-virtual {p1, v4}, Landroidx/compose/ui/text/intl/LocaleList;->get(I)Landroidx/compose/ui/text/intl/Locale;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/Locale;->getPlatformLocale$ui_text_release()Landroidx/compose/ui/text/intl/PlatformLocale;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Landroidx/compose/ui/text/intl/AndroidLocale;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/AndroidLocale;->getJavaLocale()Ljava/util/Locale;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    if-nez p0, :cond_7

    .line 94
    .line 95
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :cond_7
    invoke-static {p0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_8

    .line 104
    .line 105
    if-eq p0, v5, :cond_2

    .line 106
    .line 107
    :cond_8
    :goto_1
    return v2

    .line 108
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    const-string p1, "Invalid TextDirection."

    .line 111
    .line 112
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public static synthetic resolveTextDirectionHeuristics-9GRLPo0$default(Landroidx/compose/ui/text/style/TextDirection;Landroidx/compose/ui/text/intl/LocaleList;ILjava/lang/Object;)I
    .locals 1

    .line 1
    and-int/lit8 p3, p2, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    move-object p0, v0

    .line 7
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    move-object p1, v0

    .line 12
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics_androidKt;->resolveTextDirectionHeuristics-9GRLPo0(Landroidx/compose/ui/text/style/TextDirection;Landroidx/compose/ui/text/intl/LocaleList;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method
