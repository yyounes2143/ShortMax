.class public final Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;
.super Landroid/widget/FrameLayout;
.source "GradientProgressBar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    const-string p2, "#23252A"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;->a:I

    .line 6
    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;->b:Landroid/view/View;

    .line 7
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p1, 0x4

    .line 8
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;->b(I)I

    move-result p1

    .line 9
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 11
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->bg_progress_gradient:I

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;->c(Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p1, v0

    .line 13
    float-to-int p1, p1

    .line 14
    return p1
.end method

.method private static final c(Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/2addr v0, p1

    .line 6
    div-int/lit8 v0, v0, 0x64

    .line 7
    .line 8
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;->b:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    .line 16
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;->b:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final setProgress(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x64

    .line 3
    .line 4
    invoke-static {p1, v0, v1}, Lkotlin/ranges/e;->n(III)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;->b:Landroid/view/View;

    .line 9
    .line 10
    new-instance v1, Lsj/a;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lsj/a;-><init>(Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
