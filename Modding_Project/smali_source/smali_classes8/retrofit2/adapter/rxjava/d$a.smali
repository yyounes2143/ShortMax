.class Lretrofit2/adapter/rxjava/d$a;
.super Lku/i;
.source "ResultOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lku/i<",
        "Lfu/c0<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final e:Lku/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lku/i<",
            "-",
            "Lgu/a<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lku/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/i<",
            "-",
            "Lgu/a<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lku/i;-><init>(Lku/i;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/adapter/rxjava/d$a;->e:Lku/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lretrofit2/adapter/rxjava/d$a;->e:Lku/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lku/d;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lfu/c0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/d$a;->j(Lfu/c0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(Lfu/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/c0<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lretrofit2/adapter/rxjava/d$a;->e:Lku/i;

    .line 2
    .line 3
    invoke-static {p1}, Lgu/a;->b(Lfu/c0;)Lgu/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lku/d;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lretrofit2/adapter/rxjava/d$a;->e:Lku/i;

    .line 2
    .line 3
    invoke-static {p1}, Lgu/a;->a(Ljava/lang/Throwable;)Lgu/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lku/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lretrofit2/adapter/rxjava/d$a;->e:Lku/i;

    .line 11
    .line 12
    invoke-interface {p1}, Lku/d;->a()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    iget-object v0, p0, Lretrofit2/adapter/rxjava/d$a;->e:Lku/i;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lku/d;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lrx/exceptions/OnCompletedFailedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lrx/exceptions/OnErrorFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :catchall_1
    move-exception v0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :catch_2
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :goto_0
    invoke-static {v0}, Llu/a;->d(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lrx/exceptions/CompositeException;

    .line 35
    .line 36
    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v1, p1}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lqu/f;->b()Lqu/b;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v1}, Lqu/b;->a(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :goto_1
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lqu/f;->b()Lqu/b;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Lqu/b;->a(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    return-void
.end method
