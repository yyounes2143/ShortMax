.class Lec/a$l;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lec/a;->F(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lec/a;


# direct methods
.method constructor <init>(Lec/a;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec/a$l;->c:Lec/a;

    .line 2
    .line 3
    iput p2, p0, Lec/a$l;->a:I

    .line 4
    .line 5
    iput p3, p0, Lec/a$l;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lec/a$l;->c:Lec/a;

    .line 2
    .line 3
    invoke-static {p1}, Lec/a;->m(Lec/a;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lec/a$l;->c:Lec/a;

    .line 10
    .line 11
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lec/a$l;->c:Lec/a;

    .line 22
    .line 23
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->h0()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lec/a$l;->c:Lec/a;

    .line 34
    .line 35
    invoke-virtual {p1}, Lec/a;->B()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lec/a$l;->c:Lec/a;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-static {p1, v0}, Lec/a;->d(Lec/a;Z)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lec/a$l;->c:Lec/a;

    .line 45
    .line 46
    invoke-static {p1, v0}, Lec/a;->e(Lec/a;Z)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lec/a$l;->c:Lec/a;

    .line 51
    .line 52
    iget v2, p0, Lec/a$l;->a:I

    .line 53
    .line 54
    iget p1, p0, Lec/a$l;->b:I

    .line 55
    .line 56
    mul-int/lit8 p1, p1, 0x2

    .line 57
    .line 58
    int-to-long v4, p1

    .line 59
    invoke-static {v1}, Lec/a;->f(Lec/a;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    new-instance v7, Lec/a$l$a;

    .line 64
    .line 65
    invoke-direct {v7, p0}, Lec/a$l$a;-><init>(Lec/a$l;)V

    .line 66
    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual/range {v1 .. v7}, Lec/a;->C(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
