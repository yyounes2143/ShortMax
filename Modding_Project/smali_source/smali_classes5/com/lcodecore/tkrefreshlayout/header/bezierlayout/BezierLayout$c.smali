.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$c;
.super Ljava/lang/Object;
.source "BezierLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->a(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$c;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$c;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    .line 14
    .line 15
    neg-float p1, p1

    .line 16
    const/high16 v1, 0x42200000    # 40.0f

    .line 17
    .line 18
    mul-float/2addr p1, v1

    .line 19
    float-to-int p1, p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->setCir_x(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$c;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
