.class public final Landroidx/compose/ui/text/platform/AndroidParagraph;
.super Ljava/lang/Object;
.source "AndroidParagraph.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/Paragraph;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/platform/AndroidParagraph$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final constraints:J

.field private final ellipsis:Z

.field private final layout:Landroidx/compose/ui/text/android/TextLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxLines:I

.field private final paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final placeholderRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final wordBoundary$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, p1

    .line 4
    iput-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 5
    iput v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->maxLines:I

    .line 6
    iput-boolean v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->ellipsis:Z

    move-wide/from16 v4, p4

    .line 7
    iput-wide v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->constraints:J

    .line 8
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v6

    if-nez v6, :cond_e

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v6

    if-nez v6, :cond_e

    const/4 v6, 0x1

    if-lt v1, v6, :cond_d

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->getTextAlign-buA522U()Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/ui/text/platform/AndroidParagraph_androidKt;->access$toLayoutAlign-AMY3VfE(Landroidx/compose/ui/text/style/TextAlign;)I

    move-result v7

    .line 11
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->getTextAlign-buA522U()Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v8

    .line 12
    sget-object v9, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getJustify-e0LSkKk()I

    move-result v9

    const/4 v10, 0x0

    if-nez v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    move-result v8

    invoke-static {v8, v9}, Landroidx/compose/ui/text/style/TextAlign;->equals-impl0(II)Z

    move-result v8

    :goto_0
    const/4 v9, 0x0

    if-eqz v2, :cond_1

    .line 13
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    :cond_1
    move-object v11, v9

    .line 14
    :goto_1
    invoke-direct {v0, v7, v8, v11, v1}, Landroidx/compose/ui/text/platform/AndroidParagraph;->constructTextLayout(IILandroid/text/TextUtils$TruncateAt;I)Landroidx/compose/ui/text/android/TextLayout;

    move-result-object v12

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v12}, Landroidx/compose/ui/text/android/TextLayout;->getHeight()I

    move-result v2

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v13

    if-le v2, v13, :cond_3

    if-le v1, v6, :cond_3

    .line 16
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    invoke-static {v12, v2}, Landroidx/compose/ui/text/platform/AndroidParagraph_androidKt;->access$numberOfLinesThatFitMaxHeight(Landroidx/compose/ui/text/android/TextLayout;I)I

    move-result v2

    if-lez v2, :cond_2

    if-eq v2, v1, :cond_2

    .line 17
    invoke-direct {v0, v7, v8, v11, v2}, Landroidx/compose/ui/text/platform/AndroidParagraph;->constructTextLayout(IILandroid/text/TextUtils$TruncateAt;I)Landroidx/compose/ui/text/android/TextLayout;

    move-result-object v12

    .line 18
    :cond_2
    iput-object v12, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    goto :goto_2

    .line 19
    :cond_3
    iput-object v12, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 20
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v1

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHeight()F

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-d16Qtg0(Landroidx/compose/ui/graphics/Brush;J)V

    .line 21
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getShaderBrushSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    move-result-object v1

    .line 22
    array-length v2, v1

    move v3, v10

    :goto_3
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHeight()F

    move-result v7

    invoke-static {v5, v7}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->setSize-iaC8Vc4(Landroidx/compose/ui/geometry/Size;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 24
    :cond_4
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    move-result-object v1

    .line 25
    instance-of v2, v1, Landroid/text/Spanned;

    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object v1

    goto/16 :goto_d

    .line 26
    :cond_5
    move-object v2, v1

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v3, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    invoke-interface {v2, v10, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "getSpans(0, length, PlaceholderSpan::class.java)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    array-length v4, v1

    move v5, v10

    :goto_4
    if-ge v5, v4, :cond_c

    aget-object v7, v1, v5

    .line 29
    check-cast v7, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 30
    invoke-interface {v2, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 31
    invoke-interface {v2, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 32
    iget-object v12, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v12, v8}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    move-result v12

    .line 33
    iget-object v13, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v13, v12}, Landroidx/compose/ui/text/android/TextLayout;->getLineEllipsisCount(I)I

    move-result v13

    if-lez v13, :cond_6

    .line 34
    iget-object v13, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v13, v12}, Landroidx/compose/ui/text/android/TextLayout;->getLineEllipsisOffset(I)I

    move-result v13

    if-le v11, v13, :cond_6

    move v13, v6

    goto :goto_5

    :cond_6
    move v13, v10

    .line 35
    :goto_5
    iget-object v14, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    move-result v14

    if-le v11, v14, :cond_7

    move v11, v6

    goto :goto_6

    :cond_7
    move v11, v10

    :goto_6
    if-nez v13, :cond_b

    if-eqz v11, :cond_8

    goto/16 :goto_b

    .line 36
    :cond_8
    invoke-virtual {v0, v8}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v11

    .line 37
    sget-object v13, Landroidx/compose/ui/text/platform/AndroidParagraph$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v13, v11

    const/4 v13, 0x2

    if-eq v11, v6, :cond_a

    if-ne v11, v13, :cond_9

    .line 38
    invoke-virtual {v0, v8, v6}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHorizontalPosition(IZ)F

    move-result v8

    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v8, v11

    goto :goto_7

    :cond_9
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 39
    :cond_a
    invoke-virtual {v0, v8, v6}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHorizontalPosition(IZ)F

    move-result v8

    .line 40
    :goto_7
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getWidthPx()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v8

    .line 41
    iget-object v14, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 42
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getVerticalAlign()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 43
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unexpected verticalAlignment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :pswitch_0
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v15

    .line 45
    iget v6, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v6, v15

    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v15

    sub-int/2addr v6, v15

    div-int/2addr v6, v13

    int-to-float v6, v6

    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v12

    :goto_8
    add-float/2addr v6, v12

    goto :goto_a

    .line 46
    :pswitch_1
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v6, v6

    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v12

    add-float/2addr v6, v12

    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v12

    :goto_9
    int-to-float v12, v12

    sub-float/2addr v6, v12

    goto :goto_a

    .line 47
    :pswitch_2
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v6, v6

    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v12

    goto :goto_8

    .line 48
    :pswitch_3
    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v6

    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v12

    add-float/2addr v6, v12

    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v6, v12

    int-to-float v12, v13

    div-float/2addr v6, v12

    goto :goto_a

    .line 49
    :pswitch_4
    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    move-result v6

    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v12

    goto :goto_9

    .line 50
    :pswitch_5
    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    move-result v6

    goto :goto_a

    .line 51
    :pswitch_6
    invoke-virtual {v14, v12}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    move-result v6

    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v12

    goto :goto_9

    .line 52
    :goto_a
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->getHeightPx()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    .line 53
    new-instance v12, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v12, v8, v6, v11, v7}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    goto :goto_c

    :cond_b
    :goto_b
    move-object v12, v9

    :goto_c
    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_c
    move-object v1, v3

    .line 54
    :goto_d
    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->placeholderRects:Ljava/util/List;

    .line 55
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Landroidx/compose/ui/text/platform/AndroidParagraph$wordBoundary$2;

    invoke-direct {v2, v0}, Landroidx/compose/ui/text/platform/AndroidParagraph$wordBoundary$2;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraph;)V

    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->wordBoundary$delegate:Lms/i;

    return-void

    .line 56
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxLines should be greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/text/platform/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IZJLandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V
    .locals 8
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
            ">;>;IZJ",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    .line 58
    new-instance v7, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    move v2, p5

    move v3, p6

    move-wide v4, p7

    .line 59
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/platform/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IZJLandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p10}, Landroidx/compose/ui/text/platform/AndroidParagraph;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IZJLandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    return-void
.end method

.method public static final synthetic access$getLayout$p(Landroidx/compose/ui/text/platform/AndroidParagraph;)Landroidx/compose/ui/text/android/TextLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method private final constructTextLayout(IILandroid/text/TextUtils$TruncateAt;I)Landroidx/compose/ui/text/android/TextLayout;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v5, p1

    .line 4
    .line 5
    move/from16 v15, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    move/from16 v12, p4

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getTextDirectionHeuristic$ui_text_release()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getLayoutIntrinsics$ui_text_release()Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 34
    .line 35
    .line 36
    move-result-object v18

    .line 37
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getStyle()Landroidx/compose/ui/text/TextStyle;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->isIncludeFontPaddingEnabled(Landroidx/compose/ui/text/TextStyle;)Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    new-instance v21, Landroidx/compose/ui/text/android/TextLayout;

    .line 48
    .line 49
    move-object/from16 v1, v21

    .line 50
    .line 51
    const v19, 0xd880

    .line 52
    .line 53
    .line 54
    const/16 v20, 0x0

    .line 55
    .line 56
    const/high16 v8, 0x3f800000    # 1.0f

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v11, 0x1

    .line 60
    const/4 v13, 0x0

    .line 61
    const/4 v14, 0x0

    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    const/16 v17, 0x0

    .line 65
    .line 66
    invoke-direct/range {v1 .. v20}, Landroidx/compose/ui/text/android/TextLayout;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    .line 68
    .line 69
    return-object v21
.end method

.method public static synthetic getCharSequence$ui_text_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method private final getShaderBrushSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

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
    new-array p1, v1, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/text/Spanned;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const-class v2, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 28
    .line 29
    invoke-interface {v0, v1, p1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 34
    .line 35
    const-string v0, "brushSpans"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    array-length v0, p1

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    new-array p1, v1, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 44
    .line 45
    :cond_1
    return-object p1
.end method

.method public static synthetic getTextLocale$ui_text_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getTextPaint$ui_text_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method private final getWordBoundary()Landroidx/compose/ui/text/android/selection/WordBoundary;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->wordBoundary$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/text/android/selection/WordBoundary;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final fillBoundingBoxes-8ffj60Q(J[FI)V
    .locals 2
    .param p3    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "array"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {v0, v1, p1, p3, p4}, Landroidx/compose/ui/text/android/TextLayout;->fillBoundingBoxes(II[FI)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public getBidiRunDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->isRtlCharAt(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 13
    .line 14
    :goto_0
    return-object p1
.end method

.method public getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, p1, v1, v2, v3}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal$default(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v4, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 11
    .line 12
    add-int/lit8 v5, p1, 0x1

    .line 13
    .line 14
    invoke-static {v4, v5, v1, v2, v3}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal$default(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 31
    .line 32
    invoke-virtual {v3, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    new-instance v3, Landroidx/compose/ui/geometry/Rect;

    .line 37
    .line 38
    invoke-direct {v3, v0, v2, v1, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 39
    .line 40
    .line 41
    return-object v3
.end method

.method public final getCharSequence$ui_text_release()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getConstraints-msEJaDk()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->constraints:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCursorRect(I)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gt p1, v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v0, p1, v3, v1, v2}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal$default(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v3, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 37
    .line 38
    invoke-virtual {v3, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-direct {v1, v0, v2, v0, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "offset("

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, ") is out of bounds (0,"

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    throw v0
.end method

.method public getDidExceedMaxLines()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->getDidExceedMaxLines()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getEllipsis()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->ellipsis:Z

    .line 2
    .line 3
    return v0
.end method

.method public getFirstBaseline()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getLineBaseline$ui_text_release(I)F

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    return v0
.end method

.method public getHorizontalPosition(IZ)F
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 7
    .line 8
    invoke-static {p2, p1, v2, v1, v0}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal$default(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 14
    .line 15
    invoke-static {p2, p1, v2, v1, v0}, Landroidx/compose/ui/text/android/TextLayout;->getSecondaryHorizontal$default(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :goto_0
    return p1
.end method

.method public getLastBaseline()F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->maxLines:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getLineCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->maxLines:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getLineBaseline$ui_text_release(I)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getLineCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getLineBaseline$ui_text_release(I)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    return v0
.end method

.method public final getLineAscent$ui_text_release(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineAscent(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getLineBaseline$ui_text_release(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBaseline(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLineBottom(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLineCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getLineDescent$ui_text_release(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineDescent(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLineEnd(IZ)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineVisibleEnd(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
.end method

.method public getLineForOffset(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLineForVerticalPosition(F)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    float-to-int p1, p1

    .line 4
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForVertical(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public getLineHeight(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineHeight(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLineLeft(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineLeft(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLineRight(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineRight(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLineStart(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineStart(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLineTop(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLineWidth(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineWidth(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getMaxIntrinsicWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getMaxIntrinsicWidth()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getMaxLines()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->maxLines:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinIntrinsicWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getMinIntrinsicWidth()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOffsetForPosition-k-4lQ0M(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    float-to-int v1, v1

    .line 8
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForVertical(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 13
    .line 14
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {v1, v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getOffsetForHorizontal(IF)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public getParagraphDirection(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getParagraphDirection(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    sget-object p1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object p1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 20
    .line 21
    :goto_0
    return-object p1
.end method

.method public final getParagraphIntrinsics()Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPathForRange(II)Landroidx/compose/ui/graphics/Path;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    if-gt p1, p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gt p2, v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Path;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 21
    .line 22
    invoke-virtual {v1, p1, p2, v0}, Landroidx/compose/ui/text/android/TextLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->asComposePath(Landroid/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "Start("

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ") or End("

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, ") is out of Range(0.."

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getCharSequence$ui_text_release()Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, "), or start > end!"

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method

.method public getPlaceholderRects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->placeholderRects:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTextLocale$ui_text_release()Ljava/util/Locale;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "paragraphIntrinsics.textPaint.textLocale"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->paragraphIntrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->constraints:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    return v0
.end method

.method public getWordBoundary--jx7JFs(I)J
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWordBoundary()Landroidx/compose/ui/text/android/selection/WordBoundary;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/selection/WordBoundary;->getWordStart(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWordBoundary()Landroidx/compose/ui/text/android/selection/WordBoundary;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/android/selection/WordBoundary;->getWordEnd(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0
.end method

.method public final isEllipsisApplied$ui_text_release(I)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->isEllipsisApplied(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isLineEllipsized(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/android/TextLayout;->isLineEllipsized(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public paint(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 3
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
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "brush"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHeight()F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-virtual {v0, p2, v1, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-d16Qtg0(Landroidx/compose/ui/graphics/Brush;J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getDidExceedMaxLines()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHeight()F

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    const/4 p4, 0x0

    .line 58
    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/android/TextLayout;->paint(Landroid/graphics/Canvas;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getDidExceedMaxLines()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_1

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method public paint-RPmYEkk(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shadow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/style/TextDecoration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getTextPaint$ui_text_release()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p2, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getDidExceedMaxLines()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getWidth()F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getHeight()F

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    const/4 p4, 0x0

    .line 41
    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/platform/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/android/TextLayout;->paint(Landroid/graphics/Canvas;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidParagraph;->getDidExceedMaxLines()Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method
