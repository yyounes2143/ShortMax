.class public final Landroidx/room/support/QueryInterceptorStatement;
.super Ljava/lang/Object;
.source "QueryInterceptorStatement.android.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteStatement;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nQueryInterceptorStatement.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryInterceptorStatement.android.kt\nandroidx/room/support/QueryInterceptorStatement\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"
    }
.end annotation


# instance fields
.field private final bindArgsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final delegate:Landroidx/sqlite/db/SupportSQLiteStatement;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final queryCallback:Landroidx/room/RoomDatabase$QueryCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final queryCallbackScope:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sqlStatement:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/String;Lgt/g0;Landroidx/room/RoomDatabase$QueryCallback;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteStatement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/room/RoomDatabase$QueryCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sqlStatement"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "queryCallbackScope"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "queryCallback"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/room/support/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/room/support/QueryInterceptorStatement;->sqlStatement:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p3, p0, Landroidx/room/support/QueryInterceptorStatement;->queryCallbackScope:Lgt/g0;

    .line 29
    .line 30
    iput-object p4, p0, Landroidx/room/support/QueryInterceptorStatement;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 31
    .line 32
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/room/support/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 38
    .line 39
    return-void
.end method

.method public static final synthetic access$getQueryCallback$p(Landroidx/room/support/QueryInterceptorStatement;)Landroidx/room/RoomDatabase$QueryCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/support/QueryInterceptorStatement;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSqlStatement$p(Landroidx/room/support/QueryInterceptorStatement;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/support/QueryInterceptorStatement;->sqlStatement:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final saveArgsToCache(ILjava/lang/Object;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sub-int v0, p1, v0

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, v0, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/room/support/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/room/support/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public bindDouble(ID)V
    .locals 1

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/room/support/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bindLong(IJ)V
    .locals 1

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/room/support/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bindNull(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/room/support/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/room/support/QueryInterceptorStatement;->saveArgsToCache(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public clearBindings()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->clearBindings()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public execute()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/room/support/QueryInterceptorStatement;->queryCallbackScope:Lgt/g0;

    .line 10
    .line 11
    new-instance v4, Landroidx/room/support/QueryInterceptorStatement$execute$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v4, p0, v0, v2}, Landroidx/room/support/QueryInterceptorStatement$execute$1;-><init>(Landroidx/room/support/QueryInterceptorStatement;Ljava/util/List;Lrs/c;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->execute()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public executeInsert()J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/room/support/QueryInterceptorStatement;->queryCallbackScope:Lgt/g0;

    .line 10
    .line 11
    new-instance v4, Landroidx/room/support/QueryInterceptorStatement$executeInsert$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v4, p0, v0, v2}, Landroidx/room/support/QueryInterceptorStatement$executeInsert$1;-><init>(Landroidx/room/support/QueryInterceptorStatement;Ljava/util/List;Lrs/c;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    return-wide v0
.end method

.method public executeUpdateDelete()I
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/room/support/QueryInterceptorStatement;->queryCallbackScope:Lgt/g0;

    .line 10
    .line 11
    new-instance v4, Landroidx/room/support/QueryInterceptorStatement$executeUpdateDelete$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v4, p0, v0, v2}, Landroidx/room/support/QueryInterceptorStatement$executeUpdateDelete$1;-><init>(Landroidx/room/support/QueryInterceptorStatement;Ljava/util/List;Lrs/c;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public simpleQueryForLong()J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/room/support/QueryInterceptorStatement;->queryCallbackScope:Lgt/g0;

    .line 10
    .line 11
    new-instance v4, Landroidx/room/support/QueryInterceptorStatement$simpleQueryForLong$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v4, p0, v0, v2}, Landroidx/room/support/QueryInterceptorStatement$simpleQueryForLong$1;-><init>(Landroidx/room/support/QueryInterceptorStatement;Ljava/util/List;Lrs/c;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->simpleQueryForLong()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    return-wide v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->bindArgsCache:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/room/support/QueryInterceptorStatement;->queryCallbackScope:Lgt/g0;

    .line 10
    .line 11
    new-instance v4, Landroidx/room/support/QueryInterceptorStatement$simpleQueryForString$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v4, p0, v0, v2}, Landroidx/room/support/QueryInterceptorStatement$simpleQueryForString$1;-><init>(Landroidx/room/support/QueryInterceptorStatement;Ljava/util/List;Lrs/c;)V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
