.class public final Lio/ktor/utils/io/CoroutinesKt;
.super Ljava/lang/Object;
.source "Coroutines.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private static final a(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/b;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/g;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lgt/g0;",
            ">(",
            "Lgt/g0;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lio/ktor/utils/io/b;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-TS;-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/utils/io/g;"
        }
    .end annotation

    .line 1
    move-object v6, p2

    .line 2
    invoke-interface {p0}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sget-object v1, Lgt/c0;->Key:Lgt/c0$a;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v4, v0

    .line 13
    check-cast v4, Lgt/c0;

    .line 14
    .line 15
    new-instance v10, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v0, v10

    .line 19
    move/from16 v1, p3

    .line 20
    .line 21
    move-object v2, p2

    .line 22
    move-object/from16 v3, p4

    .line 23
    .line 24
    invoke-direct/range {v0 .. v5}, Lio/ktor/utils/io/CoroutinesKt$launchChannel$job$1;-><init>(ZLio/ktor/utils/io/b;Lkotlin/jvm/functions/Function2;Lgt/c0;Lrs/c;)V

    .line 25
    .line 26
    .line 27
    const/4 v11, 0x2

    .line 28
    const/4 v12, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    move-object v7, p0

    .line 31
    move-object v8, p1

    .line 32
    invoke-static/range {v7 .. v12}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lio/ktor/utils/io/CoroutinesKt$launchChannel$1;

    .line 37
    .line 38
    invoke-direct {v1, p2}, Lio/ktor/utils/io/CoroutinesKt$launchChannel$1;-><init>(Lio/ktor/utils/io/b;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    .line 42
    .line 43
    .line 44
    new-instance v1, Lio/ktor/utils/io/g;

    .line 45
    .line 46
    invoke-direct {v1, v0, p2}, Lio/ktor/utils/io/g;-><init>(Lkotlinx/coroutines/r;Lio/ktor/utils/io/b;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method

.method public static final b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/l;
    .locals 1
    .param p0    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/m;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/utils/io/l;"
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
    const-string v0, "coroutineContext"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "block"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lio/ktor/utils/io/d;->a(Z)Lio/ktor/utils/io/b;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {p0, p1, p2, v0, p3}, Lio/ktor/utils/io/CoroutinesKt;->a(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/b;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/g;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static final c(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/b;Lkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/n;
    .locals 1
    .param p0    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/utils/io/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lio/ktor/utils/io/b;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/o;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/utils/io/n;"
        }
    .end annotation

    .annotation runtime Lms/c;
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
    const-string v0, "coroutineContext"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "channel"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "block"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {p0, p1, p2, v0, p3}, Lio/ktor/utils/io/CoroutinesKt;->a(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/b;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/g;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static final d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/n;
    .locals 1
    .param p0    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/o;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/utils/io/n;"
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
    const-string v0, "coroutineContext"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "block"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lio/ktor/utils/io/d;->a(Z)Lio/ktor/utils/io/b;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-static {p0, p1, p2, v0, p3}, Lio/ktor/utils/io/CoroutinesKt;->a(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/b;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/g;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static synthetic e(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/b;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/ktor/utils/io/n;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/CoroutinesKt;->c(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/b;Lkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/n;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic f(Lgt/g0;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/ktor/utils/io/n;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/CoroutinesKt;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/n;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
