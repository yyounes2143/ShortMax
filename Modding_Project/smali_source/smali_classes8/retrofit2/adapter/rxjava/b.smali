.class final Lretrofit2/adapter/rxjava/b;
.super Ljava/lang/Object;
.source "CallEnqueueOnSubscribe.java"

# interfaces
.implements Lku/c$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lku/c$a<",
        "Lfu/c0<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lfu/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfu/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lfu/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/adapter/rxjava/b;->a:Lfu/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lku/i;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/b;->b(Lku/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lku/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/i<",
            "-",
            "Lfu/c0<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lretrofit2/adapter/rxjava/b;->a:Lfu/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lfu/d;->clone()Lfu/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lretrofit2/adapter/rxjava/CallArbiter;

    .line 8
    .line 9
    invoke-direct {v1, v0, p1}, Lretrofit2/adapter/rxjava/CallArbiter;-><init>(Lfu/d;Lku/i;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lku/i;->c(Lku/j;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lku/i;->i(Lku/e;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lretrofit2/adapter/rxjava/b$a;

    .line 19
    .line 20
    invoke-direct {p1, p0, v1}, Lretrofit2/adapter/rxjava/b$a;-><init>(Lretrofit2/adapter/rxjava/b;Lretrofit2/adapter/rxjava/CallArbiter;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Lfu/d;->d(Lfu/f;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
