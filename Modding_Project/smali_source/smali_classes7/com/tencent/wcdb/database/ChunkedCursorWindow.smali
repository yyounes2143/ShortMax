.class public Lcom/tencent/wcdb/database/ChunkedCursorWindow;
.super Lcom/tencent/wcdb/database/SQLiteClosable;
.source "ChunkedCursorWindow.java"


# static fields
.field public static final CHUNK_NOT_FOUND:J = -0x1L


# instance fields
.field private mNumColumns:I

.field mWindowPtr:J


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->mNumColumns:I

    .line 6
    .line 7
    invoke-static {p1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeCreate(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->mWindowPtr:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Lcom/tencent/wcdb/CursorWindowAllocationException;

    .line 21
    .line 22
    const-string v0, "Cursor window allocation failed."

    .line 23
    .line 24
    invoke-direct {p1, v0}, Lcom/tencent/wcdb/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method private dispose()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->mWindowPtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeDispose(J)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->mWindowPtr:J

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeCreate(I)J
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeEndRow(JJ)V
.end method

.method private static native nativeGetBlob(JI)[B
.end method

.method private static native nativeGetDouble(JI)D
.end method

.method private static native nativeGetLong(JI)J
.end method

.method private static native nativeGetNumChunks(J)I
.end method

.method private static native nativeGetRow(JI)J
.end method

.method private static native nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native nativeGetType(JI)I
.end method

.method private static native nativeRemoveChunk(JI)J
.end method

.method private static native nativeSetNumColumns(JI)Z
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeClear(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method endRowUnsafe(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->mWindowPtr:J

    .line 9
    .line 10
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeEndRow(JJ)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public getBlob(II)[B
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->getRowUnsafe(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0, v1, p2}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeGetBlob(JI)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->endRowUnsafe(J)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->endRowUnsafe(J)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Couldn\'t read row "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ", column "

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " from ChunkedCursorWindow."

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method getBlobUnsafe(JI)[B
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeGetBlob(JI)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getDouble(II)D
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->getRowUnsafe(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0, v1, p2}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeGetDouble(JI)D

    .line 12
    .line 13
    .line 14
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->endRowUnsafe(J)V

    .line 16
    .line 17
    .line 18
    return-wide p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->endRowUnsafe(J)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Couldn\'t read row "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ", column "

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " from ChunkedCursorWindow."

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method getDoubleUnsafe(JI)D
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeGetDouble(JI)D

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public getLong(II)J
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->getRowUnsafe(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0, v1, p2}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeGetLong(JI)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->endRowUnsafe(J)V

    .line 16
    .line 17
    .line 18
    return-wide p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->endRowUnsafe(J)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Couldn\'t read row "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ", column "

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " from ChunkedCursorWindow."

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method getLongUnsafe(JI)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeGetLong(JI)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public getNumChunks()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeGetNumChunks(J)I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getNumColumns()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->mNumColumns:I

    .line 2
    .line 3
    return v0
.end method

.method getRowUnsafe(I)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeGetRow(JI)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long p1, v0, v2

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-wide v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->getRowUnsafe(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0, v1, p2}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeGetString(JI)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->endRowUnsafe(J)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->endRowUnsafe(J)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Couldn\'t read row "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ", column "

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " from ChunkedCursorWindow."

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method getStringUnsafe(JI)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeGetString(JI)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getType(II)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->getRowUnsafe(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0, v1, p2}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeGetType(JI)I

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->endRowUnsafe(J)V

    .line 16
    .line 17
    .line 18
    return p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->endRowUnsafe(J)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Couldn\'t read row "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ", column "

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " from ChunkedCursorWindow."

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method getTypeUnsafe(JI)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeGetType(JI)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->dispose()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public removeChunk(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeRemoveChunk(JI)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 11
    .line 12
    .line 13
    return-wide v0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public setNumColumns(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->nativeSetNumColumns(JI)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->mNumColumns:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 22
    .line 23
    .line 24
    throw p1
.end method
