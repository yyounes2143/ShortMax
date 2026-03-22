.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "externalLinkHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    const/16 p1, 0xc

    .line 4
    iput p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;->b:I

    .line 5
    new-instance p3, Landroid/widget/ImageButton;

    invoke-direct {p3, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    invoke-static {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/k;->a(ILandroid/content/Context;)I

    move-result v0

    .line 8
    invoke-static {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/k;->a(ILandroid/content/Context;)I

    move-result p1

    .line 9
    invoke-direct {p4, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    sget p1, Lcom/moloco/sdk/o;->e:I

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p3, p1}, Landroid/view/View;->setClipToOutline(Z)V

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/j;

    invoke-direct {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/j;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;->c:Landroid/widget/ImageButton;

    .line 16
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    const-string p1, "Ad Badge"

    invoke-virtual {p3, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 2
    .line 3
    const-string p1, "https://cdn-f.adsmoloco.com/moloco-cdn/privacy.html"

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;->a(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAdButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;->c:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    new-array p2, p2, [I

    .line 18
    .line 19
    iget-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;->c:Landroid/widget/ImageButton;

    .line 20
    .line 21
    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 22
    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    aget p3, p2, p3

    .line 26
    .line 27
    int-to-float p3, p3

    .line 28
    div-float/2addr p3, p1

    .line 29
    const/4 p4, 0x1

    .line 30
    aget p2, p2, p4

    .line 31
    .line 32
    int-to-float p2, p2

    .line 33
    div-float/2addr p2, p1

    .line 34
    iget-object p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;->c:Landroid/widget/ImageButton;

    .line 35
    .line 36
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    int-to-float p4, p4

    .line 41
    div-float/2addr p4, p1

    .line 42
    iget-object p5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;->c:Landroid/widget/ImageButton;

    .line 43
    .line 44
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result p5

    .line 48
    int-to-float p5, p5

    .line 49
    div-float/2addr p5, p1

    .line 50
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;

    .line 51
    .line 52
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;

    .line 53
    .line 54
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;

    .line 55
    .line 56
    invoke-direct {v1, p3, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;-><init>(FF)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;

    .line 60
    .line 61
    invoke-direct {p2, p4, p5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;-><init>(FF)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;->d:Lkotlin/jvm/functions/Function1;

    .line 68
    .line 69
    if-eqz p2, :cond_0

    .line 70
    .line 71
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void
.end method

.method public final setOnButtonRenderedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;->d:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public final setPrivacyUrl(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "url"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;->c:Landroid/widget/ImageButton;

    .line 8
    .line 9
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/i;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/i;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/b;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
