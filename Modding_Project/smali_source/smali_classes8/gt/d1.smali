.class public final Lgt/d1;
.super Ljava/lang/Object;
.source "Executors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lgt/c0;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p0, Lgt/b1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lgt/b1;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lgt/b1;->m()Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    :cond_1
    new-instance v0, Lgt/p0;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lgt/p0;-><init>(Lgt/c0;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-object v0
.end method

.method public static final b(Ljava/util/concurrent/Executor;)Lgt/c0;
    .locals 1
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p0, Lgt/p0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Lgt/p0;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lgt/p0;->a:Lgt/c0;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    :cond_1
    new-instance v0, Lgt/c1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lgt/c1;-><init>(Ljava/util/concurrent/Executor;)V

    .line 19
    .line 20
    .line 21
    :cond_2
    return-object v0
.end method

.method public static final c(Ljava/util/concurrent/ExecutorService;)Lgt/b1;
    .locals 1
    .param p0    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lgt/c1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgt/c1;-><init>(Ljava/util/concurrent/Executor;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
