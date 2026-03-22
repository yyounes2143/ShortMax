.class public Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wcdb/DatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertHelper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final TABLE_INFO_PRAGMA_COLUMNNAME_INDEX:I = 0x1

.field public static final TABLE_INFO_PRAGMA_DEFAULT_INDEX:I = 0x4


# instance fields
.field private mColumns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDb:Lcom/tencent/wcdb/database/SQLiteDatabase;

.field private mInsertSQL:Ljava/lang/String;

.field private mInsertStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

.field private mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

.field private mReplaceStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mInsertStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mReplaceStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mDb:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private buildSQL()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wcdb/SQLException;
        }
    .end annotation

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const/16 v3, 0x80

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-string v4, "INSERT INTO "

    .line 13
    .line 14
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v4, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v4, " ("

    .line 23
    .line 24
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const-string v3, "VALUES ("

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    :try_start_0
    iget-object v5, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mDb:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 39
    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v7, "PRAGMA table_info("

    .line 46
    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v7, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v5, v6, v3}, Lcom/tencent/wcdb/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/wcdb/Cursor;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    new-instance v5, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-interface {v3}, Lcom/tencent/wcdb/Cursor;->getCount()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iput-object v5, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    .line 76
    .line 77
    const/4 v5, 0x1

    .line 78
    move v6, v5

    .line 79
    :goto_0
    invoke-interface {v3}, Lcom/tencent/wcdb/Cursor;->moveToNext()Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_3

    .line 84
    .line 85
    invoke-interface {v3, v5}, Lcom/tencent/wcdb/Cursor;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    const/4 v8, 0x4

    .line 90
    invoke-interface {v3, v8}, Lcom/tencent/wcdb/Cursor;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    iget-object v9, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    if-nez v8, :cond_0

    .line 113
    .line 114
    const-string v7, "?"

    .line 115
    .line 116
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    goto :goto_3

    .line 122
    :cond_0
    const-string v7, "COALESCE(?, "

    .line 123
    .line 124
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :goto_1
    invoke-interface {v3}, Lcom/tencent/wcdb/Cursor;->getCount()I

    .line 134
    .line 135
    .line 136
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    const-string v8, ", "

    .line 138
    .line 139
    if-ne v6, v7, :cond_1

    .line 140
    .line 141
    :try_start_1
    const-string v7, ") "

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_1
    move-object v7, v8

    .line 145
    :goto_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-interface {v3}, Lcom/tencent/wcdb/Cursor;->getCount()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-ne v6, v7, :cond_2

    .line 153
    .line 154
    const-string v8, ");"

    .line 155
    .line 156
    :cond_2
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .line 158
    .line 159
    add-int/lit8 v6, v6, 0x1

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_3
    invoke-interface {v3}, Lcom/tencent/wcdb/Cursor;->close()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iput-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 173
    .line 174
    return-void

    .line 175
    :goto_3
    if-eqz v3, :cond_4

    .line 176
    .line 177
    invoke-interface {v3}, Lcom/tencent/wcdb/Cursor;->close()V

    .line 178
    .line 179
    .line 180
    :cond_4
    throw v0
.end method

.method private getStatement(Z)Lcom/tencent/wcdb/database/SQLiteStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wcdb/SQLException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object p1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mReplaceStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->buildSQL()V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "INSERT OR REPLACE"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v1, 0x6

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mDb:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mReplaceStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mReplaceStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mInsertStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 50
    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 54
    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->buildSQL()V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object p1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mDb:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mInsertStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 69
    .line 70
    :cond_4
    iget-object p1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mInsertStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 71
    .line 72
    return-object p1
.end method

.method private insertInternal(Landroid/content/ContentValues;Z)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mDb:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p2}, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->getStatement(Z)Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/tencent/wcdb/database/SQLiteProgram;->clearBindings()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {p2, v2, v1}, Lcom/tencent/wcdb/DatabaseUtils;->bindObjectToProgram(Lcom/tencent/wcdb/database/SQLiteProgram;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    :catch_0
    move-exception p2

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/wcdb/database/SQLiteStatement;->executeInsert()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iget-object p2, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mDb:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Lcom/tencent/wcdb/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mDb:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->endTransaction()V

    .line 67
    .line 68
    .line 69
    return-wide v0

    .line 70
    :goto_1
    :try_start_1
    const-string v0, "WCDB.DatabaseUtils"

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v2, "Error inserting "

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, " into table  "

    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

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
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {v0, p1, p2}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mDb:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->endTransaction()V

    .line 109
    .line 110
    .line 111
    const-wide/16 p1, -0x1

    .line 112
    .line 113
    return-wide p1

    .line 114
    :goto_2
    iget-object p2, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mDb:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/tencent/wcdb/database/SQLiteDatabase;->endTransaction()V

    .line 117
    .line 118
    .line 119
    throw p1
.end method


# virtual methods
.method public bind(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindDouble(ID)V

    return-void
.end method

.method public bind(IF)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindDouble(ID)V

    return-void
.end method

.method public bind(II)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bind(IJ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bind(ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    invoke-virtual {p2, p1}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bind(IZ)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    if-eqz p2, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bind(I[B)V
    .locals 1

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    invoke-virtual {p2, p1}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindBlob(I[B)V

    :goto_0
    return-void
.end method

.method public bindNull(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/wcdb/database/SQLiteProgram;->bindNull(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mInsertStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mInsertStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mReplaceStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteClosable;->close()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mReplaceStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 19
    .line 20
    :cond_1
    iput-object v1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    .line 23
    .line 24
    return-void
.end method

.method public execute()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteStatement;->executeInsert()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2
    :try_end_0
    .catch Lcom/tencent/wcdb/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-object v1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 11
    .line 12
    return-wide v2

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    :try_start_1
    const-string v2, "WCDB.DatabaseUtils"

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "Error executing InsertHelper with table "

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v2, v3, v0}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 45
    .line 46
    const-wide/16 v0, -0x1

    .line 47
    .line 48
    return-wide v0

    .line 49
    :goto_0
    iput-object v1, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 50
    .line 51
    throw v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "you must prepare this inserter before calling execute"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->getStatement(Z)Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "column \'"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, "\' is invalid"

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public insert(Landroid/content/ContentValues;)J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->insertInternal(Landroid/content/ContentValues;Z)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
.end method

.method public prepareForInsert()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->getStatement(Z)Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteProgram;->clearBindings()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public prepareForReplace()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->getStatement(Z)Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->mPreparedStatement:Lcom/tencent/wcdb/database/SQLiteStatement;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteProgram;->clearBindings()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public replace(Landroid/content/ContentValues;)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/tencent/wcdb/DatabaseUtils$InsertHelper;->insertInternal(Landroid/content/ContentValues;Z)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
.end method
