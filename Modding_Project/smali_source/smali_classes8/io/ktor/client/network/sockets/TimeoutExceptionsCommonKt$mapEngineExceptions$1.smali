.class final Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TimeoutExceptionsCommon.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt;->a(Lgt/g0;Lio/ktor/utils/io/ByteReadChannel;Lsr/c;)Lio/ktor/utils/io/ByteReadChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/o;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.ktor.client.network.sockets.TimeoutExceptionsCommonKt$mapEngineExceptions$1"
    f = "TimeoutExceptionsCommon.kt"
    l = {
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lio/ktor/utils/io/ByteReadChannel;

.field final synthetic j:Lio/ktor/utils/io/b;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/b;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/b;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;->i:Lio/ktor/utils/io/ByteReadChannel;

    .line 2
    .line 3
    iput-object p2, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;->j:Lio/ktor/utils/io/b;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;

    .line 2
    .line 3
    iget-object v0, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;->i:Lio/ktor/utils/io/ByteReadChannel;

    .line 4
    .line 5
    iget-object v1, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;->j:Lio/ktor/utils/io/b;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/b;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final i(Lio/ktor/utils/io/o;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lio/ktor/utils/io/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/o;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/utils/io/o;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;->i(Lio/ktor/utils/io/o;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :try_start_1
    iget-object v1, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;->i:Lio/ktor/utils/io/ByteReadChannel;

    .line 30
    .line 31
    iget-object p1, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;->j:Lio/ktor/utils/io/b;

    .line 32
    .line 33
    iput v2, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;->h:I

    .line 34
    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    const/4 v7, 0x0

    .line 39
    move-object v2, p1

    .line 40
    move-object v5, p0

    .line 41
    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/ByteReadChannelKt;->c(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/e;JLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :goto_0
    iget-object v0, p0, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;->i:Lio/ktor/utils/io/ByteReadChannel;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Lio/ktor/utils/io/ByteReadChannel;->cancel(Ljava/lang/Throwable;)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p1
.end method
