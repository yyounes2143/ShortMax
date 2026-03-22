.class Lec/a$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lec/a;->z(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lec/a;


# direct methods
.method constructor <init>(Lec/a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec/a$f;->b:Lec/a;

    .line 2
    .line 3
    iput-boolean p2, p0, Lec/a$f;->a:Z

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
    .locals 2

    .line 1
    iget-object p1, p0, Lec/a$f;->b:Lec/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lec/a;->o(Lec/a;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lec/a$f;->b:Lec/a;

    .line 8
    .line 9
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->c0(Z)V

    .line 14
    .line 15
    .line 16
    iget-boolean p1, p0, Lec/a$f;->a:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lec/a$f;->b:Lec/a;

    .line 21
    .line 22
    invoke-static {p1}, Lec/a;->m(Lec/a;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lec/a$f;->b:Lec/a;

    .line 29
    .line 30
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lec/a$f;->b:Lec/a;

    .line 41
    .line 42
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    .line 56
    iget-object p1, p0, Lec/a$f;->b:Lec/a;

    .line 57
    .line 58
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lec/a$f;->b:Lec/a;

    .line 70
    .line 71
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lec/a$f;->b:Lec/a;

    .line 84
    .line 85
    invoke-static {p1, v0}, Lec/a;->n(Lec/a;Z)Z

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lec/a$f;->b:Lec/a;

    .line 89
    .line 90
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->d0(Z)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lec/a$f;->b:Lec/a;

    .line 98
    .line 99
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->X()V

    .line 104
    .line 105
    .line 106
    :cond_0
    return-void
.end method
