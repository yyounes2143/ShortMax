.class public Lku/c;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lku/c$b;,
        Lku/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lku/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lku/c$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lku/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/c$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lku/c;->a:Lku/c$a;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lku/c$a;)Lku/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lku/c$a<",
            "TT;>;)",
            "Lku/c<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lku/c;

    .line 2
    .line 3
    invoke-static {p0}, Lqu/c;->d(Lku/c$a;)Lku/c$a;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lku/c;-><init>(Lku/c$a;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static f(Lku/c$a;)Lku/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lku/c$a<",
            "TT;>;)",
            "Lku/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lku/c;

    .line 2
    .line 3
    invoke-static {p0}, Lqu/c;->d(Lku/c$a;)Lku/c$a;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lku/c;-><init>(Lku/c$a;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final b(Lku/f;)Lku/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/f;",
            ")",
            "Lku/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lku/c;->c(Lku/f;Z)Lku/c;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final c(Lku/f;Z)Lku/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/f;",
            "Z)",
            "Lku/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousObservable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object p2, p0

    .line 6
    check-cast p2, Lrx/internal/util/ScalarSynchronousObservable;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lrx/internal/util/ScalarSynchronousObservable;->h(Lku/f;)Lku/c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    new-instance v0, Lnu/b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Lnu/b;-><init>(Lku/c;Lku/f;Z)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lku/c;->f(Lku/c$a;)Lku/c;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public d()Lku/a;
    .locals 1

    .line 1
    invoke-static {p0}, Lku/a;->b(Lku/c;)Lku/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Lku/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lku/g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lku/g;

    .line 2
    .line 3
    invoke-static {p0}, Lnu/a;->c(Lku/c;)Lnu/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lku/g;-><init>(Lku/g$a;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final g(Lku/i;)Lku/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/i<",
            "-TT;>;)",
            "Lku/j;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lku/i;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lku/c;->a:Lku/c$a;

    .line 5
    .line 6
    invoke-static {p0, v0}, Lqu/c;->i(Lku/c;Lku/c$a;)Lku/c$a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Lmu/b;->a(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lqu/c;->h(Lku/j;)Lku/j;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    invoke-static {v0}, Llu/a;->d(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-static {v0}, Lqu/c;->g(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {p1, v1}, Lku/d;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lru/b;->a()Lku/j;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    invoke-static {p1}, Llu/a;->d(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "Error occurred attempting to subscribe ["

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "] and then again while trying to pass to onError."

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {v1, v0, p1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lqu/c;->g(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 70
    .line 71
    .line 72
    throw v1
.end method
