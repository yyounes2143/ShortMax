.class Lec/a$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lec/a;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lec/a;


# direct methods
.method constructor <init>(Lec/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec/a$g;->a:Lec/a;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lec/a$g;->a:Lec/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lec/a;->p(Lec/a;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lec/a$g;->a:Lec/a;

    .line 8
    .line 9
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lec/a$g;->a:Lec/a;

    .line 24
    .line 25
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->p()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lec/a$g;->a:Lec/a;

    .line 37
    .line 38
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->Y(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lec/a$g;->a:Lec/a;

    .line 47
    .line 48
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lec/a$g;->a:Lec/a;

    .line 59
    .line 60
    invoke-static {p1}, Lec/a;->q(Lec/a;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lec/a$g;->a:Lec/a;

    .line 67
    .line 68
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->Z(Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lec/a$g;->a:Lec/a;

    .line 76
    .line 77
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->O()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lec/a$g;->a:Lec/a;

    .line 85
    .line 86
    invoke-static {p1, v0}, Lec/a;->r(Lec/a;Z)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lec/a$g;->a:Lec/a;

    .line 91
    .line 92
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->Z(Z)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lec/a$g;->a:Lec/a;

    .line 100
    .line 101
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->O()V

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_0
    return-void
.end method
