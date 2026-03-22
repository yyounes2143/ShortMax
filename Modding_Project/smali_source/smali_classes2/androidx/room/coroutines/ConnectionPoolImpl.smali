.class public final Landroidx/room/coroutines/ConnectionPoolImpl;
.super Ljava/lang/Object;
.source "ConnectionPoolImpl.kt"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/ConnectionPoolImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,552:1\n1#2:553\n*E\n"
    }
.end annotation


# instance fields
.field private final _isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final connectionThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/room/coroutines/PooledConnectionImpl;",
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

.field private onTimeout:I

.field private final readers:Landroidx/room/coroutines/Pool;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private timeout:J

.field private final writers:Landroidx/room/coroutines/Pool;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroidx/sqlite/SQLiteDriver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "driver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/room/coroutines/ConnectionElementKey;

    invoke-direct {v0}, Landroidx/room/coroutines/ConnectionElementKey;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    sget-object v0, Lkotlin/time/b;->b:Lkotlin/time/b$a;

    const/16 v0, 0x1e

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->onTimeout:I

    .line 7
    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->driver:Landroidx/sqlite/SQLiteDriver;

    .line 8
    new-instance v0, Landroidx/room/coroutines/Pool;

    new-instance v1, Landroidx/room/coroutines/c;

    invoke-direct {v1, p1, p2}, Landroidx/room/coroutines/c;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 9
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    return-void
.end method

.method public constructor <init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;II)V
    .locals 2
    .param p1    # Landroidx/sqlite/SQLiteDriver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "driver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroidx/room/coroutines/ConnectionElementKey;

    invoke-direct {v0}, Landroidx/room/coroutines/ConnectionElementKey;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 12
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    sget-object v0, Lkotlin/time/b;->b:Lkotlin/time/b$a;

    const/16 v0, 0x1e

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->onTimeout:I

    if-lez p3, :cond_1

    if-lez p4, :cond_0

    .line 16
    iput-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->driver:Landroidx/sqlite/SQLiteDriver;

    .line 17
    new-instance v0, Landroidx/room/coroutines/Pool;

    .line 18
    new-instance v1, Landroidx/room/coroutines/a;

    invoke-direct {v1, p1, p2}, Landroidx/room/coroutines/a;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V

    .line 19
    invoke-direct {v0, p3, v1}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 20
    iput-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 21
    new-instance p3, Landroidx/room/coroutines/Pool;

    new-instance v0, Landroidx/room/coroutines/b;

    invoke-direct {v0, p1, p2}, Landroidx/room/coroutines/b;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V

    invoke-direct {p3, p4, v0}, Landroidx/room/coroutines/Pool;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 22
    iput-object p3, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum number of writers must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum number of readers must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final _init_$lambda$0(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final _init_$lambda$4(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "PRAGMA query_only = 1"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method private static final _init_$lambda$5(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a(Landroidx/room/coroutines/ConnectionPoolImpl;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;->useConnection$lambda$6(Landroidx/room/coroutines/ConnectionPoolImpl;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;->_init_$lambda$4(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;->_init_$lambda$5(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final createConnectionContext(Landroidx/room/coroutines/PooledConnectionImpl;)Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 1
    new-instance v0, Landroidx/room/coroutines/ConnectionElement;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Landroidx/room/coroutines/ConnectionElement;-><init>(Lkotlin/coroutines/CoroutineContext$b;Landroidx/room/coroutines/PooledConnectionImpl;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 9
    .line 10
    invoke-static {v1, p1}, Landroidx/room/concurrent/ThreadLocal_jvmAndroidKt;->asContextElement(Ljava/lang/ThreadLocal;Ljava/lang/Object;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Landroidx/room/coroutines/ConnectionElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public static synthetic d(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;->_init_$lambda$0(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final onTimeout(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "reader"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string/jumbo p1, "writer"

    .line 7
    .line 8
    .line 9
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Timed out attempting to acquire a "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " connection."

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 p1, 0xa

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "Writer pool:"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroidx/room/coroutines/Pool;->dump(Ljava/lang/StringBuilder;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "Reader pool:"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroidx/room/coroutines/Pool;->dump(Ljava/lang/StringBuilder;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const/4 v0, 0x5

    .line 78
    :try_start_0
    invoke-static {v0, p1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 79
    .line 80
    .line 81
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 82
    .line 83
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 84
    .line 85
    .line 86
    throw p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    iget v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->onTimeout:I

    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    if-eq v0, v1, :cond_2

    .line 92
    .line 93
    const/4 v1, 0x2

    .line 94
    if-eq v0, v1, :cond_1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void

    .line 101
    :cond_2
    throw p1
.end method

.method private static final useConnection$lambda$6(Landroidx/room/coroutines/ConnectionPoolImpl;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/coroutines/ConnectionPoolImpl;->onTimeout(Z)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->_isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/room/coroutines/Pool;->close()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/room/coroutines/Pool;->close()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final getOnTimeout$room_runtime()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->onTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTimeout-UwyO8pc$room_runtime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setOnTimeout$room_runtime(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->onTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTimeout-LRDsOJo$room_runtime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 2
    .line 3
    return-void
.end method

.method public useConnection(ZLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 17
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
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    instance-of v4, v3, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    .line 15
    .line 16
    iget v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;

    .line 29
    .line 30
    invoke-direct {v4, v1, v3}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;-><init>(Landroidx/room/coroutines/ConnectionPoolImpl;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    const/4 v8, 0x3

    .line 43
    const/4 v9, 0x2

    .line 44
    const/4 v11, 0x1

    .line 45
    const/4 v12, 0x0

    .line 46
    if-eqz v6, :cond_4

    .line 47
    .line 48
    if-eq v6, v11, :cond_3

    .line 49
    .line 50
    if-eq v6, v9, :cond_3

    .line 51
    .line 52
    if-eq v6, v8, :cond_2

    .line 53
    .line 54
    if-ne v6, v7, :cond_1

    .line 55
    .line 56
    iget-object v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v2, v0

    .line 59
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 60
    .line 61
    iget-object v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v4, v0

    .line 64
    check-cast v4, Landroidx/room/coroutines/Pool;

    .line 65
    .line 66
    :try_start_0
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto/16 :goto_9

    .line 70
    .line 71
    :catchall_0
    move-exception v0

    .line 72
    :goto_1
    move-object v3, v0

    .line 73
    goto/16 :goto_a

    .line 74
    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 78
    .line 79
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :cond_2
    iget-boolean v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    .line 84
    .line 85
    iget-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Landroidx/room/coroutines/ConnectionElementKey;

    .line 88
    .line 89
    iget-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 92
    .line 93
    iget-object v8, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v8, Lkotlin/coroutines/CoroutineContext;

    .line 96
    .line 97
    iget-object v9, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 100
    .line 101
    iget-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v13, Landroidx/room/coroutines/Pool;

    .line 104
    .line 105
    iget-object v14, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 108
    .line 109
    :try_start_1
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .line 111
    .line 112
    move-object/from16 v16, v8

    .line 113
    .line 114
    move-object v8, v6

    .line 115
    move-object v6, v9

    .line 116
    move-object/from16 v9, v16

    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :catchall_1
    move-exception v0

    .line 121
    move-object v3, v0

    .line 122
    move-object v2, v9

    .line 123
    :goto_2
    move-object v4, v13

    .line 124
    goto/16 :goto_a

    .line 125
    .line 126
    :cond_3
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_4
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-direct/range {p0 .. p0}, Landroidx/room/coroutines/ConnectionPoolImpl;->isClosed()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-nez v3, :cond_13

    .line 138
    .line 139
    iget-object v3, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionThreadLocal:Ljava/lang/ThreadLocal;

    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 146
    .line 147
    if-nez v3, :cond_6

    .line 148
    .line 149
    invoke-interface {v4}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iget-object v6, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 154
    .line 155
    invoke-interface {v3, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Landroidx/room/coroutines/ConnectionElement;

    .line 160
    .line 161
    if-eqz v3, :cond_5

    .line 162
    .line 163
    invoke-virtual {v3}, Landroidx/room/coroutines/ConnectionElement;->getConnectionWrapper()Landroidx/room/coroutines/PooledConnectionImpl;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    goto :goto_3

    .line 168
    :cond_5
    move-object v3, v12

    .line 169
    :cond_6
    :goto_3
    if-eqz v3, :cond_b

    .line 170
    .line 171
    if-nez v0, :cond_8

    .line 172
    .line 173
    invoke-virtual {v3}, Landroidx/room/coroutines/PooledConnectionImpl;->isReadOnly()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_7

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_7
    const-string v0, "Cannot upgrade connection from reader to writer"

    .line 181
    .line 182
    invoke-static {v11, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 183
    .line 184
    .line 185
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 186
    .line 187
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 188
    .line 189
    .line 190
    throw v0

    .line 191
    :cond_8
    :goto_4
    invoke-interface {v4}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v6, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 196
    .line 197
    invoke-interface {v0, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-nez v0, :cond_9

    .line 202
    .line 203
    invoke-direct {v1, v3}, Landroidx/room/coroutines/ConnectionPoolImpl;->createConnectionContext(Landroidx/room/coroutines/PooledConnectionImpl;)Lkotlin/coroutines/CoroutineContext;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    new-instance v6, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$2;

    .line 208
    .line 209
    invoke-direct {v6, v2, v3, v12}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/room/coroutines/PooledConnectionImpl;Lrs/c;)V

    .line 210
    .line 211
    .line 212
    iput v11, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 213
    .line 214
    invoke-static {v0, v6, v4}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-ne v3, v5, :cond_a

    .line 219
    .line 220
    return-object v5

    .line 221
    :cond_9
    iput v9, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 222
    .line 223
    invoke-interface {v2, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    if-ne v3, v5, :cond_a

    .line 228
    .line 229
    return-object v5

    .line 230
    :cond_a
    :goto_5
    return-object v3

    .line 231
    :cond_b
    if-eqz v0, :cond_c

    .line 232
    .line 233
    iget-object v3, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_c
    iget-object v3, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 237
    .line 238
    :goto_6
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 239
    .line 240
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 241
    .line 242
    .line 243
    :try_start_2
    invoke-interface {v4}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    iget-object v13, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 248
    .line 249
    iget-wide v14, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->timeout:J

    .line 250
    .line 251
    new-instance v10, Landroidx/room/coroutines/d;

    .line 252
    .line 253
    invoke-direct {v10, v1, v0}, Landroidx/room/coroutines/d;-><init>(Landroidx/room/coroutines/ConnectionPoolImpl;Z)V

    .line 254
    .line 255
    .line 256
    iput-object v2, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 257
    .line 258
    iput-object v3, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 259
    .line 260
    iput-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Ljava/lang/Object;

    .line 261
    .line 262
    iput-object v9, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Ljava/lang/Object;

    .line 263
    .line 264
    iput-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Ljava/lang/Object;

    .line 265
    .line 266
    iput-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Ljava/lang/Object;

    .line 267
    .line 268
    iput-boolean v0, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->Z$0:Z

    .line 269
    .line 270
    iput v8, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 271
    .line 272
    invoke-virtual {v3, v14, v15, v10, v4}, Landroidx/room/coroutines/Pool;->acquireWithTimeout-KLykuaI(JLkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 276
    if-ne v8, v5, :cond_d

    .line 277
    .line 278
    return-object v5

    .line 279
    :cond_d
    move-object v14, v2

    .line 280
    move-object v2, v13

    .line 281
    move-object v13, v3

    .line 282
    move-object v3, v8

    .line 283
    move-object v8, v6

    .line 284
    :goto_7
    :try_start_3
    check-cast v3, Landroidx/room/coroutines/ConnectionWithLock;

    .line 285
    .line 286
    invoke-virtual {v3, v9}, Landroidx/room/coroutines/ConnectionWithLock;->markAcquired(Lkotlin/coroutines/CoroutineContext;)Landroidx/room/coroutines/ConnectionWithLock;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    iget-object v9, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->readers:Landroidx/room/coroutines/Pool;

    .line 291
    .line 292
    iget-object v10, v1, Landroidx/room/coroutines/ConnectionPoolImpl;->writers:Landroidx/room/coroutines/Pool;

    .line 293
    .line 294
    if-eq v9, v10, :cond_e

    .line 295
    .line 296
    if-eqz v0, :cond_e

    .line 297
    .line 298
    move v10, v11

    .line 299
    goto :goto_8

    .line 300
    :cond_e
    const/4 v10, 0x0

    .line 301
    :goto_8
    new-instance v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 302
    .line 303
    invoke-direct {v0, v2, v3, v10}, Landroidx/room/coroutines/PooledConnectionImpl;-><init>(Landroidx/room/coroutines/ConnectionElementKey;Landroidx/room/coroutines/ConnectionWithLock;Z)V

    .line 304
    .line 305
    .line 306
    iput-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 307
    .line 308
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 309
    .line 310
    if-eqz v0, :cond_11

    .line 311
    .line 312
    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 313
    .line 314
    invoke-direct {v1, v0}, Landroidx/room/coroutines/ConnectionPoolImpl;->createConnectionContext(Landroidx/room/coroutines/PooledConnectionImpl;)Lkotlin/coroutines/CoroutineContext;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    new-instance v2, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$4;

    .line 319
    .line 320
    invoke-direct {v2, v14, v6, v12}, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$4;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 321
    .line 322
    .line 323
    iput-object v13, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$0:Ljava/lang/Object;

    .line 324
    .line 325
    iput-object v6, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$1:Ljava/lang/Object;

    .line 326
    .line 327
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$2:Ljava/lang/Object;

    .line 328
    .line 329
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$3:Ljava/lang/Object;

    .line 330
    .line 331
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$4:Ljava/lang/Object;

    .line 332
    .line 333
    iput-object v12, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->L$5:Ljava/lang/Object;

    .line 334
    .line 335
    iput v7, v4, Landroidx/room/coroutines/ConnectionPoolImpl$useConnection$1;->label:I

    .line 336
    .line 337
    invoke-static {v0, v2, v4}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 341
    if-ne v3, v5, :cond_f

    .line 342
    .line 343
    return-object v5

    .line 344
    :cond_f
    move-object v2, v6

    .line 345
    move-object v4, v13

    .line 346
    :goto_9
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 349
    .line 350
    if-eqz v0, :cond_10

    .line 351
    .line 352
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->markRecycled()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->getDelegate()Landroidx/room/coroutines/ConnectionWithLock;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {v2}, Landroidx/room/coroutines/ConnectionWithLock;->markReleased()Landroidx/room/coroutines/ConnectionWithLock;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->getDelegate()Landroidx/room/coroutines/ConnectionWithLock;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v4, v0}, Landroidx/room/coroutines/Pool;->recycle(Landroidx/room/coroutines/ConnectionWithLock;)V

    .line 367
    .line 368
    .line 369
    :cond_10
    return-object v3

    .line 370
    :catchall_2
    move-exception v0

    .line 371
    move-object v3, v0

    .line 372
    move-object v2, v6

    .line 373
    goto/16 :goto_2

    .line 374
    .line 375
    :cond_11
    :try_start_4
    const-string v0, "Required value was null."

    .line 376
    .line 377
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 378
    .line 379
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 383
    :catchall_3
    move-exception v0

    .line 384
    move-object v4, v3

    .line 385
    move-object v2, v6

    .line 386
    goto/16 :goto_1

    .line 387
    .line 388
    :goto_a
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 389
    :catchall_4
    move-exception v0

    .line 390
    move-object v5, v0

    .line 391
    :try_start_6
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 394
    .line 395
    if-eqz v0, :cond_12

    .line 396
    .line 397
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->markRecycled()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->getDelegate()Landroidx/room/coroutines/ConnectionWithLock;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v2}, Landroidx/room/coroutines/ConnectionWithLock;->markReleased()Landroidx/room/coroutines/ConnectionWithLock;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->getDelegate()Landroidx/room/coroutines/ConnectionWithLock;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-virtual {v4, v0}, Landroidx/room/coroutines/Pool;->recycle(Landroidx/room/coroutines/ConnectionWithLock;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 412
    .line 413
    .line 414
    goto :goto_b

    .line 415
    :catchall_5
    move-exception v0

    .line 416
    invoke-static {v3, v0}, Lms/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 417
    .line 418
    .line 419
    :cond_12
    :goto_b
    throw v5

    .line 420
    :cond_13
    const/16 v0, 0x15

    .line 421
    .line 422
    const-string v2, "Connection pool is closed"

    .line 423
    .line 424
    invoke-static {v0, v2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 425
    .line 426
    .line 427
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 428
    .line 429
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 430
    .line 431
    .line 432
    throw v0
.end method
