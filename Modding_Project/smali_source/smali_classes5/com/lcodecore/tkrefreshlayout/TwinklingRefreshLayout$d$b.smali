.class Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d$b;
.super Ljava/lang/Object;
.source "TwinklingRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;


# direct methods
.method constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d$b;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d$b;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->e0()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d$b;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->g:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 9
    .line 10
    iget-boolean v1, v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->u:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->u(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d$b;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->Z(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d$b;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->a(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;)Lec/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lec/a;->y()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
