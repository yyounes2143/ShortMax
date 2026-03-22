.class public final Landroidx/compose/ui/text/ParagraphStyleKt;
.super Ljava/lang/Object;
.source "ParagraphStyle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final DefaultLineHeight:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Landroidx/compose/ui/text/ParagraphStyleKt;->DefaultLineHeight:J

    .line 8
    .line 9
    return-void
.end method

.method public static final lerp(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/ParagraphStyle;F)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 10
    .param p0    # Landroidx/compose/ui/text/ParagraphStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/ParagraphStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

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
    new-instance v0, Landroidx/compose/ui/text/ParagraphStyle;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->getTextAlign-buA522U()Landroidx/compose/ui/text/style/TextAlign;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getTextAlign-buA522U()Landroidx/compose/ui/text/style/TextAlign;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1, v2, p2}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-object v2, v1

    .line 26
    check-cast v2, Landroidx/compose/ui/text/style/TextAlign;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->getTextDirection-mmuk1to()Landroidx/compose/ui/text/style/TextDirection;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getTextDirection-mmuk1to()Landroidx/compose/ui/text/style/TextDirection;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v1, v3, p2}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v3, v1

    .line 41
    check-cast v3, Landroidx/compose/ui/text/style/TextDirection;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->getLineHeight-XSAIIZE()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getLineHeight-XSAIIZE()J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    invoke-static {v4, v5, v6, v7, p2}, Landroidx/compose/ui/text/SpanStyleKt;->lerpTextUnitInheritable-C3pnCVY(JJF)J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->getTextIndent()Landroidx/compose/ui/text/style/TextIndent;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-nez v1, :cond_0

    .line 60
    .line 61
    sget-object v1, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextIndent$Companion;->getNone()Landroidx/compose/ui/text/style/TextIndent;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getTextIndent()Landroidx/compose/ui/text/style/TextIndent;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-nez v6, :cond_1

    .line 72
    .line 73
    sget-object v6, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    .line 74
    .line 75
    invoke-virtual {v6}, Landroidx/compose/ui/text/style/TextIndent$Companion;->getNone()Landroidx/compose/ui/text/style/TextIndent;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    :cond_1
    invoke-static {v1, v6, p2}, Landroidx/compose/ui/text/style/TextIndentKt;->lerp(Landroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/style/TextIndent;F)Landroidx/compose/ui/text/style/TextIndent;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->getPlatformStyle()Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getPlatformStyle()Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v1, v7, p2}, Landroidx/compose/ui/text/ParagraphStyleKt;->lerpPlatformStyle(Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;F)Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->getLineHeightStyle()Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->getLineHeightStyle()Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    move-object v8, p0

    .line 108
    check-cast v8, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 109
    .line 110
    const/4 v9, 0x0

    .line 111
    move-object v1, v0

    .line 112
    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    return-object v0
.end method

.method private static final lerpPlatformStyle(Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;F)Landroidx/compose/ui/text/PlatformParagraphStyle;
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
    return-object p0

    .line 7
    :cond_0
    if-nez p0, :cond_1

    .line 8
    .line 9
    sget-object p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->Companion:Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;->getDefault()Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_1
    if-nez p1, :cond_2

    .line 16
    .line 17
    sget-object p1, Landroidx/compose/ui/text/PlatformParagraphStyle;->Companion:Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;->getDefault()Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/AndroidTextStyle_androidKt;->lerp(Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;F)Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static final resolveParagraphStyleDefaults(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 10
    .param p0    # Landroidx/compose/ui/text/ParagraphStyle;
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
    new-instance v0, Landroidx/compose/ui/text/ParagraphStyle;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->getTextAlign-buA522U()Landroidx/compose/ui/text/style/TextAlign;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getStart-e0LSkKk()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    :goto_0
    invoke-static {v1}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->getTextDirection-mmuk1to()Landroidx/compose/ui/text/style/TextDirection;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {p1, v1}, Landroidx/compose/ui/text/TextStyleKt;->resolveTextDirection-Yj3eThk(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/style/TextDirection;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p1}, Landroidx/compose/ui/text/style/TextDirection;->box-impl(I)Landroidx/compose/ui/text/style/TextDirection;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->getLineHeight-XSAIIZE()J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/TextUnitKt;->isUnspecified--R2X_6o(J)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    sget-wide v4, Landroidx/compose/ui/text/ParagraphStyleKt;->DefaultLineHeight:J

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->getLineHeight-XSAIIZE()J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->getTextIndent()Landroidx/compose/ui/text/style/TextIndent;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    sget-object p1, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent$Companion;->getNone()Landroidx/compose/ui/text/style/TextIndent;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :cond_2
    move-object v6, p1

    .line 76
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->getPlatformStyle()Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->getLineHeightStyle()Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    const/4 v9, 0x0

    .line 85
    move-object v1, v0

    .line 86
    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    return-object v0
.end method
