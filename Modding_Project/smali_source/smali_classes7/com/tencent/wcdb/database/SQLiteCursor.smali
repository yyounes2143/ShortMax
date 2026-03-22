.class public Lcom/tencent/wcdb/database/SQLiteCursor;
.super Lcom/tencent/wcdb/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# static fields
.field public static final FACTORY:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;

.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "WCDB.SQLiteCursor"


# instance fields
.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorWindowCapacity:I

.field private final mDriver:Lcom/tencent/wcdb/database/SQLiteCursorDriver;

.field private final mEditTable:Ljava/lang/String;

.field private final mQuery:Lcom/tencent/wcdb/database/SQLiteQuery;

.field private final mStackTrace:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/wcdb/database/SQLiteCursor$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/wcdb/database/SQLiteCursor$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/wcdb/database/SQLiteCursor;->FACTORY:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/tencent/wcdb/database/SQLiteCursorDriver;Ljava/lang/String;Lcom/tencent/wcdb/database/SQLiteQuery;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/tencent/wcdb/AbstractWindowedCursor;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mCount:I

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    .line 5
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mDriver:Lcom/tencent/wcdb/database/SQLiteCursorDriver;

    .line 6
    iput-object p2, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mEditTable:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 8
    iput-object p3, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteQuery;

    .line 9
    invoke-virtual {p3}, Lcom/tencent/wcdb/database/SQLiteProgram;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/tencent/wcdb/DatabaseUtils;->findRowIdColumnIndex([Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/wcdb/AbstractCursor;->mRowIdColumnIndex:I

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "query object cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Lcom/tencent/wcdb/database/SQLiteCursorDriver;Ljava/lang/String;Lcom/tencent/wcdb/database/SQLiteQuery;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/wcdb/database/SQLiteCursor;-><init>(Lcom/tencent/wcdb/database/SQLiteCursorDriver;Ljava/lang/String;Lcom/tencent/wcdb/database/SQLiteQuery;)V

    return-void
.end method

.method private fillWindow(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteCursor;->getDatabase()Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/tencent/wcdb/AbstractWindowedCursor;->clearOrCreateWindow(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mCount:I

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-static {p1, v2}, Lcom/tencent/wcdb/DatabaseUtils;->cursorPickFillWindowStartPosition(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteQuery;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/tencent/wcdb/AbstractWindowedCursor;->mWindow:Lcom/tencent/wcdb/CursorWindow;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/tencent/wcdb/database/SQLiteQuery;->fillWindow(Lcom/tencent/wcdb/CursorWindow;IIZ)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mCount:I

    .line 32
    .line 33
    iget-object p1, p0, Lcom/tencent/wcdb/AbstractWindowedCursor;->mWindow:Lcom/tencent/wcdb/CursorWindow;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/tencent/wcdb/CursorWindow;->getNumRows()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mCursorWindowCapacity:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mCursorWindowCapacity:I

    .line 45
    .line 46
    invoke-static {p1, v0}, Lcom/tencent/wcdb/DatabaseUtils;->cursorPickFillWindowStartPosition(II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteQuery;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/tencent/wcdb/AbstractWindowedCursor;->mWindow:Lcom/tencent/wcdb/CursorWindow;

    .line 53
    .line 54
    invoke-virtual {v1, v3, v0, p1, v2}, Lcom/tencent/wcdb/database/SQLiteQuery;->fillWindow(Lcom/tencent/wcdb/CursorWindow;IIZ)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/wcdb/AbstractWindowedCursor;->closeWindow()V

    .line 59
    .line 60
    .line 61
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/wcdb/AbstractCursor;->close()V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteQuery;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mDriver:Lcom/tencent/wcdb/database/SQLiteCursorDriver;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/tencent/wcdb/database/SQLiteCursorDriver;->cursorClosed()V

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method public deactivate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/wcdb/AbstractCursor;->deactivate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mDriver:Lcom/tencent/wcdb/database/SQLiteCursorDriver;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/tencent/wcdb/database/SQLiteCursorDriver;->cursorDeactivated()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/AbstractWindowedCursor;->mWindow:Lcom/tencent/wcdb/CursorWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteCursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/tencent/wcdb/AbstractCursor;->finalize()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :goto_1
    invoke-super {p0}, Lcom/tencent/wcdb/AbstractCursor;->finalize()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    new-instance v2, Ljava/util/HashMap;

    .line 9
    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-direct {v2, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v1, :cond_0

    .line 17
    .line 18
    aget-object v4, v0, v3

    .line 19
    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-object v2, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 31
    .line 32
    :cond_1
    const/16 v0, 0x2e

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, -0x1

    .line 39
    if-eq v0, v1, :cond_2

    .line 40
    .line 41
    new-instance v2, Ljava/lang/Exception;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v4, "requesting column name with table name -- "

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v4, "WCDB.SQLiteCursor"

    .line 68
    .line 69
    invoke-static {v4, v3, v2}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 79
    .line 80
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Ljava/lang/Integer;

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    :cond_3
    return v1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mCount:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteCursor;->fillWindow(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mCount:I

    .line 11
    .line 12
    return v0
.end method

.method public getDatabase()Lcom/tencent/wcdb/database/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteQuery;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getDatabase()Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onMove(II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/wcdb/AbstractWindowedCursor;->mWindow:Lcom/tencent/wcdb/CursorWindow;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/tencent/wcdb/CursorWindow;->getStartPosition()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-lt p2, p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/tencent/wcdb/AbstractWindowedCursor;->mWindow:Lcom/tencent/wcdb/CursorWindow;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/tencent/wcdb/CursorWindow;->getStartPosition()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v0, p0, Lcom/tencent/wcdb/AbstractWindowedCursor;->mWindow:Lcom/tencent/wcdb/CursorWindow;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/tencent/wcdb/CursorWindow;->getNumRows()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/2addr p1, v0

    .line 24
    if-lt p2, p1, :cond_1

    .line 25
    .line 26
    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/wcdb/database/SQLiteCursor;->fillWindow(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method public requery()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/AbstractCursor;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteQuery;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getDatabase()Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isOpen()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return v1

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/tencent/wcdb/AbstractWindowedCursor;->mWindow:Lcom/tencent/wcdb/CursorWindow;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/tencent/wcdb/CursorWindow;->clear()V

    .line 31
    .line 32
    .line 33
    :cond_2
    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/tencent/wcdb/AbstractCursor;->mPos:I

    .line 35
    .line 36
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mCount:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mDriver:Lcom/tencent/wcdb/database/SQLiteCursorDriver;

    .line 39
    .line 40
    invoke-interface {v0, p0}, Lcom/tencent/wcdb/database/SQLiteCursorDriver;->cursorRequeried(Lcom/tencent/wcdb/Cursor;)V

    .line 41
    .line 42
    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    invoke-super {p0}, Lcom/tencent/wcdb/AbstractCursor;->requery()Z

    .line 45
    .line 46
    .line 47
    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    return v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v2, "WCDB.SQLiteCursor"

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v4, "requery() failed "

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v2, v3, v0}, Lcom/tencent/wcdb/support/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return v1

    .line 81
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    throw v0
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mDriver:Lcom/tencent/wcdb/database/SQLiteCursorDriver;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/database/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setWindow(Lcom/tencent/wcdb/CursorWindow;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/wcdb/AbstractWindowedCursor;->setWindow(Lcom/tencent/wcdb/CursorWindow;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteCursor;->mCount:I

    .line 6
    .line 7
    return-void
.end method
