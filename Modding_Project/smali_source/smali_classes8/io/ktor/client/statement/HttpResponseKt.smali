.class public final Lio/ktor/client/statement/HttpResponseKt;
.super Ljava/lang/Object;
.source "HttpResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpResponse.kt\nio/ktor/client/statement/HttpResponseKt\n+ 2 HttpClientCall.kt\nio/ktor/client/call/HttpClientCallKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,96:1\n156#2:97\n156#2:101\n17#3,3:98\n17#3,3:102\n*S KotlinDebug\n*F\n+ 1 HttpResponse.kt\nio/ktor/client/statement/HttpResponseKt\n*L\n87#1:97\n95#1:101\n87#1:98,3\n95#1:102,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ltr/c;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p0    # Ltr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/c;",
            "Lrs/c<",
            "-",
            "Lio/ktor/utils/io/ByteReadChannel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lio/ktor/client/statement/HttpResponseKt$bodyAsChannel$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsChannel$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsChannel$1;->i:I

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
    iput v1, v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsChannel$1;->i:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsChannel$1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lio/ktor/client/statement/HttpResponseKt$bodyAsChannel$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsChannel$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsChannel$1;->i:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ltr/c;->x()Lio/ktor/client/call/HttpClientCall;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-class p1, Lio/ktor/utils/io/ByteReadChannel;

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v4, p1, v2}, Les/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Les/a;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput v3, v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsChannel$1;->i:I

    .line 76
    .line 77
    invoke-virtual {p0, p1, v0}, Lio/ktor/client/call/HttpClientCall;->a(Les/a;Lrs/c;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v1, :cond_3

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 85
    .line 86
    check-cast p1, Lio/ktor/utils/io/ByteReadChannel;

    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 90
    .line 91
    const-string p1, "null cannot be cast to non-null type io.ktor.utils.io.ByteReadChannel"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public static final b(Ltr/c;Ljava/nio/charset/Charset;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p0    # Ltr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/c;",
            "Ljava/nio/charset/Charset;",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/client/statement/HttpResponseKt$bodyAsText$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsText$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsText$1;->j:I

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
    iput v1, v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsText$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsText$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lio/ktor/client/statement/HttpResponseKt$bodyAsText$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsText$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsText$1;->j:I

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
    iget-object p0, v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsText$1;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/nio/charset/CharsetDecoder;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Lio/ktor/http/d;->a(Lwr/k;)Ljava/nio/charset/Charset;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    if-nez p2, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move-object p1, p2

    .line 65
    :goto_1
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0}, Ltr/c;->x()Lio/ktor/client/call/HttpClientCall;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-class p2, Lhs/j;

    .line 74
    .line 75
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-static {v4, p2, v2}, Les/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Les/a;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iput-object p1, v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsText$1;->h:Ljava/lang/Object;

    .line 92
    .line 93
    iput v3, v0, Lio/ktor/client/statement/HttpResponseKt$bodyAsText$1;->j:I

    .line 94
    .line 95
    invoke-virtual {p0, p2, v0}, Lio/ktor/client/call/HttpClientCall;->a(Les/a;Lrs/c;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    if-ne p2, v1, :cond_4

    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_4
    move-object p0, p1

    .line 103
    :goto_2
    if-eqz p2, :cond_5

    .line 104
    .line 105
    check-cast p2, Lhs/j;

    .line 106
    .line 107
    const-string p1, "decoder"

    .line 108
    .line 109
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 p1, 0x2

    .line 113
    const/4 v0, 0x0

    .line 114
    const/4 v1, 0x0

    .line 115
    invoke-static {p0, p2, v1, p1, v0}, Lgs/b;->b(Ljava/nio/charset/CharsetDecoder;Lhs/l;IILjava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 121
    .line 122
    const-string p1, "null cannot be cast to non-null type io.ktor.utils.io.core.ByteReadPacket"

    .line 123
    .line 124
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0
.end method

.method public static synthetic c(Ltr/c;Ljava/nio/charset/Charset;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/client/statement/HttpResponseKt;->b(Ltr/c;Ljava/nio/charset/Charset;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final d(Ltr/c;)V
    .locals 1
    .param p0    # Ltr/c;
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
    invoke-interface {p0}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    .line 11
    .line 12
    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    check-cast p0, Lgt/s;

    .line 20
    .line 21
    invoke-interface {p0}, Lgt/s;->complete()Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static final e(Ltr/c;)Lsr/b;
    .locals 1
    .param p0    # Ltr/c;
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
    invoke-virtual {p0}, Ltr/c;->x()Lio/ktor/client/call/HttpClientCall;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->d()Lsr/b;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
