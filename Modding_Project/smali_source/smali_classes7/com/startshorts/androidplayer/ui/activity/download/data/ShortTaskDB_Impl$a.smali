.class Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB_Impl$a;
.super Landroidx/room/RoomOpenDelegate;
.source "ShortTaskDB_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB_Impl;->g()Landroidx/room/RoomOpenDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB_Impl;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB_Impl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB_Impl$a;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Landroidx/room/RoomOpenDelegate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1
    .param p1    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS `short_tasks` (`shortPlayId` INTEGER NOT NULL, `shortPlayCode` TEXT, `dramaName` TEXT, `shortCoverUrl` TEXT, `content` TEXT, `addTaskTime` INTEGER NOT NULL, `hasUnfinishedJob` INTEGER NOT NULL, PRIMARY KEY(`shortPlayId`))"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'eb471b8265f788d4765f58be3e90e4eb\')"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1
    .param p1    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "DROP TABLE IF EXISTS `short_tasks`"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCreate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0
    .param p1    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onOpen(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1
    .param p1    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB_Impl$a;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB_Impl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB_Impl;->f(Lcom/startshorts/androidplayer/ui/activity/download/data/ShortTaskDB_Impl;Landroidx/sqlite/SQLiteConnection;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0
    .param p1    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0
    .param p1    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/SQLiteConnection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;
    .locals 10
    .param p1    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v8, 0x1

    .line 11
    const-string v3, "shortPlayId"

    .line 12
    .line 13
    const-string v4, "INTEGER"

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    const/4 v6, 0x1

    .line 17
    move-object v2, v1

    .line 18
    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string v2, "shortPlayId"

    .line 22
    .line 23
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x1

    .line 30
    const-string v4, "shortPlayCode"

    .line 31
    .line 32
    const-string v5, "TEXT"

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    move-object v3, v1

    .line 37
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string v2, "shortPlayCode"

    .line 41
    .line 42
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 46
    .line 47
    const-string v4, "dramaName"

    .line 48
    .line 49
    const-string v5, "TEXT"

    .line 50
    .line 51
    move-object v3, v1

    .line 52
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    const-string v2, "dramaName"

    .line 56
    .line 57
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 61
    .line 62
    const-string v4, "shortCoverUrl"

    .line 63
    .line 64
    const-string v5, "TEXT"

    .line 65
    .line 66
    move-object v3, v1

    .line 67
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    const-string v2, "shortCoverUrl"

    .line 71
    .line 72
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 76
    .line 77
    const-string v4, "content"

    .line 78
    .line 79
    const-string v5, "TEXT"

    .line 80
    .line 81
    move-object v3, v1

    .line 82
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    const-string v2, "content"

    .line 86
    .line 87
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 91
    .line 92
    const-string v4, "addTaskTime"

    .line 93
    .line 94
    const-string v5, "INTEGER"

    .line 95
    .line 96
    const/4 v6, 0x1

    .line 97
    move-object v3, v1

    .line 98
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    const-string v2, "addTaskTime"

    .line 102
    .line 103
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 107
    .line 108
    const-string v4, "hasUnfinishedJob"

    .line 109
    .line 110
    const-string v5, "INTEGER"

    .line 111
    .line 112
    move-object v3, v1

    .line 113
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    const-string v2, "hasUnfinishedJob"

    .line 117
    .line 118
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    new-instance v1, Ljava/util/HashSet;

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 125
    .line 126
    .line 127
    new-instance v3, Ljava/util/HashSet;

    .line 128
    .line 129
    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 130
    .line 131
    .line 132
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 133
    .line 134
    const-string v5, "short_tasks"

    .line 135
    .line 136
    invoke-direct {v4, v5, v0, v1, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p1, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v4, p1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_0

    .line 148
    .line 149
    new-instance v0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v3, "short_tasks(com.startshorts.androidplayer.bean.download.ShortTaskInfo).\n Expected:\n"

    .line 157
    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v3, "\n Found:\n"

    .line 165
    .line 166
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-direct {v0, v2, p1}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-object v0

    .line 180
    :cond_0
    new-instance p1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 181
    .line 182
    const/4 v0, 0x1

    .line 183
    const/4 v1, 0x0

    .line 184
    invoke-direct {p1, v0, v1}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-object p1
.end method
