.class public Lcom/tencent/wcdb/database/SQLiteDirectQuery;
.super Lcom/tencent/wcdb/database/SQLiteProgram;
.source "SQLiteDirectQuery.java"


# static fields
.field private static final SQLITE_TYPE_MAPPING:[I

.field private static final TAG:Ljava/lang/String; = "WCDB.SQLiteDirectQuery"


# instance fields
.field private final mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->SQLITE_TYPE_MAPPING:[I

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/wcdb/database/SQLiteProgram;-><init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    .line 5
    .line 6
    return-void
.end method

.method private static native nativeGetBlob(JI)[B
.end method

.method private static native nativeGetDouble(JI)D
.end method

.method private static native nativeGetLong(JI)J
.end method

.method private static native nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native nativeGetType(JI)I
.end method

.method private static native nativeStep(JI)I
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->nativeGetBlob(JI)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->nativeGetDouble(JI)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->nativeGetLong(JI)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->nativeGetString(JI)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getType(I)I
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->SQLITE_TYPE_MAPPING:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-static {v1, v2, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->nativeGetType(JI)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aget p1, v0, p1

    .line 14
    .line 15
    return p1
.end method

.method protected onAllReferencesReleased()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->endOperation(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-super {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->onAllReferencesReleased()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method public declared-synchronized reset(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->reset(Z)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->endOperation(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->releasePreparedStatement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method

.method public step(I)I
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->acquirePreparedStatement()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 8
    .line 9
    const-string v1, "directQuery"

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->beginOperation(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->attachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->nativeStep(JI)I

    .line 35
    .line 36
    .line 37
    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return p1

    .line 39
    :goto_1
    instance-of v0, p1, Lcom/tencent/wcdb/database/SQLiteException;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "Got exception on stepping: "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", SQL: "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSql()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v1, "WCDB.SQLiteDirectQuery"

    .line 77
    .line 78
    invoke-static {v1, v0}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v0, p1

    .line 82
    check-cast v0, Lcom/tencent/wcdb/database/SQLiteException;

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/tencent/wcdb/database/SQLiteProgram;->checkCorruption(Lcom/tencent/wcdb/database/SQLiteException;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteDirectQuery;->mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->failOperation(Ljava/lang/Exception;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->releasePreparedStatement()V

    .line 102
    .line 103
    .line 104
    throw p1
.end method
