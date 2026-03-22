.class Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB_Impl$a;
.super Landroidx/room/RoomOpenDelegate;
.source "DownloadEpisodesDB_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB_Impl;->g()Landroidx/room/RoomOpenDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB_Impl;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB_Impl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB_Impl$a;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB_Impl;

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
    const-string v0, "CREATE TABLE IF NOT EXISTS `download_episodes` (`shortPlayId` INTEGER NOT NULL, `episodes` TEXT, PRIMARY KEY(`shortPlayId`))"

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
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'11426bd006de261faf43ed244884a52b\')"

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
    const-string v0, "DROP TABLE IF EXISTS `download_episodes`"

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB_Impl$a;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB_Impl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB_Impl;->f(Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB_Impl;Landroidx/sqlite/SQLiteConnection;)V

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
    const/4 v1, 0x2

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
    const-string v4, "episodes"

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
    const-string v2, "episodes"

    .line 41
    .line 42
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    new-instance v1, Ljava/util/HashSet;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 49
    .line 50
    .line 51
    new-instance v3, Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 57
    .line 58
    const-string v5, "download_episodes"

    .line 59
    .line 60
    invoke-direct {v4, v5, v0, v1, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v4, p1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    .line 73
    new-instance v0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v3, "download_episodes(com.startshorts.androidplayer.ui.activity.download.data.episodes.DownloadEpisodesInfo).\n Expected:\n"

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v3, "\n Found:\n"

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {v0, v2, p1}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_0
    new-instance p1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-direct {p1, v0, v1}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object p1
.end method
