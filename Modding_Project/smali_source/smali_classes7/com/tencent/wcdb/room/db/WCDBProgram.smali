.class Lcom/tencent/wcdb/room/db/WCDBProgram;
.super Ljava/lang/Object;
.source "WCDBProgram.java"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteProgram;


# instance fields
.field private final mDelegate:Lcom/tencent/wcdb/database/SQLiteProgram;


# direct methods
.method constructor <init>(Lcom/tencent/wcdb/database/SQLiteProgram;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/wcdb/room/db/WCDBProgram;->mDelegate:Lcom/tencent/wcdb/database/SQLiteProgram;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBProgram;->mDelegate:Lcom/tencent/wcdb/database/SQLiteProgram;

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
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBProgram;->mDelegate:Lcom/tencent/wcdb/database/SQLiteProgram;

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
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBProgram;->mDelegate:Lcom/tencent/wcdb/database/SQLiteProgram;

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
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBProgram;->mDelegate:Lcom/tencent/wcdb/database/SQLiteProgram;

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
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBProgram;->mDelegate:Lcom/tencent/wcdb/database/SQLiteProgram;

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
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBProgram;->mDelegate:Lcom/tencent/wcdb/database/SQLiteProgram;

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
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBProgram;->mDelegate:Lcom/tencent/wcdb/database/SQLiteProgram;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
