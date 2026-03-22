.class final Landroidx/room/coroutines/ConnectionWithLock;
.super Ljava/lang/Object;
.source "ConnectionPoolImpl.kt"

# interfaces
.implements Landroidx/sqlite/SQLiteConnection;
.implements Lqt/a;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/ConnectionWithLock\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,552:1\n1#2:553\n1869#3,2:554\n*S KotlinDebug\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/ConnectionWithLock\n*L\n320#1:554,2\n*E\n"
    }
.end annotation


# instance fields
.field private acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private acquireThrowable:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final delegate:Landroidx/sqlite/SQLiteConnection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lock:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/sqlite/SQLiteConnection;Lqt/a;)V
    .locals 1
    .param p1    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lqt/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/coroutines/ConnectionWithLock;->delegate:Landroidx/sqlite/SQLiteConnection;

    .line 3
    iput-object p2, p0, Landroidx/room/coroutines/ConnectionWithLock;->lock:Lqt/a;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/sqlite/SQLiteConnection;Lqt/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 4
    invoke-static {p4, p2, p3}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    move-result-object p2

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/room/coroutines/ConnectionWithLock;-><init>(Landroidx/sqlite/SQLiteConnection;Lqt/a;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->delegate:Landroidx/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/sqlite/SQLiteConnection;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dump(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "\t\tStatus: Free connection"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    :goto_0
    const-string v0, "\t\tStatus: Acquired connection"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "\t\tCoroutine: "

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    const-string v2, "\t\tAcquired:"

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lms/d;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lkotlin/text/StringsKt;->B0(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Iterable;

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->j0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/Iterable;

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/lang/String;

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v4, "\t\t"

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    :goto_2
    return-void
.end method

.method public getOnLock()Lpt/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpt/f<",
            "Ljava/lang/Object;",
            "Lqt/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->lock:Lqt/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lqt/a;->getOnLock()Lpt/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public holdsLock(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->lock:Lqt/a;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lqt/a;->holdsLock(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public inTransaction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->delegate:Landroidx/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/sqlite/SQLiteConnection;->inTransaction()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->lock:Lqt/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lqt/a;->isLocked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 1
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
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->lock:Lqt/a;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final markAcquired(Lkotlin/coroutines/CoroutineContext;)Landroidx/room/coroutines/ConnectionWithLock;
    .locals 1
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    new-instance p1, Ljava/lang/Throwable;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    .line 14
    .line 15
    return-object p0
.end method

.method public final markReleased()Landroidx/room/coroutines/ConnectionWithLock;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->acquireCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 3
    .line 4
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->acquireThrowable:Ljava/lang/Throwable;

    .line 5
    .line 6
    return-object p0
.end method

.method public prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "sql"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->delegate:Landroidx/sqlite/SQLiteConnection;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->delegate:Landroidx/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public tryLock(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->lock:Lqt/a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lqt/a;->tryLock(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public unlock(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock;->lock:Lqt/a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
