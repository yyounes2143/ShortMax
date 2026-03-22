.class public final Lio/ktor/client/engine/HttpClientEngine$DefaultImpls;
.super Ljava/lang/Object;
.source "HttpClientEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/engine/HttpClientEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpClientEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientEngine.kt\nio/ktor/client/engine/HttpClientEngine$DefaultImpls\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n1#2:164\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a(Lio/ktor/client/engine/HttpClientEngine;Lsr/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/ktor/client/engine/HttpClientEngine$DefaultImpls;->d(Lio/ktor/client/engine/HttpClientEngine;Lsr/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lio/ktor/client/engine/HttpClientEngine;Lsr/c;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/client/engine/HttpClientEngine$DefaultImpls;->e(Lio/ktor/client/engine/HttpClientEngine;Lsr/c;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lio/ktor/client/engine/HttpClientEngine;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lio/ktor/client/engine/HttpClientEngine$DefaultImpls;->f(Lio/ktor/client/engine/HttpClientEngine;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static d(Lio/ktor/client/engine/HttpClientEngine;Lsr/c;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lsr/c;->g()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lor/b;

    .line 20
    .line 21
    invoke-interface {p0}, Lio/ktor/client/engine/HttpClientEngine;->I()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string p1, "Engine doesn\'t support "

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    return-void
.end method

.method private static e(Lio/ktor/client/engine/HttpClientEngine;Lsr/c;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/HttpClientEngine;",
            "Lsr/c;",
            "Lrs/c<",
            "-",
            "Lsr/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;->k:I

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
    iput v1, v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_2
    iget-object p0, v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;->i:Ljava/lang/Object;

    .line 54
    .line 55
    move-object p1, p0

    .line 56
    check-cast p1, Lsr/c;

    .line 57
    .line 58
    iget-object p0, v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;->h:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Lio/ktor/client/engine/HttpClientEngine;

    .line 61
    .line 62
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    move-object v4, p0

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lsr/c;->d()Lkotlinx/coroutines/r;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p0, v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;->h:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object p1, v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;->i:Ljava/lang/Object;

    .line 77
    .line 78
    iput v4, v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;->k:I

    .line 79
    .line 80
    invoke-static {p0, p2, v0}, Lor/f;->b(Lio/ktor/client/engine/HttpClientEngine;Lkotlinx/coroutines/r;Lrs/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-ne p2, v1, :cond_3

    .line 85
    .line 86
    return-object v1

    .line 87
    :goto_1
    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    .line 88
    .line 89
    new-instance p0, Lio/ktor/client/engine/a;

    .line 90
    .line 91
    invoke-direct {p0, p2}, Lio/ktor/client/engine/a;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p2, p0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    new-instance v7, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$2;

    .line 99
    .line 100
    const/4 p0, 0x0

    .line 101
    invoke-direct {v7, v4, p1, p0}, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$2;-><init>(Lio/ktor/client/engine/HttpClientEngine;Lsr/c;Lrs/c;)V

    .line 102
    .line 103
    .line 104
    const/4 v8, 0x2

    .line 105
    const/4 v9, 0x0

    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-static/range {v4 .. v9}, Lgt/e;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lgt/k0;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p0, v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;->h:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object p0, v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;->i:Ljava/lang/Object;

    .line 114
    .line 115
    iput v3, v0, Lio/ktor/client/engine/HttpClientEngine$executeWithinCallContext$1;->k:I

    .line 116
    .line 117
    invoke-interface {p1, v0}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    if-ne p2, v1, :cond_5

    .line 122
    .line 123
    return-object v1

    .line 124
    :cond_5
    :goto_2
    return-object p2
.end method

.method private static f(Lio/ktor/client/engine/HttpClientEngine;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lkotlinx/coroutines/r;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lkotlinx/coroutines/r;->isActive()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    xor-int/lit8 p0, p0, 0x1

    .line 22
    .line 23
    return p0
.end method

.method public static g(Lio/ktor/client/engine/HttpClientEngine;)Ljava/util/Set;
    .locals 0
    .param p0    # Lio/ktor/client/engine/HttpClientEngine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/HttpClientEngine;",
            ")",
            "Ljava/util/Set<",
            "Lor/b<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/collections/y0;->f()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static h(Lio/ktor/client/engine/HttpClientEngine;Lio/ktor/client/HttpClient;)V
    .locals 4
    .param p0    # Lio/ktor/client/engine/HttpClientEngine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->r()Lsr/f;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lsr/f;->h:Lsr/f$a;

    .line 11
    .line 12
    invoke-virtual {v1}, Lsr/f$a;->a()Lds/f;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lio/ktor/client/engine/HttpClientEngine$install$1;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, p1, p0, v3}, Lio/ktor/client/engine/HttpClientEngine$install$1;-><init>(Lio/ktor/client/HttpClient;Lio/ktor/client/engine/HttpClientEngine;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lds/b;->l(Lds/f;Lat/n;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
