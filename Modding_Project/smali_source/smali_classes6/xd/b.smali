.class public final Lxd/b;
.super Ljava/lang/Object;
.source "TextViewExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextViewExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextViewExt.kt\ncom/startshorts/androidplayer/ext/TextViewExtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1872#2,3:100\n*S KotlinDebug\n*F\n+ 1 TextViewExt.kt\ncom/startshorts/androidplayer/ext/TextViewExtKt\n*L\n24#1:100,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
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
    if-eqz p1, :cond_3

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 17
    .line 18
    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 19
    .line 20
    .line 21
    if-eqz p4, :cond_1

    .line 22
    .line 23
    const/4 v6, 0x6

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v2, p1

    .line 28
    move-object v3, p2

    .line 29
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v6, 0x6

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v2, p1

    .line 39
    move-object v3, p2

    .line 40
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->y0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    :goto_0
    if-eqz p4, :cond_2

    .line 45
    .line 46
    const/4 v6, 0x6

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    move-object v2, p1

    .line 51
    move-object v3, p2

    .line 52
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    :goto_1
    add-int/2addr p1, p2

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/4 v6, 0x6

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    move-object v2, p1

    .line 67
    move-object v3, p2

    .line 68
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->y0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    goto :goto_1

    .line 77
    :goto_2
    const/16 p2, 0x21

    .line 78
    .line 79
    invoke-virtual {v0, v1, p3, p1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_3
    return-void
.end method

.method public static synthetic b(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p3, -0x1

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p4, 0x1

    .line 11
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lxd/b;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final c(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IFZ)V
    .locals 10
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
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
    if-eqz p1, :cond_7

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_7

    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 18
    .line 19
    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 20
    .line 21
    .line 22
    if-eqz p5, :cond_1

    .line 23
    .line 24
    const/4 v6, 0x6

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    move-object v2, p1

    .line 29
    move-object v3, p2

    .line 30
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v6, 0x6

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    move-object v2, p1

    .line 40
    move-object v3, p2

    .line 41
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->y0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    :goto_0
    if-eqz p5, :cond_2

    .line 46
    .line 47
    const/4 v6, 0x6

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    move-object v2, p1

    .line 52
    move-object v3, p2

    .line 53
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    :goto_1
    add-int/2addr v2, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const/4 v7, 0x6

    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    move-object v3, p1

    .line 68
    move-object v4, p2

    .line 69
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->y0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    goto :goto_1

    .line 78
    :goto_2
    const/16 v3, 0x21

    .line 79
    .line 80
    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 81
    .line 82
    .line 83
    const/4 p3, 0x0

    .line 84
    cmpl-float p3, p4, p3

    .line 85
    .line 86
    if-lez p3, :cond_6

    .line 87
    .line 88
    const/high16 p3, 0x3f800000    # 1.0f

    .line 89
    .line 90
    cmpg-float p3, p4, p3

    .line 91
    .line 92
    if-nez p3, :cond_3

    .line 93
    .line 94
    goto :goto_6

    .line 95
    :cond_3
    new-instance p3, Landroid/text/style/RelativeSizeSpan;

    .line 96
    .line 97
    invoke-direct {p3, p4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 98
    .line 99
    .line 100
    if-eqz p5, :cond_4

    .line 101
    .line 102
    const/4 v8, 0x6

    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    const/4 v7, 0x0

    .line 106
    move-object v4, p1

    .line 107
    move-object v5, p2

    .line 108
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 109
    .line 110
    .line 111
    move-result p4

    .line 112
    goto :goto_3

    .line 113
    :cond_4
    const/4 v8, 0x6

    .line 114
    const/4 v9, 0x0

    .line 115
    const/4 v6, 0x0

    .line 116
    const/4 v7, 0x0

    .line 117
    move-object v4, p1

    .line 118
    move-object v5, p2

    .line 119
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->y0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 120
    .line 121
    .line 122
    move-result p4

    .line 123
    :goto_3
    if-eqz p5, :cond_5

    .line 124
    .line 125
    const/4 v8, 0x6

    .line 126
    const/4 v9, 0x0

    .line 127
    const/4 v6, 0x0

    .line 128
    const/4 v7, 0x0

    .line 129
    move-object v4, p1

    .line 130
    move-object v5, p2

    .line 131
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    :goto_4
    add-int/2addr p1, p2

    .line 140
    goto :goto_5

    .line 141
    :cond_5
    const/4 v8, 0x6

    .line 142
    const/4 v9, 0x0

    .line 143
    const/4 v6, 0x0

    .line 144
    const/4 v7, 0x0

    .line 145
    move-object v4, p1

    .line 146
    move-object v5, p2

    .line 147
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->y0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    goto :goto_4

    .line 156
    :goto_5
    invoke-virtual {v0, p3, p4, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_6
    sget-object p1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 160
    .line 161
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 162
    .line 163
    .line 164
    :cond_7
    :goto_7
    return-void
.end method

.method public static synthetic d(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IFZILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const-string p3, "#FFBD13"

    .line 6
    .line 7
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    :cond_0
    move v3, p3

    .line 12
    and-int/lit8 p3, p6, 0x8

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    const/high16 p4, 0x3f800000    # 1.0f

    .line 17
    .line 18
    :cond_1
    move v4, p4

    .line 19
    and-int/lit8 p3, p6, 0x10

    .line 20
    .line 21
    if-eqz p3, :cond_2

    .line 22
    .line 23
    const/4 p5, 0x1

    .line 24
    :cond_2
    move v5, p5

    .line 25
    move-object v0, p0

    .line 26
    move-object v1, p1

    .line 27
    move-object v2, p2

    .line 28
    invoke-static/range {v0 .. v5}, Lxd/b;->c(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IFZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
