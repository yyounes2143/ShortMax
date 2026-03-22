.class final Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;
.super Ljava/lang/Object;
.source "PassthroughConnectionPool.kt"

# interfaces
.implements Landroidx/room/TransactionScope;
.implements Landroidx/room/coroutines/RawConnectionAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/coroutines/PassthroughConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PassthroughTransactor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/room/TransactionScope<",
        "TT;>;",
        "Landroidx/room/coroutines/RawConnectionAccessor;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/coroutines/PassthroughConnection;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/PassthroughConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getRawConnection()Landroidx/sqlite/SQLiteConnection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/coroutines/PassthroughConnection;->getRawConnection()Landroidx/sqlite/SQLiteConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public rollback(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrs/c<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance p2, Landroidx/room/coroutines/ConnectionPool$RollbackException;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Landroidx/room/coroutines/ConnectionPool$RollbackException;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    throw p2
.end method

.method public usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/sqlite/SQLiteStatement;",
            "+TR;>;",
            "Lrs/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/room/coroutines/PassthroughConnection;->usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public withNestedTransaction(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 2
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
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/room/TransactionScope<",
            "TR;>;-",
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
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;->this$0:Landroidx/room/coroutines/PassthroughConnection;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/room/coroutines/PassthroughConnection;->access$getCurrentTransactionType$p(Landroidx/room/coroutines/PassthroughConnection;)Landroidx/room/Transactor$SQLiteTransactionType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2}, Landroidx/room/coroutines/PassthroughConnection;->access$transaction(Landroidx/room/coroutines/PassthroughConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string p2, "Required value was null."

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method
