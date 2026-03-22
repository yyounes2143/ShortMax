.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$a;
.super Ljava/lang/Object;
.source "RippleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$a;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$a;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    mul-int/lit8 p1, p1, 0x2

    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;I)I

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$a;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
