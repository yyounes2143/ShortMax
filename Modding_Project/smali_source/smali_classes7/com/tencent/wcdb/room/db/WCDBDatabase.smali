.class public Lcom/tencent/wcdb/room/db/WCDBDatabase;
.super Ljava/lang/Object;
.source "WCDBDatabase.java"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteDatabase;


# static fields
.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, " OR IGNORE "

    .line 2
    .line 3
    const-string v5, " OR REPLACE "

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    const-string v1, " OR ROLLBACK "

    .line 8
    .line 9
    const-string v2, " OR ABORT "

    .line 10
    .line 11
    const-string v3, " OR FAIL "

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    new-array v0, v0, [Ljava/lang/String;

    .line 21
    .line 22
    sput-object v0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/tencent/wcdb/database/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 5
    .line 6
    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->beginTransaction()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public beginTransactionNonExclusive()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/wcdb/room/db/WCDBStatement;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Lcom/tencent/wcdb/room/db/WCDBStatement;-><init>(Lcom/tencent/wcdb/database/SQLiteStatement;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DELETE FROM "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lcom/tencent/wcdb/room/db/WCDBDatabase;->isEmpty(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string p1, ""

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, " WHERE "

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/room/db/WCDBDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->bind(Landroidx/sqlite/db/SupportSQLiteProgram;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method public disableWriteAheadLogging()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableWriteAheadLogging()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public endTransaction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->endTransaction()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getInnerDatabase()Lcom/tencent/wcdb/database/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaximumSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getMaximumSize()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPageSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getPageSize()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getVersion()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public inTransaction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->inTransaction()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public insert(Ljava/lang/String;ILandroid/content/ContentValues;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1, p3, p2}, Lcom/tencent/wcdb/database/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    return-wide p1
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isOpen()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isReadOnly()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isWriteAheadLoggingEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public needUpgrade(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->needUpgrade(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    new-instance v1, Lcom/tencent/wcdb/room/db/WCDBDatabase$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/wcdb/room/db/WCDBDatabase$1;-><init>(Lcom/tencent/wcdb/room/db/WCDBDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;)V

    .line 4
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/tencent/wcdb/database/SQLiteDatabase;->rawQueryWithFactory(Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Lcom/tencent/wcdb/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    if-eqz p2, :cond_1

    .line 6
    new-instance v0, Lcom/tencent/wcdb/support/CancellationSignal;

    invoke-direct {v0}, Lcom/tencent/wcdb/support/CancellationSignal;-><init>()V

    .line 7
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/tencent/wcdb/support/CancellationSignal;->cancel()V

    .line 9
    :cond_0
    new-instance v1, Lcom/tencent/wcdb/room/db/WCDBDatabase$2;

    invoke-direct {v1, p0, v0}, Lcom/tencent/wcdb/room/db/WCDBDatabase$2;-><init>(Lcom/tencent/wcdb/room/db/WCDBDatabase;Lcom/tencent/wcdb/support/CancellationSignal;)V

    invoke-virtual {p2, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    new-instance v2, Lcom/tencent/wcdb/room/db/WCDBDatabase$3;

    invoke-direct {v2, p0, p1}, Lcom/tencent/wcdb/room/db/WCDBDatabase$3;-><init>(Lcom/tencent/wcdb/room/db/WCDBDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;)V

    .line 11
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/wcdb/database/SQLiteDatabase;->rawQueryWithFactory(Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Lcom/tencent/wcdb/support/CancellationSignal;)Lcom/tencent/wcdb/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/wcdb/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/wcdb/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaximumSize(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setMaximumSize(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public setPageSize(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setPageSize(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVersion(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setVersion(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    .line 1
    if-eqz p3, :cond_5

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const/16 v1, 0x78

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const-string v1, "UPDATE "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/tencent/wcdb/room/db/WCDBDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 22
    .line 23
    aget-object p2, v1, p2

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " SET "

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p5, :cond_0

    .line 41
    .line 42
    move p2, p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    array-length p2, p5

    .line 45
    add-int/2addr p2, p1

    .line 46
    :goto_0
    new-array v1, p2, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x0

    .line 57
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Ljava/lang/String;

    .line 68
    .line 69
    if-lez v3, :cond_1

    .line 70
    .line 71
    const-string v5, ","

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    const-string v5, ""

    .line 75
    .line 76
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    add-int/lit8 v5, v3, 0x1

    .line 83
    .line 84
    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    aput-object v4, v1, v3

    .line 89
    .line 90
    const-string v3, "=?"

    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move v3, v5

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    if-eqz p5, :cond_3

    .line 98
    .line 99
    move p3, p1

    .line 100
    :goto_3
    if-ge p3, p2, :cond_3

    .line 101
    .line 102
    sub-int v2, p3, p1

    .line 103
    .line 104
    aget-object v2, p5, v2

    .line 105
    .line 106
    aput-object v2, v1, p3

    .line 107
    .line 108
    add-int/lit8 p3, p3, 0x1

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    invoke-static {p4}, Lcom/tencent/wcdb/room/db/WCDBDatabase;->isEmpty(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_4

    .line 116
    .line 117
    const-string p1, " WHERE "

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/room/db/WCDBDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->bind(Landroidx/sqlite/db/SupportSQLiteProgram;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    return p1

    .line 141
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 142
    .line 143
    const-string p2, "Empty values"

    .line 144
    .line 145
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1
.end method

.method public yieldIfContendedSafely()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->yieldIfContendedSafely()Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase;->mDelegate:Lcom/tencent/wcdb/database/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result p1

    return p1
.end method
