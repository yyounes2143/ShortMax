.class public final Lwh/n;
.super Ljava/lang/Object;
.source "ShortTaskDao_Impl.java"

# interfaces
.implements Lwh/j;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;",
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
    iput-object p1, p0, Lwh/n;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lwh/n$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lwh/n$a;-><init>(Lwh/n;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lwh/n;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    new-instance p1, Lwh/n$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lwh/n$b;-><init>(Lwh/n;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lwh/n;->c:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 19
    .line 20
    new-instance p1, Lwh/n$c;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lwh/n$c;-><init>(Lwh/n;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lwh/n;->d:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic d(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lwh/n;->i(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lwh/n;->h(Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lwh/n;Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lwh/n;->j(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;

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
    const-string v0, "DELETE  FROM short_tasks"

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

.method private static synthetic i(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 17

    .line 1
    const-string v0, "SELECT * FROM short_tasks"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    const-string v0, "shortPlayId"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "shortPlayCode"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "dramaName"

    .line 22
    .line 23
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string v4, "shortCoverUrl"

    .line 28
    .line 29
    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const-string v5, "content"

    .line 34
    .line 35
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const-string v6, "addTaskTime"

    .line 40
    .line 41
    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const-string v7, "hasUnfinishedJob"

    .line 46
    .line 47
    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    new-instance v8, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-eqz v9, :cond_5

    .line 61
    .line 62
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 63
    .line 64
    .line 65
    move-result-wide v9

    .line 66
    long-to-int v12, v9

    .line 67
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    const/4 v10, 0x0

    .line 72
    if-eqz v9, :cond_0

    .line 73
    .line 74
    move-object v13, v10

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    move-object v13, v9

    .line 81
    :goto_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_1

    .line 86
    .line 87
    move-object v14, v10

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    move-object v14, v9

    .line 94
    :goto_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_2

    .line 99
    .line 100
    move-object v15, v10

    .line 101
    goto :goto_3

    .line 102
    :cond_2
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    move-object v15, v9

    .line 107
    :goto_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_3

    .line 112
    .line 113
    move-object/from16 v16, v10

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_3
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    move-object/from16 v16, v9

    .line 121
    .line 122
    :goto_4
    new-instance v9, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 123
    .line 124
    move-object v11, v9

    .line 125
    invoke-direct/range {v11 .. v16}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 129
    .line 130
    .line 131
    move-result-wide v10

    .line 132
    invoke-virtual {v9, v10, v11}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->setAddTaskTime(J)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 136
    .line 137
    .line 138
    move-result-wide v10

    .line 139
    long-to-int v10, v10

    .line 140
    if-eqz v10, :cond_4

    .line 141
    .line 142
    const/4 v10, 0x1

    .line 143
    goto :goto_5

    .line 144
    :cond_4
    const/4 v10, 0x0

    .line 145
    :goto_5
    invoke-virtual {v9, v10}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->setHasUnfinishedJob(Z)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    goto :goto_6

    .line 154
    :cond_5
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 155
    .line 156
    .line 157
    return-object v8

    .line 158
    :goto_6
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 159
    .line 160
    .line 161
    throw v0
.end method

.method private synthetic j(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lwh/n;->b:Landroidx/room/EntityInsertAdapter;

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
    iget-object v0, p0, Lwh/n;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lwh/k;

    .line 4
    .line 5
    invoke-direct {v1}, Lwh/k;-><init>()V

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

.method public b(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lwh/n;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lwh/m;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lwh/m;-><init>(Lwh/n;Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V

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

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwh/n;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lwh/l;

    .line 4
    .line 5
    invoke-direct {v1}, Lwh/l;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/List;

    .line 15
    .line 16
    return-object v0
.end method
