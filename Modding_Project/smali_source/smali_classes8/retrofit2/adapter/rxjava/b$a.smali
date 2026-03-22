.class Lretrofit2/adapter/rxjava/b$a;
.super Ljava/lang/Object;
.source "CallEnqueueOnSubscribe.java"

# interfaces
.implements Lfu/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/adapter/rxjava/b;->b(Lku/i;)V
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
.field final synthetic a:Lretrofit2/adapter/rxjava/CallArbiter;

.field final synthetic b:Lretrofit2/adapter/rxjava/b;


# direct methods
.method constructor <init>(Lretrofit2/adapter/rxjava/b;Lretrofit2/adapter/rxjava/CallArbiter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lretrofit2/adapter/rxjava/b$a;->b:Lretrofit2/adapter/rxjava/b;

    .line 2
    .line 3
    iput-object p2, p0, Lretrofit2/adapter/rxjava/b$a;->a:Lretrofit2/adapter/rxjava/CallArbiter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lfu/d;Ljava/lang/Throwable;)V
    .locals 0
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
    invoke-static {p2}, Llu/a;->d(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lretrofit2/adapter/rxjava/b$a;->a:Lretrofit2/adapter/rxjava/CallArbiter;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lretrofit2/adapter/rxjava/CallArbiter;->f(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b(Lfu/d;Lfu/c0;)V
    .locals 0
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
    iget-object p1, p0, Lretrofit2/adapter/rxjava/b$a;->a:Lretrofit2/adapter/rxjava/CallArbiter;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lretrofit2/adapter/rxjava/CallArbiter;->g(Lfu/c0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
