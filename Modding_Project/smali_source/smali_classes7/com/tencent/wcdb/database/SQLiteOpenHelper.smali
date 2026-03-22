.class public abstract Lcom/tencent/wcdb/database/SQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteOpenHelper.java"


# static fields
.field private static final DEBUG_STRICT_READONLY:Z = false

.field private static final TAG:Ljava/lang/String; = "WCDB.SQLiteOpenHelper"


# instance fields
.field private mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

.field private final mContext:Landroid/content/Context;

.field private mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

.field private mEnableWriteAheadLogging:Z

.field private final mErrorHandler:Lcom/tencent/wcdb/DatabaseErrorHandler;

.field private final mFactory:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;

.field private mForcedSingleConnection:Z

.field private mIsInitializing:Z

.field private mMode:I

.field private final mName:Ljava/lang/String;

.field private mNeedMode:Z

.field private final mNewVersion:I

.field private mPassword:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/wcdb/database/SQLiteGlobal;->loadLib()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;ILcom/tencent/wcdb/DatabaseErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;ILcom/tencent/wcdb/DatabaseErrorHandler;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;ILcom/tencent/wcdb/DatabaseErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;ILcom/tencent/wcdb/DatabaseErrorHandler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p6, v0, :cond_1

    .line 3
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mFactory:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;

    .line 6
    iput p6, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mNewVersion:I

    .line 7
    iput-object p7, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mErrorHandler:Lcom/tencent/wcdb/DatabaseErrorHandler;

    .line 8
    iput-object p3, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mPassword:[B

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    invoke-direct {p1, p4}, Lcom/tencent/wcdb/database/SQLiteCipherSpec;-><init>(Lcom/tencent/wcdb/database/SQLiteCipherSpec;)V

    :goto_0
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mNeedMode:Z

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Version must be >= 1, was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;ILcom/tencent/wcdb/DatabaseErrorHandler;)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;ILcom/tencent/wcdb/DatabaseErrorHandler;)V

    return-void
.end method

.method private getDatabaseLocked(Z)Lcom/tencent/wcdb/database/SQLiteDatabase;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isOpen()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iput-object v1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isReadOnly()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 29
    .line 30
    if-nez v0, :cond_a

    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    :try_start_0
    iput-boolean v2, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    if-eqz p1, :cond_6

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isReadOnly()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_6

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->reopenReadWrite()V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_3
    iget-object v5, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v5, :cond_4

    .line 58
    .line 59
    invoke-static {v1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->create(Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;)Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    iget-boolean v11, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mForcedSingleConnection:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    :try_start_1
    iput-boolean v2, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mNeedMode:Z

    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    const/16 v1, 0x8

    .line 73
    .line 74
    move v8, v1

    .line 75
    goto :goto_1

    .line 76
    :cond_5
    move v8, v3

    .line 77
    :goto_1
    iput v8, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mMode:I

    .line 78
    .line 79
    iget-object v4, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    iget-object v6, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mPassword:[B

    .line 82
    .line 83
    iget-object v7, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 84
    .line 85
    iget-object v9, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mFactory:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;

    .line 86
    .line 87
    iget-object v10, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mErrorHandler:Lcom/tencent/wcdb/DatabaseErrorHandler;

    .line 88
    .line 89
    invoke-static/range {v4 .. v11}, Lcom/tencent/wcdb/support/Context;->openOrCreateDatabase(Landroid/content/Context;Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;ILcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;Lcom/tencent/wcdb/DatabaseErrorHandler;I)Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 90
    .line 91
    .line 92
    move-result-object v0
    :try_end_1
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    goto :goto_2

    .line 94
    :catch_0
    move-exception v1

    .line 95
    if-nez p1, :cond_8

    .line 96
    .line 97
    :try_start_2
    const-string p1, "WCDB.SQLiteOpenHelper"

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v4, "Couldn\'t open "

    .line 105
    .line 106
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v4, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v4, " for writing (will try read-only):"

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {p1, v2, v1}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    iget-object v5, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mPassword:[B

    .line 143
    .line 144
    iget-object v6, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mCipher:Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 145
    .line 146
    iget-object v7, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mFactory:Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;

    .line 147
    .line 148
    iget-object v9, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mErrorHandler:Lcom/tencent/wcdb/DatabaseErrorHandler;

    .line 149
    .line 150
    const/4 v8, 0x1

    .line 151
    invoke-static/range {v4 .. v9}, Lcom/tencent/wcdb/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;Lcom/tencent/wcdb/database/SQLiteDatabase$CursorFactory;ILcom/tencent/wcdb/DatabaseErrorHandler;)Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    :cond_6
    :goto_2
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->getDatabaseLockedLast(Lcom/tencent/wcdb/database/SQLiteDatabase;)Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 156
    .line 157
    .line 158
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    iput-boolean v3, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 160
    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 164
    .line 165
    if-eq v0, v1, :cond_7

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 168
    .line 169
    .line 170
    :cond_7
    return-object p1

    .line 171
    :cond_8
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    :goto_3
    iput-boolean v3, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 173
    .line 174
    if-eqz v0, :cond_9

    .line 175
    .line 176
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 177
    .line 178
    if-eq v0, v1, :cond_9

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 181
    .line 182
    .line 183
    :cond_9
    throw p1

    .line 184
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    const-string v0, "getDatabase called recursively"

    .line 187
    .line 188
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method

.method private getDatabaseLockedLast(Lcom/tencent/wcdb/database/SQLiteDatabase;)Lcom/tencent/wcdb/database/SQLiteDatabase;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->onConfigure(Lcom/tencent/wcdb/database/SQLiteDatabase;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getVersion()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mNewVersion:I

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isReadOnly()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->beginTransaction()V

    .line 19
    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->onCreate(Lcom/tencent/wcdb/database/SQLiteDatabase;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget v1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mNewVersion:I

    .line 30
    .line 31
    if-le v0, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->onDowngrade(Lcom/tencent/wcdb/database/SQLiteDatabase;II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->onUpgrade(Lcom/tencent/wcdb/database/SQLiteDatabase;II)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mNewVersion:I

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setVersion(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->endTransaction()V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->endTransaction()V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_2
    new-instance v0, Lcom/tencent/wcdb/database/SQLiteException;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v2, "Can\'t upgrade read-only database from version "

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getVersion()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, " to "

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget p1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mNewVersion:I

    .line 81
    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, ": "

    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {v0, p1}, Lcom/tencent/wcdb/database/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->onOpen(Lcom/tencent/wcdb/database/SQLiteDatabase;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isReadOnly()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v1, "Opened "

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, " in read-only mode"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v1, "WCDB.SQLiteOpenHelper"

    .line 137
    .line 138
    invoke-static {v1, v0}, Lcom/tencent/wcdb/support/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 142
    .line 143
    return-object p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isOpen()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v1, "Closed during initialization"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReadableDatabase()Lcom/tencent/wcdb/database/SQLiteDatabase;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->getDatabaseLocked(Z)Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-exit p0

    .line 8
    return-object v0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v0
.end method

.method public getWritableDatabase()Lcom/tencent/wcdb/database/SQLiteDatabase;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->getDatabaseLocked(Z)Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-exit p0

    .line 8
    return-object v0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v0
.end method

.method public onConfigure(Lcom/tencent/wcdb/database/SQLiteDatabase;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onCreate(Lcom/tencent/wcdb/database/SQLiteDatabase;)V
.end method

.method public onDowngrade(Lcom/tencent/wcdb/database/SQLiteDatabase;II)V
    .locals 2

    .line 1
    new-instance p1, Lcom/tencent/wcdb/database/SQLiteException;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "Can\'t downgrade database from version "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p2, " to "

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p1, p2}, Lcom/tencent/wcdb/database/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public onOpen(Lcom/tencent/wcdb/database/SQLiteDatabase;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onUpgrade(Lcom/tencent/wcdb/database/SQLiteDatabase;II)V
.end method

.method public setForcedSingleConnection(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mForcedSingleConnection:Z

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isOpen()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isReadOnly()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mDatabase:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/tencent/wcdb/database/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    .line 40
    .line 41
    :cond_2
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p1
.end method
