.class public Lcom/tencent/wcdb/database/SQLiteAsyncQuery;
.super Lcom/tencent/wcdb/database/SQLiteProgram;
.source "SQLiteAsyncQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WCDB.SQLiteAsyncQuery"


# instance fields
.field private final mResultColumns:I


# direct methods
.method public constructor <init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/wcdb/database/SQLiteProgram;-><init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getColumnNames()[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    array-length p1, p1

    .line 9
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;->mResultColumns:I

    .line 10
    .line 11
    return-void
.end method

.method private static native nativeCount(J)I
.end method

.method private static native nativeFillRows(JJII)I
.end method


# virtual methods
.method acquire()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->acquirePreparedStatement()Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->bindArguments([Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method fillRows(Lcom/tencent/wcdb/database/ChunkedCursorWindow;II)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;->acquire()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->getNumColumns()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;->mResultColumns:I

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->setNumColumns(I)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-wide v3, p1, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->mWindowPtr:J

    .line 22
    .line 23
    move v5, p2

    .line 24
    move v6, p3

    .line 25
    invoke-static/range {v1 .. v6}, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;->nativeFillRows(JJII)I

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p1

    .line 30
    :catch_0
    move-exception p1

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string p3, "Got exception on fillRows: "

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p3, ", SQL: "

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSql()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const-string p3, "WCDB.SQLiteAsyncQuery"

    .line 65
    .line 66
    invoke-static {p3, p2}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteProgram;->checkCorruption(Lcom/tencent/wcdb/database/SQLiteException;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method getCount()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;->acquire()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;->nativeCount(J)I

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "Got exception on getCount: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", SQL: "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSql()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "WCDB.SQLiteAsyncQuery"

    .line 50
    .line 51
    invoke-static {v2, v1}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/tencent/wcdb/database/SQLiteProgram;->checkCorruption(Lcom/tencent/wcdb/database/SQLiteException;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method release()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->releasePreparedStatement()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->reset(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
