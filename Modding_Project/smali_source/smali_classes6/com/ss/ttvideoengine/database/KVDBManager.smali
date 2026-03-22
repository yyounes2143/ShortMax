.class public Lcom/ss/ttvideoengine/database/KVDBManager;
.super Ljava/lang/Object;
.source "KVDBManager.java"

# interfaces
.implements Lcom/ss/ttvideoengine/database/IKVStorage;


# static fields
.field private static final TAG:Ljava/lang/String; = "KVDBManager"


# instance fields
.field private createDBSuccess:Z

.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mHelper:Lcom/ss/ttvideoengine/database/KVDBHelper;

.field private mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "create db fail, mHelper == null, table name "

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mTableName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mHelper:Lcom/ss/ttvideoengine/database/KVDBHelper;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->createDBSuccess:Z

    .line 15
    .line 16
    const-string v2, "KVDBManager"

    .line 17
    .line 18
    if-eqz p1, :cond_6

    .line 19
    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_0
    iput-object p2, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mTableName:Ljava/lang/String;

    .line 29
    .line 30
    new-instance p2, Lcom/ss/ttvideoengine/database/KVDBHelper;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mTableName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {p2, p1, v3}, Lcom/ss/ttvideoengine/database/KVDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mHelper:Lcom/ss/ttvideoengine/database/KVDBHelper;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    :try_start_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    const-string p2, "CREATE TABLE IF NOT EXISTS %s(key TEXT PRIMARY KEY,value TEXT,time INTEGER)"

    .line 49
    .line 50
    iget-object v3, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mTableName:Ljava/lang/String;

    .line 51
    .line 52
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iget-object v3, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    .line 62
    invoke-virtual {v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p2

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mHelper:Lcom/ss/ttvideoengine/database/KVDBHelper;

    .line 69
    .line 70
    if-nez p2, :cond_2

    .line 71
    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mTableName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {v2, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object p2, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mHelper:Lcom/ss/ttvideoengine/database/KVDBHelper;

    .line 93
    .line 94
    if-eqz p2, :cond_3

    .line 95
    .line 96
    move v1, p1

    .line 97
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->createDBSuccess:Z

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :goto_2
    :try_start_1
    invoke-static {p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    .line 102
    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string p2, "create db fail, table name "

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object p2, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mTableName:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mHelper:Lcom/ss/ttvideoengine/database/KVDBHelper;

    .line 126
    .line 127
    if-nez p1, :cond_3

    .line 128
    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object p2, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mTableName:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :goto_3
    return-void

    .line 151
    :catchall_1
    move-exception p2

    .line 152
    iget-object v3, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mHelper:Lcom/ss/ttvideoengine/database/KVDBHelper;

    .line 153
    .line 154
    if-nez v3, :cond_4

    .line 155
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mTableName:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mHelper:Lcom/ss/ttvideoengine/database/KVDBHelper;

    .line 177
    .line 178
    if-eqz v0, :cond_5

    .line 179
    .line 180
    move v1, p1

    .line 181
    :cond_5
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->createDBSuccess:Z

    .line 182
    .line 183
    throw p2

    .line 184
    :cond_6
    :goto_4
    const-string p1, "context or name is invalid"

    .line 185
    .line 186
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :try_start_1
    const-string v0, "DELETE FROM %s "

    .line 11
    .line 12
    iget-object v2, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mTableName:Ljava/lang/String;

    .line 13
    .line 14
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 30
    .line 31
    .line 32
    const-string v0, "KVDBManager"

    .line 33
    .line 34
    const-string v2, "all cleared"

    .line 35
    .line 36
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    :try_start_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    goto :goto_3

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_2

    .line 49
    :catch_1
    move-exception v0

    .line 50
    :try_start_3
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    .line 52
    .line 53
    :try_start_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_1
    const/4 v0, 0x1

    .line 57
    return v0

    .line 58
    :goto_2
    iget-object v2, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 61
    .line 62
    .line 63
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 64
    :goto_3
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "KVDBManager"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    :try_start_0
    const-string v0, "SELECT * FROM %s WHERE key=\'%s\'"

    .line 16
    .line 17
    iget-object v3, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mTableName:Ljava/lang/String;

    .line 18
    .line 19
    filled-new-array {v3, p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v3, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    invoke-virtual {v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    const-string/jumbo v3, "value"

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p1

    .line 52
    move-object v3, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v3, v2

    .line 55
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 56
    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v4, "get key: "

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, " value: "

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    return-object v3

    .line 87
    :catchall_0
    move-object v2, v3

    .line 88
    goto :goto_2

    .line 89
    :catch_1
    move-exception p1

    .line 90
    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .line 92
    .line 93
    :catchall_1
    :goto_2
    return-object v2

    .line 94
    :cond_2
    :goto_3
    const-string p1, "open db fail"

    .line 95
    .line 96
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/database/KVDBManager;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public isCreateDBSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->createDBSuccess:Z

    .line 2
    .line 3
    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ss/ttvideoengine/database/KVDBManager;->save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "remove key "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    const-string v2, "KVDBManager"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    :try_start_0
    iget-object v4, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    const-string v4, "DELETE FROM %s WHERE key=\'%s\'"

    .line 24
    .line 25
    iget-object v5, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mTableName:Ljava/lang/String;

    .line 26
    .line 27
    filled-new-array {v5, p1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget-object v5, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    .line 37
    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v4, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 43
    .line 44
    .line 45
    :try_start_2
    iget-object v4, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 48
    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    return v1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v4

    .line 72
    :try_start_3
    invoke-static {v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 73
    .line 74
    .line 75
    :try_start_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    .line 79
    .line 80
    return v3

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    move v3, v1

    .line 83
    goto :goto_0

    .line 84
    :catchall_2
    move v3, v1

    .line 85
    :catchall_3
    :try_start_5
    iget-object v4, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    .line 87
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    .line 89
    .line 90
    if-nez v3, :cond_1

    .line 91
    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 108
    .line 109
    .line 110
    :cond_1
    xor-int/lit8 p1, v3, 0x1

    .line 111
    .line 112
    return p1

    .line 113
    :goto_0
    :try_start_6
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 114
    .line 115
    .line 116
    xor-int/lit8 p1, v3, 0x1

    .line 117
    .line 118
    return p1

    .line 119
    :catchall_4
    xor-int/lit8 p1, v3, 0x1

    .line 120
    .line 121
    return p1

    .line 122
    :cond_2
    :goto_1
    const-string p1, "open db fail"

    .line 123
    .line 124
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return v3
.end method

.method public removeString(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/database/KVDBManager;->remove(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    const-string v1, "KVDBManager"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "save key: "

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, " value: "

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    :try_start_1
    const-string v1, "REPLACE INTO %s VALUES (\'%s\',\'%s\',%d)"

    .line 56
    .line 57
    iget-object v3, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mTableName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    filled-new-array {v3, p1, p2, v4}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    .line 77
    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 83
    .line 84
    .line 85
    :try_start_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    .line 90
    return v0

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move-exception p1

    .line 94
    goto :goto_0

    .line 95
    :catch_1
    move-exception p1

    .line 96
    goto :goto_1

    .line 97
    :goto_0
    :try_start_3
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 98
    .line 99
    .line 100
    :try_start_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    .line 104
    .line 105
    return v0

    .line 106
    :goto_1
    :try_start_5
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 107
    .line 108
    .line 109
    :try_start_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 112
    .line 113
    .line 114
    return v2

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    move v2, v0

    .line 117
    goto :goto_2

    .line 118
    :catchall_2
    :try_start_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/database/KVDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 121
    .line 122
    .line 123
    return v0

    .line 124
    :goto_2
    :try_start_8
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 125
    .line 126
    .line 127
    xor-int/lit8 p1, v2, 0x1

    .line 128
    .line 129
    return p1

    .line 130
    :catchall_3
    xor-int/lit8 p1, v2, 0x1

    .line 131
    .line 132
    return p1

    .line 133
    :cond_1
    :goto_3
    const-string p1, "open db fail"

    .line 134
    .line 135
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return v2
.end method
