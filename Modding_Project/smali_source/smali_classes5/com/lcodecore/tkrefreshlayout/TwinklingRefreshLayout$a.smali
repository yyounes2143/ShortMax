.class Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;
.super Ljava/lang/Object;
.source "TwinklingRefreshLayout.java"

# interfaces
.implements Lcc/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lec/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Lec/c;->d(Landroid/view/MotionEvent;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lec/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lec/c;->b(Landroid/view/MotionEvent;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lec/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Lec/c;->f(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lec/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->l(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F

    .line 10
    .line 11
    .line 12
    move-result v6

    .line 13
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->p(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    move-object v2, p1

    .line 20
    move-object v3, p2

    .line 21
    move v4, p3

    .line 22
    move v5, p4

    .line 23
    invoke-interface/range {v1 .. v7}, Lec/c;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
