.class public Lcom/bytedance/bdtracker/a4;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/bytedance/bdtracker/y3;

.field public final b:Lcom/bytedance/bdtracker/e0;

.field public final c:Lcom/bytedance/bdtracker/z3;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/bdtracker/y3;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0x33

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bytedance/bdtracker/y3;-><init>(Lcom/bytedance/bdtracker/e0;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/bytedance/bdtracker/a4;->a:Lcom/bytedance/bdtracker/y3;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 15
    .line 16
    new-instance p2, Lcom/bytedance/bdtracker/z3;

    .line 17
    .line 18
    invoke-direct {p2, p1, v0}, Lcom/bytedance/bdtracker/z3;-><init>(Lcom/bytedance/bdtracker/e0;Lcom/bytedance/bdtracker/y3;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/bytedance/bdtracker/a4;->c:Lcom/bytedance/bdtracker/z3;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT count(1) FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    goto :goto_1

    :goto_0
    :try_start_1
    iget-object p3, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 19
    iget-object p3, p3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 20
    iget-object p3, p3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string p4, "Count table:{} failed"

    .line 21
    :try_start_2
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x5

    invoke-interface {p3, v2, p4, p1, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 22
    iget-object p2, p2, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 23
    invoke-static {p2, p1}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    :goto_1
    return v0

    :catchall_1
    move-exception p1

    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/i4;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SELECT * FROM trace WHERE _app_id= ? "

    const/4 v2, 0x0

    :try_start_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bytedance/bdtracker/i4;

    invoke-direct {p1}, Lcom/bytedance/bdtracker/i4;-><init>()V

    invoke-virtual {p1, v2}, Lcom/bytedance/bdtracker/u3;->a(Landroid/database/Cursor;)I

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 82
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 83
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v3, "Query trace for appId:{} failed"

    .line 84
    :try_start_2
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v4, 0x5

    invoke-interface {v1, v4, v3, p1, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 85
    iget-object p2, p2, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 86
    invoke-static {p2, p1}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    :goto_2
    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {v2}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/x3;",
            ">;"
        }
    .end annotation

    if-gtz p4, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_1

    const-string v1, "SELECT * FROM custom_event WHERE _app_id= ? and user_unique_id is null limit 0, ?"

    :try_start_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p2, p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string v1, "SELECT * FROM custom_event WHERE _app_id= ? and user_unique_id = ? limit 0, ?"

    :try_start_1
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_2

    new-instance p4, Lcom/bytedance/bdtracker/x3;

    invoke-direct {p4}, Lcom/bytedance/bdtracker/x3;-><init>()V

    invoke-virtual {p4, p1}, Lcom/bytedance/bdtracker/x3;->a(Landroid/database/Cursor;)I

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p4

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    goto :goto_3

    :goto_1
    const/4 p4, 0x0

    move-object v3, p4

    move-object p4, p1

    move-object p1, v3

    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 72
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 73
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v2, "Query custom event by uuid:{} for appId:{} failed"

    .line 74
    :try_start_4
    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x5

    invoke-interface {v1, p3, v2, p4, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 75
    iget-object p2, p2, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 76
    invoke-static {p2, p4}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    :goto_3
    return-object v0

    :catchall_2
    move-exception p2

    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    throw p2
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/e4;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/e4;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/h4;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/e0;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/bdtracker/e4;

    iget-object v7, v6, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, v6, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    invoke-static {v7}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/bdtracker/e4;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bytedance/bdtracker/e4;

    iget-object v13, v12, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v12}, Lcom/bytedance/bdtracker/e4;->k()Z

    move-result v14

    move-object v15, v3

    move-object/from16 p1, v4

    const-wide/16 v3, 0x3e8

    const/16 v16, 0x1

    if-eqz v14, :cond_6

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-lez v3, :cond_3

    iget-object v3, v12, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object v3, v12, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object/from16 v17, v15

    goto :goto_4

    :cond_4
    iput-wide v3, v12, Lcom/bytedance/bdtracker/e4;->s:J

    iget-boolean v13, v12, Lcom/bytedance/bdtracker/e4;->D:Z

    if-nez v13, :cond_5

    add-long/2addr v10, v3

    :cond_5
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object/from16 v17, v15

    iget-wide v14, v12, Lcom/bytedance/bdtracker/e4;->s:J

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v12, Lcom/bytedance/bdtracker/e4;->s:J

    iget-boolean v14, v12, Lcom/bytedance/bdtracker/e4;->D:Z

    if-nez v14, :cond_7

    add-long/2addr v10, v3

    :cond_7
    iget-object v3, v12, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v16, v4, 0x1

    :cond_8
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {v12}, Lcom/bytedance/bdtracker/e4;->k()Z

    move-result v3

    if-nez v3, :cond_9

    iget-wide v3, v12, Lcom/bytedance/bdtracker/u3;->c:J

    goto :goto_5

    :cond_9
    iget-wide v3, v12, Lcom/bytedance/bdtracker/u3;->c:J

    iget-wide v13, v12, Lcom/bytedance/bdtracker/e4;->s:J

    add-long/2addr v3, v13

    :goto_5
    iget-boolean v13, v12, Lcom/bytedance/bdtracker/e4;->D:Z

    if-nez v13, :cond_a

    cmp-long v13, v3, v8

    if-lez v13, :cond_a

    move-wide v8, v3

    move-object v6, v12

    :cond_a
    move-object/from16 v4, p1

    move-object/from16 v3, v17

    goto/16 :goto_2

    :cond_b
    move-object/from16 v17, v3

    move-object/from16 p1, v4

    new-instance v3, Lcom/bytedance/bdtracker/h4;

    invoke-direct {v3}, Lcom/bytedance/bdtracker/h4;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    iput-wide v10, v3, Lcom/bytedance/bdtracker/h4;->s:J

    iput-wide v8, v3, Lcom/bytedance/bdtracker/u3;->c:J

    iget-wide v4, v6, Lcom/bytedance/bdtracker/u3;->f:J

    iput-wide v4, v3, Lcom/bytedance/bdtracker/u3;->f:J

    iget-object v0, v6, Lcom/bytedance/bdtracker/u3;->g:Ljava/lang/String;

    iput-object v0, v3, Lcom/bytedance/bdtracker/u3;->g:Ljava/lang/String;

    iget-object v0, v6, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    iput-object v0, v3, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    iget-object v0, v6, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    iput-object v0, v3, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    iget-object v0, v6, Lcom/bytedance/bdtracker/u3;->j:Ljava/lang/String;

    iput-object v0, v3, Lcom/bytedance/bdtracker/u3;->j:Ljava/lang/String;

    iput-wide v8, v3, Lcom/bytedance/bdtracker/h4;->t:J

    .line 8
    sget-object v0, Lcom/bytedance/bdtracker/j0;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 9
    iput-wide v4, v3, Lcom/bytedance/bdtracker/u3;->d:J

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/bytedance/bdtracker/h4;->u:Ljava/lang/String;

    iget-object v0, v6, Lcom/bytedance/bdtracker/e4;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v6, Lcom/bytedance/bdtracker/e4;->B:Ljava/lang/String;

    iput-object v0, v3, Lcom/bytedance/bdtracker/h4;->u:Ljava/lang/String;

    .line 10
    :cond_c
    iget-object v0, v6, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    if-eqz v0, :cond_d

    .line 11
    const-string v4, "$screen_orientation"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    iget-object v5, v6, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iput-object v0, v3, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    :goto_6
    move-object/from16 v4, v17

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 15
    iget-object v4, v1, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 16
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 17
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 18
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x5

    const-string v6, "JSON handle failed"

    invoke-interface {v4, v5, v6, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :goto_7
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    move-object/from16 v4, p1

    goto/16 :goto_1

    :cond_e
    move-object v4, v3

    return-object v4
.end method

.method public final a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "local_time_ms"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/f4;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/a4;->a:Lcom/bytedance/bdtracker/y3;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "SELECT * FROM profile WHERE _app_id=? ORDER BY _id DESC LIMIT 200"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/bytedance/bdtracker/f4;

    invoke-direct {v2}, Lcom/bytedance/bdtracker/f4;-><init>()V

    invoke-virtual {v2, v1}, Lcom/bytedance/bdtracker/f4;->a(Landroid/database/Cursor;)I

    iget-object v3, v2, Lcom/bytedance/bdtracker/u3;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_1
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_2
    :try_start_5
    iget-object v3, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 77
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 78
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    const-string v4, "Query profiles for appId:{} failed"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 79
    :try_start_7
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v5, 0x5

    invoke-interface {v3, v5, v4, v2, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 80
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 81
    invoke-static {p1, v2}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_3
    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    throw p1

    :goto_4
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT `user_unique_id` FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_app_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 31
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 32
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v3, "Query uuid set from table:{} for appId:{} failed"

    .line 33
    :try_start_2
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x5

    invoke-interface {v2, p3, v3, p1, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 34
    iget-object p2, p2, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 35
    invoke-static {p2, p1}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    :goto_2
    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->a:Lcom/bytedance/bdtracker/y3;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lcom/bytedance/bdtracker/u3;->j()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/bdtracker/u3;

    invoke-virtual {v3}, Lcom/bytedance/bdtracker/u3;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/bdtracker/u3;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 3
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 4
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    const-string v3, "Clear database failed"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v4, 0x0

    .line 5
    :try_start_5
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-interface {v2, v5, v3, v0, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 6
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 7
    invoke-static {v2, v0}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_2

    :try_start_6
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_7
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    throw v0

    :goto_3
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public final declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/bdtracker/d4;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "packV2"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p2, v1}, Lcom/bytedance/bdtracker/u3;->a(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :try_start_3
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    .line 87
    :cond_0
    :try_start_4
    iget-object v0, p2, Lcom/bytedance/bdtracker/d4;->v:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/c4;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v2, "launch"

    const-string v3, "_id = ?"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-wide v4, v1, Lcom/bytedance/bdtracker/u3;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "event_pack"

    invoke-static {v2, v1}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_1
    move-exception p2

    goto/16 :goto_5

    .line 89
    :cond_1
    iget-object v0, p2, Lcom/bytedance/bdtracker/d4;->u:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/e4;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string v2, "page"

    const-string v3, "session_id = ? and page_key = ?"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v4, v1, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "event_pack"

    invoke-static {v2, v1}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 91
    :cond_2
    iget-object v0, p2, Lcom/bytedance/bdtracker/d4;->t:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/x3;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    const-string v2, "custom_event"

    const-string v3, "_id = ?"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-wide v4, v1, Lcom/bytedance/bdtracker/u3;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "event_pack"

    invoke-static {v2, v1}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 93
    :cond_3
    iget-object v0, p2, Lcom/bytedance/bdtracker/d4;->s:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/b4;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    const-string v2, "eventv3"

    const-string v3, "_id = ?"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-wide v4, v1, Lcom/bytedance/bdtracker/u3;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "event_pack"

    invoke-static {v2, v1}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 95
    :cond_4
    iget-object v0, p2, Lcom/bytedance/bdtracker/d4;->x:Ljava/util/List;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v0, :cond_5

    :try_start_d
    const-string v0, "trace"

    const-string v1, "_app_id= ? "
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 96
    :try_start_e
    iget-object v2, p2, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 97
    iget-object p2, p2, Lcom/bytedance/bdtracker/d4;->x:Ljava/util/List;

    .line 98
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/bdtracker/i4;

    const-string v1, "event_pack"

    invoke-static {v1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    :goto_5
    :try_start_f
    iget-object v0, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 99
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 100
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    const-string v1, "Save pack and delete data failed"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v2, 0x0

    .line 101
    :try_start_11
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-interface {v0, v3, v1, p2, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 102
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 103
    invoke-static {v0, p2}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :goto_6
    :try_start_12
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p2

    :try_start_13
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p2

    :goto_7
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->a:Lcom/bytedance/bdtracker/y3;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "UPDATE launch SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "UPDATE page SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v1, "UPDATE eventv3 SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    const-string v1, "UPDATE profile SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    const-string v1, "UPDATE trace SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_0
    :try_start_b
    iget-object v2, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 104
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 105
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    const-string v3, "Update ssid to:{} for user:{} failed"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 106
    :try_start_d
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x5

    invoke-interface {v2, p2, v3, v1, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 107
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 108
    invoke-static {p1, v1}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_1
    :try_start_e
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_f
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/f4;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->a:Lcom/bytedance/bdtracker/y3;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/f4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "profile"

    const-string v3, "_id=?"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-wide v4, v1, Lcom/bytedance/bdtracker/u3;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 24
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 25
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    const-string v2, "Delete profiles failed"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v3, 0x0

    .line 26
    :try_start_5
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-interface {v1, v4, v2, p1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 27
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 28
    invoke-static {v1, p1}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 29
    :goto_2
    :try_start_6
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 30
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .line 2
    const-string v0, "launch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/a4;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/a4;->d(Ljava/util/List;)V

    const-string v0, "terminate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/a4;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/a4;->d(Ljava/util/List;)V

    const-string v0, "event_v3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/a4;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/a4;->d(Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 36
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 37
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 38
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pack events for appId:{} start..."

    const/4 v3, 0x5

    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    :try_start_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/a4;->a:Lcom/bytedance/bdtracker/y3;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    iget-object v4, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 40
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 41
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 42
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Open db failed"

    invoke-interface {v4, v3, v6, v2, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 43
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 44
    invoke-static {v4, v2}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V

    move-object v2, v0

    :goto_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    if-eqz v2, :cond_0

    const-string v5, "launch"

    invoke-virtual {p0, v2, v5, p1}, Lcom/bytedance/bdtracker/a4;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v5, "page"

    invoke-virtual {p0, v2, v5, p1}, Lcom/bytedance/bdtracker/a4;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v5, "eventv3"

    invoke-virtual {p0, v2, v5, p1}, Lcom/bytedance/bdtracker/a4;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v5, "custom_event"

    invoke-virtual {p0, v2, v5, p1}, Lcom/bytedance/bdtracker/a4;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    .line 45
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, p0, Lcom/bytedance/bdtracker/a4;->a:Lcom/bytedance/bdtracker/y3;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lcom/bytedance/bdtracker/d4;

    invoke-direct {v7}, Lcom/bytedance/bdtracker/d4;-><init>()V

    .line 46
    iput-object p1, v7, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 47
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v8, p2}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v9, "ssid"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    const-string v9, "user_unique_id"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v6}, Lcom/bytedance/bdtracker/l0$b;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_3

    :catchall_2
    move-exception p2

    goto/16 :goto_4

    :cond_3
    move-object v10, v6

    :goto_3
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    iput-object v8, v7, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 49
    invoke-virtual {p0, v5, p1, v6}, Lcom/bytedance/bdtracker/a4;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 50
    iput-object v9, v7, Lcom/bytedance/bdtracker/d4;->v:Ljava/util/List;

    .line 51
    invoke-virtual {p0, v5, p1, v6}, Lcom/bytedance/bdtracker/a4;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v9, v10}, Lcom/bytedance/bdtracker/a4;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 52
    iput-object v10, v7, Lcom/bytedance/bdtracker/d4;->u:Ljava/util/List;

    .line 53
    iput-object v9, v7, Lcom/bytedance/bdtracker/d4;->w:Ljava/util/List;

    .line 54
    invoke-virtual {v7}, Lcom/bytedance/bdtracker/d4;->k()I

    move-result v9

    invoke-virtual {p0, v5, p1, v6, v9}, Lcom/bytedance/bdtracker/a4;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 55
    iput-object v9, v7, Lcom/bytedance/bdtracker/d4;->t:Ljava/util/List;

    .line 56
    invoke-virtual {v7}, Lcom/bytedance/bdtracker/d4;->k()I

    move-result v9

    iget-object v10, v7, Lcom/bytedance/bdtracker/d4;->t:Ljava/util/List;

    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v9, v10

    .line 57
    :cond_4
    invoke-virtual {p0, v5, p1, v6, v9}, Lcom/bytedance/bdtracker/a4;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 58
    iput-object v9, v7, Lcom/bytedance/bdtracker/d4;->s:Ljava/util/List;

    .line 59
    iget-object v9, v7, Lcom/bytedance/bdtracker/d4;->v:Ljava/util/List;

    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_5
    iget-object v9, v7, Lcom/bytedance/bdtracker/d4;->w:Ljava/util/List;

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    invoke-virtual {v7, v0}, Lcom/bytedance/bdtracker/d4;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v7, Lcom/bytedance/bdtracker/d4;->t:Ljava/util/List;

    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    goto/16 :goto_2

    .line 60
    :cond_7
    invoke-virtual {v7}, Lcom/bytedance/bdtracker/d4;->m()V

    invoke-virtual {v7}, Lcom/bytedance/bdtracker/d4;->n()V

    iget-object v9, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    invoke-virtual {v9, v8}, Lcom/bytedance/bdtracker/e0;->a(Lorg/json/JSONObject;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v6, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 61
    iget-object v6, v6, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 62
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    const-string v7, "Register to get ssid by temp header failed."
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 63
    :try_start_8
    new-array v8, v1, [Ljava/lang/Object;

    invoke-interface {v6, v3, v7, v8}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    iget-object v8, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 64
    iget-object v8, v8, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 65
    iget-object v8, v8, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 66
    invoke-virtual {v7}, Lcom/bytedance/bdtracker/d4;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    invoke-interface {v8, v3, v9, v10}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v5, v7}, Lcom/bytedance/bdtracker/a4;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/bdtracker/d4;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_2

    :goto_4
    :try_start_9
    iget-object v0, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 67
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 68
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 69
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Pack events for appId:{} failed"

    invoke-interface {v0, v3, v1, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 70
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 71
    invoke-static {p1, p2}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V

    :cond_9
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :goto_5
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p1
.end method

.method public b(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/a4;->a:Lcom/bytedance/bdtracker/y3;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 30
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v3, "SELECT * FROM packV2 WHERE _app_id= ? ORDER BY _id DESC LIMIT 8"

    invoke-virtual {v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 31
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    return v0

    :cond_0
    move p1, v0

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v2

    move p1, v0

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 32
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 33
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v4, "Query event packs count failed"

    .line 34
    :try_start_3
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-interface {v3, v5, v4, v2, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 35
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 36
    invoke-static {v0, v2}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    :goto_2
    return p1

    :catchall_2
    move-exception p1

    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/c4;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const-string v2, "SELECT * FROM launch WHERE _app_id= ? and user_unique_id is null"

    :try_start_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string v2, "SELECT * FROM launch WHERE _app_id= ? and user_unique_id = ?"

    :try_start_1
    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/bytedance/bdtracker/c4;

    invoke-direct {v2}, Lcom/bytedance/bdtracker/c4;-><init>()V

    invoke-virtual {v2, v1}, Lcom/bytedance/bdtracker/c4;->a(Landroid/database/Cursor;)I

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string v3, "page"

    const-string v5, "session_id = ? LIMIT 1"

    :try_start_2
    iget-object v6, v2, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v3, v5, v6}, Lcom/bytedance/bdtracker/a4;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v3, v4

    iput-boolean v3, v2, Lcom/bytedance/bdtracker/c4;->u:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    goto :goto_3

    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 25
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 26
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v3, "Query launch by uuid:{} for appId:{} failed"

    .line 27
    :try_start_4
    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x5

    invoke-interface {v2, p3, v3, p1, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 28
    iget-object p2, p2, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 29
    invoke-static {p2, p1}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    :goto_3
    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/b4;",
            ">;"
        }
    .end annotation

    if-gtz p4, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_1

    const-string v1, "SELECT * FROM eventv3 WHERE _app_id= ? and user_unique_id is null limit 0, ?"

    :try_start_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p2, p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string v1, "SELECT * FROM eventv3 WHERE _app_id= ? and user_unique_id = ? limit 0, ?"

    :try_start_1
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_2

    new-instance p4, Lcom/bytedance/bdtracker/b4;

    invoke-direct {p4}, Lcom/bytedance/bdtracker/b4;-><init>()V

    invoke-virtual {p4, p1}, Lcom/bytedance/bdtracker/b4;->a(Landroid/database/Cursor;)I

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p4

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    goto :goto_3

    :goto_1
    const/4 p4, 0x0

    move-object v3, p4

    move-object p4, p1

    move-object p1, v3

    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 20
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 21
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v2, "Query v3 event by uuid:{} for appId:{} failed"

    .line 22
    :try_start_4
    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x5

    invoke-interface {v1, p3, v2, p4, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 23
    iget-object p2, p2, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 24
    invoke-static {p2, p4}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    :goto_3
    return-object v0

    :catchall_2
    move-exception p2

    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    throw p2
.end method

.method public declared-synchronized b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 8
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 9
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pack trace events for appId:{} start..."

    const/4 v3, 0x5

    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/a4;->a:Lcom/bytedance/bdtracker/y3;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/a4;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    new-instance v2, Lcom/bytedance/bdtracker/d4;

    invoke-direct {v2}, Lcom/bytedance/bdtracker/d4;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v4, p2}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string p2, "user_unique_id"

    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string p2, "user_unique_id_type"

    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iput-object v4, v2, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 12
    iput-object p1, v2, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 13
    iput-object v1, v2, Lcom/bytedance/bdtracker/d4;->x:Ljava/util/List;

    .line 14
    invoke-virtual {p0, v0, v2}, Lcom/bytedance/bdtracker/a4;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/bdtracker/d4;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_3
    iget-object v0, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 15
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 16
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 17
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Pack trace events for appId:{} failed"

    invoke-interface {v0, v3, v1, p2, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 18
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 19
    invoke-static {p1, p2}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/d4;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->a:Lcom/bytedance/bdtracker/y3;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/d4;

    iget v2, v1, Lcom/bytedance/bdtracker/d4;->A:I

    if-eqz v2, :cond_3

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/bytedance/bdtracker/u3;->c:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x337f9800

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget v2, v1, Lcom/bytedance/bdtracker/d4;->A:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    :try_start_1
    const-string v3, "UPDATE packV2 SET _fail= ? WHERE _id= ?"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v4, v1, Lcom/bytedance/bdtracker/u3;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_1
    :try_start_3
    const-string v2, "DELETE FROM packV2 WHERE _id=?"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-wide v3, v1, Lcom/bytedance/bdtracker/u3;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 1
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    const-string v2, "Do task after pack failed"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v3, 0x0

    .line 3
    :try_start_7
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-interface {v1, v4, v2, p1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 4
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 5
    invoke-static {v1, p1}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 6
    :goto_3
    :try_start_8
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 7
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :goto_4
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1
.end method

.method public final c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/e4;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const-string v2, "SELECT * FROM page WHERE _app_id= ? and user_unique_id is null order by duration desc"

    :try_start_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v1, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string v2, "SELECT * FROM page WHERE _app_id= ? and user_unique_id = ? order by duration desc"

    :try_start_1
    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/bytedance/bdtracker/e4;

    invoke-direct {p1}, Lcom/bytedance/bdtracker/e4;-><init>()V

    invoke-virtual {p1, v1}, Lcom/bytedance/bdtracker/e4;->a(Landroid/database/Cursor;)I

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    goto :goto_3

    :goto_2
    :try_start_2
    iget-object p2, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 1
    iget-object p2, p2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object p2, p2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v2, "Query pages by userId:{} failed"

    .line 3
    :try_start_3
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const/4 v3, 0x5

    invoke-interface {p2, v3, v2, p1, p3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 4
    iget-object p2, p2, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 5
    invoke-static {p2, p1}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    :goto_3
    return-object v0

    :catchall_1
    move-exception p1

    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public declared-synchronized c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/f4;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->a:Lcom/bytedance/bdtracker/y3;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/bdtracker/f4;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "profile"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3, v2}, Lcom/bytedance/bdtracker/u3;->a(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_2
    move-exception p1

    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 6
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 7
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    const-string v2, "Save profiles failed"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v3, 0x0

    .line 8
    :try_start_6
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-interface {v1, v4, v2, p1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 9
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 10
    invoke-static {v1, p1}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v1, v0

    .line 11
    :goto_2
    :try_start_7
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 12
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1
.end method

.method public final d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Long;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    sub-long v4, v0, v4

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    new-instance v2, Lcom/bytedance/bdtracker/w2;

    .line 43
    .line 44
    invoke-direct {v2, v4, v5}, Lcom/bytedance/bdtracker/w2;-><init>(J)V

    .line 45
    .line 46
    .line 47
    check-cast v3, Lcom/bytedance/bdtracker/m2;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Lcom/bytedance/bdtracker/m2;->a(Lcom/bytedance/bdtracker/p2;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    :goto_1
    return-void
.end method
