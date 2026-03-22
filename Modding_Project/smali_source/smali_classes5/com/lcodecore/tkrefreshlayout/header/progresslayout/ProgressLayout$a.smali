.class Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProgressLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c(Lcc/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcc/c;

.field final synthetic b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;Lcc/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;->a:Lcc/c;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;->b:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;->a:Lcc/c;

    .line 7
    .line 8
    invoke-interface {p1}, Lcc/c;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
