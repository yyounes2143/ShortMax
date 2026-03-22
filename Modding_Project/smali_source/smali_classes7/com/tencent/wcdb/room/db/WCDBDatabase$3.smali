.class Lcom/tencent/wcdb/room/db/WCDBDatabase$3;
.super Ljava/lang/Object;
.source "WCDBDatabase.java"

# interfaces
.implements Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wcdb/room/db/WCDBDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wcdb/room/db/WCDBDatabase;

.field final synthetic val$supportQuery:Landroidx/sqlite/db/SupportSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/tencent/wcdb/room/db/WCDBDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase$3;->this$0:Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase$3;->val$supportQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public newCursor(Lcom/tencent/wcdb/database/SQLiteDatabase;Lcom/tencent/wcdb/database/SQLiteCursorDriver;Ljava/lang/String;Lcom/tencent/wcdb/database/SQLiteProgram;)Lcom/tencent/wcdb/Cursor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase$3;->val$supportQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/wcdb/room/db/WCDBProgram;

    .line 4
    .line 5
    invoke-direct {v1, p4}, Lcom/tencent/wcdb/room/db/WCDBProgram;-><init>(Lcom/tencent/wcdb/database/SQLiteProgram;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteQuery;->bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteCursor;->FACTORY:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;->newCursor(Lcom/tencent/wcdb/database/SQLiteDatabase;Lcom/tencent/wcdb/database/SQLiteCursorDriver;Ljava/lang/String;Lcom/tencent/wcdb/database/SQLiteProgram;)Lcom/tencent/wcdb/Cursor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public newQuery(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)Lcom/tencent/wcdb/database/SQLiteProgram;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteCursor;->FACTORY:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;->newQuery(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)Lcom/tencent/wcdb/database/SQLiteProgram;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
