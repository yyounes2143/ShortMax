.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BezierLayout.java"


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
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 48
    .line 49
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b$a;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b$a;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;)V

    .line 52
    .line 53
    .line 54
    const-wide/16 v1, 0xc8

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method
