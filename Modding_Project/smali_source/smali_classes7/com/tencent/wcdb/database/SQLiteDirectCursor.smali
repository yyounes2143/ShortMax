.class public Lcom/tencent/wcdb/database/SQLiteDirectCursor;
.super Lcom/tencent/wcdb/AbstractCursor;
.source "SQLiteDirectCursor.java"


# static fields
.field public static final FACTORY:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;

.field private static final TAG:Ljava/lang/String; = "WCDB.SQLiteDirectCursor"


# instance fields
.field private final mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCountFinished:Z

.field private final mDriver:Lcom/tencent/wcdb/database/SQLiteCursorDriver;

.field private final mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/wcdb/database/SQLiteDirectCursor$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/wcdb/database/SQLiteDirectCursor$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->FACTORY:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/tencent/wcdb/database/SQLiteCursorDriver;Ljava/lang/String;Lcom/tencent/wcdb/database/SQLiteDirectQuery;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/wcdb/AbstractCursor;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    iput-object p3, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mDriver:Lcom/tencent/wcdb/database/SQLiteCursorDriver;

    .line 9
    .line 10
    invoke-virtual {p3}, Lcom/tencent/wcdb/database/SQLiteProgram;->getColumnNames()[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mColumns:[Ljava/lang/String;

    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCount:I

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCountFinished:Z

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p2, "query object cannot be null"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
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
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mDriver:Lcom/tencent/wcdb/database/SQLiteCursorDriver;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/tencent/wcdb/database/SQLiteCursorDriver;->cursorClosed()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public deactivate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/wcdb/AbstractCursor;->deactivate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mDriver:Lcom/tencent/wcdb/database/SQLiteCursorDriver;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/tencent/wcdb/database/SQLiteCursorDriver;->cursorDeactivated()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->getBlob(I)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mColumns:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCountFinished:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "WCDB.SQLiteDirectCursor"

    .line 6
    .line 7
    const-string v1, "Count query on SQLiteDirectCursor is slow. Iterate through the end to get count or use other implementations."

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/wcdb/support/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/tencent/wcdb/AbstractCursor;->mPos:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 15
    .line 16
    const v2, 0x7fffffff

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->step(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v0, v1

    .line 24
    const/4 v1, 0x1

    .line 25
    add-int/2addr v0, v1

    .line 26
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCount:I

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCountFinished:Z

    .line 29
    .line 30
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v2}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->reset(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 37
    .line 38
    iget v2, p0, Lcom/tencent/wcdb/AbstractCursor;->mPos:I

    .line 39
    .line 40
    add-int/2addr v2, v1

    .line 41
    invoke-virtual {v0, v2}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->step(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    sub-int/2addr v0, v1

    .line 46
    iput v0, p0, Lcom/tencent/wcdb/AbstractCursor;->mPos:I

    .line 47
    .line 48
    :cond_0
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCount:I

    .line 49
    .line 50
    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->getDouble(I)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->getDouble(I)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-float p1, v0

    .line 8
    return p1
.end method

.method public getInt(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->getLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int p1, v0

    .line 8
    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->getLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getShort(I)S
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->getLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int p1, v0

    .line 8
    int-to-short p1, p1

    .line 9
    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->getType(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isNull(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->getType(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public moveToPosition(I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->reset(Z)V

    .line 7
    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/tencent/wcdb/AbstractCursor;->mPos:I

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCountFinished:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCount:I

    .line 18
    .line 19
    if-lt p1, v1, :cond_1

    .line 20
    .line 21
    iput v1, p0, Lcom/tencent/wcdb/AbstractCursor;->mPos:I

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    iget v1, p0, Lcom/tencent/wcdb/AbstractCursor;->mPos:I

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-ge p1, v1, :cond_2

    .line 28
    .line 29
    const-string v1, "WCDB.SQLiteDirectCursor"

    .line 30
    .line 31
    const-string v3, "Moving backward on SQLiteDirectCursor is slow. Get rid of backward movement or use other implementations."

    .line 32
    .line 33
    invoke-static {v1, v3}, Lcom/tencent/wcdb/support/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->reset(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 42
    .line 43
    add-int/lit8 v3, p1, 0x1

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->step(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    sub-int/2addr v1, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    if-ne p1, v1, :cond_3

    .line 52
    .line 53
    return v2

    .line 54
    :cond_3
    iget-object v3, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 55
    .line 56
    sub-int v4, p1, v1

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->step(I)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    add-int/2addr v1, v3

    .line 63
    :goto_0
    if-ge v1, p1, :cond_4

    .line 64
    .line 65
    add-int/2addr v1, v2

    .line 66
    iput v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCount:I

    .line 67
    .line 68
    iput-boolean v2, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCountFinished:Z

    .line 69
    .line 70
    iput v1, p0, Lcom/tencent/wcdb/AbstractCursor;->mPos:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    iput v1, p0, Lcom/tencent/wcdb/AbstractCursor;->mPos:I

    .line 74
    .line 75
    iget p1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCount:I

    .line 76
    .line 77
    if-lt v1, p1, :cond_5

    .line 78
    .line 79
    add-int/2addr v1, v2

    .line 80
    iput v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCount:I

    .line 81
    .line 82
    iput-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCountFinished:Z

    .line 83
    .line 84
    :cond_5
    :goto_1
    iget p1, p0, Lcom/tencent/wcdb/AbstractCursor;->mPos:I

    .line 85
    .line 86
    iget v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCount:I

    .line 87
    .line 88
    if-ge p1, v1, :cond_6

    .line 89
    .line 90
    move v0, v2

    .line 91
    :cond_6
    return v0
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
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

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
    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/tencent/wcdb/AbstractCursor;->mPos:I

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCountFinished:Z

    .line 30
    .line 31
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mCount:I

    .line 32
    .line 33
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mDriver:Lcom/tencent/wcdb/database/SQLiteCursorDriver;

    .line 34
    .line 35
    invoke-interface {v0, p0}, Lcom/tencent/wcdb/database/SQLiteCursorDriver;->cursorRequeried(Lcom/tencent/wcdb/Cursor;)V

    .line 36
    .line 37
    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectCursor;->mQuery:Lcom/tencent/wcdb/database/SQLiteDirectQuery;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->reset(Z)V

    .line 42
    .line 43
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
    const-string v2, "WCDB.SQLiteDirectCursor"

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
