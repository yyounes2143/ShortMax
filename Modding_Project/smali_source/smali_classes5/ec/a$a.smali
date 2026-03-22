.class Lec/a$a;
.super Ljava/lang/Object;
.source "AnimProcessor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lec/a;
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
    iput-object p1, p0, Lec/a$a;->a:Lec/a;

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
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lec/a$a;->a:Lec/a;

    .line 12
    .line 13
    invoke-static {v0}, Lec/a;->m(Lec/a;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lec/a$a;->a:Lec/a;

    .line 20
    .line 21
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lec/a$a;->a:Lec/a;

    .line 32
    .line 33
    int-to-float v1, p1

    .line 34
    invoke-static {v0, v1}, Lec/a;->j(Lec/a;F)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lec/a$a;->a:Lec/a;

    .line 39
    .line 40
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    .line 54
    iget-object v0, p0, Lec/a$a;->a:Lec/a;

    .line 55
    .line 56
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lec/a$a;->a:Lec/a;

    .line 68
    .line 69
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->r()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lec/a$a;->a:Lec/a;

    .line 82
    .line 83
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    int-to-float v1, p1

    .line 88
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->Q(F)V

    .line 89
    .line 90
    .line 91
    :goto_0
    iget-object v0, p0, Lec/a$a;->a:Lec/a;

    .line 92
    .line 93
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->C()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_1

    .line 102
    .line 103
    iget-object v0, p0, Lec/a$a;->a:Lec/a;

    .line 104
    .line 105
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    int-to-float v1, p1

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lec/a$a;->a:Lec/a;

    .line 118
    .line 119
    invoke-static {v0, p1}, Lec/a;->k(Lec/a;I)V

    .line 120
    .line 121
    .line 122
    :cond_1
    return-void
.end method
