.class final Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultTransform.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.ktor.client.plugins.DefaultTransformKt$defaultTransformers$2$result$channel$1"
    f = "DefaultTransform.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Ljava/lang/Object;

.field final synthetic k:Ltr/c;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ltr/c;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ltr/c;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->j:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->k:Ltr/c;

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
    .locals 3
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
    new-instance v0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;

    .line 2
    .line 3
    iget-object v1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->j:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->k:Ltr/c;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;-><init>(Ljava/lang/Object;Ltr/c;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->i:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->i(Lio/ktor/utils/io/o;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    iget v1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->h:I

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
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->i:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lio/ktor/utils/io/o;

    .line 34
    .line 35
    :try_start_1
    iget-object v1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->j:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lio/ktor/utils/io/ByteReadChannel;

    .line 38
    .line 39
    invoke-interface {p1}, Lio/ktor/utils/io/o;->getChannel()Lio/ktor/utils/io/e;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput v2, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->h:I

    .line 44
    .line 45
    const-wide v2, 0x7fffffffffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-static {v1, p1, v2, v3, p0}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->b(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/e;JLrs/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->k:Ltr/c;

    .line 58
    .line 59
    invoke-static {p1}, Lio/ktor/client/statement/HttpResponseKt;->d(Ltr/c;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p1

    .line 65
    :goto_1
    :try_start_2
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->k:Ltr/c;

    .line 66
    .line 67
    const-string v1, "Receive failed"

    .line 68
    .line 69
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/i;->c(Lgt/g0;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :catchall_1
    move-exception p1

    .line 74
    goto :goto_3

    .line 75
    :goto_2
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->k:Ltr/c;

    .line 76
    .line 77
    invoke-static {v0, p1}, Lkotlinx/coroutines/i;->d(Lgt/g0;Ljava/util/concurrent/CancellationException;)V

    .line 78
    .line 79
    .line 80
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    :goto_3
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2$result$channel$1;->k:Ltr/c;

    .line 82
    .line 83
    invoke-static {v0}, Lio/ktor/client/statement/HttpResponseKt;->d(Ltr/c;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method
