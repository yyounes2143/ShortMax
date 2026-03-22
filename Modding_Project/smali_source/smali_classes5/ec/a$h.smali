.class Lec/a$h;
.super Ljava/lang/Object;
.source "AnimProcessor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lec/a;->w(Z)V
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
    iput-object p1, p0, Lec/a$h;->a:Lec/a;

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
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lec/a$h;->a:Lec/a;

    .line 12
    .line 13
    invoke-static {v1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lec/a$h;->a:Lec/a;

    .line 22
    .line 23
    invoke-static {v2}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v1, v2}, Lfc/c;->g(Landroid/view/View;I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lec/a$h;->a:Lec/a;

    .line 38
    .line 39
    invoke-static {v1}, Lec/a;->s(Lec/a;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sub-int/2addr v1, v0

    .line 44
    if-lez v1, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lec/a$h;->a:Lec/a;

    .line 47
    .line 48
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    iget-object v0, p0, Lec/a$h;->a:Lec/a;

    .line 61
    .line 62
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0, v1}, Lfc/c;->j(Landroid/view/View;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lec/a$h;->a:Lec/a;

    .line 75
    .line 76
    invoke-static {v0}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    div-int/lit8 v1, v1, 0x2

    .line 85
    .line 86
    invoke-static {v0, v1}, Lfc/c;->j(Landroid/view/View;I)V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    iget-object v0, p0, Lec/a$h;->a:Lec/a;

    .line 90
    .line 91
    invoke-static {v0}, Lec/a;->t(Lec/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
