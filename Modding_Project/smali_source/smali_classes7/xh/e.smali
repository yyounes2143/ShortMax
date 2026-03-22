.class public final Lxh/e;
.super Ljava/lang/Object;
.source "DownloadEpisodesDao_Impl.java"

# interfaces
.implements Lxh/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lxh/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lxh/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lxh/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1    # Landroidx/room/RoomDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxh/e;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lxh/e$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lxh/e$a;-><init>(Lxh/e;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lxh/e;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    new-instance p1, Lxh/e$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lxh/e$b;-><init>(Lxh/e;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lxh/e;->c:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 19
    .line 20
    new-instance p1, Lxh/e$c;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lxh/e$c;-><init>(Lxh/e;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lxh/e;->d:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic d(Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lxh/e;->h(Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(ILandroidx/sqlite/SQLiteConnection;)Lxh/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lxh/e;->i(ILandroidx/sqlite/SQLiteConnection;)Lxh/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lxh/e;Lxh/f;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lxh/e;->j(Lxh/f;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static g()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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

.method private static synthetic h(Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "DELETE  FROM download_episodes"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method private static synthetic i(ILandroidx/sqlite/SQLiteConnection;)Lxh/f;
    .locals 5

    .line 1
    const-string v0, "SELECT * FROM download_episodes WHERE shortPlayId = ?"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    int-to-long v1, p0

    .line 9
    :try_start_0
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 10
    .line 11
    .line 12
    const-string p0, "shortPlayId"

    .line 13
    .line 14
    invoke-static {p1, p0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const-string v0, "episodes"

    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    long-to-int p0, v3

    .line 36
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_0
    new-instance v0, Lxh/f;

    .line 48
    .line 49
    invoke-direct {v0, p0, v2}, Lxh/f;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    move-object v2, v0

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 57
    .line 58
    .line 59
    return-object v2

    .line 60
    :goto_2
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method private synthetic j(Lxh/f;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lxh/e;->b:Landroidx/room/EntityInsertAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lxh/e;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lxh/b;

    .line 4
    .line 5
    invoke-direct {v1}, Lxh/b;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b(Lxh/f;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lxh/e;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lxh/d;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lxh/d;-><init>(Lxh/e;Lxh/f;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public c(I)Lxh/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lxh/e;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lxh/c;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lxh/c;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lxh/f;

    .line 15
    .line 16
    return-object p1
.end method
