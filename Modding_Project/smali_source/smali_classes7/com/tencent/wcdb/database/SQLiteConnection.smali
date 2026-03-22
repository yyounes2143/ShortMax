.class public final Lcom/tencent/wcdb/database/SQLiteConnection;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"

# interfaces
.implements Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wcdb/database/SQLiteConnection$Operation;,
        Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;,
        Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;,
        Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WCDB.SQLiteConnection"

.field private static final TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAcquiredThread:Ljava/lang/Thread;

.field private mAcquiredTid:I

.field private mCancellationSignalAttachCount:I

.field private mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

.field private final mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

.field private final mConnectionId:I

.field private mConnectionPtr:J

.field private final mIsPrimaryConnection:Z

.field private final mIsReadOnlyConnection:Z

.field private mNativeHandleCount:I

.field private mNativeOperation:Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

.field private mOnlyAllowReadOnlyOperations:Z

.field private mPassword:[B

.field private final mPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

.field private final mPreparedStatementCache:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;

.field private mPreparedStatementPool:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

.field private final mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sput-object v1, Lcom/tencent/wcdb/database/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    sput-object v0, Lcom/tencent/wcdb/database/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    .line 9
    .line 10
    const-string v0, "[\\s]*\\n+[\\s]*"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/tencent/wcdb/database/SQLiteConnection;->TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>(Lcom/tencent/wcdb/database/SQLiteConnectionPool;Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;IZ[BLcom/tencent/wcdb/database/SQLiteCipherSpec;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;-><init>(Lcom/tencent/wcdb/database/SQLiteConnection;Lcom/tencent/wcdb/database/SQLiteConnection$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPassword:[B

    .line 13
    .line 14
    if-nez p6, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 18
    .line 19
    invoke-direct {v1, p6}, Lcom/tencent/wcdb/database/SQLiteCipherSpec;-><init>(Lcom/tencent/wcdb/database/SQLiteCipherSpec;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iput-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 25
    .line 26
    new-instance p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 27
    .line 28
    invoke-direct {p1, p2}, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;-><init>(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 32
    .line 33
    iput p3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionId:I

    .line 34
    .line 35
    iput-boolean p4, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mIsPrimaryConnection:Z

    .line 36
    .line 37
    iget p2, p2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    .line 38
    .line 39
    const/4 p3, 0x1

    .line 40
    and-int/2addr p2, p3

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p3, 0x0

    .line 45
    :goto_1
    iput-boolean p3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 46
    .line 47
    new-instance p2, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;

    .line 48
    .line 49
    iget p1, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 50
    .line 51
    invoke-direct {p2, p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;-><init>(Lcom/tencent/wcdb/database/SQLiteConnection;I)V

    .line 52
    .line 53
    .line 54
    iput-object p2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementCache:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;

    .line 55
    .line 56
    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/wcdb/database/SQLiteConnection;Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection;->resetStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/wcdb/database/SQLiteConnection;Lcom/tencent/wcdb/support/CancellationSignal;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->attachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1200(Lcom/tencent/wcdb/database/SQLiteConnection;Lcom/tencent/wcdb/support/CancellationSignal;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/wcdb/database/SQLiteConnection;)Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1400(Lcom/tencent/wcdb/database/SQLiteConnection;Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->finalizePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1500(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$1700()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1800(Lcom/tencent/wcdb/database/SQLiteConnection;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mAcquiredTid:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1900(Lcom/tencent/wcdb/database/SQLiteConnection;)Lcom/tencent/wcdb/database/SQLiteConnectionPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/tencent/wcdb/database/SQLiteConnection;Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection;->bindArguments(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private applyBlockGuardPolicy(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    .locals 0

    .line 1
    return-void
.end method

.method private attachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/tencent/wcdb/support/CancellationSignal;->throwIfCanceled()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-wide v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 15
    .line 16
    invoke-static {v2, v3, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeResetCancel(JZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lcom/tencent/wcdb/support/CancellationSignal;->setOnCancelListener(Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private bindArguments(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    array-length v1, p2

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    invoke-static {p1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$200(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ne v1, v2, :cond_9

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 17
    .line 18
    .line 19
    move-result-wide v10

    .line 20
    :goto_1
    if-ge v0, v1, :cond_8

    .line 21
    .line 22
    aget-object p1, p2, v0

    .line 23
    .line 24
    invoke-static {p1}, Lcom/tencent/wcdb/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_7

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v2, v3, :cond_6

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    if-eq v2, v3, :cond_5

    .line 35
    .line 36
    const/4 v3, 0x4

    .line 37
    if-eq v2, v3, :cond_4

    .line 38
    .line 39
    instance-of v2, p1, Ljava/lang/Boolean;

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    iget-wide v3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 44
    .line 45
    add-int/lit8 v7, v0, 0x1

    .line 46
    .line 47
    check-cast p1, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    const-wide/16 v5, 0x1

    .line 56
    .line 57
    :goto_2
    move-wide v8, v5

    .line 58
    goto :goto_3

    .line 59
    :cond_2
    const-wide/16 v5, 0x0

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :goto_3
    move-wide v5, v10

    .line 63
    invoke-static/range {v3 .. v9}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeBindLong(JJIJ)V

    .line 64
    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_3
    iget-wide v3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 68
    .line 69
    add-int/lit8 v7, v0, 0x1

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    move-wide v5, v10

    .line 76
    invoke-static/range {v3 .. v8}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeBindString(JJILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    iget-wide v3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 81
    .line 82
    add-int/lit8 v7, v0, 0x1

    .line 83
    .line 84
    move-object v8, p1

    .line 85
    check-cast v8, [B

    .line 86
    .line 87
    move-wide v5, v10

    .line 88
    invoke-static/range {v3 .. v8}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeBindBlob(JJI[B)V

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_5
    iget-wide v3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 93
    .line 94
    add-int/lit8 v7, v0, 0x1

    .line 95
    .line 96
    check-cast p1, Ljava/lang/Number;

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 99
    .line 100
    .line 101
    move-result-wide v8

    .line 102
    move-wide v5, v10

    .line 103
    invoke-static/range {v3 .. v9}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeBindDouble(JJID)V

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_6
    iget-wide v3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 108
    .line 109
    add-int/lit8 v7, v0, 0x1

    .line 110
    .line 111
    check-cast p1, Ljava/lang/Number;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 114
    .line 115
    .line 116
    move-result-wide v8

    .line 117
    move-wide v5, v10

    .line 118
    invoke-static/range {v3 .. v9}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeBindLong(JJIJ)V

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_7
    iget-wide v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 123
    .line 124
    add-int/lit8 p1, v0, 0x1

    .line 125
    .line 126
    invoke-static {v2, v3, v10, v11, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeBindNull(JJI)V

    .line 127
    .line 128
    .line 129
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_8
    return-void

    .line 133
    :cond_9
    new-instance p2, Lcom/tencent/wcdb/database/SQLiteBindOrColumnIndexOutOfRangeException;

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v2, "Expected "

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$200(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p1, " bind arguments but "

    .line 153
    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p1, " were provided."

    .line 161
    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {p2, p1}, Lcom/tencent/wcdb/database/SQLiteBindOrColumnIndexOutOfRangeException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p2
.end method

.method private detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lcom/tencent/wcdb/support/CancellationSignal;->setOnCancelListener(Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;)V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeResetCancel(JZ)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private dispose(Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p1, v0, v2

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 10
    .line 11
    const-string v0, "close"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget p1, p1, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mCookie:I

    .line 19
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementCache:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/tencent/wcdb/support/LruCache;->evictAll()V

    .line 23
    .line 24
    .line 25
    iget-wide v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeClose(J)V

    .line 28
    .line 29
    .line 30
    iput-wide v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_0
    :goto_0
    return-void
.end method

.method private finalizePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->recyclePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private getMainDbStatsUnsafe(IJJ)Lcom/tencent/wcdb/database/SQLiteDebug$DbStats;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 5
    .line 6
    iget-boolean v2, v0, Lcom/tencent/wcdb/database/SQLiteConnection;->mIsPrimaryConnection:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " ("

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, v0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionId:I

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_0
    move-object v3, v1

    .line 38
    new-instance v1, Lcom/tencent/wcdb/database/SQLiteDebug$DbStats;

    .line 39
    .line 40
    iget-object v2, v0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementCache:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/tencent/wcdb/support/LruCache;->hitCount()I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    iget-object v2, v0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementCache:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/tencent/wcdb/support/LruCache;->missCount()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    iget-object v2, v0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementCache:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/tencent/wcdb/support/LruCache;->size()I

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    move-object v2, v1

    .line 59
    move-wide v4, p2

    .line 60
    move-wide/from16 v6, p4

    .line 61
    .line 62
    move v8, p1

    .line 63
    invoke-direct/range {v2 .. v11}, Lcom/tencent/wcdb/database/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    .line 64
    .line 65
    .line 66
    return-object v1
.end method

.method private static isCacheable(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    if-ne p0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_1
    :goto_0
    return v1
.end method

.method private static native nativeBindBlob(JJI[B)V
.end method

.method private static native nativeBindDouble(JJID)V
.end method

.method private static native nativeBindLong(JJIJ)V
.end method

.method private static native nativeBindNull(JJI)V
.end method

.method private static native nativeBindString(JJILjava/lang/String;)V
.end method

.method private static native nativeCancel(J)V
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeExecute(JJ)V
.end method

.method private static native nativeExecuteForChangedRowCount(JJ)I
.end method

.method private static native nativeExecuteForCursorWindow(JJJIIZ)J
.end method

.method private static native nativeExecuteForLastInsertedRowId(JJ)J
.end method

.method private static native nativeExecuteForLong(JJ)J
.end method

.method private static native nativeExecuteForString(JJ)Ljava/lang/String;
.end method

.method private static native nativeFinalizeStatement(JJ)V
.end method

.method private static native nativeGetColumnCount(JJ)I
.end method

.method private static native nativeGetColumnName(JJI)Ljava/lang/String;
.end method

.method private static native nativeGetDbLookaside(J)I
.end method

.method private static native nativeGetParameterCount(JJ)I
.end method

.method private static native nativeIsReadOnly(JJ)Z
.end method

.method private native nativeOpen(Ljava/lang/String;ILjava/lang/String;)J
.end method

.method private static native nativePrepareStatement(JLjava/lang/String;)J
.end method

.method private static native nativeRegisterCustomFunction(JLcom/tencent/wcdb/database/SQLiteCustomFunction;)V
.end method

.method private static native nativeRegisterLocalizedCollators(JLjava/lang/String;)V
.end method

.method private static native nativeResetCancel(JZ)V
.end method

.method private static native nativeResetStatement(JJZ)V
.end method

.method private static native nativeSQLiteHandle(JZ)J
.end method

.method private static native nativeSetKey(J[B)V
.end method

.method private static native nativeSetUpdateNotification(JZZ)V
.end method

.method private static native nativeSetWalHook(J)V
.end method

.method private static native nativeWalCheckpoint(JLjava/lang/String;)J
.end method

.method private notifyChange(Ljava/lang/String;Ljava/lang/String;[J[J[J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->notifyChanges(Ljava/lang/String;Ljava/lang/String;[J[J[J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private notifyCheckpoint(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->notifyCheckpoint(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private obtainPreparedStatement(Ljava/lang/String;JIIZ)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementPool:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$700(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementPool:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$702(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$502(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Z)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;-><init>(Lcom/tencent/wcdb/database/SQLiteConnection;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-static {v0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$602(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p2, p3}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$802(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;J)J

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p4}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$202(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;I)I

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p5}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$102(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;I)I

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p6}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$302(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Z)Z

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method static open(Lcom/tencent/wcdb/database/SQLiteConnectionPool;Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;IZ[BLcom/tencent/wcdb/database/SQLiteCipherSpec;)Lcom/tencent/wcdb/database/SQLiteConnection;
    .locals 8

    .line 1
    new-instance v7, Lcom/tencent/wcdb/database/SQLiteConnection;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/wcdb/database/SQLiteConnection;-><init>(Lcom/tencent/wcdb/database/SQLiteConnectionPool;Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;IZ[BLcom/tencent/wcdb/database/SQLiteCipherSpec;)V

    .line 2
    :try_start_0
    invoke-direct {v7}, Lcom/tencent/wcdb/database/SQLiteConnection;->open()V
    :try_end_0
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p0

    .line 3
    invoke-static {v7}, Lcom/tencent/wcdb/database/SQLiteDebug;->collectLastIOTraceStats(Lcom/tencent/wcdb/database/SQLiteConnection;)V

    const/4 p1, 0x0

    .line 4
    invoke-direct {v7, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->dispose(Z)V

    .line 5
    throw p0
.end method

.method private open()V
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    iget-object v1, v0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget v2, v0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v0, v0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->vfsName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeOpen(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 7
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPassword:[B

    if-eqz v2, :cond_0

    array-length v2, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPassword:[B

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPassword:[B

    if-eqz v2, :cond_1

    .line 10
    invoke-static {v0, v1, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeSetKey(J[B)V

    .line 11
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setCipherSpec()V

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setPageSize()V

    .line 13
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setReadOnlyFromConfiguration()V

    .line 14
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 15
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setWalModeFromConfiguration()V

    .line 16
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setSyncModeFromConfiguration()V

    .line 17
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setJournalSizeLimit()V

    .line 18
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setCheckpointStrategy()V

    .line 19
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 20
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setUpdateNotificationFromConfiguration()V

    .line 21
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 22
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/wcdb/database/SQLiteCustomFunction;

    .line 23
    iget-wide v3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v3, v4, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeRegisterCustomFunction(JLcom/tencent/wcdb/database/SQLiteCustomFunction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private recyclePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$602(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementPool:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$702(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementPool:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 11
    .line 12
    return-void
.end method

.method private resetStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeResetStatement(JJZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private setCheckpointStrategy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customWALHookEnabled:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-wide v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeSetWalHook(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "PRAGMA wal_autocheckpoint"

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    const-wide/16 v4, 0x64

    .line 33
    .line 34
    cmp-long v0, v2, v4

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v0, "PRAGMA wal_autocheckpoint=100"

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)J

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method private setCipherSpec()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, v0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->cipher:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "PRAGMA cipher="

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->cipher:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/tencent/wcdb/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 39
    .line 40
    iget v0, v0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->kdfIteration:I

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "PRAGMA kdf_iter="

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 55
    .line 56
    iget v2, v2, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->kdfIteration:I

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "PRAGMA cipher_use_hmac="

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 79
    .line 80
    iget-boolean v2, v2, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->hmacEnabled:Z

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void
.end method

.method private setForeignKeyModeFromConfiguration()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    :goto_0
    const-string v2, "PRAGMA foreign_keys"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p0, v2, v3, v3}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    cmp-long v2, v4, v0

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v4, "PRAGMA foreign_keys="

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0, v0, v3, v3}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method private setJournalMode(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "PRAGMA journal_mode"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "PRAGMA journal_mode="

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, v2, v1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1
    :try_end_0
    .catch Lcom/tencent/wcdb/database/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "Could not change the database journal mode of \'"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, "\' from \'"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, "\' to \'"

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, "\' because the database is locked.  This usually means that there are other open connections to the database which prevents the database from enabling or disabling write-ahead logging mode.  Proceeding without changing the journal mode."

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v0, "WCDB.SQLiteConnection"

    .line 85
    .line 86
    invoke-static {v0, p1}, Lcom/tencent/wcdb/support/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    return-void
.end method

.method private setJournalSizeLimit()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "PRAGMA journal_size_limit"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    const-wide/32 v4, 0x80000

    .line 21
    .line 22
    .line 23
    cmp-long v0, v2, v4

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v0, "PRAGMA journal_size_limit=524288"

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)J

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private setLocaleFromConfiguration()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 2
    .line 3
    iget v1, v0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    .line 4
    .line 5
    or-int/lit8 v1, v1, 0x10

    .line 6
    .line 7
    iput v1, v0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    .line 8
    .line 9
    and-int/lit8 v1, v1, 0x10

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, v0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-wide v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeRegisterLocalizedCollators(JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    :try_start_0
    const-string v1, "CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)"

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v1, v2, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "SELECT locale FROM android_metadata UNION SELECT NULL ORDER BY locale DESC LIMIT 1"

    .line 37
    .line 38
    invoke-virtual {p0, v1, v2, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception v1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-string v1, "BEGIN"

    .line 54
    .line 55
    invoke-virtual {p0, v1, v2, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    :try_start_1
    const-string v1, "DELETE FROM android_metadata"

    .line 59
    .line 60
    invoke-virtual {p0, v1, v2, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "INSERT INTO android_metadata (locale) VALUES(?)"

    .line 64
    .line 65
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 70
    .line 71
    .line 72
    const-string v1, "REINDEX LOCALIZED"

    .line 73
    .line 74
    invoke-virtual {p0, v1, v2, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    :try_start_2
    const-string v1, "COMMIT"

    .line 78
    .line 79
    invoke-virtual {p0, v1, v2, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception v1

    .line 84
    const-string v3, "ROLLBACK"

    .line 85
    .line 86
    invoke-virtual {p0, v3, v2, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 87
    .line 88
    .line 89
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    :goto_0
    new-instance v2, Lcom/tencent/wcdb/database/SQLiteException;

    .line 91
    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v4, "Failed to change locale for db \'"

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 103
    .line 104
    iget-object v4, v4, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v4, "\' to \'"

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v0, "\'."

    .line 118
    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {v2, v0, v1}, Lcom/tencent/wcdb/database/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw v2
.end method

.method private setPageSize()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPassword:[B

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v0, v0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->pageSize:I

    .line 18
    .line 19
    if-gtz v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    int-to-long v0, v0

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    :goto_1
    sget v0, Lcom/tencent/wcdb/database/SQLiteGlobal;->defaultPageSize:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_2
    const-string v2, "PRAGMA cipher_page_size"

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_2
    sget v0, Lcom/tencent/wcdb/database/SQLiteGlobal;->defaultPageSize:I

    .line 31
    .line 32
    int-to-long v0, v0

    .line 33
    const-string v2, "PRAGMA page_size"

    .line 34
    .line 35
    :goto_3
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0, v2, v3, v3}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    cmp-long v4, v4, v0

    .line 41
    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "="

    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, v0, v3, v3}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method private setReadOnlyFromConfiguration()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "PRAGMA query_only = 1"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private setSyncModeFromConfiguration()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 2
    .line 3
    iget v0, v0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->synchronousMode:I

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "PRAGMA synchronous="

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v0, v1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private setUpdateNotificationFromConfiguration()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 4
    .line 5
    iget-boolean v3, v2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationEnabled:Z

    .line 6
    .line 7
    iget-boolean v2, v2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationRowID:Z

    .line 8
    .line 9
    invoke-static {v0, v1, v3, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeSetUpdateNotification(JZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setWalModeFromConfiguration()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 14
    .line 15
    iget v0, v0, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    .line 16
    .line 17
    const/high16 v1, 0x20000000

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v0, "WAL"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "PERSIST"

    .line 26
    .line 27
    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private throwIfStatementForbidden(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$300(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lcom/tencent/wcdb/database/SQLiteException;

    .line 13
    .line 14
    const-string v0, "Cannot execute this statement because it might modify the database but the connection is read-only."

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/tencent/wcdb/database/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method private static trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteConnection;->TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, " "

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method


# virtual methods
.method acquirePreparedStatement(Ljava/lang/String;)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementCache:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/support/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$400(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$402(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Z)Z

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    move v2, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v2, 0x0

    .line 25
    :goto_0
    iget-wide v3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 26
    .line 27
    invoke-static {v3, v4, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativePrepareStatement(JLjava/lang/String;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    :try_start_0
    iget-wide v5, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 32
    .line 33
    invoke-static {v5, v6, v3, v4}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeGetParameterCount(JJ)I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    invoke-static {p1}, Lcom/tencent/wcdb/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v12

    .line 41
    iget-wide v5, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 42
    .line 43
    invoke-static {v5, v6, v3, v4}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeIsReadOnly(JJ)Z

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    move-object v5, p0

    .line 48
    move-object v6, p1

    .line 49
    move-wide v7, v3

    .line 50
    move v10, v12

    .line 51
    invoke-direct/range {v5 .. v11}, Lcom/tencent/wcdb/database/SQLiteConnection;->obtainPreparedStatement(Ljava/lang/String;JIIZ)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    invoke-static {v12}, Lcom/tencent/wcdb/database/SQLiteConnection;->isCacheable(I)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementCache:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;

    .line 64
    .line 65
    invoke-virtual {v2, p1, v0}, Lcom/tencent/wcdb/support/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$502(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Z)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$402(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Z)Z

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :goto_2
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-static {v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$500(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_4

    .line 85
    .line 86
    :cond_3
    iget-wide v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 87
    .line 88
    invoke-static {v0, v1, v3, v4}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 89
    .line 90
    .line 91
    :cond_4
    throw p1
.end method

.method close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteConnection;->dispose(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method collectDbStats(Ljava/util/ArrayList;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wcdb/database/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v10, "PRAGMA "

    .line 6
    .line 7
    iget-wide v1, v9, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeGetDbLookaside(J)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v11, 0x0

    .line 14
    const-wide/16 v12, 0x0

    .line 15
    .line 16
    :try_start_0
    const-string v1, "PRAGMA page_count;"

    .line 17
    .line 18
    invoke-virtual {v9, v1, v11, v11}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3
    :try_end_0
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    const-string v1, "PRAGMA page_size;"

    .line 23
    .line 24
    invoke-virtual {v9, v1, v11, v11}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v5
    :try_end_1
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-wide v3, v12

    .line 30
    :catch_1
    move-wide v5, v12

    .line 31
    :goto_0
    move-object/from16 v1, p0

    .line 32
    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/tencent/wcdb/database/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Lcom/tencent/wcdb/database/SQLiteDebug$DbStats;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    new-instance v14, Lcom/tencent/wcdb/CursorWindow;

    .line 41
    .line 42
    const-string v1, "collectDbStats"

    .line 43
    .line 44
    invoke-direct {v14, v1}, Lcom/tencent/wcdb/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :try_start_2
    const-string v2, "PRAGMA database_list;"

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    move-object/from16 v1, p0

    .line 55
    .line 56
    move-object v4, v14

    .line 57
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/CursorWindow;IIZLcom/tencent/wcdb/support/CancellationSignal;)I

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    move v2, v1

    .line 62
    :goto_1
    invoke-virtual {v14}, Lcom/tencent/wcdb/CursorWindow;->getNumRows()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-ge v2, v3, :cond_1

    .line 67
    .line 68
    invoke-virtual {v14, v2, v1}, Lcom/tencent/wcdb/CursorWindow;->getString(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/4 v4, 0x2

    .line 73
    invoke-virtual {v14, v2, v4}, Lcom/tencent/wcdb/CursorWindow;->getString(II)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4
    :try_end_2
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v6, ".page_count;"

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v9, v5, v11, v11}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v5
    :try_end_3
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v8, ".page_size;"

    .line 113
    .line 114
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v9, v7, v11, v11}, Lcom/tencent/wcdb/database/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v7
    :try_end_4
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 125
    move-wide/from16 v17, v5

    .line 126
    .line 127
    move-wide/from16 v19, v7

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto :goto_3

    .line 132
    :catch_2
    move-wide v5, v12

    .line 133
    :catch_3
    move-wide/from16 v17, v5

    .line 134
    .line 135
    move-wide/from16 v19, v12

    .line 136
    .line 137
    :goto_2
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v6, "  (attached) "

    .line 143
    .line 144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_0

    .line 159
    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v3, ": "

    .line 169
    .line 170
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    :cond_0
    move-object/from16 v16, v3

    .line 181
    .line 182
    new-instance v3, Lcom/tencent/wcdb/database/SQLiteDebug$DbStats;

    .line 183
    .line 184
    const/16 v23, 0x0

    .line 185
    .line 186
    const/16 v24, 0x0

    .line 187
    .line 188
    const/16 v21, 0x0

    .line 189
    .line 190
    const/16 v22, 0x0

    .line 191
    .line 192
    move-object v15, v3

    .line 193
    invoke-direct/range {v15 .. v24}, Lcom/tencent/wcdb/database/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 197
    .line 198
    .line 199
    add-int/lit8 v2, v2, 0x1

    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :catch_4
    :cond_1
    invoke-virtual {v14}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :goto_3
    invoke-virtual {v14}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :goto_4
    return-void
.end method

.method collectDbStatsUnsafe(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wcdb/database/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-wide/16 v2, 0x0

    .line 2
    .line 3
    const-wide/16 v4, 0x0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/tencent/wcdb/database/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Lcom/tencent/wcdb/database/SQLiteDebug$DbStats;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method describeCurrentOperationUnsafe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->describeCurrentOperation()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method dumpUnsafe(Landroid/util/Printer;Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Connection #"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionId:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ":"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "  connectionPtr: 0x"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-wide v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 41
    .line 42
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v1, "  isPrimaryConnection: "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mIsPrimaryConnection:Z

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v1, "  onlyAllowReadOnlyOperations: "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-boolean v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mAcquiredThread:Ljava/lang/Thread;

    .line 101
    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v1, "  acquiredThread: "

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mAcquiredThread:Ljava/lang/Thread;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, " (tid: "

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mAcquiredTid:I

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, ")"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 142
    .line 143
    invoke-virtual {v0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->dump(Landroid/util/Printer;Z)V

    .line 144
    .line 145
    .line 146
    if-eqz p2, :cond_2

    .line 147
    .line 148
    iget-object p2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementCache:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;->dump(Landroid/util/Printer;)V

    .line 151
    .line 152
    .line 153
    :cond_2
    return-void
.end method

.method endNativeHandle(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mNativeHandleCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mNativeHandleCount:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mNativeOperation:Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v1, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeSQLiteHandle(JZ)J

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mNativeOperation:Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 24
    .line 25
    iget v0, v0, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mCookie:I

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mNativeOperation:Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 34
    .line 35
    iget v1, v1, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mCookie:I

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mNativeOperation:Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 4
    .line 5
    const-string v1, "execute"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mCookie:I

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$100(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iput v3, v0, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mType:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    :try_start_1
    invoke-direct {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->throwIfStatementForbidden(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v2, p2}, Lcom/tencent/wcdb/database/SQLiteConnection;->bindArguments(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->applyBlockGuardPolicy(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->attachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_2
    iget-wide v3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    invoke-static {v3, v4, v5, v6}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeExecute(JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 42
    .line 43
    .line 44
    :try_start_3
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    .line 46
    .line 47
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :catch_0
    move-exception p2

    .line 59
    goto :goto_1

    .line 60
    :catchall_1
    move-exception p2

    .line 61
    goto :goto_0

    .line 62
    :catchall_2
    move-exception p2

    .line 63
    :try_start_5
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 64
    .line 65
    .line 66
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 67
    :goto_0
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 68
    .line 69
    .line 70
    throw p2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 71
    :goto_1
    :try_start_7
    instance-of p3, p2, Lcom/tencent/wcdb/database/SQLiteDatabaseLockedException;

    .line 72
    .line 73
    if-nez p3, :cond_0

    .line 74
    .line 75
    instance-of p3, p2, Lcom/tencent/wcdb/database/SQLiteTableLockedException;

    .line 76
    .line 77
    if-eqz p3, :cond_1

    .line 78
    .line 79
    :cond_0
    iget-object p3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 80
    .line 81
    if-eqz p3, :cond_1

    .line 82
    .line 83
    invoke-virtual {p3, p1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->logConnectionPoolBusy(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 87
    .line 88
    invoke-virtual {p1, v1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 89
    .line 90
    .line 91
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 92
    :goto_2
    iget-object p2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 93
    .line 94
    invoke-virtual {p2, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string p2, "sql must not be null."

    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)I
    .locals 9

    .line 1
    const-string v0, "changedRows="

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 6
    .line 7
    const-string v2, "executeForChangedRowCount"

    .line 8
    .line 9
    invoke-virtual {v1, v2, p1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, v1, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mCookie:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {v4}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$100(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    iput v5, v1, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mType:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    :try_start_1
    invoke-direct {p0, v4}, Lcom/tencent/wcdb/database/SQLiteConnection;->throwIfStatementForbidden(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v4, p2}, Lcom/tencent/wcdb/database/SQLiteConnection;->bindArguments(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v4}, Lcom/tencent/wcdb/database/SQLiteConnection;->applyBlockGuardPolicy(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->attachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_2
    iget-wide v5, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 41
    .line 42
    .line 43
    move-result-wide v7

    .line 44
    invoke-static {v5, v6, v7, v8}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeExecuteForChangedRowCount(JJ)I

    .line 45
    .line 46
    .line 47
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 48
    :try_start_3
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    .line 50
    .line 51
    :try_start_4
    invoke-virtual {p0, v4}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 63
    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, v2, p2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    return v3

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto :goto_2

    .line 85
    :catch_0
    move-exception p2

    .line 86
    goto :goto_1

    .line 87
    :catchall_1
    move-exception p2

    .line 88
    goto :goto_0

    .line 89
    :catchall_2
    move-exception p2

    .line 90
    :try_start_5
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 91
    .line 92
    .line 93
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    :goto_0
    :try_start_6
    invoke-virtual {p0, v4}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 95
    .line 96
    .line 97
    throw p2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 98
    :goto_1
    :try_start_7
    instance-of p3, p2, Lcom/tencent/wcdb/database/SQLiteDatabaseLockedException;

    .line 99
    .line 100
    if-nez p3, :cond_1

    .line 101
    .line 102
    instance-of p3, p2, Lcom/tencent/wcdb/database/SQLiteTableLockedException;

    .line 103
    .line 104
    if-eqz p3, :cond_2

    .line 105
    .line 106
    :cond_1
    iget-object p3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 107
    .line 108
    if-eqz p3, :cond_2

    .line 109
    .line 110
    invoke-virtual {p3, p1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->logConnectionPoolBusy(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 114
    .line 115
    invoke-virtual {p1, v2, p2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 116
    .line 117
    .line 118
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 119
    :goto_2
    iget-object p2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 120
    .line 121
    invoke-virtual {p2, v2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_3

    .line 126
    .line 127
    iget-object p2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 128
    .line 129
    new-instance p3, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {p2, v2, p3}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    throw p1

    .line 148
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 149
    .line 150
    const-string p2, "sql must not be null."

    .line 151
    .line 152
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1
.end method

.method public executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/CursorWindow;IIZLcom/tencent/wcdb/support/CancellationSignal;)I
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move/from16 v13, p4

    .line 10
    .line 11
    move-object/from16 v14, p7

    .line 12
    .line 13
    const-string v15, ", countedRows="

    .line 14
    .line 15
    const-string v12, ", filledRows="

    .line 16
    .line 17
    const-string v11, ", actualPos="

    .line 18
    .line 19
    const-string v10, "\', startPos="

    .line 20
    .line 21
    const-string v8, "window=\'"

    .line 22
    .line 23
    if-eqz v2, :cond_5

    .line 24
    .line 25
    if-eqz v3, :cond_4

    .line 26
    .line 27
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v4, v1, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 31
    .line 32
    const-string v5, "executeForCursorWindow"

    .line 33
    .line 34
    invoke-virtual {v4, v5, v2, v0}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget v9, v4, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mCookie:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    const/16 v16, -0x1

    .line 41
    .line 42
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v6}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$100(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    iput v5, v4, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mType:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 51
    .line 52
    :try_start_2
    invoke-direct {v1, v6}, Lcom/tencent/wcdb/database/SQLiteConnection;->throwIfStatementForbidden(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v6, v0}, Lcom/tencent/wcdb/database/SQLiteConnection;->bindArguments(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v6}, Lcom/tencent/wcdb/database/SQLiteConnection;->applyBlockGuardPolicy(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v14}, Lcom/tencent/wcdb/database/SQLiteConnection;->attachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 62
    .line 63
    .line 64
    :try_start_3
    iget-wide v4, v1, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 67
    .line 68
    .line 69
    move-result-wide v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 70
    move-object/from16 v19, v8

    .line 71
    .line 72
    move/from16 v20, v9

    .line 73
    .line 74
    :try_start_4
    iget-wide v8, v3, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 75
    .line 76
    move-object v2, v6

    .line 77
    move-wide/from16 v6, v17

    .line 78
    .line 79
    move-object/from16 v17, v15

    .line 80
    .line 81
    move-object/from16 v15, v19

    .line 82
    .line 83
    move/from16 v13, v20

    .line 84
    .line 85
    move-object/from16 v21, v10

    .line 86
    .line 87
    move/from16 v10, p4

    .line 88
    .line 89
    move-object/from16 v22, v11

    .line 90
    .line 91
    move/from16 v11, p5

    .line 92
    .line 93
    move-object/from16 v23, v12

    .line 94
    .line 95
    move/from16 v12, p6

    .line 96
    .line 97
    :try_start_5
    invoke-static/range {v4 .. v12}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeExecuteForCursorWindow(JJJIIZ)J

    .line 98
    .line 99
    .line 100
    move-result-wide v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 101
    const/16 v0, 0x20

    .line 102
    .line 103
    shr-long v6, v4, v0

    .line 104
    .line 105
    long-to-int v6, v6

    .line 106
    long-to-int v4, v4

    .line 107
    :try_start_6
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/wcdb/CursorWindow;->getNumRows()I

    .line 108
    .line 109
    .line 110
    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 111
    :try_start_7
    invoke-virtual {v3, v6}, Lcom/tencent/wcdb/CursorWindow;->setStartPosition(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 112
    .line 113
    .line 114
    :try_start_8
    invoke-direct {v1, v14}, Lcom/tencent/wcdb/database/SQLiteConnection;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 115
    .line 116
    .line 117
    :try_start_9
    invoke-virtual {v1, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 118
    .line 119
    .line 120
    :try_start_a
    iget-object v0, v1, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 121
    .line 122
    invoke-virtual {v0, v13}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    .line 128
    iget-object v0, v1, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 129
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    move-object/from16 v7, v21

    .line 142
    .line 143
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    move/from16 v8, p4

    .line 147
    .line 148
    move v9, v13

    .line 149
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    move-object/from16 v10, v22

    .line 153
    .line 154
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    move-object/from16 v11, v23

    .line 161
    .line 162
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    move-object/from16 v12, v17

    .line 169
    .line 170
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v0, v9, v2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    goto/16 :goto_7

    .line 186
    .line 187
    :cond_0
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 188
    .line 189
    .line 190
    return v4

    .line 191
    :catchall_1
    move-exception v0

    .line 192
    move/from16 v8, p4

    .line 193
    .line 194
    move v9, v13

    .line 195
    move-object/from16 v12, v17

    .line 196
    .line 197
    move-object/from16 v7, v21

    .line 198
    .line 199
    move-object/from16 v10, v22

    .line 200
    .line 201
    move-object/from16 v11, v23

    .line 202
    .line 203
    goto/16 :goto_6

    .line 204
    .line 205
    :catch_0
    move-exception v0

    .line 206
    move/from16 v8, p4

    .line 207
    .line 208
    move v9, v13

    .line 209
    move-object/from16 v12, v17

    .line 210
    .line 211
    move-object/from16 v7, v21

    .line 212
    .line 213
    move-object/from16 v10, v22

    .line 214
    .line 215
    move-object/from16 v11, v23

    .line 216
    .line 217
    move/from16 v16, v6

    .line 218
    .line 219
    goto/16 :goto_5

    .line 220
    .line 221
    :catchall_2
    move-exception v0

    .line 222
    move/from16 v8, p4

    .line 223
    .line 224
    move v9, v13

    .line 225
    move-object/from16 v12, v17

    .line 226
    .line 227
    move-object/from16 v7, v21

    .line 228
    .line 229
    move-object/from16 v10, v22

    .line 230
    .line 231
    move-object/from16 v11, v23

    .line 232
    .line 233
    move/from16 v16, v6

    .line 234
    .line 235
    goto/16 :goto_4

    .line 236
    .line 237
    :catchall_3
    move-exception v0

    .line 238
    move/from16 v8, p4

    .line 239
    .line 240
    move v9, v13

    .line 241
    move-object/from16 v12, v17

    .line 242
    .line 243
    move-object/from16 v7, v21

    .line 244
    .line 245
    move-object/from16 v10, v22

    .line 246
    .line 247
    move-object/from16 v11, v23

    .line 248
    .line 249
    :goto_1
    move/from16 v16, v6

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :catchall_4
    move-exception v0

    .line 253
    move/from16 v8, p4

    .line 254
    .line 255
    move v9, v13

    .line 256
    move-object/from16 v12, v17

    .line 257
    .line 258
    move-object/from16 v7, v21

    .line 259
    .line 260
    move-object/from16 v10, v22

    .line 261
    .line 262
    move-object/from16 v11, v23

    .line 263
    .line 264
    move/from16 v5, v16

    .line 265
    .line 266
    goto :goto_1

    .line 267
    :catchall_5
    move-exception v0

    .line 268
    move/from16 v8, p4

    .line 269
    .line 270
    move v9, v13

    .line 271
    move-object/from16 v12, v17

    .line 272
    .line 273
    move-object/from16 v7, v21

    .line 274
    .line 275
    move-object/from16 v10, v22

    .line 276
    .line 277
    move-object/from16 v11, v23

    .line 278
    .line 279
    :goto_2
    move/from16 v4, v16

    .line 280
    .line 281
    move v5, v4

    .line 282
    goto :goto_3

    .line 283
    :catchall_6
    move-exception v0

    .line 284
    move-object v2, v6

    .line 285
    move-object v7, v10

    .line 286
    move-object v10, v11

    .line 287
    move-object v11, v12

    .line 288
    move v8, v13

    .line 289
    move-object v12, v15

    .line 290
    move-object/from16 v15, v19

    .line 291
    .line 292
    move/from16 v9, v20

    .line 293
    .line 294
    goto :goto_2

    .line 295
    :catchall_7
    move-exception v0

    .line 296
    move-object v2, v6

    .line 297
    move-object v7, v10

    .line 298
    move-object v10, v11

    .line 299
    move-object v11, v12

    .line 300
    move-object v12, v15

    .line 301
    move-object v15, v8

    .line 302
    move v8, v13

    .line 303
    goto :goto_2

    .line 304
    :goto_3
    :try_start_b
    invoke-direct {v1, v14}, Lcom/tencent/wcdb/database/SQLiteConnection;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 305
    .line 306
    .line 307
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 308
    :catchall_8
    move-exception v0

    .line 309
    goto :goto_4

    .line 310
    :catchall_9
    move-exception v0

    .line 311
    move-object v2, v6

    .line 312
    move-object v7, v10

    .line 313
    move-object v10, v11

    .line 314
    move-object v11, v12

    .line 315
    move-object v12, v15

    .line 316
    move-object v15, v8

    .line 317
    move v8, v13

    .line 318
    move/from16 v4, v16

    .line 319
    .line 320
    move v5, v4

    .line 321
    :goto_4
    :try_start_c
    invoke-virtual {v1, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 322
    .line 323
    .line 324
    throw v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 325
    :catchall_a
    move-exception v0

    .line 326
    move/from16 v6, v16

    .line 327
    .line 328
    goto :goto_6

    .line 329
    :catch_1
    move-exception v0

    .line 330
    goto :goto_5

    .line 331
    :catchall_b
    move-exception v0

    .line 332
    move-object v7, v10

    .line 333
    move-object v10, v11

    .line 334
    move-object v11, v12

    .line 335
    move-object v12, v15

    .line 336
    move-object v15, v8

    .line 337
    move v8, v13

    .line 338
    move/from16 v4, v16

    .line 339
    .line 340
    move v5, v4

    .line 341
    move v6, v5

    .line 342
    goto :goto_6

    .line 343
    :catch_2
    move-exception v0

    .line 344
    move-object v7, v10

    .line 345
    move-object v10, v11

    .line 346
    move-object v11, v12

    .line 347
    move-object v12, v15

    .line 348
    move-object v15, v8

    .line 349
    move v8, v13

    .line 350
    move/from16 v4, v16

    .line 351
    .line 352
    move v5, v4

    .line 353
    :goto_5
    :try_start_d
    instance-of v2, v0, Lcom/tencent/wcdb/database/SQLiteDatabaseLockedException;

    .line 354
    .line 355
    if-nez v2, :cond_1

    .line 356
    .line 357
    instance-of v2, v0, Lcom/tencent/wcdb/database/SQLiteTableLockedException;

    .line 358
    .line 359
    if-eqz v2, :cond_2

    .line 360
    .line 361
    :cond_1
    iget-object v2, v1, Lcom/tencent/wcdb/database/SQLiteConnection;->mPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 362
    .line 363
    if-eqz v2, :cond_2

    .line 364
    .line 365
    move-object/from16 v6, p1

    .line 366
    .line 367
    invoke-virtual {v2, v6}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->logConnectionPoolBusy(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :cond_2
    iget-object v2, v1, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 371
    .line 372
    invoke-virtual {v2, v9, v0}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 373
    .line 374
    .line 375
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 376
    :goto_6
    :try_start_e
    iget-object v2, v1, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 377
    .line 378
    invoke-virtual {v2, v9}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-eqz v2, :cond_3

    .line 383
    .line 384
    iget-object v2, v1, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 385
    .line 386
    new-instance v13, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    invoke-virtual {v2, v9, v4}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 426
    .line 427
    .line 428
    :cond_3
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 429
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 430
    .line 431
    .line 432
    throw v0

    .line 433
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 434
    .line 435
    const-string v2, "window must not be null."

    .line 436
    .line 437
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v0

    .line 441
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 442
    .line 443
    const-string v2, "sql must not be null."

    .line 444
    .line 445
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw v0
.end method

.method public executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)J
    .locals 7

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 4
    .line 5
    const-string v1, "executeForLastInsertedRowId"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mCookie:I

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$100(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iput v3, v0, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mType:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    :try_start_1
    invoke-direct {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->throwIfStatementForbidden(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v2, p2}, Lcom/tencent/wcdb/database/SQLiteConnection;->bindArguments(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->applyBlockGuardPolicy(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->attachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_2
    iget-wide v3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    invoke-static {v3, v4, v5, v6}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeExecuteForLastInsertedRowId(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    :try_start_3
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    .line 47
    .line 48
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 54
    .line 55
    .line 56
    return-wide v3

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception p2

    .line 60
    goto :goto_1

    .line 61
    :catchall_1
    move-exception p2

    .line 62
    goto :goto_0

    .line 63
    :catchall_2
    move-exception p2

    .line 64
    :try_start_5
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 65
    .line 66
    .line 67
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    :goto_0
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 69
    .line 70
    .line 71
    throw p2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 72
    :goto_1
    :try_start_7
    instance-of p3, p2, Lcom/tencent/wcdb/database/SQLiteDatabaseLockedException;

    .line 73
    .line 74
    if-nez p3, :cond_0

    .line 75
    .line 76
    instance-of p3, p2, Lcom/tencent/wcdb/database/SQLiteTableLockedException;

    .line 77
    .line 78
    if-eqz p3, :cond_1

    .line 79
    .line 80
    :cond_0
    iget-object p3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 81
    .line 82
    if-eqz p3, :cond_1

    .line 83
    .line 84
    invoke-virtual {p3, p1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->logConnectionPoolBusy(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 88
    .line 89
    invoke-virtual {p1, v1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 90
    .line 91
    .line 92
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 93
    :goto_2
    iget-object p2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 94
    .line 95
    invoke-virtual {p2, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string p2, "sql must not be null."

    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1
.end method

.method public executeForLong(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)J
    .locals 7

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 4
    .line 5
    const-string v1, "executeForLong"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mCookie:I

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$100(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iput v3, v0, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mType:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    :try_start_1
    invoke-direct {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->throwIfStatementForbidden(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v2, p2}, Lcom/tencent/wcdb/database/SQLiteConnection;->bindArguments(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->applyBlockGuardPolicy(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->attachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_2
    iget-wide v3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    invoke-static {v3, v4, v5, v6}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeExecuteForLong(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    :try_start_3
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    .line 47
    .line 48
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 54
    .line 55
    .line 56
    return-wide v3

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception p2

    .line 60
    goto :goto_1

    .line 61
    :catchall_1
    move-exception p2

    .line 62
    goto :goto_0

    .line 63
    :catchall_2
    move-exception p2

    .line 64
    :try_start_5
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 65
    .line 66
    .line 67
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    :goto_0
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 69
    .line 70
    .line 71
    throw p2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 72
    :goto_1
    :try_start_7
    instance-of p3, p2, Lcom/tencent/wcdb/database/SQLiteDatabaseLockedException;

    .line 73
    .line 74
    if-nez p3, :cond_0

    .line 75
    .line 76
    instance-of p3, p2, Lcom/tencent/wcdb/database/SQLiteTableLockedException;

    .line 77
    .line 78
    if-eqz p3, :cond_1

    .line 79
    .line 80
    :cond_0
    iget-object p3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 81
    .line 82
    if-eqz p3, :cond_1

    .line 83
    .line 84
    invoke-virtual {p3, p1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->logConnectionPoolBusy(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 88
    .line 89
    invoke-virtual {p1, v1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 90
    .line 91
    .line 92
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 93
    :goto_2
    iget-object p2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 94
    .line 95
    invoke-virtual {p2, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string p2, "sql must not be null."

    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1
.end method

.method public executeForString(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)Ljava/lang/String;
    .locals 7

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 4
    .line 5
    const-string v1, "executeForString"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mCookie:I

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$100(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iput v3, v0, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mType:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    :try_start_1
    invoke-direct {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->throwIfStatementForbidden(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v2, p2}, Lcom/tencent/wcdb/database/SQLiteConnection;->bindArguments(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->applyBlockGuardPolicy(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->attachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_2
    iget-wide v3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    invoke-static {v3, v4, v5, v6}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeExecuteForString(JJ)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    :try_start_3
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    .line 47
    .line 48
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 54
    .line 55
    .line 56
    return-object p2

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception p2

    .line 60
    goto :goto_1

    .line 61
    :catchall_1
    move-exception p2

    .line 62
    goto :goto_0

    .line 63
    :catchall_2
    move-exception p2

    .line 64
    :try_start_5
    invoke-direct {p0, p3}, Lcom/tencent/wcdb/database/SQLiteConnection;->detachCancellationSignal(Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 65
    .line 66
    .line 67
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    :goto_0
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 69
    .line 70
    .line 71
    throw p2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 72
    :goto_1
    :try_start_7
    instance-of p3, p2, Lcom/tencent/wcdb/database/SQLiteDatabaseLockedException;

    .line 73
    .line 74
    if-nez p3, :cond_0

    .line 75
    .line 76
    instance-of p3, p2, Lcom/tencent/wcdb/database/SQLiteTableLockedException;

    .line 77
    .line 78
    if-eqz p3, :cond_1

    .line 79
    .line 80
    :cond_0
    iget-object p3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 81
    .line 82
    if-eqz p3, :cond_1

    .line 83
    .line 84
    invoke-virtual {p3, p1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->logConnectionPoolBusy(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 88
    .line 89
    invoke-virtual {p1, v1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 90
    .line 91
    .line 92
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 93
    :goto_2
    iget-object p2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 94
    .line 95
    invoke-virtual {p2, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string p2, "sql must not be null."

    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->onConnectionLeaked()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteConnection;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public getConnectionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionId:I

    .line 2
    .line 3
    return v0
.end method

.method getNativeHandle(Ljava/lang/String;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-wide v2

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mNativeOperation:Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, p1, v1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mNativeOperation:Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 24
    .line 25
    const/16 v0, 0x63

    .line 26
    .line 27
    iput v0, p1, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mType:I

    .line 28
    .line 29
    :cond_1
    iget p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mNativeHandleCount:I

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    add-int/2addr p1, v0

    .line 33
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mNativeHandleCount:I

    .line 34
    .line 35
    iget-wide v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 36
    .line 37
    invoke-static {v1, v2, v0}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeSQLiteHandle(JZ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    return-wide v0
.end method

.method isPreparedStatementInCache(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementCache:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/support/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public isPrimaryConnection()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mIsPrimaryConnection:Z

    .line 2
    .line 3
    return v0
.end method

.method public onCancel()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeCancel(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public prepare(Ljava/lang/String;Lcom/tencent/wcdb/database/SQLiteStatementInfo;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 4
    .line 5
    const-string v1, "prepare"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, p1, v2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/wcdb/database/SQLiteConnection$Operation;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, v0, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mCookie:I

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$100(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    iput v3, v0, Lcom/tencent/wcdb/database/SQLiteConnection$Operation;->mType:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    :try_start_1
    invoke-static {v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$200(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p2, Lcom/tencent/wcdb/database/SQLiteStatementInfo;->numParameters:I

    .line 31
    .line 32
    invoke-static {v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$300(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput-boolean v0, p2, Lcom/tencent/wcdb/database/SQLiteStatementInfo;->readOnly:Z

    .line 37
    .line 38
    iget-wide v3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    invoke-static {v3, v4, v5, v6}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeGetColumnCount(JJ)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 51
    .line 52
    iput-object v0, p2, Lcom/tencent/wcdb/database/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :catchall_0
    move-exception p2

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    new-array v3, v0, [Ljava/lang/String;

    .line 58
    .line 59
    iput-object v3, p2, Lcom/tencent/wcdb/database/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    :goto_0
    if-ge v3, v0, :cond_1

    .line 63
    .line 64
    iget-object v4, p2, Lcom/tencent/wcdb/database/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    .line 65
    .line 66
    iget-wide v5, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->getPtr()J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    invoke-static {v5, v6, v7, v8, v3}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeGetColumnName(JJI)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    aput-object v5, v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :goto_1
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 82
    .line 83
    .line 84
    throw p2

    .line 85
    :catchall_1
    move-exception p1

    .line 86
    goto :goto_4

    .line 87
    :catch_0
    move-exception p2

    .line 88
    goto :goto_3

    .line 89
    :cond_1
    :goto_2
    invoke-virtual {p0, v2}, Lcom/tencent/wcdb/database/SQLiteConnection;->releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :goto_3
    :try_start_3
    instance-of v0, p2, Lcom/tencent/wcdb/database/SQLiteDatabaseLockedException;

    .line 99
    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    instance-of v0, p2, Lcom/tencent/wcdb/database/SQLiteTableLockedException;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    :cond_2
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPool:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->logConnectionPoolBusy(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 114
    .line 115
    invoke-virtual {p1, v1, p2}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 116
    .line 117
    .line 118
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :goto_4
    iget-object p2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mRecentOperations:Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;

    .line 120
    .line 121
    invoke-virtual {p2, v1}, Lcom/tencent/wcdb/database/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    const-string p2, "sql must not be null."

    .line 128
    .line 129
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1
.end method

.method reconfigure(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 3
    .line 4
    iget-object v1, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    move v2, v0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    iget-object v3, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/tencent/wcdb/database/SQLiteCustomFunction;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    iget-wide v4, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 32
    .line 33
    invoke-static {v4, v5, v3}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeRegisterCustomFunction(JLcom/tencent/wcdb/database/SQLiteCustomFunction;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget v1, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    .line 40
    .line 41
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 42
    .line 43
    iget v3, v2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->openFlags:I

    .line 44
    .line 45
    xor-int/2addr v1, v3

    .line 46
    const/high16 v3, 0x20000000

    .line 47
    .line 48
    and-int/2addr v1, v3

    .line 49
    const/4 v3, 0x1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    move v1, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v1, v0

    .line 55
    :goto_1
    iget-boolean v4, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 56
    .line 57
    iget-boolean v5, v2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 58
    .line 59
    if-eq v4, v5, :cond_3

    .line 60
    .line 61
    move v4, v3

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v4, v0

    .line 64
    :goto_2
    iget-object v5, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 67
    .line 68
    invoke-virtual {v5, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget-boolean v5, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customWALHookEnabled:Z

    .line 73
    .line 74
    iget-object v6, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 75
    .line 76
    iget-boolean v7, v6, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->customWALHookEnabled:Z

    .line 77
    .line 78
    if-eq v5, v7, :cond_4

    .line 79
    .line 80
    move v5, v3

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    move v5, v0

    .line 83
    :goto_3
    iget v7, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->synchronousMode:I

    .line 84
    .line 85
    iget v8, v6, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->synchronousMode:I

    .line 86
    .line 87
    if-eq v7, v8, :cond_5

    .line 88
    .line 89
    move v7, v3

    .line 90
    goto :goto_4

    .line 91
    :cond_5
    move v7, v0

    .line 92
    :goto_4
    iget-boolean v8, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationEnabled:Z

    .line 93
    .line 94
    iget-boolean v9, v6, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationEnabled:Z

    .line 95
    .line 96
    if-ne v8, v9, :cond_6

    .line 97
    .line 98
    iget-boolean v8, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationRowID:Z

    .line 99
    .line 100
    iget-boolean v9, v6, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateNotificationRowID:Z

    .line 101
    .line 102
    if-eq v8, v9, :cond_7

    .line 103
    .line 104
    :cond_6
    move v0, v3

    .line 105
    :cond_7
    invoke-virtual {v6, p1}, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->updateParametersFrom(Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;)V

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementCache:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;

    .line 109
    .line 110
    iget p1, p1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 111
    .line 112
    invoke-virtual {v3, p1}, Lcom/tencent/wcdb/support/LruCache;->resize(I)V

    .line 113
    .line 114
    .line 115
    if-eqz v4, :cond_8

    .line 116
    .line 117
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 118
    .line 119
    .line 120
    :cond_8
    if-eqz v1, :cond_9

    .line 121
    .line 122
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setWalModeFromConfiguration()V

    .line 123
    .line 124
    .line 125
    :cond_9
    if-eqz v7, :cond_a

    .line 126
    .line 127
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setSyncModeFromConfiguration()V

    .line 128
    .line 129
    .line 130
    :cond_a
    if-eqz v5, :cond_b

    .line 131
    .line 132
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setCheckpointStrategy()V

    .line 133
    .line 134
    .line 135
    :cond_b
    if-nez v2, :cond_c

    .line 136
    .line 137
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 138
    .line 139
    .line 140
    :cond_c
    if-eqz v0, :cond_d

    .line 141
    .line 142
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteConnection;->setUpdateNotificationFromConfiguration()V

    .line 143
    .line 144
    .line 145
    :cond_d
    return-void
.end method

.method releasePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$402(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Z)Z

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$500(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/tencent/wcdb/database/SQLiteConnection;->resetStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;Z)V
    :try_end_0
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mPreparedStatementCache:Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatementCache;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;->access$600(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/support/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->finalizePreparedStatement(Lcom/tencent/wcdb/database/SQLiteConnection$PreparedStatement;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method setAcquisitionState(Ljava/lang/Thread;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mAcquiredThread:Ljava/lang/Thread;

    .line 2
    .line 3
    iput p2, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mAcquiredTid:I

    .line 4
    .line 5
    return-void
.end method

.method setOnlyAllowReadOnlyOperations(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 2
    .line 3
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
    const-string v1, "SQLiteConnection: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConfiguration:Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/tencent/wcdb/database/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " ("

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionId:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public walCheckpoint(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    const-string p1, "main"

    .line 10
    .line 11
    :cond_1
    iget-wide v0, p0, Lcom/tencent/wcdb/database/SQLiteConnection;->mConnectionPtr:J

    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/database/SQLiteConnection;->nativeWalCheckpoint(JLjava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const/16 p1, 0x20

    .line 18
    .line 19
    shr-long v2, v0, p1

    .line 20
    .line 21
    long-to-int p1, v2

    .line 22
    const-wide v2, 0xffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr v0, v2

    .line 28
    long-to-int v0, v0

    .line 29
    new-instance v1, Landroid/util/Pair;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-object v1
.end method
