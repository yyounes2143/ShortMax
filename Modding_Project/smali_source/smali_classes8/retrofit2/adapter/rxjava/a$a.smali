.class Lretrofit2/adapter/rxjava/a$a;
.super Lku/i;
.source "BodyOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/a;
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
            "-TR;>;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method constructor <init>(Lku/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/i<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lku/i;-><init>(Lku/i;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/adapter/rxjava/a$a;->e:Lku/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/a$a;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lretrofit2/adapter/rxjava/a$a;->e:Lku/i;

    .line 6
    .line 7
    invoke-interface {v0}, Lku/d;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lfu/c0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/a$a;->j(Lfu/c0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(Lfu/c0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/c0<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Lfu/c0;->d()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lretrofit2/adapter/rxjava/a$a;->e:Lku/i;

    .line 9
    .line 10
    invoke-virtual {p1}, Lfu/c0;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {v0, p1}, Lku/d;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iput-boolean v0, p0, Lretrofit2/adapter/rxjava/a$a;->f:Z

    .line 19
    .line 20
    new-instance v1, Lretrofit2/adapter/rxjava/HttpException;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava/HttpException;-><init>(Lfu/c0;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object p1, p0, Lretrofit2/adapter/rxjava/a$a;->e:Lku/i;

    .line 26
    .line 27
    invoke-interface {p1, v1}, Lku/d;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lrx/exceptions/OnCompletedFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lrx/exceptions/OnErrorFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :catch_1
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :catch_2
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    invoke-static {p1}, Llu/a;->d(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lrx/exceptions/CompositeException;

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    new-array v3, v3, [Ljava/lang/Throwable;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    aput-object v1, v3, v4

    .line 49
    .line 50
    aput-object p1, v3, v0

    .line 51
    .line 52
    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lqu/f;->b()Lqu/b;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, v2}, Lqu/b;->a(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lqu/f;->b()Lqu/b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, p1}, Lqu/b;->a(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :goto_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/a$a;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lretrofit2/adapter/rxjava/a$a;->e:Lku/i;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lku/d;->onError(Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 12
    .line 13
    const-string v1, "This should never happen! Report as a Retrofit bug with the full stacktrace."

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lqu/f;->b()Lqu/b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v0}, Lqu/b;->a(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
