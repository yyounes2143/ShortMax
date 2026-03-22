.class public Lcom/tencent/wcdb/repair/DBDumpUtil;
.super Ljava/lang/Object;
.source "DBDumpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wcdb/repair/DBDumpUtil$ExecuteSqlCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WCDB.DBDumpUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static buildColumnsString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "("

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge v1, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/lit8 v2, v2, -0x1

    .line 41
    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    const-string v2, ","

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string p0, ")"

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_3
    :goto_1
    const-string p0, ""

    .line 68
    .line 69
    return-object p0
.end method

.method public static doRecoveryDb(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/tencent/wcdb/repair/DBDumpUtil;->doRecoveryDb(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/tencent/wcdb/repair/DBDumpUtil$ExecuteSqlCallback;Z)Z

    move-result p0

    return p0
.end method

.method public static doRecoveryDb(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/tencent/wcdb/repair/DBDumpUtil$ExecuteSqlCallback;Z)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/wcdb/database/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/wcdb/repair/DBDumpUtil$ExecuteSqlCallback;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v0, p6

    .line 2
    const-string v3, "\""

    const-string v4, "WCDB.DBDumpUtil"

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v1, v5

    goto/16 :goto_11

    .line 3
    :cond_1
    invoke-static/range {p1 .. p3}, Lcom/tencent/wcdb/repair/DBDumpUtil;->nativeDumpDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    return v5

    .line 4
    :cond_2
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 5
    const-string v7, "PRAGMA foreign_keys=OFF;"

    invoke-virtual {v1, v7}, Lcom/tencent/wcdb/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->beginTransaction()V

    .line 7
    :try_start_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move v9, v5

    move v10, v9

    move v11, v10

    move v13, v11

    :goto_0
    const/4 v12, 0x0

    .line 8
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_16

    .line 9
    const-string v8, "CREATE TABLE"

    const-string v5, ";"

    const-string v15, "\n"

    if-eqz v9, :cond_5

    move/from16 v16, v9

    .line 10
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 11
    invoke-virtual {v12, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v12}, Lcom/tencent/wcdb/repair/DBDumpUtil;->nativeIsSqlComplete(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v14, v12

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_f

    :cond_4
    :goto_2
    move/from16 v9, v16

    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    move/from16 v16, v9

    .line 12
    const-string v9, "INSERT"

    invoke-virtual {v14, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v14, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 13
    :cond_6
    invoke-virtual {v14, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-static {v14}, Lcom/tencent/wcdb/repair/DBDumpUtil;->nativeIsSqlComplete(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_a

    :cond_7
    :goto_3
    if-eqz p5, :cond_a

    .line 14
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 15
    invoke-static {v14}, Lcom/tencent/wcdb/repair/DBDumpUtil;->getTableNameFromSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 17
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v15, 0x0

    goto :goto_4

    :cond_9
    const/4 v15, 0x1

    :goto_4
    move-object v12, v14

    goto :goto_6

    :cond_a
    if-eqz p4, :cond_d

    .line 18
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 19
    invoke-static {v14}, Lcom/tencent/wcdb/repair/DBDumpUtil;->getTableNameFromSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 21
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 22
    const-string v9, ""

    move-object v12, v9

    const/4 v15, 0x1

    goto :goto_6

    :cond_c
    move-object v12, v14

    :goto_5
    const/4 v15, 0x0

    goto :goto_6

    :cond_d
    move-object v12, v14

    const/4 v5, 0x0

    goto :goto_5

    :goto_6
    if-eqz v15, :cond_e

    .line 23
    const-string v8, "filter table %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcom/tencent/wcdb/support/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 24
    :cond_e
    :try_start_3
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 25
    invoke-static {v12}, Lcom/tencent/wcdb/repair/DBDumpUtil;->getColumnNamesFromSql(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 26
    invoke-static {v8}, Lcom/tencent/wcdb/repair/DBDumpUtil;->buildColumnsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    .line 27
    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 28
    :cond_f
    const-string v8, "INSERT INTO"

    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 29
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 30
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 31
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "INSERT INTO "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    :cond_10
    :goto_7
    if-eqz v0, :cond_11

    .line 36
    invoke-interface {v0, v12}, Lcom/tencent/wcdb/repair/DBDumpUtil$ExecuteSqlCallback;->preExecute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    .line 37
    :goto_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    move-object v12, v5

    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 38
    invoke-virtual {v1, v12}, Lcom/tencent/wcdb/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0x64

    if-lt v13, v5, :cond_13

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setTransactionSuccessful()V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->endTransaction()V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v13, 0x0

    goto :goto_9

    :catch_0
    add-int/lit8 v10, v10, 0x1

    :cond_13
    :goto_9
    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 42
    :cond_14
    :goto_a
    :try_start_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object v12, v14

    goto :goto_b

    .line 43
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v12, v5

    :goto_b
    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_1

    .line 44
    :cond_16
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 45
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_c
    if-le v11, v10, :cond_1b

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->setTransactionSuccessful()V

    .line 48
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/wcdb/database/SQLiteDatabase;->endTransaction()V

    :cond_18
    if-eqz p7, :cond_1a

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 53
    :cond_19
    new-instance v0, Ljava/io/File;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 56
    :cond_1a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "restore : %d , fail:%d "

    invoke-static {v4, v1, v0}, Lcom/tencent/wcdb/support/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_1b
    const/4 v1, 0x0

    return v1

    .line 57
    :catch_2
    :try_start_6
    const-string v0, "I/O error in read sql file "

    invoke-static {v4, v0}, Lcom/tencent/wcdb/support/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 58
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_d
    const/4 v1, 0x0

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    :goto_e
    return v1

    .line 60
    :goto_f
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_10

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 61
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    :goto_10
    throw v1

    .line 63
    :catch_5
    const-string v0, "SQL file \'%s\' not found"

    filled-new-array/range {p3 .. p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/tencent/wcdb/support/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    return v1

    .line 64
    :goto_11
    const-string v0, "Database is not open"

    invoke-static {v4, v0}, Lcom/tencent/wcdb/support/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static getColumnNamesFromSql(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "("

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    const-string v2, ")"

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v1, ","

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v1, 0x0

    .line 35
    move v2, v1

    .line 36
    :goto_0
    array-length v3, p0

    .line 37
    if-ge v2, v3, :cond_0

    .line 38
    .line 39
    aget-object v3, p0, v2

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    aput-object v3, p0, v2

    .line 46
    .line 47
    const-string v4, " "

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    aget-object v4, p0, v2

    .line 54
    .line 55
    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-object v0
.end method

.method public static getTableNameFromSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    const-string v0, "\\s"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    array-length v0, p0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-le v0, v1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    aget-object p0, p0, v0

    .line 28
    .line 29
    const-string v0, "\""

    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method private static native nativeDumpDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeIsSqlComplete(Ljava/lang/String;)Z
.end method

.method public static readFromFile(Ljava/lang/String;)[B
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, "WCDB.DBDumpUtil"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v0, "readFromFile error, file is not exit, path = %s"

    .line 16
    .line 17
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {v2, v0, p0}, Lcom/tencent/wcdb/support/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    long-to-int v1, v4

    .line 30
    new-instance v4, Ljava/io/FileInputStream;

    .line 31
    .line 32
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_1
    new-array v0, v1, [B

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eq v5, v1, :cond_1

    .line 42
    .line 43
    const-string v0, "readFromFile error, size is not equal, path = %s, file length is %d, count is %d"

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    filled-new-array {p0, v1, v5}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v2, v0, p0}, Lcom/tencent/wcdb/support/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-object v3

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    move-object v3, v4

    .line 71
    goto :goto_4

    .line 72
    :catch_1
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_2
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-object v0

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    goto :goto_4

    .line 85
    :catch_3
    move-exception p0

    .line 86
    move-object v4, v3

    .line 87
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    .line 89
    .line 90
    if-eqz v4, :cond_2

    .line 91
    .line 92
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :catch_4
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_3
    const-string p0, "readFromFile failed!"

    .line 101
    .line 102
    invoke-static {v2, p0}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object v3

    .line 106
    :goto_4
    if-eqz v3, :cond_3

    .line 107
    .line 108
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 109
    .line 110
    .line 111
    goto :goto_5

    .line 112
    :catch_5
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_5
    throw p0
.end method
