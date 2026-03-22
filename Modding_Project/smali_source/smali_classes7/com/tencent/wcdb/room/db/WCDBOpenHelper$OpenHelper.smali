.class Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;
.super Lcom/tencent/wcdb/database/SQLiteOpenHelper;
.source "WCDBOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wcdb/room/db/WCDBOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpenHelper"
.end annotation


# instance fields
.field mAsyncCheckpoint:Z

.field final mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field final mDbRef:[Lcom/tencent/wcdb/room/db/WCDBDatabase;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lcom/tencent/wcdb/room/db/WCDBDatabase;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 8

    .line 1
    iget v6, p6, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->version:I

    .line 2
    .line 3
    new-instance v7, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper$1;

    .line 4
    .line 5
    invoke-direct {v7, p3, p6}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper$1;-><init>([Lcom/tencent/wcdb/room/db/WCDBDatabase;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V

    .line 6
    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p2

    .line 12
    move-object v3, p4

    .line 13
    move-object v4, p5

    .line 14
    invoke-direct/range {v0 .. v7}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;ILcom/tencent/wcdb/DatabaseErrorHandler;)V

    .line 15
    .line 16
    .line 17
    iput-object p6, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mDbRef:[Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mAsyncCheckpoint:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->close()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mDbRef:[Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method getReadableSupportDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->getReadableDatabase()Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->getWrappedDb(Lcom/tencent/wcdb/database/SQLiteDatabase;)Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method getWrappedDb(Lcom/tencent/wcdb/database/SQLiteDatabase;)Lcom/tencent/wcdb/room/db/WCDBDatabase;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mDbRef:[Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/tencent/wcdb/room/db/WCDBDatabase;-><init>(Lcom/tencent/wcdb/database/SQLiteDatabase;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mDbRef:[Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 14
    .line 15
    aput-object v0, p1, v1

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mDbRef:[Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 18
    .line 19
    aget-object p1, p1, v1

    .line 20
    .line 21
    return-object p1
.end method

.method getWritableSupportDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->getWritableDatabase()Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->getWrappedDb(Lcom/tencent/wcdb/database/SQLiteDatabase;)Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public onConfigure(Lcom/tencent/wcdb/database/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mAsyncCheckpoint:Z

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setAsyncCheckpointEnabled(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->getWrappedDb(Lcom/tencent/wcdb/database/SQLiteDatabase;)Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onCreate(Lcom/tencent/wcdb/database/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->getWrappedDb(Lcom/tencent/wcdb/database/SQLiteDatabase;)Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDowngrade(Lcom/tencent/wcdb/database/SQLiteDatabase;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->getWrappedDb(Lcom/tencent/wcdb/database/SQLiteDatabase;)Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onDowngrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onOpen(Lcom/tencent/wcdb/database/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->getWrappedDb(Lcom/tencent/wcdb/database/SQLiteDatabase;)Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onUpgrade(Lcom/tencent/wcdb/database/SQLiteDatabase;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mCallback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->getWrappedDb(Lcom/tencent/wcdb/database/SQLiteDatabase;)Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onUpgrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
