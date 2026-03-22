.class public Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;
.super Ljava/lang/Object;
.source "WCDBOpenHelperFactory.java"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# instance fields
.field private mAsyncCheckpoint:Z

.field private mCipherSpec:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

.field private mPassphrase:[B

.field private mWALMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public asyncCheckpointEnabled(Z)Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;->mAsyncCheckpoint:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public cipherSpec(Lcom/tencent/wcdb/database/SQLiteCipherSpec;)Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;->mCipherSpec:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 2
    .line 3
    return-object p0
.end method

.method public create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 7

    .line 1
    new-instance v6, Lcom/tencent/wcdb/room/db/WCDBOpenHelper;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;->mPassphrase:[B

    .line 8
    .line 9
    iget-object v4, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;->mCipherSpec:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 10
    .line 11
    iget-object v5, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V

    .line 15
    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;->mWALMode:Z

    .line 18
    .line 19
    invoke-virtual {v6, p1}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 20
    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;->mAsyncCheckpoint:Z

    .line 23
    .line 24
    invoke-virtual {v6, p1}, Lcom/tencent/wcdb/room/db/WCDBOpenHelper;->setAsyncCheckpointEnabled(Z)V

    .line 25
    .line 26
    .line 27
    return-object v6
.end method

.method public passphrase([B)Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;->mPassphrase:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public writeAheadLoggingEnabled(Z)Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;->mWALMode:Z

    .line 2
    .line 3
    return-object p0
.end method
