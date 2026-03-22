.class public final Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
.source "GradientTextView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/base/GradientTextView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->e:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final d()V
    .locals 9

    .line 1
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->c:[I

    .line 2
    .line 3
    if-nez v5, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz v5, :cond_2

    .line 7
    .line 8
    new-instance v8, Landroid/graphics/LinearGradient;

    .line 9
    .line 10
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->b:I

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    move v3, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-float v0, v0

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-float v4, v0

    .line 28
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->d:[F

    .line 29
    .line 30
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    move-object v0, v8

    .line 35
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method


# virtual methods
.method public final getColors()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->c:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPositions()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->d:[F

    .line 2
    .line 3
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatTextView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->d()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final setColor(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(III)V

    return-void
.end method

.method public final setColor(III)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 2
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->c:[I

    .line 3
    iput p3, p0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->b:I

    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->d()V

    return-void
.end method

.method public final setColor([I[FI)V
    .locals 1
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "_colors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->c:[I

    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->d:[F

    .line 7
    iput p3, p0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->b:I

    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->d()V

    return-void
.end method

.method public final setColors([I)V
    .locals 0
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->c:[I

    .line 2
    .line 3
    return-void
.end method

.method public final setPositions([F)V
    .locals 0
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->d:[F

    .line 2
    .line 3
    return-void
.end method
