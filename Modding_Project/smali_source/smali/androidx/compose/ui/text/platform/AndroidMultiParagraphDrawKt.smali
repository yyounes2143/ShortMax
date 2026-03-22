.class public final Landroidx/compose/ui/text/platform/AndroidMultiParagraphDrawKt;
.super Ljava/lang/Object;
.source "AndroidMultiParagraphDraw.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final drawMultiParagraph(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 9
    .param p0    # Landroidx/compose/ui/text/MultiParagraph;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shadow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/style/TextDecoration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const-string v0, "canvas"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "brush"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraph;->getParagraphInfoList$ui_text_release()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-gt v0, v1, :cond_0

    .line 29
    .line 30
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/AndroidMultiParagraphDrawKt;->drawParagraphs(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    instance-of v0, p2, Landroidx/compose/ui/graphics/SolidColor;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/AndroidMultiParagraphDrawKt;->drawParagraphs(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_1
    instance-of v0, p2, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraph;->getParagraphInfoList$ui_text_release()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    move v4, v2

    .line 59
    move v5, v3

    .line 60
    move v6, v5

    .line 61
    :goto_0
    if-ge v4, v1, :cond_2

    .line 62
    .line 63
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    check-cast v7, Landroidx/compose/ui/text/ParagraphInfo;

    .line 68
    .line 69
    invoke-virtual {v7}, Landroidx/compose/ui/text/ParagraphInfo;->getParagraph()Landroidx/compose/ui/text/Paragraph;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-interface {v8}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    add-float/2addr v6, v8

    .line 78
    invoke-virtual {v7}, Landroidx/compose/ui/text/ParagraphInfo;->getParagraph()Landroidx/compose/ui/text/Paragraph;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-interface {v7}, Landroidx/compose/ui/text/Paragraph;->getWidth()F

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    check-cast p2, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 94
    .line 95
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    invoke-virtual {p2, v0, v1}, Landroidx/compose/ui/graphics/ShaderBrush;->createShader-uvyYCjk(J)Landroid/graphics/Shader;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    new-instance v0, Landroid/graphics/Matrix;

    .line 104
    .line 105
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraph;->getParagraphInfoList$ui_text_release()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    :goto_1
    if-ge v2, v1, :cond_3

    .line 120
    .line 121
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Landroidx/compose/ui/text/ParagraphInfo;

    .line 126
    .line 127
    invoke-virtual {v4}, Landroidx/compose/ui/text/ParagraphInfo;->getParagraph()Landroidx/compose/ui/text/Paragraph;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-static {p2}, Landroidx/compose/ui/graphics/BrushKt;->ShaderBrush(Landroid/graphics/Shader;)Landroidx/compose/ui/graphics/ShaderBrush;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-interface {v5, p1, v6, p3, p4}, Landroidx/compose/ui/text/Paragraph;->paint(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Landroidx/compose/ui/text/ParagraphInfo;->getParagraph()Landroidx/compose/ui/text/Paragraph;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-interface {v5}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    invoke-interface {p1, v3, v5}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Landroidx/compose/ui/text/ParagraphInfo;->getParagraph()Landroidx/compose/ui/text/Paragraph;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-interface {v4}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    neg-float v4, v4

    .line 158
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 162
    .line 163
    .line 164
    add-int/lit8 v2, v2, 0x1

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_3
    :goto_2
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public static synthetic drawMultiParagraph$default(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p3, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p4, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/AndroidMultiParagraphDrawKt;->drawMultiParagraph(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final drawParagraphs(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraph;->getParagraphInfoList$ui_text_release()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/compose/ui/text/ParagraphInfo;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/compose/ui/text/ParagraphInfo;->getParagraph()Landroidx/compose/ui/text/Paragraph;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v3, p1, p2, p3, p4}, Landroidx/compose/ui/text/Paragraph;->paint(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/compose/ui/text/ParagraphInfo;->getParagraph()Landroidx/compose/ui/text/Paragraph;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-interface {p1, v3, v2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method
