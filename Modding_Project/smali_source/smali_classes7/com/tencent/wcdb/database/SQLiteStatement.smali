.class public final Lcom/tencent/wcdb/database/SQLiteStatement;
.super Lcom/tencent/wcdb/database/SQLiteProgram;
.source "SQLiteStatement.java"


# direct methods
.method constructor <init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/wcdb/database/SQLiteProgram;-><init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/tencent/wcdb/database/SQLiteStatement;->execute(Lcom/tencent/wcdb/support/CancellationSignal;)V

    return-void
.end method

.method public execute(Lcom/tencent/wcdb/support/CancellationSignal;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSession()Lcom/tencent/wcdb/database/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getConnectionFlags()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/tencent/wcdb/database/SQLiteSession;->execute(Ljava/lang/String;[Ljava/lang/Object;ILcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_0
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteProgram;->checkCorruption(Lcom/tencent/wcdb/database/SQLiteException;)V

    .line 6
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public executeInsert()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/tencent/wcdb/database/SQLiteStatement;->executeInsert(Lcom/tencent/wcdb/support/CancellationSignal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public executeInsert(Lcom/tencent/wcdb/support/CancellationSignal;)J
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSession()Lcom/tencent/wcdb/database/SQLiteSession;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getConnectionFlags()I

    move-result v3

    .line 5
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/tencent/wcdb/database/SQLiteSession;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILcom/tencent/wcdb/support/CancellationSignal;)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/tencent/wcdb/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteProgram;->checkCorruption(Lcom/tencent/wcdb/database/SQLiteException;)V

    .line 8
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public executeUpdateDelete()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/tencent/wcdb/database/SQLiteStatement;->executeUpdateDelete(Lcom/tencent/wcdb/support/CancellationSignal;)I

    move-result v0

    return v0
.end method

.method public executeUpdateDelete(Lcom/tencent/wcdb/support/CancellationSignal;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSession()Lcom/tencent/wcdb/database/SQLiteSession;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getConnectionFlags()I

    move-result v3

    .line 5
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/tencent/wcdb/database/SQLiteSession;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILcom/tencent/wcdb/support/CancellationSignal;)I

    move-result p1
    :try_end_0
    .catch Lcom/tencent/wcdb/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteProgram;->checkCorruption(Lcom/tencent/wcdb/database/SQLiteException;)V

    .line 8
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public simpleQueryForLong()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/tencent/wcdb/database/SQLiteStatement;->simpleQueryForLong(Lcom/tencent/wcdb/support/CancellationSignal;)J

    move-result-wide v0

    return-wide v0
.end method

.method public simpleQueryForLong(Lcom/tencent/wcdb/support/CancellationSignal;)J
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSession()Lcom/tencent/wcdb/database/SQLiteSession;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getConnectionFlags()I

    move-result v3

    .line 5
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/tencent/wcdb/database/SQLiteSession;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILcom/tencent/wcdb/support/CancellationSignal;)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/tencent/wcdb/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteProgram;->checkCorruption(Lcom/tencent/wcdb/database/SQLiteException;)V

    .line 8
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/tencent/wcdb/database/SQLiteStatement;->simpleQueryForString(Lcom/tencent/wcdb/support/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public simpleQueryForString(Lcom/tencent/wcdb/support/CancellationSignal;)Ljava/lang/String;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSession()Lcom/tencent/wcdb/database/SQLiteSession;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getConnectionFlags()I

    move-result v3

    .line 5
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/tencent/wcdb/database/SQLiteSession;->executeForString(Ljava/lang/String;[Ljava/lang/Object;ILcom/tencent/wcdb/support/CancellationSignal;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/tencent/wcdb/database/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteProgram;->checkCorruption(Lcom/tencent/wcdb/database/SQLiteException;)V

    .line 8
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SQLiteProgram: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSql()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
