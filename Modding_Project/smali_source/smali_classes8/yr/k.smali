.class public final Lyr/k;
.super Ljava/lang/Object;
.source "CoroutinesUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutinesUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutinesUtils.kt\nio/ktor/util/CoroutinesUtilsKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,29:1\n1295#2,2:30\n48#3,4:32\n*S KotlinDebug\n*F\n+ 1 CoroutinesUtils.kt\nio/ktor/util/CoroutinesUtilsKt\n*L\n16#1:30,2\n28#1:32,4\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/r;)Lkotlin/coroutines/CoroutineContext;
    .locals 2
    .param p0    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lgt/r1;->a(Lkotlinx/coroutines/r;)Lgt/s;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lgt/d0;->D8:Lgt/d0$b;

    .line 6
    .line 7
    new-instance v1, Lyr/k$a;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lyr/k$a;-><init>(Lgt/d0$b;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static synthetic b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-static {p0}, Lyr/k;->a(Lkotlinx/coroutines/r;)Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
