.class public final Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;
.super Lcom/google/android/flexbox/FlexboxLayout;
.source "MaxHeightFlexBoxLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final u:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private r:I

.field private s:F

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->u:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout$a;

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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3f19999a    # 0.6f

    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->s:F

    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/R$styleable;->MaxHeightLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->MaxHeightLayout_mhl_heightMode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->r:I

    .line 8
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->MaxHeightLayout_mhl_heightRatio:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->s:F

    .line 9
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->MaxHeightLayout_mhl_heightDimen:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->t:F

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->B()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final B()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->r:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->s:F

    .line 6
    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->u:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout$a;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "getContext(...)"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout$a;->a(Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout$a;Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    mul-float/2addr v0, v1

    .line 24
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->t:F

    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public final C(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->r:I

    .line 3
    .line 4
    int-to-float p1, p1

    .line 5
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->t:F

    .line 6
    .line 7
    cmpg-float v0, v0, p1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->t:F

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->t:F

    .line 10
    .line 11
    float-to-int v1, v1

    .line 12
    const/high16 v2, -0x80000000

    .line 13
    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    const/high16 v3, 0x40000000    # 2.0f

    .line 17
    .line 18
    if-eq v0, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    :goto_0
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-super {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayout;->onMeasure(II)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
