.class Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView$a;
.super Ljava/lang/Object;
.source "BallPulseView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView$a;->b:Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;

    .line 2
    .line 3
    iput p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView$a;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView$a;->b:Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->d(Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;)[F

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView$a;->a:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Float;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    aput p1, v0, v1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView$a;->b:Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
