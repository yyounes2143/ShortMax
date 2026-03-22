.class public Lcom/bytedance/bdtracker/y3;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# instance fields
.field public final a:Lcom/bytedance/bdtracker/e0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/e0;->b()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/bytedance/bdtracker/y3;->a:Lcom/bytedance/bdtracker/e0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/bdtracker/u3;->j()Ljava/util/HashMap;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/bytedance/bdtracker/u3;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/u3;->a()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/bdtracker/y3;->a:Lcom/bytedance/bdtracker/e0;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    const-string v2, "Create table failed"

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    .line 54
    .line 55
    const/4 v4, 0x5

    .line 56
    invoke-interface {v1, v4, v2, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    .line 58
    .line 59
    :goto_2
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/bdtracker/y3;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/y3;->a:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string p3, "Database upgrade from:{} to:{}"

    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    invoke-interface {v0, v1, p3, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/bytedance/bdtracker/u3;->j()Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    check-cast p3, Lcom/bytedance/bdtracker/u3;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "DROP TABLE IF EXISTS "

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/bytedance/bdtracker/u3;->f()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p2

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_1
    :try_start_1
    iget-object p3, p0, Lcom/bytedance/bdtracker/y3;->a:Lcom/bytedance/bdtracker/e0;

    .line 84
    .line 85
    iget-object p3, p3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 86
    .line 87
    iget-object p3, p3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .line 89
    const-string v0, "drop tables failed when upgrade."

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 93
    .line 94
    invoke-interface {p3, v1, v0, p2, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    .line 96
    .line 97
    :goto_2
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/y3;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catchall_1
    move-exception p2

    .line 105
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 106
    .line 107
    .line 108
    throw p2
.end method
