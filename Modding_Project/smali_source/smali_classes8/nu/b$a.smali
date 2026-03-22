.class final Lnu/b$a;
.super Lku/i;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lmu/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lku/i<",
        "TT;>;",
        "Lmu/a;"
    }
.end annotation


# instance fields
.field final e:Lku/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lku/i<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final f:Z

.field final g:Lku/f$a;

.field h:Lku/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lku/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field i:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lku/i;ZLku/f$a;Lku/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/i<",
            "-TT;>;Z",
            "Lku/f$a;",
            "Lku/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lku/i;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnu/b$a;->e:Lku/i;

    .line 5
    .line 6
    iput-boolean p2, p0, Lnu/b$a;->f:Z

    .line 7
    .line 8
    iput-object p3, p0, Lnu/b$a;->g:Lku/f$a;

    .line 9
    .line 10
    iput-object p4, p0, Lnu/b$a;->h:Lku/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lnu/b$a;->e:Lku/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lku/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lnu/b$a;->g:Lku/f$a;

    .line 7
    .line 8
    invoke-interface {v0}, Lku/j;->e()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lnu/b$a;->g:Lku/f$a;

    .line 14
    .line 15
    invoke-interface {v1}, Lku/j;->e()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnu/b$a;->e:Lku/i;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lku/d;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnu/b$a;->h:Lku/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lnu/b$a;->h:Lku/c;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lnu/b$a;->i:Ljava/lang/Thread;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lku/c;->g(Lku/i;)Lku/j;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public i(Lku/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnu/b$a;->e:Lku/i;

    .line 2
    .line 3
    new-instance v1, Lnu/b$a$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lnu/b$a$a;-><init>(Lnu/b$a;Lku/e;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lku/i;->i(Lku/e;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lnu/b$a;->e:Lku/i;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lku/d;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lnu/b$a;->g:Lku/f$a;

    .line 7
    .line 8
    invoke-interface {p1}, Lku/j;->e()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    iget-object v0, p0, Lnu/b$a;->g:Lku/f$a;

    .line 14
    .line 15
    invoke-interface {v0}, Lku/j;->e()V

    .line 16
    .line 17
    .line 18
    throw p1
.end method
