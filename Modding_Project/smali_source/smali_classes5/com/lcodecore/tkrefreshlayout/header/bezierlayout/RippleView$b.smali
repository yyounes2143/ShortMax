.class Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RippleView.java"


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
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->b(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$b;->a:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->b(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
