.class public abstract Lcom/bytedance/bdtracker/v3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/v3$d;
    }
.end annotation


# instance fields
.field public a:Lcom/bytedance/bdtracker/v3;

.field public b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/bdtracker/v3$d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Lcom/bytedance/bdtracker/v3$d<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/v3;->a:Lcom/bytedance/bdtracker/v3;

    .line 4
    invoke-interface {p3}, Lcom/bytedance/bdtracker/v3$d;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, p1}, Lcom/bytedance/bdtracker/v3$d;->b(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p3, v1}, Lcom/bytedance/bdtracker/v3$d;->b(Ljava/lang/Object;)Z

    move-result v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    move-object p1, v1

    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {p3, p1, p2, v0}, Lcom/bytedance/bdtracker/v3$d;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/bdtracker/v3;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, v1}, Lcom/bytedance/bdtracker/v3$d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p3, p1}, Lcom/bytedance/bdtracker/v3$d;->a(Ljava/lang/Object;)V

    :cond_1
    return-object p1

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    move v4, p2

    move-object p2, p1

    move p1, v4

    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p3, p2}, Lcom/bytedance/bdtracker/v3$d;->b(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    if-eqz v2, :cond_6

    invoke-interface {p3, p2, v1}, Lcom/bytedance/bdtracker/v3$d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    invoke-interface {p3, p2}, Lcom/bytedance/bdtracker/v3$d;->a(Ljava/lang/Object;)V

    :cond_6
    return-object p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "agent == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/os/Handler;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/bdtracker/v3;->a:Lcom/bytedance/bdtracker/v3;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/v3;->a(Landroid/os/Handler;)V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/bdtracker/v3;->b:Landroid/os/Handler;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/v3;->a:Lcom/bytedance/bdtracker/v3;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/v3;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/v3$b;

    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/v3$b;-><init>(Lcom/bytedance/bdtracker/v3;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/bdtracker/v3;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/bdtracker/v3$d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/v3$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/v3$c;-><init>(Lcom/bytedance/bdtracker/v3;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/bdtracker/v3;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/bdtracker/v3$d;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/v3$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/v3$a;-><init>(Lcom/bytedance/bdtracker/v3;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/bdtracker/v3;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bytedance/bdtracker/v3$d;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    return-object p1
.end method
