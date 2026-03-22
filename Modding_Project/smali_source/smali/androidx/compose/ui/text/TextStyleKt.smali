.class public final Landroidx/compose/ui/text/TextStyleKt;
.super Ljava/lang/Object;
.source "TextStyle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/TextStyleKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic access$createPlatformTextStyleInternal(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)Landroidx/compose/ui/text/PlatformTextStyle;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextStyleKt;->createPlatformTextStyleInternal(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)Landroidx/compose/ui/text/PlatformTextStyle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final createPlatformTextStyleInternal(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)Landroidx/compose/ui/text/PlatformTextStyle;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/text/AndroidTextStyle_androidKt;->createPlatformTextStyle(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)Landroidx/compose/ui/text/PlatformTextStyle;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static final lerp(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;F)Landroidx/compose/ui/text/TextStyle;
    .locals 3
    .param p0    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "start"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "stop"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/text/TextStyle;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->toSpanStyle()Landroidx/compose/ui/text/SpanStyle;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextStyle;->toSpanStyle()Landroidx/compose/ui/text/SpanStyle;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1, v2, p2}, Landroidx/compose/ui/text/SpanStyleKt;->lerp(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;F)Landroidx/compose/ui/text/SpanStyle;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->toParagraphStyle()Landroidx/compose/ui/text/ParagraphStyle;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextStyle;->toParagraphStyle()Landroidx/compose/ui/text/ParagraphStyle;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/ParagraphStyleKt;->lerp(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/ParagraphStyle;F)Landroidx/compose/ui/text/ParagraphStyle;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public static final resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;
    .locals 3
    .param p0    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "style"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "direction"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/text/TextStyle;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getSpanStyle$ui_text_release()Landroidx/compose/ui/text/SpanStyle;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroidx/compose/ui/text/SpanStyleKt;->resolveSpanStyleDefaults(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getParagraphStyle$ui_text_release()Landroidx/compose/ui/text/ParagraphStyle;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2, p1}, Landroidx/compose/ui/text/ParagraphStyleKt;->resolveParagraphStyleDefaults(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->getPlatformStyle()Landroidx/compose/ui/text/PlatformTextStyle;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/PlatformTextStyle;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static final resolveTextDirection-Yj3eThk(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/style/TextDirection;)I
    .locals 4
    .param p0    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/style/TextDirection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutDirection"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getContent-s_7X-co()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextDirection;->unbox-impl()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2, v1}, Landroidx/compose/ui/text/style/TextDirection;->equals-impl0(II)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    :goto_0
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/ui/text/TextStyleKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    aget p0, p1, p0

    .line 35
    .line 36
    if-eq p0, v3, :cond_2

    .line 37
    .line 38
    if-ne p0, v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getContentOrRtl-s_7X-co()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 46
    .line 47
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getContentOrLtr-s_7X-co()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    if-nez p1, :cond_6

    .line 57
    .line 58
    sget-object p1, Landroidx/compose/ui/text/TextStyleKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    aget p0, p1, p0

    .line 65
    .line 66
    if-eq p0, v3, :cond_5

    .line 67
    .line 68
    if-ne p0, v2, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getRtl-s_7X-co()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 76
    .line 77
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->getLtr-s_7X-co()I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    goto :goto_1

    .line 86
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextDirection;->unbox-impl()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    :goto_1
    return p0
.end method
