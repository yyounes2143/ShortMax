.class public final Lok/a;
.super Landroid/text/style/ClickableSpan;
.source "CustomClickableSpan.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Landroid/graphics/Typeface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:F

.field private final e:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZLandroid/graphics/Typeface;FLandroid/view/View$OnClickListener;)V
    .locals 0
    .param p3    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lok/a;->a:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lok/a;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lok/a;->c:Landroid/graphics/Typeface;

    .line 9
    .line 10
    iput p4, p0, Lok/a;->d:F

    .line 11
    .line 12
    iput-object p5, p0, Lok/a;->e:Landroid/view/View$OnClickListener;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lok/a;->e:Landroid/view/View$OnClickListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lok/a;->a:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lok/a;->b:Z

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lok/a;->c:Landroid/graphics/Typeface;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget v0, p0, Lok/a;->d:F

    .line 24
    .line 25
    const/high16 v1, -0x40800000    # -1.0f

    .line 26
    .line 27
    cmpg-float v1, v0, v1

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
