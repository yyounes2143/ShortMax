.class public final Lor/f;
.super Ljava/lang/Object;
.source "HttpClientEngine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpClientEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientEngine.kt\nio/ktor/client/engine/HttpClientEngineKt\n+ 2 Utils.kt\nio/ktor/client/engine/UtilsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n94#2,11:164\n766#3:175\n857#3,2:176\n*S KotlinDebug\n*F\n+ 1 HttpClientEngine.kt\nio/ktor/client/engine/HttpClientEngineKt\n*L\n146#1:164,11\n156#1:175\n156#1:176,2\n*E\n"
    }
.end annotation


# static fields
.field private static final a:Lgt/f0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lio/ktor/client/HttpClientConfig<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgt/f0;

    .line 2
    .line 3
    const-string v1, "call-context"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lor/f;->a:Lgt/f0;

    .line 9
    .line 10
    new-instance v0, Lyr/a;

    .line 11
    .line 12
    const-string v1, "client-config"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lor/f;->b:Lyr/a;

    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic a(Lsr/c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lor/f;->d(Lsr/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b(Lio/ktor/client/engine/HttpClientEngine;Lkotlinx/coroutines/r;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .param p0    # Lio/ktor/client/engine/HttpClientEngine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/r;
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
            "Lio/ktor/client/engine/HttpClientEngine;",
            "Lkotlinx/coroutines/r;",
            "Lrs/c<",
            "-",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlinx/coroutines/t;->a(Lkotlinx/coroutines/r;)Lgt/s;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Lor/f;->a:Lgt/f0;

    .line 14
    .line 15
    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p2}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    sget-object v0, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    .line 24
    .line 25
    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    move-object v0, p2

    .line 30
    check-cast v0, Lkotlinx/coroutines/r;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v3, Lio/ktor/client/engine/UtilsKt$attachToUserJob$cleanupHandler$1;

    .line 36
    .line 37
    invoke-direct {v3, p1}, Lio/ktor/client/engine/UtilsKt$attachToUserJob$cleanupHandler$1;-><init>(Lkotlinx/coroutines/r;)V

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x2

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v1, 0x1

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/r$a;->e(Lkotlinx/coroutines/r;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lgt/s0;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    new-instance v0, Lio/ktor/client/engine/UtilsKt$attachToUserJob$2;

    .line 49
    .line 50
    invoke-direct {v0, p2}, Lio/ktor/client/engine/UtilsKt$attachToUserJob$2;-><init>(Lgt/s0;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    .line 54
    .line 55
    .line 56
    :goto_0
    return-object p0
.end method

.method public static final c()Lyr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyr/a<",
            "Lio/ktor/client/HttpClientConfig<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lor/f;->b:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final d(Lsr/c;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lsr/c;->e()Lwr/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lyr/p;->names()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Iterable;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v2, v1

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    sget-object v3, Lwr/i;->a:Lwr/i;

    .line 34
    .line 35
    invoke-virtual {v3}, Lwr/i;->v()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    new-instance p0, Lio/ktor/http/UnsafeHeaderException;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p0, v0}, Lio/ktor/http/UnsafeHeaderException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method
