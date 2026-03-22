.class public final Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "DefaultDatabaseErrorHandler.java"

# interfaces
.implements Lcom/tencent/wcdb/DatabaseErrorHandler;


# static fields
.field private static final SUFFIX_TO_BACKUP:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WCDB.DefaultDatabaseErrorHandler"


# instance fields
.field private final mNoCorruptionBackup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v5, "-vfslog"

    .line 2
    .line 3
    const-string v6, "-vfslo1"

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    const-string v1, "-journal"

    .line 8
    .line 9
    const-string v2, "-wal"

    .line 10
    .line 11
    const-string v3, ".sm"

    .line 12
    .line 13
    const-string v4, ".bak"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->SUFFIX_TO_BACKUP:[Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->mNoCorruptionBackup:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->mNoCorruptionBackup:Z

    return-void
.end method

.method private deleteDatabaseFile(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, ":memory:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "Remove database file: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "WCDB.DefaultDatabaseErrorHandler"

    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->mNoCorruptionBackup:Z

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    new-instance v0, Ljava/io/File;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, "corrupted"

    .line 60
    .line 61
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    const-string v4, "Could not create directory for corrupted database. Corruption backup may be unavailable."

    .line 71
    .line 72
    invoke-static {v1, v4}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v3, "/"

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sget-object v1, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->SUFFIX_TO_BACKUP:[Ljava/lang/String;

    .line 104
    .line 105
    array-length v3, v1

    .line 106
    :goto_0
    if-ge v2, v3, :cond_3

    .line 107
    .line 108
    aget-object v4, v1, v2

    .line 109
    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v5, v4}, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->moveOrDeleteFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    add-int/lit8 v2, v2, 0x1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    sget-object v0, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->SUFFIX_TO_BACKUP:[Ljava/lang/String;

    .line 147
    .line 148
    array-length v1, v0

    .line 149
    :goto_1
    if-ge v2, v1, :cond_3

    .line 150
    .line 151
    aget-object v3, v0, v2

    .line 152
    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-static {v3}, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->deleteFile(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    add-int/lit8 v2, v2, 0x1

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_3
    :goto_2
    return-void
.end method

.method private static deleteFile(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static moveOrDeleteFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return p0
.end method


# virtual methods
.method public onCorruption(Lcom/tencent/wcdb/database/SQLiteDatabase;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Corruption reported by sqlite on database: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "WCDB.DefaultDatabaseErrorHandler"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isOpen()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getTraceCallback()Lcom/tencent/wcdb/database/SQLiteTrace;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-interface {v1, p1}, Lcom/tencent/wcdb/database/SQLiteTrace;->onDatabaseCorrupted(Lcom/tencent/wcdb/database/SQLiteDatabase;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V
    :try_end_1
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/util/Pair;

    .line 76
    .line 77
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Ljava/lang/String;

    .line 80
    .line 81
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :catchall_0
    move-exception v1

    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroid/util/Pair;

    .line 111
    .line 112
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v0, Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    throw v1

    .line 128
    :catch_1
    if-eqz v0, :cond_2

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_5

    .line 139
    .line 140
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroid/util/Pair;

    .line 145
    .line 146
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Ljava/lang/String;

    .line 149
    .line 150
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/DefaultDatabaseErrorHandler;->deleteDatabaseFile(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    :goto_4
    return-void
.end method
