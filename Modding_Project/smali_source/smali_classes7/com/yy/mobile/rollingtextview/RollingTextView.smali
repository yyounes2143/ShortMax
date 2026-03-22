.class public Lcom/yy/mobile/rollingtextview/RollingTextView;
.super Landroid/view/View;
.source "RollingTextView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lzl/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lzl/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Landroid/animation/ValueAnimator;

.field private final g:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:I

.field private i:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private j:J

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Landroid/view/animation/Interpolator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/yy/mobile/rollingtextview/RollingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/yy/mobile/rollingtextview/RollingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/yy/mobile/rollingtextview/RollingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->c:Landroid/graphics/Paint;

    .line 7
    new-instance v1, Lzl/a;

    invoke-direct {v1}, Lzl/a;-><init>()V

    iput-object v1, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->d:Lzl/a;

    .line 8
    new-instance v2, Lzl/h;

    invoke-direct {v2, v9, v1}, Lzl/h;-><init>(Landroid/graphics/Paint;Lzl/a;)V

    iput-object v2, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    const/4 v10, 0x1

    .line 9
    new-array v1, v10, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    aput v2, v1, v11

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->f:Landroid/animation/ValueAnimator;

    .line 10
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->g:Landroid/graphics/Rect;

    .line 11
    const-string v1, ""

    iput-object v1, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->i:Ljava/lang/CharSequence;

    const-wide/16 v2, 0x2ee

    .line 12
    iput-wide v2, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->j:J

    const v2, 0x800005

    .line 13
    iput v2, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->m:I

    .line 14
    new-instance v12, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 15
    new-instance v13, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 16
    new-instance v14, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 17
    new-instance v15, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 18
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 19
    new-instance v6, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 20
    sget-object v1, Lzl/d;->a:[I

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 21
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    const-string v1, "context.obtainStyledAttr\u2026tr, defStyleRes\n        )"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget v1, Lzl/d;->b:I

    const/4 v2, -0x1

    .line 23
    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 24
    sget-object v2, Lzl/d;->a:[I

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const-string v0, "context.obtainStyledAttr\u2026ingTextView\n            )"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v16, v4

    move-object v4, v15

    move-object/from16 p1, v5

    move-object v5, v7

    move-object/from16 p2, v6

    move-object/from16 p3, v7

    move-object/from16 v7, v16

    .line 26
    invoke-static/range {v0 .. v7}, Lcom/yy/mobile/rollingtextview/RollingTextView;->c(Lcom/yy/mobile/rollingtextview/RollingTextView;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/content/res/TypedArray;)V

    .line 27
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    move-object/from16 p1, v5

    move-object/from16 p2, v6

    move-object/from16 p3, v7

    :goto_0
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    .line 28
    invoke-static/range {v0 .. v7}, Lcom/yy/mobile/rollingtextview/RollingTextView;->c(Lcom/yy/mobile/rollingtextview/RollingTextView;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/content/res/TypedArray;)V

    .line 29
    sget v0, Lzl/d;->l:I

    iget-wide v1, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->j:J

    long-to-int v1, v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    .line 30
    iput-wide v0, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->j:J

    .line 31
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz v0, :cond_1

    .line 33
    iget v1, v15, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v3, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v4, v14, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v9, v1, v3, v4, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 34
    :cond_1
    iget v0, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->h:I

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {v9}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    move-object/from16 v0, p2

    .line 36
    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v8, v11, v0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setTextSize(IF)V

    move-object/from16 v0, p3

    .line 37
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v8, v0, v11}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 38
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    iget-object v0, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->f:Landroid/animation/ValueAnimator;

    new-instance v1, Lzl/e;

    invoke-direct {v1, v8}, Lzl/e;-><init>(Lcom/yy/mobile/rollingtextview/RollingTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    iget-object v0, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->f:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/yy/mobile/rollingtextview/RollingTextView$a;

    invoke-direct {v1, v8}, Lcom/yy/mobile/rollingtextview/RollingTextView$a;-><init>(Lcom/yy/mobile/rollingtextview/RollingTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 41
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->n:Landroid/view/animation/Interpolator;

    const/high16 v0, -0x1000000

    .line 42
    iput v0, v8, Lcom/yy/mobile/rollingtextview/RollingTextView;->o:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yy/mobile/rollingtextview/RollingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/yy/mobile/rollingtextview/RollingTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yy/mobile/rollingtextview/RollingTextView;->d(Lcom/yy/mobile/rollingtextview/RollingTextView;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setText$lambda-2$lambda-1(Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/yy/mobile/rollingtextview/RollingTextView;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroid/content/res/TypedArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yy/mobile/rollingtextview/RollingTextView;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Landroid/content/res/TypedArray;",
            ")V"
        }
    .end annotation

    .line 1
    sget v0, Lzl/d;->f:I

    .line 2
    .line 3
    iget v1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->m:I

    .line 4
    .line 5
    invoke-virtual {p7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->m:I

    .line 10
    .line 11
    sget v0, Lzl/d;->h:I

    .line 12
    .line 13
    iget v1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 14
    .line 15
    invoke-virtual {p7, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 20
    .line 21
    sget p1, Lzl/d;->i:I

    .line 22
    .line 23
    iget v0, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 24
    .line 25
    invoke-virtual {p7, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 30
    .line 31
    sget p1, Lzl/d;->j:I

    .line 32
    .line 33
    iget p2, p3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 34
    .line 35
    invoke-virtual {p7, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 40
    .line 41
    sget p1, Lzl/d;->k:I

    .line 42
    .line 43
    iget p2, p4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 44
    .line 45
    invoke-virtual {p7, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput p1, p4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 50
    .line 51
    sget p1, Lzl/d;->g:I

    .line 52
    .line 53
    invoke-virtual {p7, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    const-string p1, ""

    .line 60
    .line 61
    :cond_0
    iput-object p1, p5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 62
    .line 63
    sget p1, Lzl/d;->e:I

    .line 64
    .line 65
    iget p2, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->o:I

    .line 66
    .line 67
    invoke-virtual {p7, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    sget p1, Lzl/d;->c:I

    .line 75
    .line 76
    iget p2, p6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 77
    .line 78
    invoke-virtual {p7, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iput p1, p6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 83
    .line 84
    sget p1, Lzl/d;->d:I

    .line 85
    .line 86
    iget p2, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->h:I

    .line 87
    .line 88
    invoke-virtual {p7, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput p1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->h:I

    .line 93
    .line 94
    return-void
.end method

.method private static final d(Lcom/yy/mobile/rollingtextview/RollingTextView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0, p1}, Lzl/h;->k(F)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->g()Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final synthetic e(Lcom/yy/mobile/rollingtextview/RollingTextView;)Lzl/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    .line 2
    .line 3
    return-object p0
.end method

.method private final g()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->i()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    move v0, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    iget v1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->b:I

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->h()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eq v1, v4, :cond_1

    .line 21
    .line 22
    move v1, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, v2

    .line 25
    :goto_1
    if-nez v0, :cond_3

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    return v2

    .line 31
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 32
    .line 33
    .line 34
    return v3
.end method

.method private final h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzl/h;->g()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method private final i()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzl/h;->d()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method private final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzl/h;->l()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->g()Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final k(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzl/h;->d()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    .line 8
    .line 9
    invoke-virtual {v1}, Lzl/h;->g()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->g:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->g:Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v4, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->g:Landroid/graphics/Rect;

    .line 26
    .line 27
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 28
    .line 29
    int-to-float v6, v5

    .line 30
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    int-to-float v7, v4

    .line 33
    iget-boolean v8, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->k:Z

    .line 34
    .line 35
    const/high16 v9, 0x40000000    # 2.0f

    .line 36
    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    iget v8, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->m:I

    .line 40
    .line 41
    and-int/lit8 v10, v8, 0x1

    .line 42
    .line 43
    const/4 v11, 0x1

    .line 44
    if-ne v10, v11, :cond_0

    .line 45
    .line 46
    int-to-float v6, v5

    .line 47
    int-to-float v10, v2

    .line 48
    sub-float/2addr v10, v0

    .line 49
    div-float/2addr v10, v9

    .line 50
    add-float/2addr v6, v10

    .line 51
    :cond_0
    const v10, 0x800005

    .line 52
    .line 53
    .line 54
    and-int/2addr v8, v10

    .line 55
    if-ne v8, v10, :cond_1

    .line 56
    .line 57
    int-to-float v5, v5

    .line 58
    int-to-float v2, v2

    .line 59
    sub-float/2addr v2, v0

    .line 60
    add-float v6, v5, v2

    .line 61
    .line 62
    :cond_1
    iget-boolean v2, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->l:Z

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget v2, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->m:I

    .line 67
    .line 68
    and-int/lit8 v5, v2, 0x10

    .line 69
    .line 70
    const/16 v8, 0x10

    .line 71
    .line 72
    if-ne v5, v8, :cond_2

    .line 73
    .line 74
    int-to-float v5, v4

    .line 75
    int-to-float v7, v3

    .line 76
    sub-float/2addr v7, v1

    .line 77
    div-float/2addr v7, v9

    .line 78
    add-float/2addr v7, v5

    .line 79
    :cond_2
    const/16 v5, 0x50

    .line 80
    .line 81
    and-int/2addr v2, v5

    .line 82
    if-ne v2, v5, :cond_3

    .line 83
    .line 84
    int-to-float v2, v4

    .line 85
    int-to-float v3, v3

    .line 86
    sub-float/2addr v3, v1

    .line 87
    add-float v7, v2, v3

    .line 88
    .line 89
    :cond_3
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private static final setText$lambda-2$lambda-1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "orderList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->d:Lzl/a;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/text/StringsKt;->y1(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lzl/a;->a(Ljava/lang/Iterable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final getAnimationDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->n:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBaseline()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    .line 8
    .line 9
    invoke-virtual {v1}, Lzl/h;->g()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x2

    .line 14
    int-to-float v2, v2

    .line 15
    div-float/2addr v1, v2

    .line 16
    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 17
    .line 18
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 19
    .line 20
    sub-float v0, v3, v0

    .line 21
    .line 22
    div-float/2addr v0, v2

    .line 23
    sub-float/2addr v0, v3

    .line 24
    add-float/2addr v1, v0

    .line 25
    float-to-int v0, v1

    .line 26
    return v0
.end method

.method public final getCharStrategy()Lam/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->d:Lzl/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzl/a;->e()Lam/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getCurrentText()[C
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzl/h;->c()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLetterSpacingExtra()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzl/h;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->i:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTextSize()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
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
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/yy/mobile/rollingtextview/RollingTextView;->k(Landroid/graphics/Canvas;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    .line 16
    .line 17
    invoke-virtual {v0}, Lzl/h;->f()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lzl/h;->b(Landroid/graphics/Canvas;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->a:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->h()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->b:I

    .line 12
    .line 13
    iget v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->a:I

    .line 14
    .line 15
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->b:I

    .line 20
    .line 21
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->g:Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 7
    .line 8
    .line 9
    move-result p4

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr p1, v1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sub-int/2addr p2, v1

    .line 24
    invoke-virtual {p3, p4, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->g:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-direct {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->i()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const/4 p3, 0x0

    .line 38
    const/4 p4, 0x1

    .line 39
    if-le p1, p2, :cond_0

    .line 40
    .line 41
    move p1, p4

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move p1, p3

    .line 44
    :goto_0
    iput-boolean p1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->k:Z

    .line 45
    .line 46
    iget-object p1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->g:Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-direct {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->h()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-le p1, p2, :cond_1

    .line 57
    .line 58
    move p3, p4

    .line 59
    :cond_1
    iput-boolean p3, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->l:Z

    .line 60
    .line 61
    return-void
.end method

.method public final setAnimationDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->j:J

    .line 2
    .line 3
    return-void
.end method

.method public final setAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1    # Landroid/view/animation/Interpolator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->n:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    return-void
.end method

.method public final setCharStrategy(Lam/a;)V
    .locals 1
    .param p1    # Lam/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->d:Lzl/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lzl/a;->g(Lam/a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->m:I

    .line 2
    .line 3
    return-void
.end method

.method public final setLetterSpacingExtra(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lzl/h;->i(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->i:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->i:Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    invoke-virtual {p2, p1}, Lzl/h;->j(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->f:Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->getAnimationDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    invoke-virtual {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    new-instance p2, Lzl/f;

    invoke-direct {p2, p1}, Lzl/f;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->getCharStrategy()Lam/a;

    move-result-object p2

    .line 11
    invoke-static {}, Lam/d;->a()Lam/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setCharStrategy(Lam/a;)V

    .line 12
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    invoke-virtual {v0, p1}, Lzl/h;->j(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setCharStrategy(Lam/a;)V

    .line 14
    iget-object p1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->e:Lzl/h;

    invoke-virtual {p1}, Lzl/h;->h()V

    .line 15
    invoke-direct {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->g()Z

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->o:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->o:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->c:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setTextSize(IF)V

    return-void
.end method

.method public final setTextSize(IF)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "getSystem()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    invoke-direct {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->j()V

    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 3
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget v1, p0, Lcom/yy/mobile/rollingtextview/RollingTextView;->h:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_2

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->j()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
