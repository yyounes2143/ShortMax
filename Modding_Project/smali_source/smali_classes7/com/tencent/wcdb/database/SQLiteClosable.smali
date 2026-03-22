.class public abstract Lcom/tencent/wcdb/database/SQLiteClosable;
.super Ljava/lang/Object;
.source "SQLiteClosable.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private mReferenceCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteClosable;->mReferenceCount:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public acquireReference()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteClosable;->mReferenceCount:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteClosable;->mReferenceCount:I

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "attempt to re-open an already-closed object: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v0
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected abstract onAllReferencesReleased()V
.end method

.method protected onAllReferencesReleasedFromContainer()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->onAllReferencesReleased()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public releaseReference()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteClosable;->mReferenceCount:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    sub-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteClosable;->mReferenceCount:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->onAllReferencesReleased()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v0
.end method

.method public releaseReferenceFromContainer()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteClosable;->mReferenceCount:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    sub-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteClosable;->mReferenceCount:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->onAllReferencesReleased()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v0
.end method
