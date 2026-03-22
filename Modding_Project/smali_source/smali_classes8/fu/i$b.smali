.class final Lfu/i$b;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lfu/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfu/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfu/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Lfu/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfu/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lfu/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lfu/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfu/i$b;->a:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lfu/i$b;->b:Lfu/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfu/i$b;->b:Lfu/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lfu/d;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clone()Lfu/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfu/d<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lfu/i$b;

    iget-object v1, p0, Lfu/i$b;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lfu/i$b;->b:Lfu/d;

    invoke-interface {v2}, Lfu/d;->clone()Lfu/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfu/i$b;-><init>(Ljava/util/concurrent/Executor;Lfu/d;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfu/i$b;->clone()Lfu/d;

    move-result-object v0

    return-object v0
.end method

.method public d(Lfu/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/f<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "callback == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfu/i$b;->b:Lfu/d;

    .line 7
    .line 8
    new-instance v1, Lfu/i$b$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lfu/i$b$a;-><init>(Lfu/i$b;Lfu/f;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lfu/d;->d(Lfu/f;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public execute()Lfu/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfu/c0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfu/i$b;->b:Lfu/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lfu/d;->execute()Lfu/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfu/i$b;->b:Lfu/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lfu/d;->isCanceled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lfu/i$b;->b:Lfu/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lfu/d;->request()Lokhttp3/Request;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
