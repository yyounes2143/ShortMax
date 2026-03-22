.class public final Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;
.super Landroid/view/View;
.source "DiscreteSeekBar2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$a;,
        Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final B:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private A:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final a:Lyj/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lyj/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lyj/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Z

.field private n:I

.field private final o:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Lxj/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:F

.field private s:I

.field private final t:F

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private y:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private z:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->B:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
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

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->j:I

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->k:Z

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->o:Landroid/graphics/Rect;

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->p:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 12
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->t:F

    .line 13
    sget-object v2, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar:[I

    .line 14
    sget v3, Lcom/startshorts/androidplayer/R$style;->Widget_DiscreteSeekBar:I

    .line 15
    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_allowTrackClickToDrag:I

    iget-boolean p3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->k:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 17
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->k:Z

    .line 18
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_trackHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->d:I

    .line 19
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_scrubberHeight:I

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->e:I

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 21
    sget p3, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_thumbIcon:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 22
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 23
    sget p3, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_thumbEnableSize:I

    const/16 v2, 0xc

    .line 24
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 25
    sget v3, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_thumbDisableSize:I

    .line 26
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    mul-int/lit8 v3, p3, 0x3

    .line 27
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, p3

    .line 28
    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Lkotlin/ranges/e;->e(II)I

    move-result v3

    iput v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->f:I

    .line 29
    sget v3, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_max:I

    .line 30
    sget v4, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_min:I

    .line 31
    sget v5, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_value:I

    .line 32
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 33
    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    const/4 v8, 0x5

    const/16 v9, 0x64

    if-eqz v7, :cond_1

    .line 34
    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-ne v7, v8, :cond_0

    .line 35
    invoke-virtual {p1, v3, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    :goto_0
    move v9, v3

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p1, v3, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 38
    iget v3, v6, Landroid/util/TypedValue;->type:I

    if-ne v3, v8, :cond_2

    .line 39
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto :goto_2

    .line 40
    :cond_2
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v1

    .line 41
    :goto_2
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 42
    iget v4, v6, Landroid/util/TypedValue;->type:I

    if-ne v4, v8, :cond_4

    .line 43
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->u:I

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    goto :goto_3

    .line 44
    :cond_4
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->u:I

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 45
    :goto_3
    iput v4, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->u:I

    .line 46
    :cond_5
    iput v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    add-int/lit8 v4, v3, 0x1

    .line 47
    invoke-static {v4, v9}, Lkotlin/ranges/e;->e(II)I

    move-result v4

    iput v4, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 48
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->u:I

    invoke-static {v9, v4}, Lkotlin/ranges/e;->j(II)I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/ranges/e;->e(II)I

    move-result v3

    iput v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->i:I

    .line 49
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->A()V

    .line 50
    sget v3, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_trackColor:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    sget v4, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_progressColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-nez v4, :cond_6

    .line 52
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v1, [I

    filled-new-array {v5}, [[I

    move-result-object v5

    const v6, -0xff6978

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 53
    :cond_6
    sget v5, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_showTrackRound:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 54
    new-instance v6, Lyj/d;

    invoke-direct {v6, v3, v0}, Lyj/d;-><init>(Landroid/content/res/ColorStateList;Z)V

    .line 55
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 56
    iput-object v6, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->b:Lyj/a;

    goto :goto_4

    .line 57
    :cond_7
    new-instance v6, Lyj/c;

    invoke-direct {v6, v3}, Lyj/c;-><init>(Landroid/content/res/ColorStateList;)V

    .line 58
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 59
    iput-object v6, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->b:Lyj/a;

    .line 60
    :goto_4
    new-instance v3, Lyj/d;

    invoke-direct {v3, v4, v5}, Lyj/d;-><init>(Landroid/content/res/ColorStateList;Z)V

    iput-object v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->c:Lyj/d;

    .line 61
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 62
    new-instance v3, Lyj/b;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v4, p3, v2, p2}, Lyj/b;-><init>(Landroid/content/res/ColorStateList;IILandroid/graphics/Bitmap;)V

    .line 63
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 64
    invoke-virtual {v3}, Lyj/b;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {v3}, Lyj/b;->getIntrinsicHeight()I

    move-result p3

    invoke-virtual {v3, v1, v1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 65
    iput-object v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 66
    invoke-virtual {v3, v0}, Lyj/b;->f(Z)V

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 3
    sget p3, Lcom/startshorts/androidplayer/R$attr;->discreteSeekBarStyle:I

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final A()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->j:I

    .line 7
    .line 8
    const/16 v2, 0x14

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    div-int v1, v0, v1

    .line 13
    .line 14
    if-le v1, v2, :cond_1

    .line 15
    .line 16
    :cond_0
    int-to-float v0, v0

    .line 17
    int-to-float v1, v2

    .line 18
    div-float/2addr v0, v1

    .line 19
    invoke-static {v0}, Ljk/h;->b(F)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-static {v1, v0}, Lkotlin/ranges/e;->e(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->j:I

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private final B(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getBounds(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    div-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->f:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/2addr v2, v0

    .line 25
    add-int/2addr v2, v1

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    add-int/2addr v4, v0

    .line 35
    add-int/2addr v4, v1

    .line 36
    sub-int/2addr v3, v4

    .line 37
    sub-int/2addr v3, v2

    .line 38
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 39
    .line 40
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    .line 41
    .line 42
    sub-int/2addr v0, v1

    .line 43
    int-to-float v0, v0

    .line 44
    mul-float/2addr v0, p1

    .line 45
    int-to-float v1, v1

    .line 46
    add-float/2addr v0, v1

    .line 47
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->i:I

    .line 52
    .line 53
    if-eq v1, v0, :cond_0

    .line 54
    .line 55
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->i:I

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->p(IZ)V

    .line 59
    .line 60
    .line 61
    :cond_0
    int-to-float v0, v3

    .line 62
    mul-float/2addr p1, v0

    .line 63
    const/high16 v1, 0x3f000000    # 0.5f

    .line 64
    .line 65
    add-float/2addr p1, v1

    .line 66
    float-to-int p1, p1

    .line 67
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->u:I

    .line 68
    .line 69
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    .line 70
    .line 71
    sub-int/2addr v2, v3

    .line 72
    int-to-float v2, v2

    .line 73
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 74
    .line 75
    sub-int/2addr v4, v3

    .line 76
    int-to-float v3, v4

    .line 77
    div-float/2addr v2, v3

    .line 78
    mul-float/2addr v2, v0

    .line 79
    add-float/2addr v2, v1

    .line 80
    float-to-int v0, v2

    .line 81
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->C(II)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private final C(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyj/b;->getIntrinsicWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->o:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->o:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    add-int v4, p2, v0

    .line 21
    .line 22
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 23
    .line 24
    invoke-virtual {v1, p2, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->c:Lyj/d;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->c:Lyj/d;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    div-int/lit8 v0, v0, 0x2

    .line 42
    .line 43
    add-int/2addr p2, v0

    .line 44
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 45
    .line 46
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->p:Landroid/graphics/Rect;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->o:Landroid/graphics/Rect;

    .line 54
    .line 55
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->f:I

    .line 56
    .line 57
    neg-int v1, v0

    .line 58
    neg-int v0, v0

    .line 59
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 60
    .line 61
    .line 62
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->f:I

    .line 63
    .line 64
    neg-int v0, p2

    .line 65
    neg-int p2, p2

    .line 66
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->inset(II)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->o:Landroid/graphics/Rect;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->o:Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private final D()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyj/b;->getIntrinsicWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    div-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    add-int/2addr v3, v0

    .line 23
    sub-int/2addr v2, v3

    .line 24
    sub-int/2addr v2, v1

    .line 25
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->i:I

    .line 26
    .line 27
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    .line 28
    .line 29
    sub-int/2addr v0, v1

    .line 30
    int-to-float v0, v0

    .line 31
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 32
    .line 33
    sub-int v4, v3, v1

    .line 34
    .line 35
    int-to-float v4, v4

    .line 36
    div-float/2addr v0, v4

    .line 37
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->u:I

    .line 38
    .line 39
    sub-int/2addr v4, v1

    .line 40
    int-to-float v4, v4

    .line 41
    sub-int/2addr v3, v1

    .line 42
    int-to-float v1, v3

    .line 43
    div-float/2addr v4, v1

    .line 44
    int-to-float v1, v2

    .line 45
    mul-float/2addr v0, v1

    .line 46
    const/high16 v2, 0x3f000000    # 0.5f

    .line 47
    .line 48
    add-float/2addr v0, v2

    .line 49
    float-to-int v0, v0

    .line 50
    mul-float/2addr v4, v1

    .line 51
    add-float/2addr v4, v2

    .line 52
    float-to-int v1, v4

    .line 53
    invoke-direct {p0, v1, v0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->C(II)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->t(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->w(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private final e(Landroid/view/MotionEvent;Z)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    float-to-int p1, p1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    add-int/2addr p1, p2

    .line 15
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string v0, "getBounds(...)"

    .line 22
    .line 23
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    div-int/lit8 p2, p2, 0x2

    .line 31
    .line 32
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->n:I

    .line 33
    .line 34
    sub-int/2addr p1, v0

    .line 35
    add-int/2addr p1, p2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    add-int/2addr v2, p2

    .line 49
    sub-int/2addr v1, v2

    .line 50
    if-ge p1, v0, :cond_1

    .line 51
    .line 52
    move p1, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    if-le p1, v1, :cond_2

    .line 55
    .line 56
    move p1, v1

    .line 57
    :cond_2
    :goto_1
    sub-int/2addr v1, v0

    .line 58
    sub-int/2addr p1, v0

    .line 59
    int-to-float p1, p1

    .line 60
    int-to-float p2, v1

    .line 61
    div-float/2addr p1, p2

    .line 62
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 63
    .line 64
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    .line 65
    .line 66
    sub-int/2addr p2, v0

    .line 67
    int-to-float p2, p2

    .line 68
    mul-float/2addr p1, p2

    .line 69
    int-to-float p2, v0

    .line 70
    add-float/2addr p1, p2

    .line 71
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1
.end method

.method private final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->z:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->z:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    return-void
.end method

.method private final getAnimatedProgress()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->s:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->i:I

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method public static synthetic k(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;Landroid/view/MotionEvent;ZILjava/lang/Object;)Z
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->j(Landroid/view/MotionEvent;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private final l()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyj/b;->getIntrinsicWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lyj/b;->getIntrinsicHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->f:I

    .line 14
    .line 15
    div-int/lit8 v3, v0, 0x2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    sub-int/2addr v6, v7

    .line 34
    sub-int/2addr v6, v2

    .line 35
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 36
    .line 37
    sub-int v1, v6, v1

    .line 38
    .line 39
    add-int/2addr v0, v4

    .line 40
    invoke-virtual {v2, v4, v1, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    .line 42
    .line 43
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->d:I

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    div-int/2addr v0, v1

    .line 47
    const/4 v2, 0x1

    .line 48
    invoke-static {v0, v2}, Lkotlin/ranges/e;->e(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->b:Lyj/a;

    .line 53
    .line 54
    sub-int/2addr v6, v3

    .line 55
    sub-int v3, v6, v0

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    sub-int/2addr v7, v5

    .line 62
    add-int/2addr v0, v6

    .line 63
    invoke-virtual {v2, v4, v3, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->e:I

    .line 67
    .line 68
    div-int/2addr v0, v1

    .line 69
    invoke-static {v0, v1}, Lkotlin/ranges/e;->e(II)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->c:Lyj/d;

    .line 74
    .line 75
    sub-int v2, v6, v0

    .line 76
    .line 77
    add-int/2addr v6, v0

    .line 78
    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->D()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private final o()Z
    .locals 3

    .line 1
    sget-object v0, Lxj/b;->a:Lxj/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getParent(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lxj/b;->a(Landroid/view/ViewParent;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method private final p(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;->c(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;IZ)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final r(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->q:Lxj/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lxj/a;->a()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    .line 15
    .line 16
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 17
    .line 18
    invoke-static {v1, p1}, Lkotlin/ranges/e;->j(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {v0, p1}, Lkotlin/ranges/e;->e(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->i:I

    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->p(IZ)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->D()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final t(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->setProgress(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final u(Landroid/view/MotionEvent;ZZ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->p:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->f:I

    .line 9
    .line 10
    neg-int v2, v1

    .line 11
    neg-int v1, v1

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    move p3, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    float-to-int p3, p3

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    float-to-int v2, v2

    .line 30
    invoke-virtual {v0, p3, v2}, Landroid/graphics/Rect;->contains(II)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    :goto_0
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->m:Z

    .line 35
    .line 36
    if-nez p3, :cond_1

    .line 37
    .line 38
    iget-boolean p3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->k:Z

    .line 39
    .line 40
    if-eqz p3, :cond_1

    .line 41
    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->m:Z

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    div-int/lit8 p2, p2, 0x2

    .line 51
    .line 52
    iget p3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->f:I

    .line 53
    .line 54
    sub-int/2addr p2, p3

    .line 55
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->n:I

    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-direct {p0, p1, v1, p2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->y(Landroid/view/MotionEvent;ZZ)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 64
    .line 65
    .line 66
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->f:I

    .line 67
    .line 68
    neg-int p3, p2

    .line 69
    neg-int p2, p2

    .line 70
    invoke-virtual {v0, p3, p2}, Landroid/graphics/Rect;->inset(II)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->m:Z

    .line 74
    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g()V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->d()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iget p2, v0, Landroid/graphics/Rect;->left:I

    .line 91
    .line 92
    int-to-float p2, p2

    .line 93
    sub-float/2addr p1, p2

    .line 94
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->f:I

    .line 95
    .line 96
    int-to-float p2, p2

    .line 97
    sub-float/2addr p1, p2

    .line 98
    float-to-int p1, p1

    .line 99
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->n:I

    .line 100
    .line 101
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;

    .line 102
    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    invoke-interface {p1, p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;->e(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->m:Z

    .line 109
    .line 110
    return p1
.end method

.method private final v(J)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 5
    .line 6
    new-instance v4, Lwj/c;

    .line 7
    .line 8
    invoke-direct {v4, p0}, Lwj/c;-><init>(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)V

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    move-wide v1, p1

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->z:Lkotlinx/coroutines/r;

    .line 20
    .line 21
    return-void
.end method

.method private static final w(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->m:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->x:Landroid/view/MotionEvent;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->o()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {p0, v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->u(Landroid/view/MotionEvent;ZZ)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;->d(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private final x()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;->a(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->w:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->x:Landroid/view/MotionEvent;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->p:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->f:I

    .line 30
    .line 31
    neg-int v4, v3

    .line 32
    neg-int v3, v3

    .line 33
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    div-int/lit8 v2, v2, 0x2

    .line 41
    .line 42
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->f:I

    .line 43
    .line 44
    sub-int/2addr v2, v3

    .line 45
    iput v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->n:I

    .line 46
    .line 47
    invoke-direct {p0, v0, v1, v1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->y(Landroid/view/MotionEvent;ZZ)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-interface {v0, p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;->b(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->m:Z

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private final y(Landroid/view/MotionEvent;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->e(Landroid/view/MotionEvent;Z)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->r(IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->b:Lyj/a;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lyj/a;->setState([I)Z

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->c:Lyj/d;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lyj/a;->setState([I)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final E(I)V
    .locals 2

    .line 1
    mul-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    sub-int/2addr v0, p1

    .line 6
    div-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1, v0}, Lkotlin/ranges/e;->e(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->f:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p1}, Lyj/b;->g(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getAnimationPosition()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    int-to-float v0, p1

    .line 13
    :goto_0
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    .line 14
    .line 15
    if-ge p1, v1, :cond_1

    .line 16
    .line 17
    :goto_1
    move p1, v1

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 20
    .line 21
    if-le p1, v1, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->q:Lxj/a;

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-virtual {v1}, Lxj/a;->a()V

    .line 29
    .line 30
    .line 31
    :cond_3
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->s:I

    .line 32
    .line 33
    sget-object v1, Lxj/a;->a:Lxj/a$c;

    .line 34
    .line 35
    int-to-float p1, p1

    .line 36
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$c;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$c;-><init>(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0, p1, v2}, Lxj/a$c;->a(FFLxj/a$a;)Lxj/a;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->q:Lxj/a;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    const/16 v0, 0xfa

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lxj/a;->c(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lxj/a;->d()V

    .line 55
    .line 56
    .line 57
    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->z()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->A:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->A:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    return-void
.end method

.method public final getAnimationPosition()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->r:F

    .line 2
    .line 3
    return v0
.end method

.method public final getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final h()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->v:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->y:Landroid/view/MotionEvent;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->j(Landroid/view/MotionEvent;Z)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->y:Landroid/view/MotionEvent;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {p0, v0, v3, v1, v2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->k(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;Landroid/view/MotionEvent;ZILjava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final j(Landroid/view/MotionEvent;Z)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->w:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    if-eq v0, v2, :cond_3

    .line 24
    .line 25
    const/4 p2, 0x2

    .line 26
    if-eq v0, p2, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    if-eq v0, p1, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->v:Z

    .line 33
    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->m:Z

    .line 41
    .line 42
    if-eqz p2, :cond_7

    .line 43
    .line 44
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->y:Landroid/view/MotionEvent;

    .line 45
    .line 46
    invoke-direct {p0, p1, v2, v2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->y(Landroid/view/MotionEvent;ZZ)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->v:Z

    .line 51
    .line 52
    if-eqz p1, :cond_7

    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->v:Z

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->x()V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->x:Landroid/view/MotionEvent;

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 67
    .line 68
    .line 69
    :cond_4
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->x:Landroid/view/MotionEvent;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->v:Z

    .line 74
    .line 75
    if-nez v0, :cond_8

    .line 76
    .line 77
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->v:Z

    .line 78
    .line 79
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->x:Landroid/view/MotionEvent;

    .line 84
    .line 85
    if-eqz p2, :cond_6

    .line 86
    .line 87
    const-wide/16 p1, 0x0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_6
    const-wide/16 p1, 0x64

    .line 91
    .line 92
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->v(J)V

    .line 93
    .line 94
    .line 95
    :cond_7
    :goto_1
    return v2

    .line 96
    :cond_8
    return v1
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->q:Lxj/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lxj/a;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "canvas"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->b:Lyj/a;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lyj/a;->draw(Landroid/graphics/Canvas;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->c:Lyj/d;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lyj/a;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getAnimatedProgress()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v2, 0x15

    .line 18
    .line 19
    if-eq p1, v2, :cond_2

    .line 20
    .line 21
    const/16 v2, 0x16

    .line 22
    .line 23
    if-eq p1, v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 27
    .line 28
    if-lt v0, p1, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->j:I

    .line 32
    .line 33
    add-int/2addr v0, p1

    .line 34
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->c(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    .line 39
    .line 40
    if-gt v0, p1, :cond_3

    .line 41
    .line 42
    return v1

    .line 43
    :cond_3
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->j:I

    .line 44
    .line 45
    sub-int/2addr v0, p1

    .line 46
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->c(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_5
    const/4 v1, 0x0

    .line 58
    :goto_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->z()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->d:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/2addr p2, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/2addr p2, v0

    .line 17
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->f:I

    .line 18
    .line 19
    mul-int/lit8 v0, v0, 0x2

    .line 20
    .line 21
    add-int/2addr p2, v0

    .line 22
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->l()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, p1, v2, v0, v1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->k(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;Landroid/view/MotionEvent;ZILjava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final q()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->l()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final s(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getProgress()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    filled-new-array {v0, p1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-wide/16 v0, 0xc8

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lwj/d;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lwj/d;-><init>(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->A:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    return-void
.end method

.method public final setAnimationPosition(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->r:F

    .line 2
    .line 3
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    .line 4
    .line 5
    int-to-float v1, v0

    .line 6
    sub-float/2addr p1, v1

    .line 7
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 8
    .line 9
    sub-int/2addr v1, v0

    .line 10
    int-to-float v0, v1

    .line 11
    div-float/2addr p1, v0

    .line 12
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->B(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setMax(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 7
    .line 8
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    .line 9
    .line 10
    if-ge p1, v0, :cond_1

    .line 11
    .line 12
    add-int/lit8 p1, p1, -0x1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->setMin(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->A()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setMin(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->h:I

    .line 7
    .line 8
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->g:I

    .line 9
    .line 10
    if-le p1, v0, :cond_1

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->setMax(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->A()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setOnProgressChangeListener(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;

    .line 2
    .line 3
    return-void
.end method

.method public final setProgress(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->r(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setScrubberHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTrackHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->d:I

    .line 2
    .line 3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "who"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->a:Lyj/b;

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->b:Lyj/a;

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->c:Lyj/d;

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 28
    :goto_1
    return p1
.end method
