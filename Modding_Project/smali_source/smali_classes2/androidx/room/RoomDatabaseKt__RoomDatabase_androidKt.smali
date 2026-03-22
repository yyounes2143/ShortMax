.class final synthetic Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt;
.super Ljava/lang/Object;
.source "RoomDatabase.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabaseKt__RoomDatabase_androidKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,2191:1\n318#2,11:2192\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabaseKt__RoomDatabase_androidKt\n*L\n2077#1:2192,11\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic access$createTransactionContext(Landroidx/room/RoomDatabase;Lkotlin/coroutines/c;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt;->createTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt(Landroidx/room/RoomDatabase;Lkotlin/coroutines/c;)Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$startTransactionCoroutine$RoomDatabaseKt__RoomDatabase_androidKt(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt;->startTransactionCoroutine$RoomDatabaseKt__RoomDatabase_androidKt(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p0    # Landroidx/room/RoomDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->isOpenInternal$room_runtime()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-interface {p2}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Landroidx/room/RoomExternalOperationElement;->INSTANCE:Landroidx/room/RoomExternalOperationElement;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/room/RoomDatabaseKt;->withTransactionContext(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method private static final createTransactionContext$RoomDatabaseKt__RoomDatabase_androidKt(Landroidx/room/RoomDatabase;Lkotlin/coroutines/c;)Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 1
    new-instance v0, Landroidx/room/TransactionElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/room/TransactionElement;-><init>(Lkotlin/coroutines/c;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getSuspendingTransactionContext()Ljava/lang/ThreadLocal;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0, p1}, Lgt/t1;->a(Ljava/lang/ThreadLocal;Ljava/lang/Object;)Lgt/s1;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p1, p0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final invalidationTrackerFlow(Landroidx/room/RoomDatabase;[Ljava/lang/String;Z)Lkt/b;
    .locals 1
    .param p0    # Landroidx/room/RoomDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Lkt/b<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
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
    const-string v0, "tables"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    array-length v0, p1

    .line 16
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, [Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Landroidx/room/InvalidationTracker;->createFlow([Ljava/lang/String;Z)Lkt/b;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static synthetic invalidationTrackerFlow$default(Landroidx/room/RoomDatabase;[Ljava/lang/String;ZILjava/lang/Object;)Lkt/b;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/room/RoomDatabaseKt;->invalidationTrackerFlow(Landroidx/room/RoomDatabase;[Ljava/lang/String;Z)Lkt/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final startTransactionCoroutine$RoomDatabaseKt__RoomDatabase_androidKt(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lgt/g0;",
            "-",
            "Lrs/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1;

    .line 19
    .line 20
    invoke-direct {v2, v0, p0, p1}, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1;-><init>(Lgt/i;Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function2;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v1, "Unable to acquire a thread to perform the database transaction."

    .line 31
    .line 32
    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p1}, Lgt/i;->cancel(Ljava/lang/Throwable;)Z

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-ne p0, p1, :cond_0

    .line 47
    .line 48
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-object p0
.end method

.method public static final withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p0    # Landroidx/room/RoomDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt$withTransaction$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt$withTransaction$2;-><init>(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, p2}, Landroidx/room/RoomDatabaseKt;->withTransactionContext(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final withTransactionContext(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p0    # Landroidx/room/RoomDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v2, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    .line 12
    .line 13
    invoke-interface {p1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroidx/room/TransactionElement;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/room/TransactionElement;->getTransactionDispatcher$room_runtime()Lkotlin/coroutines/c;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-static {v1, v0, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    invoke-static {p0, v0, p2}, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt;->startTransactionCoroutine$RoomDatabaseKt__RoomDatabase_androidKt(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
