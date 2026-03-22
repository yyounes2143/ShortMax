.class public final Lio/bidmachine/analytics/internal/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/i0$a;
    }
.end annotation


# static fields
.field public static final b:Lio/bidmachine/analytics/internal/i0$a;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/i0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/i0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/analytics/internal/i0;->b:Lio/bidmachine/analytics/internal/i0$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic a(Lio/bidmachine/analytics/internal/i0;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 20
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/internal/i0;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v3, v1, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 23
    monitor-enter v3

    .line 24
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 25
    iget-object v0, v1, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 26
    :try_start_1
    const-string v4, "id"

    const-string v5, "name"

    const-string v6, "timestamp"

    const-string v7, "data_hash"

    const-string v8, "rule"

    const-string v9, "error"

    const-string v10, "is_dirty"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v6

    .line 27
    const-string v11, "timestamp DESC"

    .line 28
    const-string v5, "reader_record"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v13

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 29
    :goto_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 30
    :try_start_3
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    const/4 v0, 0x0

    .line 31
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x1

    .line 32
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v6, 0x2

    .line 33
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const/4 v6, 0x3

    .line 34
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v6, 0x4

    .line 35
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    .line 36
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    const/4 v8, 0x6

    .line 37
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 38
    new-instance v9, Lio/bidmachine/analytics/internal/j0;

    .line 39
    invoke-static {v6}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 40
    invoke-static {v7, v15}, Lio/bidmachine/analytics/internal/s0;->a([BLjava/lang/String;)[B

    move-result-object v21

    if-ne v8, v5, :cond_0

    move/from16 v22, v5

    goto :goto_1

    :cond_0
    move/from16 v22, v0

    :goto_1
    move-object v14, v9

    .line 41
    invoke-direct/range {v14 .. v22}, Lio/bidmachine/analytics/internal/j0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[BZ)V

    .line 42
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    sget-object v5, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v0

    goto :goto_2

    .line 44
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v5, 0x0

    .line 45
    :try_start_5
    invoke-static {v4, v5}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 46
    :try_start_6
    invoke-static {v13, v5}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 47
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v4, v0

    goto :goto_3

    .line 48
    :goto_2
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    move-object v6, v0

    :try_start_8
    invoke-static {v4, v5}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 49
    :goto_3
    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    move-object v5, v0

    :try_start_a
    invoke-static {v13, v4}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 50
    :goto_4
    :try_start_b
    sget-object v4, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 51
    :goto_5
    monitor-exit v3

    .line 52
    invoke-static {v2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catchall_6
    move-exception v0

    .line 53
    monitor-exit v3

    throw v0
.end method

.method private final a(ZLjava/util/List;)Ljava/lang/Object;
    .locals 8

    .line 54
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 55
    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 57
    iget-object v1, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 59
    const-string v3, "is_reserved"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 60
    new-instance v5, Lio/bidmachine/analytics/internal/i0$b;

    invoke-direct {v5, v1, v2}, Lio/bidmachine/analytics/internal/i0$b;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 61
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, 0x0

    .line 62
    :try_start_2
    invoke-static {v1, p2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 63
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 64
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-static {v1, p1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    :goto_0
    :try_start_5
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 66
    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final a()Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, "(LENGTH(error) = 0 OR error IS NULL)"

    return-object v0
.end method

.method private final b(Lio/bidmachine/analytics/internal/j0;)Landroid/content/ContentValues;
    .locals 3

    .line 16
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 17
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/j0;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/j0;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/j0;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/j0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data_hash"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/j0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/analytics/internal/s0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rule"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/j0;->b()[B

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/j0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/bidmachine/analytics/internal/s0;->b([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 23
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/j0;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "is_dirty"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lio/bidmachine/analytics/internal/j0;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 4
    iget-object v1, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    const-string v2, "reader_record"

    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/i0;->b(Lio/bidmachine/analytics/internal/j0;)Landroid/content/ContentValues;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-static {v1, v3}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 9
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-static {v1, p1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10
    :goto_0
    :try_start_5
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 11
    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 18
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 19
    const-string v1, "name = ? AND is_reserved = 0 AND is_dirty = 1"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/bidmachine/analytics/internal/i0;->a(Lio/bidmachine/analytics/internal/i0;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name = ? AND rule = ? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lio/bidmachine/analytics/internal/i0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {p2}, Lio/bidmachine/analytics/internal/s0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .line 14
    invoke-static/range {v2 .. v7}, Lio/bidmachine/analytics/internal/i0;->a(Lio/bidmachine/analytics/internal/i0;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 16
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    :cond_0
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    move-object p1, v0

    :cond_2
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lio/bidmachine/analytics/internal/j0;

    :cond_3
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 5

    .line 78
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 79
    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 83
    check-cast v2, Ljava/lang/String;

    .line 84
    invoke-static {v2}, Lio/bidmachine/analytics/internal/s0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 86
    :cond_0
    iget-object p2, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    const-string v2, "reader_record"

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name = ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lio/bidmachine/analytics/internal/i0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "rule IN"

    invoke-static {v1, v4}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->K0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p2, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    .line 92
    :try_start_2
    invoke-static {p2, v1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 93
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 94
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-static {p2, p1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    :goto_1
    :try_start_5
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 96
    :goto_2
    monitor-exit v0

    return-object p1

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/util/List;)Ljava/lang/Object;
    .locals 8

    .line 67
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 68
    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 70
    iget-object v1, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    new-instance v5, Lio/bidmachine/analytics/internal/i0$c;

    invoke-direct {v5, v1}, Lio/bidmachine/analytics/internal/i0$c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 72
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 73
    :try_start_2
    invoke-static {v1, v2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 74
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 75
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-static {v1, p1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    :goto_0
    :try_start_5
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 77
    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lio/bidmachine/analytics/internal/i0;->a(ZLjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/List;)Ljava/lang/Object;
    .locals 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 5
    iget-object v1, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    const-string v2, "reader_record"

    .line 7
    const-string v3, "name NOT IN"

    invoke-static {p1, v3}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {p1}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 11
    :try_start_2
    invoke-static {v1, v2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 12
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 13
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-static {v1, p1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14
    :goto_0
    :try_start_5
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 15
    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c(Lio/bidmachine/analytics/internal/j0;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 4
    iget-object v1, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    const-string v2, "reader_record"

    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/i0;->b(Lio/bidmachine/analytics/internal/j0;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "id = ?"

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/j0;->c()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 7
    :try_start_2
    invoke-static {v1, v2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 8
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 9
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-static {v1, p1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 10
    :goto_0
    :try_start_5
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 11
    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c(Ljava/util/List;)Ljava/lang/Object;
    .locals 4

    .line 12
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/String;

    .line 18
    invoke-static {v2}, Lio/bidmachine/analytics/internal/s0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 20
    :cond_0
    iget-object p1, p0, Lio/bidmachine/analytics/internal/i0;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    const-string v2, "reader_record"

    .line 22
    const-string v3, "rule NOT IN"

    invoke-static {v1, v3}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v1}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 25
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 26
    :try_start_2
    invoke-static {p1, v2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 27
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 28
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-static {p1, v1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29
    :goto_1
    :try_start_5
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 30
    :goto_2
    monitor-exit v0

    return-object p1

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final d(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lio/bidmachine/analytics/internal/i0;->a(ZLjava/util/List;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final e(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lio/bidmachine/analytics/internal/i0;->a(ZLjava/util/List;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method
