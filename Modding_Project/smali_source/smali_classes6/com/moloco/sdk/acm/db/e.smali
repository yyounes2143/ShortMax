.class public final Lcom/moloco/sdk/acm/db/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/acm/db/d;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/moloco/sdk/acm/db/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/acm/db/a;

.field public final d:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/moloco/sdk/acm/db/b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroidx/room/SharedSQLiteStatement;

.field public final f:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/moloco/sdk/acm/db/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/moloco/sdk/acm/db/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/acm/db/e;->c:Lcom/moloco/sdk/acm/db/a;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/moloco/sdk/acm/db/e;->a:Landroidx/room/RoomDatabase;

    .line 12
    .line 13
    new-instance v0, Lcom/moloco/sdk/acm/db/e$a;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/acm/db/e$a;-><init>(Lcom/moloco/sdk/acm/db/e;Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/moloco/sdk/acm/db/e;->b:Landroidx/room/EntityInsertionAdapter;

    .line 19
    .line 20
    new-instance v0, Lcom/moloco/sdk/acm/db/e$b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/acm/db/e$b;-><init>(Lcom/moloco/sdk/acm/db/e;Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/moloco/sdk/acm/db/e;->d:Landroidx/room/EntityInsertionAdapter;

    .line 26
    .line 27
    new-instance v0, Lcom/moloco/sdk/acm/db/e$c;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/acm/db/e$c;-><init>(Lcom/moloco/sdk/acm/db/e;Landroidx/room/RoomDatabase;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/moloco/sdk/acm/db/e;->e:Landroidx/room/SharedSQLiteStatement;

    .line 33
    .line 34
    new-instance v0, Lcom/moloco/sdk/acm/db/e$d;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/acm/db/e$d;-><init>(Lcom/moloco/sdk/acm/db/e;Landroidx/room/RoomDatabase;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/moloco/sdk/acm/db/e;->f:Landroidx/room/SharedSQLiteStatement;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic e(Lcom/moloco/sdk/acm/db/e;)Lcom/moloco/sdk/acm/db/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/acm/db/e;->c:Lcom/moloco/sdk/acm/db/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/acm/db/e;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    return-object p0
.end method

.method public static g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic h(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/acm/db/e;->f:Landroidx/room/SharedSQLiteStatement;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lrs/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/acm/db/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/acm/db/e;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/moloco/sdk/acm/db/f;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/moloco/sdk/acm/db/f;-><init>(Lcom/moloco/sdk/acm/db/e;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, p1}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public b(Lcom/moloco/sdk/acm/db/b;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/acm/db/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Lcom/moloco/sdk/acm/db/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/moloco/sdk/acm/db/e;->b:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/moloco/sdk/acm/db/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/moloco/sdk/acm/db/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/acm/db/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 7
    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/acm/db/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 8
    const-string v0, "SELECT * FROM events LIMIT 900"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 9
    iget-object v0, v1, Lcom/moloco/sdk/acm/db/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 10
    iget-object v0, v1, Lcom/moloco/sdk/acm/db/e;->a:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 11
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 12
    const-string v5, "name"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 13
    const-string/jumbo v6, "timestamp"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 14
    const-string v7, "eventType"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 15
    const-string v8, "data"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 16
    const-string/jumbo v9, "tags"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 17
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 19
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 20
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v15, v4

    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    .line 22
    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 23
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v4

    goto :goto_2

    .line 24
    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 25
    :goto_2
    iget-object v12, v1, Lcom/moloco/sdk/acm/db/e;->c:Lcom/moloco/sdk/acm/db/a;

    invoke-virtual {v12, v11}, Lcom/moloco/sdk/acm/db/a;->a(Ljava/lang/String;)Lcom/moloco/sdk/acm/db/c;

    move-result-object v18

    .line 26
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v19, v4

    goto :goto_3

    .line 27
    :cond_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v19, v11

    .line 28
    :goto_3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v4

    goto :goto_4

    .line 29
    :cond_3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 30
    :goto_4
    iget-object v12, v1, Lcom/moloco/sdk/acm/db/e;->c:Lcom/moloco/sdk/acm/db/a;

    invoke-virtual {v12, v11}, Lcom/moloco/sdk/acm/db/a;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 31
    new-instance v11, Lcom/moloco/sdk/acm/db/b;

    move-object v12, v11

    invoke-direct/range {v12 .. v20}, Lcom/moloco/sdk/acm/db/b;-><init>(JLjava/lang/String;JLcom/moloco/sdk/acm/db/c;Ljava/lang/Long;Ljava/util/List;)V

    .line 32
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 33
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 34
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v10

    .line 35
    :goto_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 36
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 37
    throw v0
.end method

.method public c(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/acm/db/e;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/moloco/sdk/acm/db/e$f;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/moloco/sdk/acm/db/e$f;-><init>(Lcom/moloco/sdk/acm/db/e;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lrs/c;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public d(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/acm/db/e;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/moloco/sdk/acm/db/e$e;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/moloco/sdk/acm/db/e$e;-><init>(Lcom/moloco/sdk/acm/db/e;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v0, v2, v1, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lrs/c;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final synthetic i(Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/acm/db/d$a;->a(Lcom/moloco/sdk/acm/db/d;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
