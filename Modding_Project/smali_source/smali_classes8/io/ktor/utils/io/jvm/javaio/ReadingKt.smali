.class public final Lio/ktor/utils/io/jvm/javaio/ReadingKt;
.super Ljava/lang/Object;
.source "Reading.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReading.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reading.kt\nio/ktor/utils/io/jvm/javaio/ReadingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n1#2:100\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/io/InputStream;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/pool/b;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 3
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/utils/io/pool/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lio/ktor/utils/io/pool/b<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lio/ktor/utils/io/ByteReadChannel;"
        }
    .end annotation

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
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "pool"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lgt/e1;->a:Lgt/e1;

    .line 17
    .line 18
    new-instance v1, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, p2, p0, v2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;-><init>(Lio/ktor/utils/io/pool/b;Ljava/io/InputStream;Lrs/c;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    invoke-static {v0, p1, p0, v1}, Lio/ktor/utils/io/CoroutinesKt;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/n;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Lio/ktor/utils/io/n;->getChannel()Lio/ktor/utils/io/ByteReadChannel;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static final b(Ljava/io/InputStream;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/pool/b;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 3
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/utils/io/pool/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lio/ktor/utils/io/pool/b<",
            "[B>;)",
            "Lio/ktor/utils/io/ByteReadChannel;"
        }
    .end annotation

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
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "pool"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lgt/e1;->a:Lgt/e1;

    .line 17
    .line 18
    new-instance v1, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, p2, p0, v2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;-><init>(Lio/ktor/utils/io/pool/b;Ljava/io/InputStream;Lrs/c;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    invoke-static {v0, p1, p0, v1}, Lio/ktor/utils/io/CoroutinesKt;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/n;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Lio/ktor/utils/io/n;->getChannel()Lio/ktor/utils/io/ByteReadChannel;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static synthetic c(Ljava/io/InputStream;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/pool/b;ILjava/lang/Object;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    invoke-static {}, Ljs/a;->a()Lio/ktor/utils/io/pool/b;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt;->b(Ljava/io/InputStream;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/pool/b;)Lio/ktor/utils/io/ByteReadChannel;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
