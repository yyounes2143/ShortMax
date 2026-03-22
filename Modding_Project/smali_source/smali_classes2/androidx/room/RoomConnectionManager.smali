.class public final Landroidx/room/RoomConnectionManager;
.super Landroidx/room/BaseRoomConnectionManager;
.source "RoomConnectionManager.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;,
        Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configuration:Landroidx/room/DatabaseConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final connectionPool:Landroidx/room/coroutines/ConnectionPool;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final openDelegate:Landroidx/room/RoomOpenDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private supportDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final supportOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .param p1    # Landroidx/room/DatabaseConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/room/RoomOpenDelegate;
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
            "Landroidx/room/DatabaseConfiguration;",
            "Landroidx/room/RoomOpenDelegate;",
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

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transactionWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/room/BaseRoomConnectionManager;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->configuration:Landroidx/room/DatabaseConfiguration;

    .line 3
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Landroidx/room/RoomOpenDelegate;

    .line 4
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/util/List;

    .line 5
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    const-string v1, ":memory:"

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->Companion:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Companion;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 8
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 9
    new-instance v2, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;

    invoke-virtual {p2}, Landroidx/room/RoomOpenDelegate;->getVersion()I

    move-result p2

    invoke-direct {v2, p0, p2}, Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;-><init>(Landroidx/room/RoomConnectionManager;I)V

    invoke-virtual {v0, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object p2

    .line 11
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p2

    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->supportOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 12
    new-instance v0, Landroidx/room/coroutines/PassthroughConnectionPool;

    .line 13
    new-instance v2, Landroidx/sqlite/driver/SupportSQLiteDriver;

    invoke-direct {v2, p2}, Landroidx/sqlite/driver/SupportSQLiteDriver;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    .line 14
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 15
    :goto_0
    invoke-direct {v0, v2, v1, p3}, Landroidx/room/coroutines/PassthroughConnectionPool;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 16
    iput-object v0, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Landroidx/room/coroutines/ConnectionPool;

    goto :goto_3

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SQLiteManager was constructed with both null driver and open helper factory!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p2, 0x0

    .line 18
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->supportOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 19
    invoke-interface {v0}, Landroidx/sqlite/SQLiteDriver;->hasConnectionPool()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 20
    new-instance p2, Landroidx/room/coroutines/PassthroughConnectionPool;

    .line 21
    new-instance v0, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    invoke-direct {v0, p0, v2}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;-><init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    .line 22
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p1

    .line 23
    :goto_1
    invoke-direct {p2, v0, v1, p3}, Landroidx/room/coroutines/PassthroughConnectionPool;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    goto :goto_2

    .line 24
    :cond_5
    iget-object p2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    if-nez p2, :cond_6

    .line 25
    new-instance p2, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    invoke-direct {p2, p0, p1}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;-><init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    .line 26
    invoke-static {p2, v1}, Landroidx/room/coroutines/ConnectionPoolKt;->newSingleConnectionPool(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)Landroidx/room/coroutines/ConnectionPool;

    move-result-object p2

    goto :goto_2

    .line 27
    :cond_6
    new-instance p2, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    iget-object p3, p1, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    invoke-direct {p2, p0, p3}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;-><init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V

    .line 28
    iget-object p3, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {p0, v0}, Landroidx/room/BaseRoomConnectionManager;->getMaxNumberOfReaders(Landroidx/room/RoomDatabase$JournalMode;)I

    move-result v0

    .line 30
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->getMaxNumberOfWriters(Landroidx/room/RoomDatabase$JournalMode;)I

    move-result p1

    .line 31
    invoke-static {p2, p3, v0, p1}, Landroidx/room/coroutines/ConnectionPoolKt;->newConnectionPool(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;II)Landroidx/room/coroutines/ConnectionPool;

    move-result-object p2

    .line 32
    :goto_2
    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Landroidx/room/coroutines/ConnectionPool;

    .line 33
    :goto_3
    invoke-direct {p0}, Landroidx/room/RoomConnectionManager;->init()V

    return-void
.end method

.method public constructor <init>(Landroidx/room/DatabaseConfiguration;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Landroidx/room/DatabaseConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
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
            "Landroidx/room/DatabaseConfiguration;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/room/DatabaseConfiguration;",
            "+",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
            ">;",
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

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportOpenHelperFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transactionWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Landroidx/room/BaseRoomConnectionManager;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->configuration:Landroidx/room/DatabaseConfiguration;

    .line 36
    new-instance v0, Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;

    invoke-direct {v0}, Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Landroidx/room/RoomOpenDelegate;

    .line 37
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/util/List;

    .line 38
    new-instance v0, Landroidx/room/i;

    invoke-direct {v0, p0}, Landroidx/room/i;-><init>(Landroidx/room/RoomConnectionManager;)V

    invoke-direct {p0, p1, v0}, Landroidx/room/RoomConnectionManager;->installOnOpenCallback(Landroidx/room/DatabaseConfiguration;Lkotlin/jvm/functions/Function1;)Landroidx/room/DatabaseConfiguration;

    move-result-object v0

    .line 39
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    iput-object p2, p0, Landroidx/room/RoomConnectionManager;->supportOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 40
    new-instance v0, Landroidx/room/coroutines/PassthroughConnectionPool;

    .line 41
    new-instance v1, Landroidx/sqlite/driver/SupportSQLiteDriver;

    invoke-direct {v1, p2}, Landroidx/sqlite/driver/SupportSQLiteDriver;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    .line 42
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ":memory:"

    .line 43
    :cond_1
    invoke-direct {v0, v1, p1, p3}, Landroidx/room/coroutines/PassthroughConnectionPool;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 44
    iput-object v0, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Landroidx/room/coroutines/ConnectionPool;

    .line 45
    invoke-direct {p0}, Landroidx/room/RoomConnectionManager;->init()V

    return-void
.end method

.method private static final _init_$lambda$1(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/db/SupportSQLiteDatabase;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static synthetic a(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/db/SupportSQLiteDatabase;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/RoomConnectionManager;->_init_$lambda$1(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/db/SupportSQLiteDatabase;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setSupportDatabase$p(Landroidx/room/RoomConnectionManager;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 2
    .line 3
    return-void
.end method

.method private final init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/RoomConnectionManager;->getConfiguration()Landroidx/room/DatabaseConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 6
    .line 7
    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Landroidx/room/RoomConnectionManager;->supportOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method private final installOnOpenCallback(Landroidx/room/DatabaseConfiguration;Lkotlin/jvm/functions/Function1;)Landroidx/room/DatabaseConfiguration;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/DatabaseConfiguration;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/room/DatabaseConfiguration;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_0
    check-cast v1, Ljava/util/Collection;

    .line 12
    .line 13
    new-instance v2, Landroidx/room/RoomConnectionManager$installOnOpenCallback$newCallbacks$1;

    .line 14
    .line 15
    move-object/from16 v3, p2

    .line 16
    .line 17
    invoke-direct {v2, v3}, Landroidx/room/RoomConnectionManager$installOnOpenCallback$newCallbacks$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->L0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const v23, 0x3fffef

    .line 25
    .line 26
    .line 27
    const/16 v24, 0x0

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v10, 0x0

    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x0

    .line 40
    const/4 v13, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    const/4 v15, 0x0

    .line 43
    const/16 v16, 0x0

    .line 44
    .line 45
    const/16 v17, 0x0

    .line 46
    .line 47
    const/16 v18, 0x0

    .line 48
    .line 49
    const/16 v19, 0x0

    .line 50
    .line 51
    const/16 v20, 0x0

    .line 52
    .line 53
    const/16 v21, 0x0

    .line 54
    .line 55
    const/16 v22, 0x0

    .line 56
    .line 57
    move-object/from16 v0, p1

    .line 58
    .line 59
    invoke-static/range {v0 .. v24}, Landroidx/room/DatabaseConfiguration;->copy$default(Landroidx/room/DatabaseConfiguration;Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Landroidx/room/DatabaseConfiguration;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Landroidx/room/coroutines/ConnectionPool;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/room/coroutines/ConnectionPool;->close()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->supportOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->close()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method protected getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->callbacks:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getConfiguration()Landroidx/room/DatabaseConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->configuration:Landroidx/room/DatabaseConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConnectionPool$room_runtime()Landroidx/room/coroutines/ConnectionPool;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Landroidx/room/coroutines/ConnectionPool;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getOpenDelegate()Landroidx/room/RoomOpenDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->openDelegate:Landroidx/room/RoomOpenDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSupportOpenHelper$room_runtime()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->supportOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isSupportDatabaseOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->supportDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public resolveFileName$room_runtime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "fileName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ":memory:"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/room/RoomConnectionManager;->getConfiguration()Landroidx/room/DatabaseConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object p1
.end method

.method public useConnection(ZLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 1
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
    iget-object v0, p0, Landroidx/room/RoomConnectionManager;->connectionPool:Landroidx/room/coroutines/ConnectionPool;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroidx/room/coroutines/ConnectionPool;->useConnection(ZLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
