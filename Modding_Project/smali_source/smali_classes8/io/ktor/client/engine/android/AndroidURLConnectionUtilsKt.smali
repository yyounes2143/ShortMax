.class public final Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt;
.super Ljava/lang/Object;
.source "AndroidURLConnectionUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidURLConnectionUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidURLConnectionUtils.kt\nio/ktor/client/engine/android/AndroidURLConnectionUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n1#2:87\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/net/HttpURLConnection;Lkotlin/coroutines/CoroutineContext;Lsr/c;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 4
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
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
    const-string v0, "callContext"

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
    const/4 v0, 0x0

    .line 17
    const/16 v1, 0x2000

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    instance-of v3, v2, Ljava/io/BufferedInputStream;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    check-cast v2, Ljava/io/BufferedInputStream;

    .line 30
    .line 31
    move-object v0, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 34
    .line 35
    invoke-direct {v3, v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    move-object v0, v3

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    check-cast p0, Ljava/io/BufferedInputStream;

    .line 51
    .line 52
    move-object v0, p0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 55
    .line 56
    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-static {}, Lzr/a;->a()Lio/ktor/utils/io/pool/b;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v0, p1, p0}, Lio/ktor/utils/io/jvm/javaio/ReadingKt;->a(Ljava/io/InputStream;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/pool/b;)Lio/ktor/utils/io/ByteReadChannel;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1, p0, p2}, Lio/ktor/client/network/sockets/TimeoutExceptionsCommonKt;->a(Lgt/g0;Lio/ktor/utils/io/ByteReadChannel;Lsr/c;)Lio/ktor/utils/io/ByteReadChannel;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    sget-object p0, Lio/ktor/utils/io/ByteReadChannel;->a:Lio/ktor/utils/io/ByteReadChannel$Companion;

    .line 83
    .line 84
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteReadChannel$Companion;->a()Lio/ktor/utils/io/ByteReadChannel;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :goto_1
    return-object p0
.end method

.method private static final b(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p0, Ljava/net/ConnectException;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    const/4 v2, 0x0

    .line 18
    const-string v3, "timed out"

    .line 19
    .line 20
    invoke-static {p0, v3, v1, v0, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p0, v1

    .line 26
    :goto_0
    if-eqz p0, :cond_2

    .line 27
    .line 28
    :cond_1
    const/4 v1, 0x1

    .line 29
    :cond_2
    return v1
.end method

.method private static final c(Ljava/net/HttpURLConnection;Lio/ktor/client/plugins/HttpTimeout$a;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpTimeout$a;->d()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide v2, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long p1, v0, v2

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/net/URLConnection;->getConnectTimeout()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/net/URLConnection;->getConnectTimeout()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    int-to-long v2, p1

    .line 31
    cmp-long p1, v2, v0

    .line 32
    .line 33
    if-lez p1, :cond_1

    .line 34
    .line 35
    :cond_0
    invoke-static {v0, v1}, Lio/ktor/client/plugins/d;->d(J)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public static final d(Ljava/net/HttpURLConnection;Lsr/c;)V
    .locals 2
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lsr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "requestData"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lio/ktor/client/plugins/HttpTimeout;->d:Lio/ktor/client/plugins/HttpTimeout$Plugin;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lsr/c;->c(Lor/b;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lio/ktor/client/plugins/HttpTimeout$a;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpTimeout$a;->c()Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Lio/ktor/client/plugins/d;->d(J)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpTimeout$a;->e()Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    invoke-static {v0, v1}, Lio/ktor/client/plugins/d;->d(J)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static {p0, p1}, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt;->c(Ljava/net/HttpURLConnection;Lio/ktor/client/plugins/HttpTimeout$a;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public static final e(Ljava/net/HttpURLConnection;Lsr/c;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lsr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/HttpURLConnection;",
            "Lsr/c;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/net/HttpURLConnection;",
            "+TT;>;",
            "Lrs/c<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;->i:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/lang/Throwable;

    .line 41
    .line 42
    iget-object p1, v0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;->h:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lsr/c;

    .line 45
    .line 46
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    return-object p0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    iput-object p1, v0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;->h:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object p0, v0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;->i:Ljava/lang/Object;

    .line 70
    .line 71
    iput v3, v0, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt$timeoutAwareConnection$1;->k:I

    .line 72
    .line 73
    invoke-static {v0}, Lgt/a2;->a(Lrs/c;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    if-ne p2, v1, :cond_3

    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_3
    :goto_1
    invoke-static {p0}, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt;->b(Ljava/lang/Throwable;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_4

    .line 85
    .line 86
    invoke-static {p1, p0}, Lio/ktor/client/plugins/d;->a(Lsr/c;Ljava/lang/Throwable;)Lio/ktor/client/network/sockets/ConnectTimeoutException;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    :cond_4
    throw p0
.end method
