.class final Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidClientEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/android/AndroidClientEngineKt;->b(Lxr/b;Ljava/io/OutputStream;Lkotlin/coroutines/CoroutineContext;Lrs/c;)Ljava/lang/Object;
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
    c = "io.ktor.client.engine.android.AndroidClientEngineKt$writeTo$2$channel$1"
    f = "AndroidClientEngine.kt"
    l = {
        0x78
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Lxr/b;


# direct methods
.method constructor <init>(Lxr/b;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxr/b;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;->j:Lxr/b;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance v0, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;

    .line 2
    .line 3
    iget-object v1, p0, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;->j:Lxr/b;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;-><init>(Lxr/b;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;->i:Ljava/lang/Object;

    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;->i(Lio/ktor/utils/io/o;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    iget v1, p0, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;->h:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lio/ktor/utils/io/o;

    .line 30
    .line 31
    iget-object v1, p0, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;->j:Lxr/b;

    .line 32
    .line 33
    check-cast v1, Lxr/b$d;

    .line 34
    .line 35
    invoke-interface {p1}, Lio/ktor/utils/io/o;->getChannel()Lio/ktor/utils/io/e;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput v2, p0, Lio/ktor/client/engine/android/AndroidClientEngineKt$writeTo$2$channel$1;->h:I

    .line 40
    .line 41
    invoke-virtual {v1, p1, p0}, Lxr/b$d;->d(Lio/ktor/utils/io/e;Lrs/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p1
.end method
