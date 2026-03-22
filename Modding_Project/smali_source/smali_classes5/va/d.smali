.class public final Lva/d;
.super Ljava/lang/Object;

# interfaces
.implements Lua/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lua/b<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private a:Lua/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lua/e<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lua/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lua/e<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lva/d;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p2, p0, Lva/d;->a:Lua/e;

    .line 12
    .line 13
    iput-object p1, p0, Lva/d;->b:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic a(Lva/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lva/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lva/d;)Lua/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lva/d;->a:Lua/e;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final onComplete(Lua/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lua/f<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lua/f;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lua/f;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lva/d;->b:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    new-instance v1, Lva/d$a;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lva/d$a;-><init>(Lva/d;Lua/f;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
