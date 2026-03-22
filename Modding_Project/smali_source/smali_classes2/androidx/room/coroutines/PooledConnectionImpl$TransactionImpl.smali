.class final Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;
.super Ljava/lang/Object;
.source "ConnectionPoolImpl.kt"

# interfaces
.implements Landroidx/room/TransactionScope;
.implements Landroidx/room/coroutines/RawConnectionAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/coroutines/PooledConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransactionImpl"
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl$TransactionImpl\n+ 2 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,552:1\n479#2,11:553\n479#2,11:564\n116#3,10:575\n*S KotlinDebug\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl$TransactionImpl\n*L\n467#1:553,11\n469#1:564,11\n473#1:575,10\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/coroutines/PooledConnectionImpl;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/PooledConnectionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

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
    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->getRawConnection()Landroidx/sqlite/SQLiteConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public rollback(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 7
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
    instance-of v0, p2, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;->label:I

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
    iput v1, v0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;-><init>(Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-eq v2, v3, :cond_1

    .line 38
    .line 39
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    iget-object p1, v0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;->L$2:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lqt/a;

    .line 50
    .line 51
    iget-object v1, v0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;->L$1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 54
    .line 55
    iget-object v0, v0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    .line 65
    .line 66
    invoke-static {p2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/16 v5, 0x15

    .line 71
    .line 72
    if-nez v2, :cond_6

    .line 73
    .line 74
    invoke-interface {v0}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p2}, Landroidx/room/coroutines/PooledConnectionImpl;->getConnectionElementKey()Landroidx/room/coroutines/ConnectionElementKey;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-interface {v2, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Landroidx/room/coroutines/ConnectionElement;

    .line 87
    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    invoke-virtual {v2}, Landroidx/room/coroutines/ConnectionElement;->getConnectionWrapper()Landroidx/room/coroutines/PooledConnectionImpl;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-ne v2, p2, :cond_5

    .line 95
    .line 96
    invoke-static {p2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$getTransactionStack$p(Landroidx/room/coroutines/PooledConnectionImpl;)Lkotlin/collections/m;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lkotlin/collections/m;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_4

    .line 105
    .line 106
    invoke-virtual {p2}, Landroidx/room/coroutines/PooledConnectionImpl;->getDelegate()Landroidx/room/coroutines/ConnectionWithLock;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iput-object p1, v0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object p2, v0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;->L$1:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;->L$2:Ljava/lang/Object;

    .line 115
    .line 116
    iput v3, v0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl$rollback$1;->label:I

    .line 117
    .line 118
    invoke-interface {v2, v4, v0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-ne v0, v1, :cond_3

    .line 123
    .line 124
    return-object v1

    .line 125
    :cond_3
    move-object v0, p1

    .line 126
    move-object v1, p2

    .line 127
    move-object p1, v2

    .line 128
    :goto_1
    :try_start_0
    invoke-static {v1}, Landroidx/room/coroutines/PooledConnectionImpl;->access$getTransactionStack$p(Landroidx/room/coroutines/PooledConnectionImpl;)Lkotlin/collections/m;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p2}, Lkotlin/collections/m;->last()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    check-cast p2, Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;

    .line 137
    .line 138
    invoke-virtual {p2, v3}, Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;->setShouldRollback(Z)V

    .line 139
    .line 140
    .line 141
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    invoke-interface {p1, v4}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Landroidx/room/coroutines/ConnectionPool$RollbackException;

    .line 147
    .line 148
    invoke-direct {p1, v0}, Landroidx/room/coroutines/ConnectionPool$RollbackException;-><init>(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :catchall_0
    move-exception p2

    .line 153
    invoke-interface {p1, v4}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    throw p2

    .line 157
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    const-string p2, "Not in a transaction"

    .line 160
    .line 161
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :cond_5
    const-string p1, "Attempted to use connection on a different coroutine"

    .line 166
    .line 167
    invoke-static {v5, p1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 168
    .line 169
    .line 170
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 171
    .line 172
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 173
    .line 174
    .line 175
    throw p1

    .line 176
    :cond_6
    const-string p1, "Connection is recycled"

    .line 177
    .line 178
    invoke-static {v5, p1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 179
    .line 180
    .line 181
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 182
    .line 183
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 184
    .line 185
    .line 186
    throw p1
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
    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/room/coroutines/PooledConnectionImpl;->usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public withNestedTransaction(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 4
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
    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;->this$0:Landroidx/room/coroutines/PooledConnectionImpl;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x15

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->getConnectionElementKey()Landroidx/room/coroutines/ConnectionElementKey;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-interface {v1, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/room/coroutines/ConnectionElement;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/room/coroutines/ConnectionElement;->getConnectionWrapper()Landroidx/room/coroutines/PooledConnectionImpl;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-ne v1, v0, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-static {v0, v1, p1, p2}, Landroidx/room/coroutines/PooledConnectionImpl;->access$transaction(Landroidx/room/coroutines/PooledConnectionImpl;Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_0
    const-string p1, "Attempted to use connection on a different coroutine"

    .line 40
    .line 41
    invoke-static {v2, p1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 42
    .line 43
    .line 44
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 45
    .line 46
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_1
    const-string p1, "Connection is recycled"

    .line 51
    .line 52
    invoke-static {v2, p1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 53
    .line 54
    .line 55
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 56
    .line 57
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 58
    .line 59
    .line 60
    throw p1
.end method
