.class public final Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;
.super Ljava/lang/Object;
.source "SQLiteDirectCursorDriver.java"

# interfaces
.implements Lcom/tencent/wcdb/database/SQLiteCursorDriver;


# static fields
.field private static DEFAULT_FACTORY:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;


# instance fields
.field private final mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;

.field private final mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

.field private final mEditTable:Ljava/lang/String;

.field private mQuery:Lcom/tencent/wcdb/database/SQLiteProgram;

.field private final mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteCursor;->FACTORY:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;

    .line 2
    .line 3
    sput-object v0, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->DEFAULT_FACTORY:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/wcdb/support/CancellationSignal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public cursorClosed()V
    .locals 0

    .line 1
    return-void
.end method

.method public cursorDeactivated()V
    .locals 0

    .line 1
    return-void
.end method

.method public cursorRequeried(Lcom/tencent/wcdb/Cursor;)V
    .locals 0

    .line 1
    return-void
.end method

.method public query(Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;[Ljava/lang/Object;)Lcom/tencent/wcdb/Cursor;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->DEFAULT_FACTORY:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;

    .line 4
    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    .line 11
    .line 12
    invoke-interface {p1, v1, v2, p2, v3}, Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;->newQuery(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)Lcom/tencent/wcdb/database/SQLiteProgram;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object p2, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {p1, p2, p0, v1, v0}, Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;->newCursor(Lcom/tencent/wcdb/database/SQLiteDatabase;Lcom/tencent/wcdb/database/SQLiteCursorDriver;Ljava/lang/String;Lcom/tencent/wcdb/database/SQLiteProgram;)Lcom/tencent/wcdb/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->mQuery:Lcom/tencent/wcdb/database/SQLiteProgram;

    .line 25
    .line 26
    return-object p1

    .line 27
    :catch_0
    move-exception p1

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 31
    .line 32
    .line 33
    :cond_1
    throw p1
.end method

.method public setBindArguments([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->mQuery:Lcom/tencent/wcdb/database/SQLiteProgram;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
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
    const-string v1, "SQLiteDirectCursorDriver: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
