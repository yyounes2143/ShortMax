.class public final Landroidx/compose/ui/text/android/TextLayout;
.super Ljava/lang/Object;
.source "TextLayout.kt"


# annotations
.annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final bottomPadding:I

.field private final didExceedMaxLines:Z

.field private final fallbackLineSpacing:Z

.field private final includePadding:Z

.field private final isBoringLayout:Z

.field private final layout:Landroid/text/Layout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutHelper$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lineCount:I

.field private final topPadding:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;)V
    .locals 23
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # F
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p15    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Landroidx/compose/ui/text/android/LayoutIntrinsics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v1, p2

    move-object/from16 v2, p17

    const-string v3, "charSequence"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "textPaint"

    move-object/from16 v5, p3

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "layoutIntrinsics"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v14, p9

    .line 2
    iput-boolean v14, v0, Landroidx/compose/ui/text/android/TextLayout;->includePadding:Z

    move/from16 v13, p10

    .line 3
    iput-boolean v13, v0, Landroidx/compose/ui/text/android/TextLayout;->fallbackLineSpacing:Z

    .line 4
    iput-object v2, v0, Landroidx/compose/ui/text/android/TextLayout;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 6
    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/text/android/TextLayoutKt;->getTextDirectionHeuristic(I)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    .line 7
    sget-object v4, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->INSTANCE:Landroidx/compose/ui/text/android/TextAlignmentAdapter;

    move/from16 v6, p4

    invoke-virtual {v4, v6}, Landroidx/compose/ui/text/android/TextAlignmentAdapter;->get(I)Landroid/text/Layout$Alignment;

    move-result-object v8

    .line 8
    instance-of v4, v15, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    .line 9
    move-object v4, v15

    check-cast v4, Landroid/text/Spanned;

    const/4 v6, -0x1

    const-class v9, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;

    invoke-interface {v4, v6, v3, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    if-ge v4, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 10
    :goto_0
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getBoringMetrics()Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    float-to-double v12, v1

    .line 11
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v4, v10

    float-to-int v9, v4

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getMaxIntrinsicWidth()F

    move-result v2

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_1

    if-nez v3, :cond_1

    const/4 v10, 0x1

    .line 13
    iput-boolean v10, v0, Landroidx/compose/ui/text/android/TextLayout;->isBoringLayout:Z

    .line 14
    sget-object v1, Landroidx/compose/ui/text/android/BoringLayoutFactory;->INSTANCE:Landroidx/compose/ui/text/android/BoringLayoutFactory;

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v4, v9

    move-object v5, v6

    move-object v6, v8

    move/from16 v7, p9

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/ui/text/android/BoringLayoutFactory;->create(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/BoringLayout$Metrics;Landroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v1

    move/from16 v21, v10

    const/16 v22, 0x0

    goto :goto_1

    :cond_1
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 15
    iput-boolean v6, v0, Landroidx/compose/ui/text/android/TextLayout;->isBoringLayout:Z

    .line 16
    sget-object v1, Landroidx/compose/ui/text/android/StaticLayoutFactory;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory;

    .line 17
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 18
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-int v11, v2

    const/4 v3, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move v12, v6

    move v6, v9

    move/from16 v9, p11

    move/from16 v21, v10

    move-object/from16 v10, p5

    move/from16 v22, v12

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p14

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p12

    move/from16 v18, p13

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    .line 19
    invoke-virtual/range {v1 .. v20}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->create(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZII[I[I)Landroid/text/StaticLayout;

    move-result-object v1

    .line 20
    :goto_1
    iput-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 21
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move/from16 v3, p11

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    if-ge v2, v3, :cond_3

    :cond_2
    move/from16 v12, v22

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v2, -0x1

    .line 22
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-gtz v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    .line 23
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_4
    move/from16 v12, v21

    .line 24
    :goto_2
    iput-boolean v12, v0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    .line 25
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->access$getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)Lkotlin/Pair;

    move-result-object v1

    .line 26
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->access$getLineHeightPaddings(Landroidx/compose/ui/text/android/TextLayout;)Lkotlin/Pair;

    move-result-object v2

    .line 27
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 28
    invoke-virtual {v1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/compose/ui/text/android/TextLayout;->bottomPadding:I

    .line 29
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Landroidx/compose/ui/text/android/TextLayout$layoutHelper$2;

    invoke-direct {v2, v0}, Landroidx/compose/ui/text/android/TextLayout$layoutHelper$2;-><init>(Landroidx/compose/ui/text/android/TextLayout;)V

    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->layoutHelper$delegate:Lms/i;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    move-object v8, v4

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    move v9, v1

    goto :goto_3

    :cond_3
    move/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    move v10, v1

    goto :goto_4

    :cond_4
    move/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move v11, v2

    goto :goto_5

    :cond_5
    move/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move v12, v3

    goto :goto_6

    :cond_6
    move/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move v13, v1

    goto :goto_7

    :cond_7
    move/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    const v1, 0x7fffffff

    move v14, v1

    goto :goto_8

    :cond_8
    move/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move v15, v3

    goto :goto_9

    :cond_9
    move/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move/from16 v16, v3

    goto :goto_a

    :cond_a
    move/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move/from16 v17, v3

    goto :goto_b

    :cond_b
    move/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-object/from16 v18, v4

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v19, v4

    goto :goto_d

    :cond_d
    move-object/from16 v19, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 30
    new-instance v0, Landroidx/compose/ui/text/android/LayoutIntrinsics;

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v9}, Landroidx/compose/ui/text/android/LayoutIntrinsics;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    move-object/from16 v20, v0

    goto :goto_e

    :cond_e
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v20, p17

    :goto_e
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    .line 31
    invoke-direct/range {v3 .. v20}, Landroidx/compose/ui/text/android/TextLayout;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIII[I[ILandroidx/compose/ui/text/android/LayoutIntrinsics;)V

    return-void
.end method

.method public static synthetic getBottomPadding$ui_text_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getLayout$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method private final getLayoutHelper()Landroidx/compose/ui/text/android/LayoutHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layoutHelper$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/text/android/LayoutHelper;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic getPrimaryHorizontal$default(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/android/TextLayout;->getPrimaryHorizontal(IZ)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static synthetic getSecondaryHorizontal$default(Landroidx/compose/ui/text/android/TextLayout;IZILjava/lang/Object;)F
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/android/TextLayout;->getSecondaryHorizontal(IZ)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static synthetic getTopPadding$ui_text_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final fillBoundingBoxes(II[FI)V
    .locals 10
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
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ltz p1, :cond_a

    .line 15
    .line 16
    if-ge p1, v0, :cond_9

    .line 17
    .line 18
    if-le p2, p1, :cond_8

    .line 19
    .line 20
    if-gt p2, v0, :cond_7

    .line 21
    .line 22
    sub-int v0, p2, p1

    .line 23
    .line 24
    mul-int/lit8 v0, v0, 0x4

    .line 25
    .line 26
    array-length v1, p3

    .line 27
    sub-int/2addr v1, p4

    .line 28
    if-lt v1, v0, :cond_6

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/lit8 v1, p2, -0x1

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/compose/ui/text/android/TextLayout;->getLineForOffset(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    new-instance v2, Landroidx/compose/ui/text/android/HorizontalPositionCache;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Landroidx/compose/ui/text/android/HorizontalPositionCache;-><init>(Landroidx/compose/ui/text/android/TextLayout;)V

    .line 43
    .line 44
    .line 45
    if-gt v0, v1, :cond_5

    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/TextLayout;->getLineStart(I)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/TextLayout;->getLineEnd(I)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/TextLayout;->getParagraphDirection(I)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    const/4 v8, 0x1

    .line 76
    if-ne v7, v8, :cond_0

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_0
    const/4 v8, 0x0

    .line 80
    :goto_1
    if-ge v3, v4, :cond_4

    .line 81
    .line 82
    invoke-virtual {p0, v3}, Landroidx/compose/ui/text/android/TextLayout;->isRtlCharAt(I)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v8, :cond_1

    .line 87
    .line 88
    if-nez v7, :cond_1

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->getPrimaryDownstream(I)F

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    add-int/lit8 v9, v3, 0x1

    .line 95
    .line 96
    invoke-virtual {v2, v9}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->getPrimaryUpstream(I)F

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    if-eqz v8, :cond_2

    .line 102
    .line 103
    if-eqz v7, :cond_2

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->getSecondaryDownstream(I)F

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    add-int/lit8 v7, v3, 0x1

    .line 110
    .line 111
    invoke-virtual {v2, v7}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->getSecondaryUpstream(I)F

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    goto :goto_2

    .line 116
    :cond_2
    if-nez v8, :cond_3

    .line 117
    .line 118
    if-eqz v7, :cond_3

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->getPrimaryDownstream(I)F

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    add-int/lit8 v7, v3, 0x1

    .line 125
    .line 126
    invoke-virtual {v2, v7}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->getPrimaryUpstream(I)F

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->getSecondaryDownstream(I)F

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    add-int/lit8 v9, v3, 0x1

    .line 136
    .line 137
    invoke-virtual {v2, v9}, Landroidx/compose/ui/text/android/HorizontalPositionCache;->getSecondaryUpstream(I)F

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    :goto_2
    aput v7, p3, p4

    .line 142
    .line 143
    add-int/lit8 v7, p4, 0x1

    .line 144
    .line 145
    aput v5, p3, v7

    .line 146
    .line 147
    add-int/lit8 v7, p4, 0x2

    .line 148
    .line 149
    aput v9, p3, v7

    .line 150
    .line 151
    add-int/lit8 v7, p4, 0x3

    .line 152
    .line 153
    aput v6, p3, v7

    .line 154
    .line 155
    add-int/lit8 p4, p4, 0x4

    .line 156
    .line 157
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    if-eq v0, v1, :cond_5

    .line 161
    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_5
    return-void

    .line 166
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    const-string p2, "array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4"

    .line 169
    .line 170
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 175
    .line 176
    const-string p2, "endOffset must be smaller or equal to text length"

    .line 177
    .line 178
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p1

    .line 182
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 183
    .line 184
    const-string p2, "endOffset must be greater than startOffset"

    .line 185
    .line 186
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p1

    .line 190
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 191
    .line 192
    const-string p2, "startOffset must be less than text length"

    .line 193
    .line 194
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 199
    .line 200
    const-string p2, "startOffset must be > 0"

    .line 201
    .line 202
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p1
.end method

.method public final getBottomPadding$ui_text_release()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->bottomPadding:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDidExceedMaxLines()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getFallbackLineSpacing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->fallbackLineSpacing:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getHeight()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->didExceedMaxLines:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 6
    .line 7
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->bottomPadding:I

    .line 26
    .line 27
    add-int/2addr v0, v1

    .line 28
    return v0
.end method

.method public final getIncludePadding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->includePadding:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLayoutIntrinsics()Landroidx/compose/ui/text/android/LayoutIntrinsics;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLineAscent(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineAscent(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    int-to-float p1, p1

    .line 8
    return p1
.end method

.method public final getLineBaseline(I)F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    int-to-float p1, p1

    .line 11
    add-float/2addr v0, p1

    .line 12
    return v0
.end method

.method public final getLineBottom(I)F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineBottom(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    add-float/2addr v0, v1

    .line 12
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    iget p1, p0, Landroidx/compose/ui/text/android/TextLayout;->bottomPadding:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    int-to-float p1, p1

    .line 23
    add-float/2addr v0, p1

    .line 24
    return v0
.end method

.method public final getLineCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->lineCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLineDescent(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    int-to-float p1, p1

    .line 8
    return p1
.end method

.method public final getLineEllipsisCount(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getLineEllipsisOffset(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getLineEnd(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    :goto_0
    return p1
.end method

.method public final getLineForOffset(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getLineForVertical(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 4
    .line 5
    add-int/2addr v1, p1

    .line 6
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final getLineHeight(I)F
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineBottom(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/TextLayout;->getLineTop(I)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sub-float/2addr v0, p1

    .line 10
    return v0
.end method

.method public final getLineLeft(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getLineRight(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineRight(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getLineStart(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getLineTop(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget p1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 13
    .line 14
    :goto_0
    int-to-float p1, p1

    .line 15
    add-float/2addr v0, p1

    .line 16
    return v0
.end method

.method public final getLineVisibleEnd(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    add-int/2addr p1, v0

    .line 29
    :goto_0
    return p1
.end method

.method public final getLineWidth(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineWidth(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getMaxIntrinsicWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getMaxIntrinsicWidth()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getMinIntrinsicWidth()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layoutIntrinsics:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->getMinIntrinsicWidth()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getOffsetForHorizontal(IF)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getParagraphDirection(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getPrimaryHorizontal(IZ)F
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayoutHelper()Landroidx/compose/ui/text/android/LayoutHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getHorizontalPosition(IZZ)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final getSecondaryHorizontal(IZ)F
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayoutHelper()Landroidx/compose/ui/text/android/LayoutHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getHorizontalPosition(IZZ)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final getSelectionPath(IILandroid/graphics/Path;)V
    .locals 1
    .param p3    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 9
    .line 10
    .line 11
    iget p1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/graphics/Path;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget p1, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 22
    .line 23
    int-to-float p1, p1

    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-virtual {p3, p2, p1}, Landroid/graphics/Path;->offset(FF)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "layout.text"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getTopPadding$ui_text_release()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 2
    .line 3
    return v0
.end method

.method public final isEllipsisApplied(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public final isFallbackLinespacingApplied$ui_text_release()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->fallbackLineSpacing:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/TextLayout;->isBoringLayout:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x1c

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final isLineEllipsized(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public final isRtlCharAt(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final paint(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    int-to-float v2, v2

    .line 26
    int-to-float v0, v0

    .line 27
    mul-float/2addr v2, v0

    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
