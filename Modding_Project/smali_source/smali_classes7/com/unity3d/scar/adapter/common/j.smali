.class public abstract Lcom/unity3d/scar/adapter/common/j;
.super Ljava/lang/Object;
.source "ScarAdapterBase.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/e;


# instance fields
.field protected a:Lol/c;

.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnl/a;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lnl/a;

.field protected d:Lcom/unity3d/scar/adapter/common/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unity3d/scar/adapter/common/c<",
            "Lcom/unity3d/scar/adapter/common/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/scar/adapter/common/c<",
            "Lcom/unity3d/scar/adapter/common/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/unity3d/scar/adapter/common/j;->b:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/j;->d:Lcom/unity3d/scar/adapter/common/c;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lol/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/j;->a:Lol/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lol/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lol/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/content/Context;ZLol/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/j;->a:Lol/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lol/c;->b(Landroid/content/Context;ZLol/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/util/List;Lol/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;",
            ">;",
            "Lol/b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/j;->a:Lol/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lol/c;->c(Landroid/content/Context;Ljava/util/List;Lol/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/j;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnl/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/unity3d/scar/adapter/common/j;->d:Lcom/unity3d/scar/adapter/common/c;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "Could not find ad for placement \'"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "\'."

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p3, p2, v0}, Lcom/unity3d/scar/adapter/common/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/b;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p1, p2}, Lcom/unity3d/scar/adapter/common/c;->handleError(Lcom/unity3d/scar/adapter/common/i;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput-object v0, p0, Lcom/unity3d/scar/adapter/common/j;->c:Lnl/a;

    .line 44
    .line 45
    new-instance p2, Lcom/unity3d/scar/adapter/common/j$a;

    .line 46
    .line 47
    invoke-direct {p2, p0, p1}, Lcom/unity3d/scar/adapter/common/j$a;-><init>(Lcom/unity3d/scar/adapter/common/j;Landroid/app/Activity;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Lcom/unity3d/scar/adapter/common/k;->a(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method
