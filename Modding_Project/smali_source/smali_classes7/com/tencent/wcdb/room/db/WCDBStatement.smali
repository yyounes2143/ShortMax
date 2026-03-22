.class Lcom/tencent/wcdb/room/db/WCDBStatement;
.super Ljava/lang/Object;
.source "WCDBStatement.java"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteStatement;


# instance fields
.field private final mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;


# direct methods
.method public constructor <init>(Lcom/tencent/wcdb/database/SQLiteStatement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/wcdb/room/db/WCDBStatement;->mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBStatement;->mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindBlob(I[B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bindDouble(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBStatement;->mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindDouble(ID)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bindLong(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBStatement;->mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindLong(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bindNull(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBStatement;->mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindNull(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBStatement;->mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearBindings()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBStatement;->mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteProgram;->clearBindings()V

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
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBStatement;->mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public execute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBStatement;->mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteStatement;->execute()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public executeInsert()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBStatement;->mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteStatement;->executeInsert()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public executeUpdateDelete()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBStatement;->mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteStatement;->executeUpdateDelete()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public simpleQueryForLong()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBStatement;->mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteStatement;->simpleQueryForLong()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBStatement;->mDelegate:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
