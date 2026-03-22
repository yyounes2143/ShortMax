.class final Lcom/tencent/wcdb/database/SQLiteAsyncCursor$1;
.super Ljava/lang/Object;
.source "SQLiteAsyncCursor.java"

# interfaces
.implements Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wcdb/database/SQLiteAsyncCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public newCursor(Lcom/tencent/wcdb/database/SQLiteDatabase;Lcom/tencent/wcdb/database/SQLiteCursorDriver;Ljava/lang/String;Lcom/tencent/wcdb/database/SQLiteProgram;)Lcom/tencent/wcdb/Cursor;
    .locals 0

    .line 1
    new-instance p1, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 2
    .line 3
    check-cast p4, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;

    .line 4
    .line 5
    invoke-direct {p1, p2, p3, p4}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;-><init>(Lcom/tencent/wcdb/database/SQLiteCursorDriver;Ljava/lang/String;Lcom/tencent/wcdb/database/SQLiteAsyncQuery;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public newQuery(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)Lcom/tencent/wcdb/database/SQLiteProgram;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;-><init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
