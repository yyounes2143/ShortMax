.class Lec/a$j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lec/a;->A(I)V
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
    iput-object p1, p0, Lec/a$j;->a:Lec/a;

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
    iget-object p1, p0, Lec/a$j;->a:Lec/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lec/a;->v(Lec/a;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lec/a$j;->a:Lec/a;

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
    iget-object p1, p0, Lec/a$j;->a:Lec/a;

    .line 17
    .line 18
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lec/a$j;->a:Lec/a;

    .line 29
    .line 30
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->d0(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lec/a$j;->a:Lec/a;

    .line 38
    .line 39
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->V()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lec/a$j;->a:Lec/a;

    .line 47
    .line 48
    invoke-static {p1}, Lec/a;->b(Lec/a;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->X()V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method
