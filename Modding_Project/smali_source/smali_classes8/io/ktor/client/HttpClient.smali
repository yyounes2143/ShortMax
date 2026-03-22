.class public final Lio/ktor/client/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.kt"

# interfaces
.implements Lgt/g0;
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClient.kt\nio/ktor/client/HttpClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,239:1\n1855#2,2:240\n*S KotlinDebug\n*F\n+ 1 HttpClient.kt\nio/ktor/client/HttpClient\n*L\n222#1:240,2\n*E\n"
    }
.end annotation


# static fields
.field private static final synthetic n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final a:Lio/ktor/client/engine/HttpClientEngine;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/ktor/client/HttpClientConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/client/HttpClientConfig<",
            "+",
            "Lor/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Z

.field private volatile synthetic closed:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lgt/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lsr/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ltr/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lsr/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ltr/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Lyr/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Lor/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Lvr/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Lio/ktor/client/HttpClientConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/client/HttpClientConfig<",
            "Lor/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/ktor/client/HttpClient;

    .line 2
    .line 3
    const-string v1, "closed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lio/ktor/client/HttpClient;->n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lio/ktor/client/engine/HttpClientEngine;Lio/ktor/client/HttpClientConfig;)V
    .locals 5
    .param p1    # Lio/ktor/client/engine/HttpClientEngine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/HttpClientConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/HttpClientEngine;",
            "Lio/ktor/client/HttpClientConfig<",
            "+",
            "Lor/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/ktor/client/HttpClient;->a:Lio/ktor/client/engine/HttpClientEngine;

    .line 3
    iput-object p2, p0, Lio/ktor/client/HttpClient;->b:Lio/ktor/client/HttpClientConfig;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/ktor/client/HttpClient;->closed:I

    .line 5
    invoke-interface {p1}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/r;

    invoke-static {v0}, Lkotlinx/coroutines/t;->a(Lkotlinx/coroutines/r;)Lgt/s;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/HttpClient;->d:Lgt/s;

    .line 6
    invoke-interface {p1}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/client/HttpClient;->e:Lkotlin/coroutines/CoroutineContext;

    .line 7
    new-instance v1, Lsr/d;

    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->b()Z

    move-result v2

    invoke-direct {v1, v2}, Lsr/d;-><init>(Z)V

    iput-object v1, p0, Lio/ktor/client/HttpClient;->f:Lsr/d;

    .line 8
    new-instance v1, Ltr/e;

    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->b()Z

    move-result v2

    invoke-direct {v1, v2}, Ltr/e;-><init>(Z)V

    iput-object v1, p0, Lio/ktor/client/HttpClient;->g:Ltr/e;

    .line 9
    new-instance v2, Lsr/f;

    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->b()Z

    move-result v3

    invoke-direct {v2, v3}, Lsr/f;-><init>(Z)V

    iput-object v2, p0, Lio/ktor/client/HttpClient;->h:Lsr/f;

    .line 10
    new-instance v3, Ltr/b;

    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->b()Z

    move-result v4

    invoke-direct {v3, v4}, Ltr/b;-><init>(Z)V

    iput-object v3, p0, Lio/ktor/client/HttpClient;->i:Ltr/b;

    const/4 v3, 0x1

    .line 11
    invoke-static {v3}, Lyr/d;->a(Z)Lyr/b;

    move-result-object v3

    iput-object v3, p0, Lio/ktor/client/HttpClient;->j:Lyr/b;

    .line 12
    invoke-interface {p1}, Lio/ktor/client/engine/HttpClientEngine;->getConfig()Lor/d;

    move-result-object v3

    iput-object v3, p0, Lio/ktor/client/HttpClient;->k:Lor/d;

    .line 13
    new-instance v3, Lvr/b;

    invoke-direct {v3}, Lvr/b;-><init>()V

    iput-object v3, p0, Lio/ktor/client/HttpClient;->l:Lvr/b;

    .line 14
    new-instance v3, Lio/ktor/client/HttpClientConfig;

    invoke-direct {v3}, Lio/ktor/client/HttpClientConfig;-><init>()V

    iput-object v3, p0, Lio/ktor/client/HttpClient;->m:Lio/ktor/client/HttpClientConfig;

    .line 15
    iget-boolean v4, p0, Lio/ktor/client/HttpClient;->c:Z

    if-eqz v4, :cond_0

    .line 16
    new-instance v4, Lio/ktor/client/HttpClient$1;

    invoke-direct {v4, p0}, Lio/ktor/client/HttpClient$1;-><init>(Lio/ktor/client/HttpClient;)V

    invoke-interface {v0, v4}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    .line 17
    :cond_0
    invoke-interface {p1, p0}, Lio/ktor/client/engine/HttpClientEngine;->N(Lio/ktor/client/HttpClient;)V

    .line 18
    sget-object p1, Lsr/f;->h:Lsr/f$a;

    invoke-virtual {p1}, Lsr/f$a;->b()Lds/f;

    move-result-object p1

    new-instance v0, Lio/ktor/client/HttpClient$2;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lio/ktor/client/HttpClient$2;-><init>(Lio/ktor/client/HttpClient;Lrs/c;)V

    invoke-virtual {v2, p1, v0}, Lds/b;->l(Lds/f;Lat/n;)V

    .line 19
    sget-object p1, Lio/ktor/client/plugins/HttpRequestLifecycle;->a:Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;

    const/4 v0, 0x2

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/HttpClientConfig;->j(Lio/ktor/client/HttpClientConfig;Lqr/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 20
    sget-object p1, Lio/ktor/client/plugins/BodyProgress;->a:Lio/ktor/client/plugins/BodyProgress$a;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/HttpClientConfig;->j(Lio/ktor/client/HttpClientConfig;Lqr/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 22
    const-string p1, "DefaultTransformers"

    sget-object v2, Lio/ktor/client/HttpClient$3$1;->d:Lio/ktor/client/HttpClient$3$1;

    invoke-virtual {v3, p1, v2}, Lio/ktor/client/HttpClientConfig;->h(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 23
    :cond_1
    sget-object p1, Lio/ktor/client/plugins/HttpSend;->c:Lio/ktor/client/plugins/HttpSend$Plugin;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/HttpClientConfig;->j(Lio/ktor/client/HttpClientConfig;Lqr/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 24
    sget-object p1, Lio/ktor/client/plugins/HttpCallValidator;->d:Lio/ktor/client/plugins/HttpCallValidator$Companion;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/HttpClientConfig;->j(Lio/ktor/client/HttpClientConfig;Lqr/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 25
    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 26
    sget-object p1, Lio/ktor/client/plugins/HttpRedirect;->c:Lio/ktor/client/plugins/HttpRedirect$Plugin;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/HttpClientConfig;->j(Lio/ktor/client/HttpClientConfig;Lqr/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 27
    :cond_2
    invoke-virtual {v3, p2}, Lio/ktor/client/HttpClientConfig;->k(Lio/ktor/client/HttpClientConfig;)V

    .line 28
    invoke-virtual {p2}, Lio/ktor/client/HttpClientConfig;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 29
    sget-object p1, Lio/ktor/client/plugins/HttpPlainText;->d:Lio/ktor/client/plugins/HttpPlainText$Plugin;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/HttpClientConfig;->j(Lio/ktor/client/HttpClientConfig;Lqr/d;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 30
    :cond_3
    invoke-static {v3}, Lio/ktor/client/plugins/DefaultResponseValidationKt;->c(Lio/ktor/client/HttpClientConfig;)V

    .line 31
    invoke-virtual {v3, p0}, Lio/ktor/client/HttpClientConfig;->g(Lio/ktor/client/HttpClient;)V

    .line 32
    sget-object p1, Ltr/e;->h:Ltr/e$a;

    invoke-virtual {p1}, Ltr/e$a;->b()Lds/f;

    move-result-object p1

    new-instance p2, Lio/ktor/client/HttpClient$4;

    invoke-direct {p2, p0, v4}, Lio/ktor/client/HttpClient$4;-><init>(Lio/ktor/client/HttpClient;Lrs/c;)V

    invoke-virtual {v1, p1, p2}, Lds/b;->l(Lds/f;Lat/n;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/engine/HttpClientEngine;Lio/ktor/client/HttpClientConfig;Z)V
    .locals 1
    .param p1    # Lio/ktor/client/engine/HttpClientEngine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/HttpClientConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/HttpClientEngine;",
            "Lio/ktor/client/HttpClientConfig<",
            "+",
            "Lor/d;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lio/ktor/client/HttpClient;-><init>(Lio/ktor/client/engine/HttpClientEngine;Lio/ktor/client/HttpClientConfig;)V

    .line 34
    iput-boolean p3, p0, Lio/ktor/client/HttpClient;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lio/ktor/client/request/HttpRequestBuilder;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lio/ktor/client/request/HttpRequestBuilder;
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
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/call/HttpClientCall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/client/HttpClient$execute$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/client/HttpClient$execute$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/client/HttpClient$execute$1;->j:I

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
    iput v1, v0, Lio/ktor/client/HttpClient$execute$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/client/HttpClient$execute$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/client/HttpClient$execute$1;-><init>(Lio/ktor/client/HttpClient;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/client/HttpClient$execute$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/client/HttpClient$execute$1;->j:I

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lio/ktor/client/HttpClient;->l:Lvr/b;

    .line 54
    .line 55
    invoke-static {}, Lur/a;->a()Lvr/a;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p2, v2, p1}, Lvr/b;->a(Lvr/a;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lio/ktor/client/HttpClient;->f:Lsr/d;

    .line 63
    .line 64
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->d()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iput v3, v0, Lio/ktor/client/HttpClient$execute$1;->j:I

    .line 69
    .line 70
    invoke-virtual {p2, p1, v2, v0}, Lds/b;->d(Ljava/lang/Object;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-ne p2, v1, :cond_3

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_3
    :goto_1
    const-string p1, "null cannot be cast to non-null type io.ktor.client.call.HttpClientCall"

    .line 78
    .line 79
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    check-cast p2, Lio/ktor/client/call/HttpClientCall;

    .line 83
    .line 84
    return-object p2
.end method

.method public close()V
    .locals 4

    .line 1
    sget-object v0, Lio/ktor/client/HttpClient;->n:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lio/ktor/client/HttpClient;->j:Lyr/b;

    .line 13
    .line 14
    invoke-static {}, Lqr/e;->a()Lyr/a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Lyr/b;->d(Lyr/a;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lyr/b;

    .line 23
    .line 24
    invoke-interface {v0}, Lyr/b;->b()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Iterable;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lyr/a;

    .line 45
    .line 46
    const-string v3, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>"

    .line 47
    .line 48
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v2}, Lyr/b;->d(Lyr/a;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    instance-of v3, v2, Ljava/io/Closeable;

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    check-cast v2, Ljava/io/Closeable;

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lio/ktor/client/HttpClient;->d:Lgt/s;

    .line 66
    .line 67
    invoke-interface {v0}, Lgt/s;->complete()Z

    .line 68
    .line 69
    .line 70
    iget-boolean v0, p0, Lio/ktor/client/HttpClient;->c:Z

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lio/ktor/client/HttpClient;->a:Lio/ktor/client/engine/HttpClientEngine;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public final d()Lio/ktor/client/HttpClientConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/client/HttpClientConfig<",
            "Lor/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/HttpClient;->m:Lio/ktor/client/HttpClientConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/HttpClient;->e:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lio/ktor/client/engine/HttpClientEngine;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/HttpClient;->a:Lio/ktor/client/engine/HttpClientEngine;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Lvr/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/HttpClient;->l:Lvr/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Lyr/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/HttpClient;->j:Lyr/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Ltr/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/HttpClient;->i:Ltr/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Lsr/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/HttpClient;->f:Lsr/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Ltr/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/HttpClient;->g:Ltr/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Lsr/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/HttpClient;->h:Lsr/f;

    .line 2
    .line 3
    return-object v0
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
    const-string v1, "HttpClient["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/ktor/client/HttpClient;->a:Lio/ktor/client/engine/HttpClientEngine;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x5d

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
