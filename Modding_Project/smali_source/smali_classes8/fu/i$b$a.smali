.class Lfu/i$b$a;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lfu/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfu/i$b;->d(Lfu/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfu/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfu/f;

.field final synthetic b:Lfu/i$b;


# direct methods
.method constructor <init>(Lfu/i$b;Lfu/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfu/i$b$a;->b:Lfu/i$b;

    .line 2
    .line 3
    iput-object p2, p0, Lfu/i$b$a;->a:Lfu/f;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c(Lfu/i$b$a;Lfu/f;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfu/i$b$a;->e(Lfu/f;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lfu/i$b$a;Lfu/f;Lfu/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfu/i$b$a;->f(Lfu/f;Lfu/c0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic e(Lfu/f;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfu/i$b$a;->b:Lfu/i$b;

    .line 2
    .line 3
    invoke-interface {p1, v0, p2}, Lfu/f;->a(Lfu/d;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic f(Lfu/f;Lfu/c0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfu/i$b$a;->b:Lfu/i$b;

    .line 2
    .line 3
    iget-object v0, v0, Lfu/i$b;->b:Lfu/d;

    .line 4
    .line 5
    invoke-interface {v0}, Lfu/d;->isCanceled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lfu/i$b$a;->b:Lfu/i$b;

    .line 12
    .line 13
    new-instance v0, Ljava/io/IOException;

    .line 14
    .line 15
    const-string v1, "Canceled"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2, v0}, Lfu/f;->a(Lfu/d;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lfu/i$b$a;->b:Lfu/i$b;

    .line 25
    .line 26
    invoke-interface {p1, v0, p2}, Lfu/f;->b(Lfu/d;Lfu/c0;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lfu/d;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/d<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lfu/i$b$a;->b:Lfu/i$b;

    .line 2
    .line 3
    iget-object p1, p1, Lfu/i$b;->a:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iget-object v0, p0, Lfu/i$b$a;->a:Lfu/f;

    .line 6
    .line 7
    new-instance v1, Lfu/k;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0, p2}, Lfu/k;-><init>(Lfu/i$b$a;Lfu/f;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public b(Lfu/d;Lfu/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/d<",
            "TT;>;",
            "Lfu/c0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lfu/i$b$a;->b:Lfu/i$b;

    .line 2
    .line 3
    iget-object p1, p1, Lfu/i$b;->a:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iget-object v0, p0, Lfu/i$b$a;->a:Lfu/f;

    .line 6
    .line 7
    new-instance v1, Lfu/j;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0, p2}, Lfu/j;-><init>(Lfu/i$b$a;Lfu/f;Lfu/c0;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
