.class public abstract Lcom/tencent/wcdb/database/SQLiteProgram;
.super Lcom/tencent/wcdb/database/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WCDB.SQLiteProgram"


# instance fields
.field private final mBindArgs:[Ljava/lang/Object;

.field private mBoundSession:Lcom/tencent/wcdb/database/SQLiteSession;

.field private final mColumnNames:[Ljava/lang/String;

.field private final mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

.field private final mNumParameters:I

.field protected mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

.field private final mReadOnly:Z

.field private final mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sput-object v0, Lcom/tencent/wcdb/database/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method protected constructor <init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/tencent/wcdb/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x4

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v1, v2

    .line 31
    :goto_0
    new-instance v0, Lcom/tencent/wcdb/database/SQLiteStatementInfo;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/tencent/wcdb/database/SQLiteStatementInfo;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getThreadSession()Lcom/tencent/wcdb/database/SQLiteSession;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p1, v1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v3, p2, p1, p4, v0}, Lcom/tencent/wcdb/database/SQLiteSession;->prepare(Ljava/lang/String;ILcom/tencent/wcdb/support/CancellationSignal;Lcom/tencent/wcdb/database/SQLiteStatementInfo;)V

    .line 45
    .line 46
    .line 47
    iget-boolean p1, v0, Lcom/tencent/wcdb/database/SQLiteStatementInfo;->readOnly:Z

    .line 48
    .line 49
    iput-boolean p1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mReadOnly:Z

    .line 50
    .line 51
    iget-object p1, v0, Lcom/tencent/wcdb/database/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 54
    .line 55
    iget p1, v0, Lcom/tencent/wcdb/database/SQLiteStatementInfo;->numParameters:I

    .line 56
    .line 57
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mNumParameters:I

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iput-boolean v2, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mReadOnly:Z

    .line 61
    .line 62
    sget-object p1, Lcom/tencent/wcdb/database/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 65
    .line 66
    iput v2, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mNumParameters:I

    .line 67
    .line 68
    :goto_1
    if-eqz p3, :cond_3

    .line 69
    .line 70
    array-length p1, p3

    .line 71
    iget p2, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mNumParameters:I

    .line 72
    .line 73
    if-gt p1, p2, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string p4, "Too many bind arguments.  "

    .line 84
    .line 85
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    array-length p3, p3

    .line 89
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p3, " arguments were provided but the statement needs "

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget p3, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mNumParameters:I

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p3, " arguments."

    .line 103
    .line 104
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_3
    :goto_2
    iget p1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mNumParameters:I

    .line 116
    .line 117
    const/4 p2, 0x0

    .line 118
    if-eqz p1, :cond_4

    .line 119
    .line 120
    new-array p1, p1, [Ljava/lang/Object;

    .line 121
    .line 122
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 123
    .line 124
    if-eqz p3, :cond_5

    .line 125
    .line 126
    array-length p4, p3

    .line 127
    invoke-static {p3, v2, p1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    iput-object p2, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 132
    .line 133
    :cond_5
    :goto_3
    iput-object p2, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 134
    .line 135
    iput-object p2, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mBoundSession:Lcom/tencent/wcdb/database/SQLiteSession;

    .line 136
    .line 137
    return-void
.end method

.method private bind(ILjava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    iget v1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mNumParameters:I

    .line 5
    .line 6
    if-gt p1, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 9
    .line 10
    sub-int/2addr p1, v0

    .line 11
    aput-object p2, v1, p1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "Cannot bind argument at index "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, " because the index is out of range.  The statement has "

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mNumParameters:I

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " parameters."

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p2
.end method


# virtual methods
.method protected declared-synchronized acquirePreparedStatement()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getThreadSession()Lcom/tencent/wcdb/database/SQLiteSession;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mBoundSession:Lcom/tencent/wcdb/database/SQLiteSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_0
    if-nez v1, :cond_1

    .line 16
    .line 17
    :try_start_1
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mBoundSession:Lcom/tencent/wcdb/database/SQLiteSession;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mReadOnly:Z

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/tencent/wcdb/database/SQLiteSession;->acquirePreparedStatement(Ljava/lang/String;I)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->bindArguments([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    const/4 v0, 0x1

    .line 42
    return v0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v1, "SQLiteProgram has bound to another thread."

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw v0
.end method

.method public bindAllArgsAsStrings([Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    :goto_0
    if-eqz v0, :cond_0

    .line 5
    .line 6
    add-int/lit8 v1, v0, -0x1

    .line 7
    .line 8
    aget-object v1, p1, v1

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public bindBlob(I[B)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "the bind value at index "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " is null"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p2
.end method

.method public bindDouble(ID)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bindLong(IJ)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bindNull(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/tencent/wcdb/database/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "the bind value at index "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " is null"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p2
.end method

.method protected final checkCorruption(Lcom/tencent/wcdb/database/SQLiteException;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseCorruptException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    instance-of p1, p1, Lcom/tencent/wcdb/database/SQLiteFullException;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mReadOnly:Z

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    :goto_0
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/tencent/wcdb/database/SQLiteDebug;->collectLastIOTraceStats(Lcom/tencent/wcdb/database/SQLiteDatabase;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->onCorruption()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public clearBindings()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mBoundSession:Lcom/tencent/wcdb/database/SQLiteSession;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    new-instance v0, Lcom/tencent/wcdb/database/SQLiteMisuseException;

    .line 18
    .line 19
    const-string v1, "Acquired prepared statement is not released."

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/tencent/wcdb/database/SQLiteMisuseException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method protected final getBindArgs()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getConnectionFlags()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mReadOnly:Z

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final getDatabase()Lcom/tencent/wcdb/database/SQLiteDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getSession()Lcom/tencent/wcdb/database/SQLiteSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getThreadSession()Lcom/tencent/wcdb/database/SQLiteSession;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected final getSql()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUniqueId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->releasePreparedStatement()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->clearBindings()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected declared-synchronized releasePreparedStatement()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mBoundSession:Lcom/tencent/wcdb/database/SQLiteSession;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-nez v1, :cond_0

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
    if-eqz v0, :cond_2

    .line 15
    .line 16
    :try_start_1
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getThreadSession()Lcom/tencent/wcdb/database/SQLiteSession;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mBoundSession:Lcom/tencent/wcdb/database/SQLiteSession;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/tencent/wcdb/database/SQLiteSession;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteProgram;->mBoundSession:Lcom/tencent/wcdb/database/SQLiteSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v1, "SQLiteProgram has bound to another thread."

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v1, "Internal state error."

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    throw v0
.end method
