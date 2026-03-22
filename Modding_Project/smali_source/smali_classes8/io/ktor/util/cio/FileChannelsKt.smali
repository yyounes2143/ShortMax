.class public final Lio/ktor/util/cio/FileChannelsKt;
.super Ljava/lang/Object;
.source "FileChannels.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Ljava/io/File;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/utils/io/e;
    .locals 3
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
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
    const-string v0, "coroutineContext"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lgt/e1;->a:Lgt/e1;

    .line 12
    .line 13
    new-instance v1, Lgt/f0;

    .line 14
    .line 15
    const-string v2, "file-writer"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v1, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, v2}, Lio/ktor/util/cio/FileChannelsKt$writeChannel$1;-><init>(Ljava/io/File;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    invoke-static {v0, p1, p0, v1}, Lio/ktor/utils/io/CoroutinesKt;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/l;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Lio/ktor/utils/io/l;->getChannel()Lio/ktor/utils/io/e;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static synthetic b(Ljava/io/File;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/ktor/utils/io/e;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/util/cio/FileChannelsKt;->a(Ljava/io/File;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/utils/io/e;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
