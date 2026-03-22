.class Lcom/tencent/wcdb/room/db/WCDBOpenHelper;
.super Ljava/lang/Object;
.source "WCDBOpenHelper.java"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper;->createDelegate(Landroid/content/Context;Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper;->mDelegate:Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;

    .line 9
    .line 10
    return-void
.end method

.method private createDelegate(Landroid/content/Context;Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v4, v0, [Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 3
    .line 4
    new-instance v0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;

    .line 5
    .line 6
    move-object v1, v0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    move-object v7, p5

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/tencent/wcdb/room/db/WCDBDatabase;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper;->mDelegate:Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper;->mDelegate:Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper;->mDelegate:Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->getReadableSupportDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper;->mDelegate:Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->getWritableSupportDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method setAsyncCheckpointEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper;->mDelegate:Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;->mAsyncCheckpoint:Z

    .line 4
    .line 5
    return-void
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper;->mDelegate:Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
