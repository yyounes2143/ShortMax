.class public final Landroidx/room/coroutines/PassthroughConnectionPool;
.super Ljava/lang/Object;
.source "PassthroughConnectionPool.kt"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final connection:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Landroidx/sqlite/SQLiteConnection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final driver:Landroidx/sqlite/SQLiteDriver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transactionWrapper:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Landroidx/sqlite/SQLiteDriver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteDriver;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;-",
            "Lrs/c<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "driver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->driver:Landroidx/sqlite/SQLiteDriver;

    .line 3
    iput-object p2, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->fileName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->transactionWrapper:Lkotlin/jvm/functions/Function2;

    .line 5
    new-instance p1, Landroidx/room/coroutines/e;

    invoke-direct {p1, p0}, Landroidx/room/coroutines/e;-><init>(Landroidx/room/coroutines/PassthroughConnectionPool;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->connection:Lms/i;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/room/coroutines/PassthroughConnectionPool;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic a(Landroidx/room/coroutines/PassthroughConnectionPool;)Landroidx/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/room/coroutines/PassthroughConnectionPool;->connection$lambda$0(Landroidx/room/coroutines/PassthroughConnectionPool;)Landroidx/sqlite/SQLiteConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final connection$lambda$0(Landroidx/room/coroutines/PassthroughConnectionPool;)Landroidx/sqlite/SQLiteConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->driver:Landroidx/sqlite/SQLiteDriver;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->fileName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->connection:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->connection:Lms/i;

    .line 10
    .line 11
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/sqlite/SQLiteConnection;->close()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public useConnection(ZLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lkotlin/jvm/functions/Function2;
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
            ">(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/room/Transactor;",
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
    invoke-interface {p3}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->Key:Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->getConnectionWrapper()Landroidx/room/coroutines/PassthroughConnection;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v0

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-interface {p2, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    new-instance p1, Landroidx/room/coroutines/PassthroughConnection;

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->transactionWrapper:Lkotlin/jvm/functions/Function2;

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->connection:Lms/i;

    .line 34
    .line 35
    invoke-interface {v2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    .line 40
    .line 41
    invoke-direct {p1, v1, v2}, Landroidx/room/coroutines/PassthroughConnection;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/sqlite/SQLiteConnection;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;

    .line 45
    .line 46
    invoke-direct {v1, p1}, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;-><init>(Landroidx/room/coroutines/PassthroughConnection;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Landroidx/room/coroutines/PassthroughConnectionPool$useConnection$2;

    .line 50
    .line 51
    invoke-direct {v2, p2, p1, v0}, Landroidx/room/coroutines/PassthroughConnectionPool$useConnection$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/room/coroutines/PassthroughConnection;Lrs/c;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2, p3}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method
