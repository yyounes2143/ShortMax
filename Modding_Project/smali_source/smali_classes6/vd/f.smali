.class public final Lvd/f;
.super Ljava/lang/Object;
.source "EventDao_Impl.java"

# interfaces
.implements Lvd/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/startshorts/androidplayer/db/model/DbEvent;",
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
    iput-object p1, p0, Lvd/f;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lvd/f$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lvd/f$a;-><init>(Lvd/f;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lvd/f;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic e(Lvd/f;Lcom/startshorts/androidplayer/db/model/DbEvent;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvd/f;->l(Lcom/startshorts/androidplayer/db/model/DbEvent;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lvd/f;->k(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lvd/f;->j(Ljava/lang/String;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lvd/f;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)[J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvd/f;->m(Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)[J

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static i()Ljava/util/List;
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

.method private static synthetic j(Ljava/lang/String;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Integer;
    .locals 3

    .line 1
    invoke-interface {p2, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Long;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-interface {p0, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 35
    .line 36
    .line 37
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 52
    .line 53
    .line 54
    return-object p1

    .line 55
    :goto_2
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method private static synthetic k(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 14

    .line 1
    const-string v0, "SELECT * FROM DbEvent ORDER BY localId ASC"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    const-string v0, "localId"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string/jumbo v1, "uid"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v2, "app_version"

    .line 21
    .line 22
    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "event_id"

    .line 27
    .line 28
    invoke-static {p0, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string v4, "event_name"

    .line 33
    .line 34
    invoke-static {p0, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const-string v5, "event_extra"

    .line 39
    .line 40
    invoke-static {p0, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, "event_time"

    .line 45
    .line 46
    invoke-static {p0, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    const-string v7, "local_time"

    .line 51
    .line 52
    invoke-static {p0, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    const-string v8, "check_time"

    .line 57
    .line 58
    invoke-static {p0, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-string/jumbo v9, "status"

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    new-instance v10, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    if-eqz v11, :cond_5

    .line 79
    .line 80
    new-instance v11, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 81
    .line 82
    invoke-direct {v11}, Lcom/startshorts/androidplayer/db/model/DbEvent;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 86
    .line 87
    .line 88
    move-result-wide v12

    .line 89
    invoke-virtual {v11, v12, v13}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setLocalId(J)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    const/4 v13, 0x0

    .line 97
    if-eqz v12, :cond_0

    .line 98
    .line 99
    move-object v12, v13

    .line 100
    goto :goto_1

    .line 101
    :cond_0
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    :goto_1
    invoke-virtual {v11, v12}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setUid(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    if-eqz v12, :cond_1

    .line 113
    .line 114
    move-object v12, v13

    .line 115
    goto :goto_2

    .line 116
    :cond_1
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    :goto_2
    invoke-virtual {v11, v12}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setAppVersion(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    if-eqz v12, :cond_2

    .line 128
    .line 129
    move-object v12, v13

    .line 130
    goto :goto_3

    .line 131
    :cond_2
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    :goto_3
    invoke-virtual {v11, v12}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setEventId(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {p0, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    if-eqz v12, :cond_3

    .line 143
    .line 144
    move-object v12, v13

    .line 145
    goto :goto_4

    .line 146
    :cond_3
    invoke-interface {p0, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    :goto_4
    invoke-virtual {v11, v12}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setEventName(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p0, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    if-eqz v12, :cond_4

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_4
    invoke-interface {p0, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    :goto_5
    invoke-virtual {v11, v13}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setEventExtra(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p0, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 168
    .line 169
    .line 170
    move-result-wide v12

    .line 171
    invoke-virtual {v11, v12, v13}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setEventTime(J)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p0, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 175
    .line 176
    .line 177
    move-result-wide v12

    .line 178
    invoke-virtual {v11, v12, v13}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setLocalTime(J)V

    .line 179
    .line 180
    .line 181
    invoke-interface {p0, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 182
    .line 183
    .line 184
    move-result-wide v12

    .line 185
    invoke-virtual {v11, v12, v13}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setCheckTime(J)V

    .line 186
    .line 187
    .line 188
    invoke-interface {p0, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 189
    .line 190
    .line 191
    move-result-wide v12

    .line 192
    long-to-int v12, v12

    .line 193
    invoke-virtual {v11, v12}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setStatus(I)V

    .line 194
    .line 195
    .line 196
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    goto :goto_6

    .line 202
    :cond_5
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 203
    .line 204
    .line 205
    return-object v10

    .line 206
    :goto_6
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 207
    .line 208
    .line 209
    throw v0
.end method

.method private synthetic l(Lcom/startshorts/androidplayer/db/model/DbEvent;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/f;->b:Landroidx/room/EntityInsertAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private synthetic m(Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)[J
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/f;->b:Landroidx/room/EntityInsertAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnIdsArray(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)[J

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DELETE FROM DbEvent WHERE localId in("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 16
    .line 17
    .line 18
    const-string v1, ")"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lvd/f;->a:Landroidx/room/RoomDatabase;

    .line 28
    .line 29
    new-instance v2, Lvd/e;

    .line 30
    .line 31
    invoke-direct {v2, v0, p1}, Lvd/e;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-static {v1, p1, v0, v2}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method

.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/db/model/DbEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lvd/f;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lvd/b;

    .line 4
    .line 5
    invoke-direct {v1}, Lvd/b;-><init>()V

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

.method public c(Lcom/startshorts/androidplayer/db/model/DbEvent;)J
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvd/f;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lvd/d;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lvd/d;-><init>(Lvd/f;Lcom/startshorts/androidplayer/db/model/DbEvent;)V

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
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    return-wide v0
.end method

.method public d(Ljava/util/List;)[J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/db/model/DbEvent;",
            ">;)[J"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvd/f;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lvd/c;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lvd/c;-><init>(Lvd/f;Ljava/util/List;)V

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
    move-result-object p1

    .line 17
    check-cast p1, [J

    .line 18
    .line 19
    return-object p1
.end method
