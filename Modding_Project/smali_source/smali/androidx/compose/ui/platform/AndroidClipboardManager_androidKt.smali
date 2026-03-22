.class public final Landroidx/compose/ui/platform/AndroidClipboardManager_androidKt;
.super Ljava/lang/Object;
.source "AndroidClipboardManager.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final BACKGROUND_ID:B = 0xat

.field private static final BASELINE_SHIFT_ID:B = 0x8t

.field private static final BASELINE_SHIFT_SIZE:I = 0x4

.field private static final BYTE_SIZE:I = 0x1

.field private static final COLOR_ID:B = 0x1t

.field private static final COLOR_SIZE:I = 0x8

.field private static final FLOAT_SIZE:I = 0x4

.field private static final FONT_FEATURE_SETTINGS_ID:B = 0x6t

.field private static final FONT_SIZE_ID:B = 0x2t

.field private static final FONT_STYLE_ID:B = 0x4t

.field private static final FONT_STYLE_ITALIC:B = 0x1t

.field private static final FONT_STYLE_NORMAL:B = 0x0t

.field private static final FONT_STYLE_SIZE:I = 0x1

.field private static final FONT_SYNTHESIS_ALL:B = 0x1t

.field private static final FONT_SYNTHESIS_ID:B = 0x5t

.field private static final FONT_SYNTHESIS_NONE:B = 0x0t

.field private static final FONT_SYNTHESIS_SIZE:I = 0x1

.field private static final FONT_SYNTHESIS_STYLE:B = 0x3t

.field private static final FONT_SYNTHESIS_WEIGHT:B = 0x2t

.field private static final FONT_WEIGHT_ID:B = 0x3t

.field private static final FONT_WEIGHT_SIZE:I = 0x4

.field private static final INT_SIZE:I = 0x4

.field private static final LETTER_SPACING_ID:B = 0x7t

.field private static final LONG_SIZE:I = 0x8

.field private static final PLAIN_TEXT_LABEL:Ljava/lang/String; = "plain text"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SHADOW_ID:B = 0xct

.field private static final SHADOW_SIZE:I = 0x14

.field private static final TEXT_DECORATION_ID:B = 0xbt

.field private static final TEXT_DECORATION_SIZE:I = 0x4

.field private static final TEXT_GEOMETRIC_TRANSFORM_ID:B = 0x9t

.field private static final TEXT_GEOMETRIC_TRANSFORM_SIZE:I = 0x8

.field private static final TEXT_UNIT_SIZE:I = 0x5

.field private static final UNIT_TYPE_EM:B = 0x2t

.field private static final UNIT_TYPE_SP:B = 0x1t

.field private static final UNIT_TYPE_UNSPECIFIED:B


# direct methods
.method public static final convertToAnnotatedString(Ljava/lang/CharSequence;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 10
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    instance-of v0, p0, Landroid/text/Spanned;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v5, 0x6

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v1, v0

    .line 20
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    move-object v0, p0

    .line 25
    check-cast v0, Landroid/text/Spanned;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const-class v2, Landroid/text/Annotation;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, [Landroid/text/Annotation;

    .line 39
    .line 40
    new-instance v6, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "annotations"

    .line 46
    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lkotlin/collections/n;->r0([Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ltz v2, :cond_3

    .line 55
    .line 56
    :goto_0
    aget-object v4, v1, v3

    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const-string v7, "androidx.compose.text.SpanStyle"

    .line 63
    .line 64
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    new-instance v8, Landroidx/compose/ui/platform/DecodeHelper;

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string v9, "span.value"

    .line 86
    .line 87
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v8, v4}, Landroidx/compose/ui/platform/DecodeHelper;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8}, Landroidx/compose/ui/platform/DecodeHelper;->decodeSpanStyle()Landroidx/compose/ui/text/SpanStyle;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    new-instance v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 98
    .line 99
    invoke-direct {v8, v4, v5, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :goto_1
    if-eq v3, v2, :cond_3

    .line 106
    .line 107
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    const/4 v8, 0x4

    .line 117
    const/4 v9, 0x0

    .line 118
    const/4 v7, 0x0

    .line 119
    move-object v4, v0

    .line 120
    invoke-direct/range {v4 .. v9}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 121
    .line 122
    .line 123
    return-object v0
.end method

.method public static final convertToCharSequence(Landroidx/compose/ui/text/AnnotatedString;)Ljava/lang/CharSequence;
    .locals 9
    .param p0    # Landroidx/compose/ui/text/AnnotatedString;
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
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getSpanStyles()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Landroidx/compose/ui/platform/EncodeHelper;

    .line 31
    .line 32
    invoke-direct {v1}, Landroidx/compose/ui/platform/EncodeHelper;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getSpanStyles()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_0
    if-ge v3, v2, :cond_1

    .line 45
    .line 46
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->component1()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Landroidx/compose/ui/text/SpanStyle;

    .line 57
    .line 58
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->component2()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Range;->component3()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {v1}, Landroidx/compose/ui/platform/EncodeHelper;->reset()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v5}, Landroidx/compose/ui/platform/EncodeHelper;->encode(Landroidx/compose/ui/text/SpanStyle;)V

    .line 70
    .line 71
    .line 72
    new-instance v5, Landroid/text/Annotation;

    .line 73
    .line 74
    const-string v7, "androidx.compose.text.SpanStyle"

    .line 75
    .line 76
    invoke-virtual {v1}, Landroidx/compose/ui/platform/EncodeHelper;->encodedString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-direct {v5, v7, v8}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/16 v7, 0x21

    .line 84
    .line 85
    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    return-object v0
.end method
