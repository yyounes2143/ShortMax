.class public final Lio/bidmachine/analytics/internal/S;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/S$a;
    }
.end annotation


# static fields
.field public static final b:Lio/bidmachine/analytics/internal/S$a;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/S$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/S$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/analytics/internal/S;->b:Lio/bidmachine/analytics/internal/S$a;

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
    iput-object p1, p0, Lio/bidmachine/analytics/internal/S;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 5
    .line 6
    return-void
.end method

.method private final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v1, p0, Lio/bidmachine/analytics/internal/S;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 27
    iget-object v2, p0, Lio/bidmachine/analytics/internal/S;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 28
    :try_start_1
    const-string v3, "id"

    const-string v4, "name"

    const-string v5, "timestamp"

    const-string v6, "session_id"

    const-string v7, "data"

    const-string v8, "error"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v5

    .line 29
    const-string v10, "timestamp DESC"

    .line 30
    const-string v4, "monitor_record"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    move-object v6, p1

    move-object v7, p2

    move-object v11, p3

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 31
    :goto_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_0

    .line 32
    :try_start_3
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    const/4 p2, 0x0

    .line 33
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 p2, 0x1

    .line 34
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 p2, 0x2

    .line 35
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 p2, 0x3

    .line 36
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 p2, 0x4

    .line 37
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p2

    const/4 p3, 0x5

    .line 38
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p3

    .line 39
    new-instance v11, Lio/bidmachine/analytics/internal/T;

    .line 40
    invoke-static {p2, v4}, Lio/bidmachine/analytics/internal/s0;->a([BLjava/lang/String;)[B

    move-result-object v9

    .line 41
    invoke-static {p3, v4}, Lio/bidmachine/analytics/internal/s0;->a([BLjava/lang/String;)[B

    move-result-object v10

    move-object v3, v11

    .line 42
    invoke-direct/range {v3 .. v10}, Lio/bidmachine/analytics/internal/T;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B[B)V

    .line 43
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 44
    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_4
    sget-object p3, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p2}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_1

    .line 45
    :cond_0
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 p3, 0x0

    .line 46
    :try_start_5
    invoke-static {p1, p3}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 47
    :try_start_6
    invoke-static {v2, p3}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 48
    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_3

    :catchall_3
    move-exception p1

    goto :goto_2

    .line 49
    :goto_1
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p3

    :try_start_8
    invoke-static {p1, p2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 50
    :goto_2
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-static {v2, p1}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 51
    :goto_3
    :try_start_b
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 52
    :goto_4
    monitor-exit v1

    .line 53
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_6
    move-exception p1

    .line 54
    monitor-exit v1

    throw p1
.end method

.method private final a(ZLjava/util/List;)Ljava/lang/Object;
    .locals 8

    .line 56
    iget-object v0, p0, Lio/bidmachine/analytics/internal/S;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 57
    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 59
    iget-object v1, p0, Lio/bidmachine/analytics/internal/S;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 61
    const-string v3, "is_reserved"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 62
    new-instance v5, Lio/bidmachine/analytics/internal/S$b;

    invoke-direct {v5, v1, v2}, Lio/bidmachine/analytics/internal/S$b;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 63
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, 0x0

    .line 64
    :try_start_2
    invoke-static {v1, p2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 65
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

    .line 66
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

    .line 67
    :goto_0
    :try_start_5
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 68
    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, v0, v1}, Lio/bidmachine/analytics/internal/S;->a(ZLjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/bidmachine/analytics/internal/T;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/S;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 4
    iget-object v1, p0, Lio/bidmachine/analytics/internal/S;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 6
    const-string v3, "id"

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/T;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string v3, "name"

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/T;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v3, "timestamp"

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/T;->f()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9
    const-string v3, "session_id"

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/T;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v3, "data"

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/T;->a()[B

    move-result-object v4

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/T;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/bidmachine/analytics/internal/s0;->b([BLjava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 11
    const-string v3, "error"

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/T;->b()[B

    move-result-object v4

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/T;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lio/bidmachine/analytics/internal/s0;->b([BLjava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 12
    const-string p1, "monitor_record"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 13
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    invoke-static {v1, v3}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 15
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

    .line 16
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

    .line 17
    :goto_0
    :try_start_5
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 18
    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/analytics/internal/S;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 20
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 21
    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 22
    :goto_0
    const-string p3, "name = ? AND session_id = ? AND is_reserved = 0"

    invoke-direct {p0, p3, p1, p2}, Lio/bidmachine/analytics/internal/S;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 5

    .line 80
    iget-object v0, p0, Lio/bidmachine/analytics/internal/S;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 81
    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 83
    iget-object v1, p0, Lio/bidmachine/analytics/internal/S;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    const-string v2, "monitor_record"

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "session_id != ? OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "name NOT IN"

    invoke-static {p2, v4}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, 0x0

    .line 89
    :try_start_2
    invoke-static {v1, p2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 90
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

    .line 91
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

    .line 92
    :goto_0
    :try_start_5
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 93
    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/util/List;)Ljava/lang/Object;
    .locals 8

    .line 69
    iget-object v0, p0, Lio/bidmachine/analytics/internal/S;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 70
    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 72
    iget-object v1, p0, Lio/bidmachine/analytics/internal/S;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    new-instance v5, Lio/bidmachine/analytics/internal/S$c;

    invoke-direct {v5, v1}, Lio/bidmachine/analytics/internal/S$c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 74
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    .line 75
    :try_start_2
    invoke-static {v1, v2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 76
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

    .line 77
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

    .line 78
    :goto_0
    :try_start_5
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 79
    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lio/bidmachine/analytics/internal/S;->a(ZLjava/util/List;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final c(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lio/bidmachine/analytics/internal/S;->a(ZLjava/util/List;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method
