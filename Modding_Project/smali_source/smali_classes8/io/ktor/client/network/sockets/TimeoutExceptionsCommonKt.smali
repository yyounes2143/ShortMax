.class public final Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt;
.super Ljava/lang/Object;
.source "TimeoutExceptionsCommon.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lgt/g0;Lio/ktor/utils/io/ByteReadChannel;Lsr/c;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 7
    .param p0    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lio/ktor/utils/io/ByteReadChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "input"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "request"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lyr/n;->a:Lyr/n;

    .line 17
    .line 18
    invoke-virtual {v0}, Lyr/n;->c()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    invoke-static {p2}, Lio/ktor/client/network/sockets/TimeoutExceptionsKt;->a(Lsr/c;)Lio/ktor/utils/io/b;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance v4, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {v4, p1, p2, v0}, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt$mapEngineExceptions$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/b;Lrs/c;)V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v2, 0x0

    .line 38
    move-object v1, p0

    .line 39
    move-object v3, p2

    .line 40
    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/CoroutinesKt;->e(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/b;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/ktor/utils/io/n;

    .line 41
    .line 42
    .line 43
    return-object p2
.end method
