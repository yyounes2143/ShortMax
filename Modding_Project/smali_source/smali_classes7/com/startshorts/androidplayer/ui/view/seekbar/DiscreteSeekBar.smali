.class public final Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;
.super Landroid/view/View;
.source "DiscreteSeekBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$a;,
        Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final A:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lyj/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lyj/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lyj/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private final f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;
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

.field private t:I

.field private u:I

.field private v:Z

.field private w:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private x:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private y:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private z:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->A:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$a;

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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
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
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->j:I

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->o:Landroid/graphics/Rect;

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->p:Landroid/graphics/Rect;

    .line 9
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->u:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar:[I

    sget v3, Lcom/startshorts/androidplayer/R$style;->Widget_DiscreteSeekBar:I

    .line 13
    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_allowTrackClickToDrag:I

    iget-boolean p3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->k:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 15
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->k:Z

    .line 16
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_trackHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->d:I

    .line 17
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_scrubberHeight:I

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->e:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_thumbIcon:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 19
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 20
    sget p3, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_thumbEnableSize:I

    const/16 v2, 0xc

    .line 21
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 22
    sget v3, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_thumbDisableSize:I

    .line 23
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    mul-int/lit8 v3, p3, 0x3

    const/4 v4, 0x2

    .line 24
    div-int/2addr v3, v4

    sub-int/2addr v3, p3

    .line 25
    div-int/2addr v3, v4

    invoke-static {v1, v3}, Lkotlin/ranges/e;->e(II)I

    move-result v3

    iput v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->f:I

    .line 26
    sget v3, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_max:I

    .line 27
    sget v5, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_min:I

    .line 28
    sget v6, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_value:I

    .line 29
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 30
    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    const/4 v9, 0x5

    const/16 v10, 0x64

    if-eqz v8, :cond_1

    .line 31
    iget v8, v7, Landroid/util/TypedValue;->type:I

    if-ne v8, v9, :cond_0

    .line 32
    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    :goto_0
    move v10, v3

    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p1, v3, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 35
    iget v3, v7, Landroid/util/TypedValue;->type:I

    if-ne v3, v9, :cond_2

    .line 36
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto :goto_2

    .line 37
    :cond_2
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v1

    .line 38
    :goto_2
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 39
    iget v5, v7, Landroid/util/TypedValue;->type:I

    if-ne v5, v9, :cond_4

    .line 40
    iget v5, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->t:I

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_3

    .line 41
    :cond_4
    iget v5, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->t:I

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 42
    :goto_3
    iput v5, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->t:I

    .line 43
    :cond_5
    iput v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

    add-int/lit8 v5, v3, 0x1

    .line 44
    invoke-static {v5, v10}, Lkotlin/ranges/e;->e(II)I

    move-result v5

    iput v5, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

    .line 45
    iget v5, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->t:I

    invoke-static {v10, v5}, Lkotlin/ranges/e;->j(II)I

    move-result v5

    invoke-static {v3, v5}, Lkotlin/ranges/e;->e(II)I

    move-result v3

    iput v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->i:I

    .line 46
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->y()V

    .line 47
    sget v3, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_trackColor:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    sget v5, Lcom/startshorts/androidplayer/R$styleable;->DiscreteSeekBar_dsb_progressColor:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_6

    .line 49
    new-instance v5, Landroid/content/res/ColorStateList;

    new-array v6, v1, [I

    filled-new-array {v6}, [[I

    move-result-object v6

    const v7, -0xff6978

    filled-new-array {v7}, [I

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 50
    :cond_6
    new-instance v6, Lyj/c;

    invoke-direct {v6, v3}, Lyj/c;-><init>(Landroid/content/res/ColorStateList;)V

    .line 51
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 52
    iput-object v6, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->b:Lyj/c;

    .line 53
    new-instance v3, Lyj/d;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v1, v4, v6}, Lyj/d;-><init>(Landroid/content/res/ColorStateList;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->c:Lyj/d;

    .line 54
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 55
    new-instance v3, Lyj/b;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v5, p3, v2, p2}, Lyj/b;-><init>(Landroid/content/res/ColorStateList;IILandroid/graphics/Bitmap;)V

    .line 56
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 57
    invoke-virtual {v3}, Lyj/b;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {v3}, Lyj/b;->getIntrinsicHeight()I

    move-result p3

    invoke-virtual {v3, v1, v1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    iput-object v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

    .line 59
    invoke-virtual {v3, v0}, Lyj/b;->f(Z)V

    .line 60
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
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final A(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyj/b;->getIntrinsicWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->o:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->o:Landroid/graphics/Rect;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->c:Lyj/d;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->c:Lyj/d;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->p:Landroid/graphics/Rect;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->o:Landroid/graphics/Rect;

    .line 54
    .line 55
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->f:I

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
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->f:I

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
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->o:Landroid/graphics/Rect;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->o:Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private final B()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->i:I

    .line 26
    .line 27
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

    .line 28
    .line 29
    sub-int/2addr v0, v1

    .line 30
    int-to-float v0, v0

    .line 31
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

    .line 32
    .line 33
    sub-int v4, v3, v1

    .line 34
    .line 35
    int-to-float v4, v4

    .line 36
    div-float/2addr v0, v4

    .line 37
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->t:I

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
    invoke-direct {p0, v1, v0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->A(II)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->r(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->u(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;)Lkotlin/Unit;

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

.method private final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->y:Lkotlinx/coroutines/r;

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
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->y:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    return-void
.end method

.method private final getAnimatedProgress()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->s:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->i:I

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method public static synthetic i(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;ILandroid/view/MotionEvent;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h(ILandroid/view/MotionEvent;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private final j()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyj/b;->getIntrinsicWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lyj/b;->getIntrinsicHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->f:I

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
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->d:I

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
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->b:Lyj/c;

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->e:I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->c:Lyj/d;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->B()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private final m()Z
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

.method private final n(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;->b(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;IZ)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final p(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->q:Lxj/a;

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

    .line 15
    .line 16
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

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
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->i:I

    .line 27
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->n(IZ)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->B()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final r(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;Landroid/animation/ValueAnimator;)V
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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->setProgress(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final s(Landroid/view/MotionEvent;ZZ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->p:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->f:I

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
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->m:Z

    .line 35
    .line 36
    if-nez p3, :cond_1

    .line 37
    .line 38
    iget-boolean p3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->k:Z

    .line 39
    .line 40
    if-eqz p3, :cond_1

    .line 41
    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->m:Z

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
    iget p3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->f:I

    .line 53
    .line 54
    sub-int/2addr p2, p3

    .line 55
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->n:I

    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->w(Landroid/view/MotionEvent;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 63
    .line 64
    .line 65
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->f:I

    .line 66
    .line 67
    neg-int p3, p2

    .line 68
    neg-int p2, p2

    .line 69
    invoke-virtual {v0, p3, p2}, Landroid/graphics/Rect;->inset(II)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->m:Z

    .line 73
    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->f()V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->d()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iget p2, v0, Landroid/graphics/Rect;->left:I

    .line 90
    .line 91
    int-to-float p2, p2

    .line 92
    sub-float/2addr p1, p2

    .line 93
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->f:I

    .line 94
    .line 95
    int-to-float p2, p2

    .line 96
    sub-float/2addr p1, p2

    .line 97
    float-to-int p1, p1

    .line 98
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->n:I

    .line 99
    .line 100
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;

    .line 101
    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    invoke-interface {p1, p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;->d(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->m:Z

    .line 108
    .line 109
    return p1
.end method

.method private final t(J)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->f()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 5
    .line 6
    new-instance v4, Lwj/a;

    .line 7
    .line 8
    invoke-direct {v4, p0}, Lwj/a;-><init>(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;)V

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->y:Lkotlinx/coroutines/r;

    .line 20
    .line 21
    return-void
.end method

.method private static final u(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->m:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->w:Landroid/view/MotionEvent;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {p0, v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->s(Landroid/view/MotionEvent;ZZ)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;->c(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private final v()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;->e(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->u:I

    .line 18
    .line 19
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->w:Landroid/view/MotionEvent;

    .line 20
    .line 21
    invoke-interface {v0, v1, p0, v2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;->a(ILcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;Landroid/view/MotionEvent;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->m:Z

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final w(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    float-to-int p1, p1

    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "getBounds(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    div-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->n:I

    .line 24
    .line 25
    sub-int/2addr p1, v1

    .line 26
    add-int/2addr p1, v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    add-int/2addr v3, v0

    .line 40
    sub-int/2addr v2, v3

    .line 41
    if-ge p1, v1, :cond_0

    .line 42
    .line 43
    move p1, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    if-le p1, v2, :cond_1

    .line 46
    .line 47
    move p1, v2

    .line 48
    :cond_1
    :goto_0
    sub-int/2addr v2, v1

    .line 49
    sub-int/2addr p1, v1

    .line 50
    int-to-float p1, p1

    .line 51
    int-to-float v0, v2

    .line 52
    div-float/2addr p1, v0

    .line 53
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

    .line 54
    .line 55
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

    .line 56
    .line 57
    sub-int/2addr v0, v1

    .line 58
    int-to-float v0, v0

    .line 59
    mul-float/2addr p1, v0

    .line 60
    int-to-float v0, v1

    .line 61
    add-float/2addr p1, v0

    .line 62
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->p(IZ)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private final x()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->b:Lyj/c;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lyj/a;->setState([I)Z

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->c:Lyj/d;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lyj/a;->setState([I)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final y()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->j:I

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
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->j:I

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private final z(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

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
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->f:I

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

    .line 39
    .line 40
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

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
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->i:I

    .line 52
    .line 53
    if-eq v1, v0, :cond_0

    .line 54
    .line 55
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->i:I

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->n(IZ)V

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
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->t:I

    .line 68
    .line 69
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

    .line 70
    .line 71
    sub-int/2addr v2, v3

    .line 72
    int-to-float v2, v2

    .line 73
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

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
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->A(II)V

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final C(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p1}, Lyj/b;->g(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getAnimationPosition()F

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
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

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
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

    .line 20
    .line 21
    if-le p1, v1, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->q:Lxj/a;

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
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->s:I

    .line 32
    .line 33
    sget-object v1, Lxj/a;->a:Lxj/a$c;

    .line 34
    .line 35
    int-to-float p1, p1

    .line 36
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$c;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$c;-><init>(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0, p1, v2}, Lxj/a$c;->a(FFLxj/a$a;)Lxj/a;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->q:Lxj/a;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->x()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->z:Landroid/animation/ValueAnimator;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->z:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    return-void
.end method

.method public final g(I)V
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    iget-boolean v0, v6, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->v:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v6, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->x:Landroid/view/MotionEvent;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v7

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v9

    .line 18
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 19
    .line 20
    .line 21
    move-result v12

    .line 22
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result v13

    .line 26
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    .line 27
    .line 28
    .line 29
    move-result v14

    .line 30
    const/4 v11, 0x1

    .line 31
    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x4

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    move-object v0, p0

    .line 42
    move/from16 v1, p1

    .line 43
    .line 44
    move-object v2, v7

    .line 45
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->i(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;ILandroid/view/MotionEvent;ZILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final getAnimationPosition()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->r:F

    .line 2
    .line 3
    return v0
.end method

.method public final getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final h(ILandroid/view/MotionEvent;Z)Z
    .locals 2
    .param p2    # Landroid/view/MotionEvent;
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
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->u:I

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x1

    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    if-eq p1, v0, :cond_2

    .line 24
    .line 25
    const/4 p3, 0x2

    .line 26
    if-eq p1, p3, :cond_1

    .line 27
    .line 28
    const/4 p2, 0x3

    .line 29
    if-eq p1, p2, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->m:Z

    .line 33
    .line 34
    if-eqz p1, :cond_6

    .line 35
    .line 36
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->x:Landroid/view/MotionEvent;

    .line 37
    .line 38
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->w(Landroid/view/MotionEvent;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->v:Z

    .line 43
    .line 44
    if-eqz p1, :cond_6

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->v:Z

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->f()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->v()V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->w:Landroid/view/MotionEvent;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 59
    .line 60
    .line 61
    :cond_3
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->w:Landroid/view/MotionEvent;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->v:Z

    .line 66
    .line 67
    if-nez p1, :cond_7

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->v:Z

    .line 70
    .line 71
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->w:Landroid/view/MotionEvent;

    .line 76
    .line 77
    if-eqz p3, :cond_5

    .line 78
    .line 79
    const-wide/16 p1, 0x0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    const-wide/16 p1, 0xc8

    .line 83
    .line 84
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->t(J)V

    .line 85
    .line 86
    .line 87
    :cond_6
    :goto_1
    return v0

    .line 88
    :cond_7
    return v1
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->q:Lxj/a;

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

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public final o()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->j()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->b:Lyj/c;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lyj/a;->draw(Landroid/graphics/Canvas;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->c:Lyj/d;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getAnimatedProgress()I

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
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

    .line 27
    .line 28
    if-lt v0, p1, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->j:I

    .line 32
    .line 33
    add-int/2addr v0, p1

    .line 34
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->c(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

    .line 39
    .line 40
    if-gt v0, p1, :cond_3

    .line 41
    .line 42
    return v1

    .line 43
    :cond_3
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->j:I

    .line 44
    .line 45
    sub-int/2addr v0, p1

    .line 46
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->c(I)V

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->x()V

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
    const/high16 p2, 0x40c00000    # 6.0f

    .line 6
    .line 7
    invoke-static {p2}, Ljk/g;->a(F)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/2addr p2, v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr p2, v0

    .line 21
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->f:I

    .line 22
    .line 23
    mul-int/lit8 v0, v0, 0x2

    .line 24
    .line 25
    add-int/2addr p2, v0

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->j()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
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
    const/4 v5, 0x4

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move-object v3, p1

    .line 12
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->i(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;ILandroid/view/MotionEvent;ZILjava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final q(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getProgress()I

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
    new-instance v0, Lwj/b;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lwj/b;-><init>(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;)V

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->z:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    return-void
.end method

.method public final setAnimationPosition(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->r:F

    .line 2
    .line 3
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

    .line 4
    .line 5
    int-to-float v1, v0

    .line 6
    sub-float/2addr p1, v1

    .line 7
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

    .line 8
    .line 9
    sub-int/2addr v1, v0

    .line 10
    int-to-float v0, v1

    .line 11
    div-float/2addr p1, v0

    .line 12
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->z(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setMax(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

    .line 7
    .line 8
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

    .line 9
    .line 10
    if-ge p1, v0, :cond_1

    .line 11
    .line 12
    add-int/lit8 p1, p1, -0x1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->setMin(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->y()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setMin(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->h:I

    .line 7
    .line 8
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->g:I

    .line 9
    .line 10
    if-le p1, v0, :cond_1

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->setMax(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->y()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setOnProgressChangeListener(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->l:Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar$b;

    .line 2
    .line 3
    return-void
.end method

.method public final setProgress(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->p(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setScrubberHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTrackHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->d:I

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->a:Lyj/b;

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->b:Lyj/c;

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->c:Lyj/d;

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
