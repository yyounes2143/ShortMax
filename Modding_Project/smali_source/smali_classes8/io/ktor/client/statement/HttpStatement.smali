.class public final Lio/ktor/client/statement/HttpStatement;
.super Ljava/lang/Object;
.source "HttpStatement.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpStatement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpStatement.kt\nio/ktor/client/statement/HttpStatement\n+ 2 HttpTimeout.kt\nio/ktor/client/plugins/HttpTimeoutKt\n+ 3 HttpClientCall.kt\nio/ktor/client/call/HttpClientCallKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n269#2,4:146\n269#2,2:150\n271#2,2:156\n269#2,2:158\n271#2,2:164\n269#2,4:166\n156#3:152\n156#3:160\n17#4,3:153\n17#4,3:161\n800#5,11:170\n1855#5,2:181\n*S KotlinDebug\n*F\n+ 1 HttpStatement.kt\nio/ktor/client/statement/HttpStatement\n*L\n46#1:146,4\n74#1:150,2\n74#1:156,2\n90#1:158,2\n90#1:164,2\n105#1:166,4\n77#1:152\n93#1:160\n77#1:153,3\n93#1:161,3\n135#1:170,11\n136#1:181,2\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Lio/ktor/client/request/HttpRequestBuilder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/ktor/client/HttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V
    .locals 1
    .param p1    # Lio/ktor/client/request/HttpRequestBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "client"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lio/ktor/client/statement/HttpStatement;->a:Lio/ktor/client/request/HttpRequestBuilder;

    .line 15
    .line 16
    iput-object p2, p0, Lio/ktor/client/statement/HttpStatement;->b:Lio/ktor/client/HttpClient;

    .line 17
    .line 18
    invoke-direct {p0}, Lio/ktor/client/statement/HttpStatement;->a()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/ktor/client/statement/HttpStatement;->a:Lio/ktor/client/request/HttpRequestBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lor/c;->a()Lyr/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lyr/b;->f(Lyr/a;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Map;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Iterable;

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    instance-of v3, v2, Lqr/d;

    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lqr/d;

    .line 69
    .line 70
    iget-object v2, p0, Lio/ktor/client/statement/HttpStatement;->b:Lio/ktor/client/HttpClient;

    .line 71
    .line 72
    invoke-static {v2, v1}, Lqr/e;->c(Lio/ktor/client/HttpClient;Lqr/d;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "Consider installing "

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, " plugin because the request requires it to be installed"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v1

    .line 111
    :cond_3
    return-void
.end method


# virtual methods
.method public final b(Ltr/c;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ltr/c;
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
    instance-of v0, p2, Lio/ktor/client/statement/HttpStatement$cleanup$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/client/statement/HttpStatement$cleanup$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/client/statement/HttpStatement$cleanup$1;->k:I

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
    iput v1, v0, Lio/ktor/client/statement/HttpStatement$cleanup$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/client/statement/HttpStatement$cleanup$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/client/statement/HttpStatement$cleanup$1;-><init>(Lio/ktor/client/statement/HttpStatement;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/client/statement/HttpStatement$cleanup$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/client/statement/HttpStatement$cleanup$1;->k:I

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
    iget-object p1, v0, Lio/ktor/client/statement/HttpStatement$cleanup$1;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lgt/s;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    sget-object v2, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    .line 62
    .line 63
    invoke-interface {p2, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    check-cast p2, Lgt/s;

    .line 71
    .line 72
    invoke-interface {p2}, Lgt/s;->complete()Z

    .line 73
    .line 74
    .line 75
    :try_start_0
    invoke-virtual {p1}, Ltr/c;->b()Lio/ktor/utils/io/ByteReadChannel;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Lio/ktor/utils/io/ByteReadChannelKt;->a(Lio/ktor/utils/io/ByteReadChannel;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    :catchall_0
    iput-object p2, v0, Lio/ktor/client/statement/HttpStatement$cleanup$1;->h:Ljava/lang/Object;

    .line 83
    .line 84
    iput v3, v0, Lio/ktor/client/statement/HttpStatement$cleanup$1;->k:I

    .line 85
    .line 86
    invoke-interface {p2, v0}, Lkotlinx/coroutines/r;->join(Lrs/c;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-ne p1, v1, :cond_3

    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    return-object p1
.end method

.method public final c(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ltr/c;",
            "-",
            "Lrs/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/client/statement/HttpStatement$execute$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/client/statement/HttpStatement$execute$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->l:I

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
    iput v1, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/client/statement/HttpStatement$execute$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/client/statement/HttpStatement$execute$1;-><init>(Lio/ktor/client/statement/HttpStatement;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x4

    .line 35
    const/4 v5, 0x3

    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x1

    .line 38
    if-eqz v2, :cond_5

    .line 39
    .line 40
    if-eq v2, v7, :cond_4

    .line 41
    .line 42
    if-eq v2, v6, :cond_3

    .line 43
    .line 44
    if-eq v2, v5, :cond_2

    .line 45
    .line 46
    if-eq v2, v4, :cond_1

    .line 47
    .line 48
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    iget-object p1, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->h:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Ljava/lang/Throwable;

    .line 59
    .line 60
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto/16 :goto_6

    .line 67
    .line 68
    :cond_2
    iget-object p1, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->h:Ljava/lang/Object;

    .line 69
    .line 70
    :try_start_1
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    iget-object p1, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->i:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, Ltr/c;

    .line 77
    .line 78
    iget-object v2, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->h:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v2, Lio/ktor/client/statement/HttpStatement;

    .line 81
    .line 82
    :try_start_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catchall_0
    move-exception p2

    .line 87
    move-object v8, p2

    .line 88
    move-object p2, p1

    .line 89
    move-object p1, v8

    .line 90
    goto :goto_4

    .line 91
    :cond_4
    iget-object p1, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->i:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 94
    .line 95
    iget-object v2, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->h:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Lio/ktor/client/statement/HttpStatement;

    .line 98
    .line 99
    :try_start_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :try_start_4
    iput-object p0, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->h:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object p1, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->i:Ljava/lang/Object;

    .line 109
    .line 110
    iput v7, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->l:I

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Lio/ktor/client/statement/HttpStatement;->e(Lrs/c;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    if-ne p2, v1, :cond_6

    .line 117
    .line 118
    return-object v1

    .line 119
    :cond_6
    move-object v2, p0

    .line 120
    :goto_1
    check-cast p2, Ltr/c;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 121
    .line 122
    :try_start_5
    iput-object v2, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->h:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object p2, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->i:Ljava/lang/Object;

    .line 125
    .line 126
    iput v6, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->l:I

    .line 127
    .line 128
    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 132
    if-ne p1, v1, :cond_7

    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_7
    move-object v8, p2

    .line 136
    move-object p2, p1

    .line 137
    move-object p1, v8

    .line 138
    :goto_2
    :try_start_6
    iput-object p2, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->h:Ljava/lang/Object;

    .line 139
    .line 140
    iput-object v3, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->i:Ljava/lang/Object;

    .line 141
    .line 142
    iput v5, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->l:I

    .line 143
    .line 144
    invoke-virtual {v2, p1, v0}, Lio/ktor/client/statement/HttpStatement;->b(Ltr/c;Lrs/c;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-ne p1, v1, :cond_8

    .line 149
    .line 150
    return-object v1

    .line 151
    :cond_8
    move-object p1, p2

    .line 152
    :goto_3
    return-object p1

    .line 153
    :catchall_1
    move-exception p1

    .line 154
    :goto_4
    iput-object p1, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->h:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object v3, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->i:Ljava/lang/Object;

    .line 157
    .line 158
    iput v4, v0, Lio/ktor/client/statement/HttpStatement$execute$1;->l:I

    .line 159
    .line 160
    invoke-virtual {v2, p2, v0}, Lio/ktor/client/statement/HttpStatement;->b(Ltr/c;Lrs/c;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    if-ne p2, v1, :cond_9

    .line 165
    .line 166
    return-object v1

    .line 167
    :cond_9
    :goto_5
    throw p1
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0

    .line 168
    :goto_6
    invoke-static {p1}, Lur/c;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    throw p1
.end method

.method public final d(Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ltr/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/client/statement/HttpStatement$execute$4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/client/statement/HttpStatement$execute$4;-><init>(Lrs/c;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Lio/ktor/client/statement/HttpStatement;->c(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final e(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ltr/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lio/ktor/client/statement/HttpStatement$executeUnsafe$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lio/ktor/client/statement/HttpStatement$executeUnsafe$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/client/statement/HttpStatement$executeUnsafe$1;->j:I

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
    iput v1, v0, Lio/ktor/client/statement/HttpStatement$executeUnsafe$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/client/statement/HttpStatement$executeUnsafe$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lio/ktor/client/statement/HttpStatement$executeUnsafe$1;-><init>(Lio/ktor/client/statement/HttpStatement;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lio/ktor/client/statement/HttpStatement$executeUnsafe$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/client/statement/HttpStatement$executeUnsafe$1;->j:I

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
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :try_start_1
    new-instance p1, Lio/ktor/client/request/HttpRequestBuilder;

    .line 56
    .line 57
    invoke-direct {p1}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lio/ktor/client/statement/HttpStatement;->a:Lio/ktor/client/request/HttpRequestBuilder;

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Lio/ktor/client/request/HttpRequestBuilder;->p(Lio/ktor/client/request/HttpRequestBuilder;)Lio/ktor/client/request/HttpRequestBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v2, p0, Lio/ktor/client/statement/HttpStatement;->b:Lio/ktor/client/HttpClient;

    .line 67
    .line 68
    iput v3, v0, Lio/ktor/client/statement/HttpStatement$executeUnsafe$1;->j:I

    .line 69
    .line 70
    invoke-virtual {v2, p1, v0}, Lio/ktor/client/HttpClient;->a(Lio/ktor/client/request/HttpRequestBuilder;Lrs/c;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, v1, :cond_3

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_3
    :goto_1
    check-cast p1, Lio/ktor/client/call/HttpClientCall;

    .line 78
    .line 79
    invoke-virtual {p1}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 80
    .line 81
    .line 82
    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    return-object p1

    .line 84
    :goto_2
    invoke-static {p1}, Lur/c;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "HttpStatement["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/ktor/client/statement/HttpStatement;->a:Lio/ktor/client/request/HttpRequestBuilder;

    .line 12
    .line 13
    invoke-virtual {v1}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x5d

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
