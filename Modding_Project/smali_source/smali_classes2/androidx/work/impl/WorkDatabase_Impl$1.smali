.class Landroidx/work/impl/WorkDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "WorkDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/WorkDatabase_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    .line 27
    .line 28
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 32
    .line 33
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    .line 37
    .line 38
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 42
    .line 43
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 47
    .line 48
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    .line 52
    .line 53
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 57
    .line 58
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    .line 62
    .line 63
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 67
    .line 68
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'5181942b9ebc31ce68dacb56c16fd79f\')"

    .line 72
    .line 73
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 1
    const-string v0, "DROP TABLE IF EXISTS `Dependency`"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS `WorkSpec`"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "DROP TABLE IF EXISTS `WorkTag`"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "DROP TABLE IF EXISTS `SystemIdInfo`"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "DROP TABLE IF EXISTS `WorkName`"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "DROP TABLE IF EXISTS `WorkProgress`"

    .line 27
    .line 28
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "DROP TABLE IF EXISTS `Preference`"

    .line 32
    .line 33
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 37
    .line 38
    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->access$000(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 45
    .line 46
    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->access$100(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v1, 0x0

    .line 55
    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 58
    .line 59
    invoke-static {v2}, Landroidx/work/impl/WorkDatabase_Impl;->access$200(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->access$300(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->access$400(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 23
    .line 24
    invoke-static {v2}, Landroidx/work/impl/WorkDatabase_Impl;->access$500(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/work/impl/WorkDatabase_Impl;->access$602(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 4
    .line 5
    .line 6
    const-string v0, "PRAGMA foreign_keys = ON"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 12
    .line 13
    invoke-static {v0, p1}, Landroidx/work/impl/WorkDatabase_Impl;->access$700(Landroidx/work/impl/WorkDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->access$800(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->access$900(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_0
    if-ge v1, v0, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/work/impl/WorkDatabase_Impl$1;->this$0:Landroidx/work/impl/WorkDatabase_Impl;

    .line 38
    .line 39
    invoke-static {v2}, Landroidx/work/impl/WorkDatabase_Impl;->access$1000(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 28

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    new-instance v10, Landroidx/room/util/TableInfo$Column;

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x1

    .line 13
    const-string/jumbo v4, "work_spec_id"

    .line 14
    .line 15
    .line 16
    const-string v5, "TEXT"

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    const/4 v7, 0x1

    .line 20
    move-object v3, v10

    .line 21
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v3, "work_spec_id"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 31
    .line 32
    const/16 v16, 0x0

    .line 33
    .line 34
    const/16 v17, 0x1

    .line 35
    .line 36
    const-string v12, "prerequisite_id"

    .line 37
    .line 38
    const-string v13, "TEXT"

    .line 39
    .line 40
    const/4 v14, 0x1

    .line 41
    const/4 v15, 0x2

    .line 42
    move-object v11, v4

    .line 43
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    const-string v5, "prerequisite_id"

    .line 47
    .line 48
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    new-instance v4, Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 54
    .line 55
    .line 56
    new-instance v12, Landroidx/room/util/TableInfo$ForeignKey;

    .line 57
    .line 58
    filled-new-array {v3}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    const-string v13, "id"

    .line 67
    .line 68
    filled-new-array {v13}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    const-string v7, "WorkSpec"

    .line 77
    .line 78
    const-string v8, "CASCADE"

    .line 79
    .line 80
    const-string v9, "CASCADE"

    .line 81
    .line 82
    move-object v6, v12

    .line 83
    invoke-direct/range {v6 .. v11}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    new-instance v6, Landroidx/room/util/TableInfo$ForeignKey;

    .line 90
    .line 91
    filled-new-array {v5}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v18

    .line 99
    filled-new-array {v13}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v19

    .line 107
    const-string v15, "WorkSpec"

    .line 108
    .line 109
    const-string v16, "CASCADE"

    .line 110
    .line 111
    const-string v17, "CASCADE"

    .line 112
    .line 113
    move-object v14, v6

    .line 114
    invoke-direct/range {v14 .. v19}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    new-instance v6, Ljava/util/HashSet;

    .line 121
    .line 122
    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 123
    .line 124
    .line 125
    new-instance v7, Landroidx/room/util/TableInfo$Index;

    .line 126
    .line 127
    filled-new-array {v3}, [Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    const-string v9, "ASC"

    .line 136
    .line 137
    filled-new-array {v9}, [Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    const-string v11, "index_Dependency_work_spec_id"

    .line 146
    .line 147
    const/4 v12, 0x0

    .line 148
    invoke-direct {v7, v11, v12, v8, v10}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    new-instance v7, Landroidx/room/util/TableInfo$Index;

    .line 155
    .line 156
    filled-new-array {v5}, [Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    filled-new-array {v9}, [Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    const-string v10, "index_Dependency_prerequisite_id"

    .line 173
    .line 174
    invoke-direct {v7, v10, v12, v5, v8}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    new-instance v5, Landroidx/room/util/TableInfo;

    .line 181
    .line 182
    const-string v7, "Dependency"

    .line 183
    .line 184
    invoke-direct {v5, v7, v1, v4, v6}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v5, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    const-string v6, "\n Found:\n"

    .line 196
    .line 197
    if-nez v4, :cond_0

    .line 198
    .line 199
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 200
    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v3, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    .line 207
    .line 208
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-direct {v0, v12, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    return-object v0

    .line 228
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 229
    .line 230
    const/16 v4, 0x1b

    .line 231
    .line 232
    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 233
    .line 234
    .line 235
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 236
    .line 237
    const/16 v19, 0x0

    .line 238
    .line 239
    const/16 v20, 0x1

    .line 240
    .line 241
    const/16 v17, 0x1

    .line 242
    .line 243
    const/16 v18, 0x1

    .line 244
    .line 245
    const-string v15, "id"

    .line 246
    .line 247
    const-string v16, "TEXT"

    .line 248
    .line 249
    move-object v14, v4

    .line 250
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 257
    .line 258
    const/16 v26, 0x0

    .line 259
    .line 260
    const/16 v27, 0x1

    .line 261
    .line 262
    const/16 v24, 0x1

    .line 263
    .line 264
    const/16 v25, 0x0

    .line 265
    .line 266
    const-string v22, "state"

    .line 267
    .line 268
    const-string v23, "INTEGER"

    .line 269
    .line 270
    move-object/from16 v21, v4

    .line 271
    .line 272
    invoke-direct/range {v21 .. v27}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    const-string v5, "state"

    .line 276
    .line 277
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 281
    .line 282
    const/16 v18, 0x0

    .line 283
    .line 284
    const-string/jumbo v15, "worker_class_name"

    .line 285
    .line 286
    .line 287
    const-string v16, "TEXT"

    .line 288
    .line 289
    move-object v14, v4

    .line 290
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    const-string/jumbo v5, "worker_class_name"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 300
    .line 301
    const/16 v17, 0x0

    .line 302
    .line 303
    const-string v15, "input_merger_class_name"

    .line 304
    .line 305
    const-string v16, "TEXT"

    .line 306
    .line 307
    move-object v14, v4

    .line 308
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 309
    .line 310
    .line 311
    const-string v5, "input_merger_class_name"

    .line 312
    .line 313
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 317
    .line 318
    const/16 v17, 0x1

    .line 319
    .line 320
    const-string v15, "input"

    .line 321
    .line 322
    const-string v16, "BLOB"

    .line 323
    .line 324
    move-object v14, v4

    .line 325
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 326
    .line 327
    .line 328
    const-string v5, "input"

    .line 329
    .line 330
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 334
    .line 335
    const-string v15, "output"

    .line 336
    .line 337
    const-string v16, "BLOB"

    .line 338
    .line 339
    move-object v14, v4

    .line 340
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 341
    .line 342
    .line 343
    const-string v5, "output"

    .line 344
    .line 345
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 349
    .line 350
    const-string v15, "initial_delay"

    .line 351
    .line 352
    const-string v16, "INTEGER"

    .line 353
    .line 354
    move-object v14, v4

    .line 355
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 356
    .line 357
    .line 358
    const-string v5, "initial_delay"

    .line 359
    .line 360
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 364
    .line 365
    const-string v15, "interval_duration"

    .line 366
    .line 367
    const-string v16, "INTEGER"

    .line 368
    .line 369
    move-object v14, v4

    .line 370
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 371
    .line 372
    .line 373
    const-string v5, "interval_duration"

    .line 374
    .line 375
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 379
    .line 380
    const-string v15, "flex_duration"

    .line 381
    .line 382
    const-string v16, "INTEGER"

    .line 383
    .line 384
    move-object v14, v4

    .line 385
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 386
    .line 387
    .line 388
    const-string v5, "flex_duration"

    .line 389
    .line 390
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 394
    .line 395
    const-string v15, "run_attempt_count"

    .line 396
    .line 397
    const-string v16, "INTEGER"

    .line 398
    .line 399
    move-object v14, v4

    .line 400
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 401
    .line 402
    .line 403
    const-string v5, "run_attempt_count"

    .line 404
    .line 405
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 409
    .line 410
    const-string v15, "backoff_policy"

    .line 411
    .line 412
    const-string v16, "INTEGER"

    .line 413
    .line 414
    move-object v14, v4

    .line 415
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 416
    .line 417
    .line 418
    const-string v5, "backoff_policy"

    .line 419
    .line 420
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 424
    .line 425
    const-string v15, "backoff_delay_duration"

    .line 426
    .line 427
    const-string v16, "INTEGER"

    .line 428
    .line 429
    move-object v14, v4

    .line 430
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 431
    .line 432
    .line 433
    const-string v5, "backoff_delay_duration"

    .line 434
    .line 435
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 439
    .line 440
    const-string v15, "last_enqueue_time"

    .line 441
    .line 442
    const-string v16, "INTEGER"

    .line 443
    .line 444
    move-object v14, v4

    .line 445
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 446
    .line 447
    .line 448
    const-string v5, "last_enqueue_time"

    .line 449
    .line 450
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 454
    .line 455
    const-string v15, "minimum_retention_duration"

    .line 456
    .line 457
    const-string v16, "INTEGER"

    .line 458
    .line 459
    move-object v14, v4

    .line 460
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 461
    .line 462
    .line 463
    const-string v7, "minimum_retention_duration"

    .line 464
    .line 465
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 469
    .line 470
    const-string v15, "schedule_requested_at"

    .line 471
    .line 472
    const-string v16, "INTEGER"

    .line 473
    .line 474
    move-object v14, v4

    .line 475
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 476
    .line 477
    .line 478
    const-string v7, "schedule_requested_at"

    .line 479
    .line 480
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 484
    .line 485
    const-string v15, "run_in_foreground"

    .line 486
    .line 487
    const-string v16, "INTEGER"

    .line 488
    .line 489
    move-object v14, v4

    .line 490
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 491
    .line 492
    .line 493
    const-string v8, "run_in_foreground"

    .line 494
    .line 495
    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 499
    .line 500
    const-string v15, "out_of_quota_policy"

    .line 501
    .line 502
    const-string v16, "INTEGER"

    .line 503
    .line 504
    move-object v14, v4

    .line 505
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 506
    .line 507
    .line 508
    const-string v8, "out_of_quota_policy"

    .line 509
    .line 510
    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 514
    .line 515
    const-string v19, "0"

    .line 516
    .line 517
    const-string v15, "period_count"

    .line 518
    .line 519
    const-string v16, "INTEGER"

    .line 520
    .line 521
    move-object v14, v4

    .line 522
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 523
    .line 524
    .line 525
    const-string v8, "period_count"

    .line 526
    .line 527
    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 531
    .line 532
    const-string v19, "0"

    .line 533
    .line 534
    const-string v15, "generation"

    .line 535
    .line 536
    const-string v16, "INTEGER"

    .line 537
    .line 538
    move-object v14, v4

    .line 539
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 540
    .line 541
    .line 542
    const-string v8, "generation"

    .line 543
    .line 544
    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 548
    .line 549
    const/16 v19, 0x0

    .line 550
    .line 551
    const-string v15, "required_network_type"

    .line 552
    .line 553
    const-string v16, "INTEGER"

    .line 554
    .line 555
    move-object v14, v4

    .line 556
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 557
    .line 558
    .line 559
    const-string v10, "required_network_type"

    .line 560
    .line 561
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 565
    .line 566
    const-string v15, "requires_charging"

    .line 567
    .line 568
    const-string v16, "INTEGER"

    .line 569
    .line 570
    move-object v14, v4

    .line 571
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 572
    .line 573
    .line 574
    const-string v10, "requires_charging"

    .line 575
    .line 576
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 580
    .line 581
    const-string v15, "requires_device_idle"

    .line 582
    .line 583
    const-string v16, "INTEGER"

    .line 584
    .line 585
    move-object v14, v4

    .line 586
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 587
    .line 588
    .line 589
    const-string v10, "requires_device_idle"

    .line 590
    .line 591
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 595
    .line 596
    const-string v15, "requires_battery_not_low"

    .line 597
    .line 598
    const-string v16, "INTEGER"

    .line 599
    .line 600
    move-object v14, v4

    .line 601
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 602
    .line 603
    .line 604
    const-string v10, "requires_battery_not_low"

    .line 605
    .line 606
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 610
    .line 611
    const-string v15, "requires_storage_not_low"

    .line 612
    .line 613
    const-string v16, "INTEGER"

    .line 614
    .line 615
    move-object v14, v4

    .line 616
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 617
    .line 618
    .line 619
    const-string v10, "requires_storage_not_low"

    .line 620
    .line 621
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 625
    .line 626
    const-string/jumbo v15, "trigger_content_update_delay"

    .line 627
    .line 628
    .line 629
    const-string v16, "INTEGER"

    .line 630
    .line 631
    move-object v14, v4

    .line 632
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 633
    .line 634
    .line 635
    const-string/jumbo v10, "trigger_content_update_delay"

    .line 636
    .line 637
    .line 638
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 642
    .line 643
    const-string/jumbo v15, "trigger_max_content_delay"

    .line 644
    .line 645
    .line 646
    const-string v16, "INTEGER"

    .line 647
    .line 648
    move-object v14, v4

    .line 649
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 650
    .line 651
    .line 652
    const-string/jumbo v10, "trigger_max_content_delay"

    .line 653
    .line 654
    .line 655
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 659
    .line 660
    const-string v15, "content_uri_triggers"

    .line 661
    .line 662
    const-string v16, "BLOB"

    .line 663
    .line 664
    move-object v14, v4

    .line 665
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 666
    .line 667
    .line 668
    const-string v10, "content_uri_triggers"

    .line 669
    .line 670
    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    new-instance v4, Ljava/util/HashSet;

    .line 674
    .line 675
    invoke-direct {v4, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 676
    .line 677
    .line 678
    new-instance v10, Ljava/util/HashSet;

    .line 679
    .line 680
    invoke-direct {v10, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 681
    .line 682
    .line 683
    new-instance v11, Landroidx/room/util/TableInfo$Index;

    .line 684
    .line 685
    filled-new-array {v7}, [Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v7

    .line 689
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 690
    .line 691
    .line 692
    move-result-object v7

    .line 693
    filled-new-array {v9}, [Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v14

    .line 697
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 698
    .line 699
    .line 700
    move-result-object v14

    .line 701
    const-string v15, "index_WorkSpec_schedule_requested_at"

    .line 702
    .line 703
    invoke-direct {v11, v15, v12, v7, v14}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    new-instance v7, Landroidx/room/util/TableInfo$Index;

    .line 710
    .line 711
    filled-new-array {v5}, [Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v5

    .line 715
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 716
    .line 717
    .line 718
    move-result-object v5

    .line 719
    filled-new-array {v9}, [Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v11

    .line 723
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 724
    .line 725
    .line 726
    move-result-object v11

    .line 727
    const-string v14, "index_WorkSpec_last_enqueue_time"

    .line 728
    .line 729
    invoke-direct {v7, v14, v12, v5, v11}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v10, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    new-instance v5, Landroidx/room/util/TableInfo;

    .line 736
    .line 737
    const-string v7, "WorkSpec"

    .line 738
    .line 739
    invoke-direct {v5, v7, v1, v4, v10}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 740
    .line 741
    .line 742
    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    invoke-virtual {v5, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result v4

    .line 750
    if-nez v4, :cond_1

    .line 751
    .line 752
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 753
    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    .line 755
    .line 756
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    .line 758
    .line 759
    const-string v3, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    .line 760
    .line 761
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    invoke-direct {v0, v12, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 778
    .line 779
    .line 780
    return-object v0

    .line 781
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 782
    .line 783
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 784
    .line 785
    .line 786
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 787
    .line 788
    const/16 v19, 0x0

    .line 789
    .line 790
    const/16 v20, 0x1

    .line 791
    .line 792
    const-string v15, "tag"

    .line 793
    .line 794
    const-string v16, "TEXT"

    .line 795
    .line 796
    const/16 v17, 0x1

    .line 797
    .line 798
    const/16 v18, 0x1

    .line 799
    .line 800
    move-object v14, v4

    .line 801
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 802
    .line 803
    .line 804
    const-string v5, "tag"

    .line 805
    .line 806
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 810
    .line 811
    const-string/jumbo v15, "work_spec_id"

    .line 812
    .line 813
    .line 814
    const-string v16, "TEXT"

    .line 815
    .line 816
    const/16 v18, 0x2

    .line 817
    .line 818
    move-object v14, v4

    .line 819
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    new-instance v4, Ljava/util/HashSet;

    .line 826
    .line 827
    const/4 v5, 0x1

    .line 828
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 829
    .line 830
    .line 831
    new-instance v7, Landroidx/room/util/TableInfo$ForeignKey;

    .line 832
    .line 833
    filled-new-array {v3}, [Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v10

    .line 837
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 838
    .line 839
    .line 840
    move-result-object v18

    .line 841
    filled-new-array {v13}, [Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v10

    .line 845
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 846
    .line 847
    .line 848
    move-result-object v19

    .line 849
    const-string v15, "WorkSpec"

    .line 850
    .line 851
    const-string v16, "CASCADE"

    .line 852
    .line 853
    const-string v17, "CASCADE"

    .line 854
    .line 855
    move-object v14, v7

    .line 856
    invoke-direct/range {v14 .. v19}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    new-instance v7, Ljava/util/HashSet;

    .line 863
    .line 864
    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 865
    .line 866
    .line 867
    new-instance v10, Landroidx/room/util/TableInfo$Index;

    .line 868
    .line 869
    filled-new-array {v3}, [Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v11

    .line 873
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 874
    .line 875
    .line 876
    move-result-object v11

    .line 877
    filled-new-array {v9}, [Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v14

    .line 881
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 882
    .line 883
    .line 884
    move-result-object v14

    .line 885
    const-string v15, "index_WorkTag_work_spec_id"

    .line 886
    .line 887
    invoke-direct {v10, v15, v12, v11, v14}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    new-instance v10, Landroidx/room/util/TableInfo;

    .line 894
    .line 895
    const-string v11, "WorkTag"

    .line 896
    .line 897
    invoke-direct {v10, v11, v1, v4, v7}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 898
    .line 899
    .line 900
    invoke-static {v0, v11}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    invoke-virtual {v10, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 905
    .line 906
    .line 907
    move-result v4

    .line 908
    if-nez v4, :cond_2

    .line 909
    .line 910
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 911
    .line 912
    new-instance v2, Ljava/lang/StringBuilder;

    .line 913
    .line 914
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    .line 916
    .line 917
    const-string v3, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    .line 918
    .line 919
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v1

    .line 935
    invoke-direct {v0, v12, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 936
    .line 937
    .line 938
    return-object v0

    .line 939
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    .line 940
    .line 941
    const/4 v4, 0x3

    .line 942
    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 943
    .line 944
    .line 945
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 946
    .line 947
    const/16 v19, 0x0

    .line 948
    .line 949
    const/16 v20, 0x1

    .line 950
    .line 951
    const-string/jumbo v15, "work_spec_id"

    .line 952
    .line 953
    .line 954
    const-string v16, "TEXT"

    .line 955
    .line 956
    const/16 v17, 0x1

    .line 957
    .line 958
    const/16 v18, 0x1

    .line 959
    .line 960
    move-object v14, v4

    .line 961
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 962
    .line 963
    .line 964
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 968
    .line 969
    const-string v26, "0"

    .line 970
    .line 971
    const/16 v27, 0x1

    .line 972
    .line 973
    const-string v22, "generation"

    .line 974
    .line 975
    const-string v23, "INTEGER"

    .line 976
    .line 977
    const/16 v24, 0x1

    .line 978
    .line 979
    const/16 v25, 0x2

    .line 980
    .line 981
    move-object/from16 v21, v4

    .line 982
    .line 983
    invoke-direct/range {v21 .. v27}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 984
    .line 985
    .line 986
    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 990
    .line 991
    const-string v15, "system_id"

    .line 992
    .line 993
    const-string v16, "INTEGER"

    .line 994
    .line 995
    const/16 v18, 0x0

    .line 996
    .line 997
    move-object v14, v4

    .line 998
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 999
    .line 1000
    .line 1001
    const-string v7, "system_id"

    .line 1002
    .line 1003
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    new-instance v4, Ljava/util/HashSet;

    .line 1007
    .line 1008
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1009
    .line 1010
    .line 1011
    new-instance v7, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1012
    .line 1013
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v8

    .line 1017
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v18

    .line 1021
    filled-new-array {v13}, [Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v8

    .line 1025
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v19

    .line 1029
    const-string v15, "WorkSpec"

    .line 1030
    .line 1031
    const-string v16, "CASCADE"

    .line 1032
    .line 1033
    const-string v17, "CASCADE"

    .line 1034
    .line 1035
    move-object v14, v7

    .line 1036
    invoke-direct/range {v14 .. v19}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1040
    .line 1041
    .line 1042
    new-instance v7, Ljava/util/HashSet;

    .line 1043
    .line 1044
    invoke-direct {v7, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 1045
    .line 1046
    .line 1047
    new-instance v8, Landroidx/room/util/TableInfo;

    .line 1048
    .line 1049
    const-string v10, "SystemIdInfo"

    .line 1050
    .line 1051
    invoke-direct {v8, v10, v1, v4, v7}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1052
    .line 1053
    .line 1054
    invoke-static {v0, v10}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v1

    .line 1058
    invoke-virtual {v8, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1059
    .line 1060
    .line 1061
    move-result v4

    .line 1062
    if-nez v4, :cond_3

    .line 1063
    .line 1064
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1065
    .line 1066
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1069
    .line 1070
    .line 1071
    const-string v3, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    .line 1072
    .line 1073
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v1

    .line 1089
    invoke-direct {v0, v12, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    return-object v0

    .line 1093
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    .line 1094
    .line 1095
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1096
    .line 1097
    .line 1098
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 1099
    .line 1100
    const/16 v19, 0x0

    .line 1101
    .line 1102
    const/16 v20, 0x1

    .line 1103
    .line 1104
    const-string v15, "name"

    .line 1105
    .line 1106
    const-string v16, "TEXT"

    .line 1107
    .line 1108
    const/16 v17, 0x1

    .line 1109
    .line 1110
    const/16 v18, 0x1

    .line 1111
    .line 1112
    move-object v14, v4

    .line 1113
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1114
    .line 1115
    .line 1116
    const-string v7, "name"

    .line 1117
    .line 1118
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 1122
    .line 1123
    const-string/jumbo v15, "work_spec_id"

    .line 1124
    .line 1125
    .line 1126
    const-string v16, "TEXT"

    .line 1127
    .line 1128
    const/16 v18, 0x2

    .line 1129
    .line 1130
    move-object v14, v4

    .line 1131
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    .line 1136
    .line 1137
    new-instance v4, Ljava/util/HashSet;

    .line 1138
    .line 1139
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1140
    .line 1141
    .line 1142
    new-instance v7, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1143
    .line 1144
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v8

    .line 1148
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v18

    .line 1152
    filled-new-array {v13}, [Ljava/lang/String;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v8

    .line 1156
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v19

    .line 1160
    const-string v15, "WorkSpec"

    .line 1161
    .line 1162
    const-string v16, "CASCADE"

    .line 1163
    .line 1164
    const-string v17, "CASCADE"

    .line 1165
    .line 1166
    move-object v14, v7

    .line 1167
    invoke-direct/range {v14 .. v19}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1171
    .line 1172
    .line 1173
    new-instance v7, Ljava/util/HashSet;

    .line 1174
    .line 1175
    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1176
    .line 1177
    .line 1178
    new-instance v8, Landroidx/room/util/TableInfo$Index;

    .line 1179
    .line 1180
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v10

    .line 1184
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v10

    .line 1188
    filled-new-array {v9}, [Ljava/lang/String;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v9

    .line 1192
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v9

    .line 1196
    const-string v11, "index_WorkName_work_spec_id"

    .line 1197
    .line 1198
    invoke-direct {v8, v11, v12, v10, v9}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1202
    .line 1203
    .line 1204
    new-instance v8, Landroidx/room/util/TableInfo;

    .line 1205
    .line 1206
    const-string v9, "WorkName"

    .line 1207
    .line 1208
    invoke-direct {v8, v9, v1, v4, v7}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1209
    .line 1210
    .line 1211
    invoke-static {v0, v9}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v1

    .line 1215
    invoke-virtual {v8, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1216
    .line 1217
    .line 1218
    move-result v4

    .line 1219
    if-nez v4, :cond_4

    .line 1220
    .line 1221
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1222
    .line 1223
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1224
    .line 1225
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1226
    .line 1227
    .line 1228
    const-string v3, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    .line 1229
    .line 1230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v1

    .line 1246
    invoke-direct {v0, v12, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 1247
    .line 1248
    .line 1249
    return-object v0

    .line 1250
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    .line 1251
    .line 1252
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1253
    .line 1254
    .line 1255
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 1256
    .line 1257
    const/16 v19, 0x0

    .line 1258
    .line 1259
    const/16 v20, 0x1

    .line 1260
    .line 1261
    const-string/jumbo v15, "work_spec_id"

    .line 1262
    .line 1263
    .line 1264
    const-string v16, "TEXT"

    .line 1265
    .line 1266
    const/16 v17, 0x1

    .line 1267
    .line 1268
    const/16 v18, 0x1

    .line 1269
    .line 1270
    move-object v14, v4

    .line 1271
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    .line 1276
    .line 1277
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 1278
    .line 1279
    const/16 v26, 0x0

    .line 1280
    .line 1281
    const/16 v27, 0x1

    .line 1282
    .line 1283
    const-string v22, "progress"

    .line 1284
    .line 1285
    const-string v23, "BLOB"

    .line 1286
    .line 1287
    const/16 v24, 0x1

    .line 1288
    .line 1289
    const/16 v25, 0x0

    .line 1290
    .line 1291
    move-object/from16 v21, v4

    .line 1292
    .line 1293
    invoke-direct/range {v21 .. v27}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1294
    .line 1295
    .line 1296
    const-string v7, "progress"

    .line 1297
    .line 1298
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    new-instance v4, Ljava/util/HashSet;

    .line 1302
    .line 1303
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 1304
    .line 1305
    .line 1306
    new-instance v7, Landroidx/room/util/TableInfo$ForeignKey;

    .line 1307
    .line 1308
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v3

    .line 1312
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v18

    .line 1316
    filled-new-array {v13}, [Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v3

    .line 1320
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v19

    .line 1324
    const-string v15, "WorkSpec"

    .line 1325
    .line 1326
    const-string v16, "CASCADE"

    .line 1327
    .line 1328
    const-string v17, "CASCADE"

    .line 1329
    .line 1330
    move-object v14, v7

    .line 1331
    invoke-direct/range {v14 .. v19}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1335
    .line 1336
    .line 1337
    new-instance v3, Ljava/util/HashSet;

    .line 1338
    .line 1339
    invoke-direct {v3, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 1340
    .line 1341
    .line 1342
    new-instance v7, Landroidx/room/util/TableInfo;

    .line 1343
    .line 1344
    const-string v8, "WorkProgress"

    .line 1345
    .line 1346
    invoke-direct {v7, v8, v1, v4, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1347
    .line 1348
    .line 1349
    invoke-static {v0, v8}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v1

    .line 1353
    invoke-virtual {v7, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v3

    .line 1357
    if-nez v3, :cond_5

    .line 1358
    .line 1359
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1360
    .line 1361
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1362
    .line 1363
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1364
    .line 1365
    .line 1366
    const-string v3, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    .line 1367
    .line 1368
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v1

    .line 1384
    invoke-direct {v0, v12, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 1385
    .line 1386
    .line 1387
    return-object v0

    .line 1388
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    .line 1389
    .line 1390
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1391
    .line 1392
    .line 1393
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 1394
    .line 1395
    const/16 v18, 0x0

    .line 1396
    .line 1397
    const/16 v19, 0x1

    .line 1398
    .line 1399
    const-string v14, "key"

    .line 1400
    .line 1401
    const-string v15, "TEXT"

    .line 1402
    .line 1403
    const/16 v16, 0x1

    .line 1404
    .line 1405
    const/16 v17, 0x1

    .line 1406
    .line 1407
    move-object v13, v2

    .line 1408
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1409
    .line 1410
    .line 1411
    const-string v3, "key"

    .line 1412
    .line 1413
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    new-instance v2, Landroidx/room/util/TableInfo$Column;

    .line 1417
    .line 1418
    const-string v14, "long_value"

    .line 1419
    .line 1420
    const-string v15, "INTEGER"

    .line 1421
    .line 1422
    const/16 v16, 0x0

    .line 1423
    .line 1424
    const/16 v17, 0x0

    .line 1425
    .line 1426
    move-object v13, v2

    .line 1427
    invoke-direct/range {v13 .. v19}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1428
    .line 1429
    .line 1430
    const-string v3, "long_value"

    .line 1431
    .line 1432
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    new-instance v2, Ljava/util/HashSet;

    .line 1436
    .line 1437
    invoke-direct {v2, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 1438
    .line 1439
    .line 1440
    new-instance v3, Ljava/util/HashSet;

    .line 1441
    .line 1442
    invoke-direct {v3, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 1443
    .line 1444
    .line 1445
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 1446
    .line 1447
    const-string v7, "Preference"

    .line 1448
    .line 1449
    invoke-direct {v4, v7, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 1450
    .line 1451
    .line 1452
    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v0

    .line 1456
    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 1457
    .line 1458
    .line 1459
    move-result v1

    .line 1460
    if-nez v1, :cond_6

    .line 1461
    .line 1462
    new-instance v1, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1463
    .line 1464
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1465
    .line 1466
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1467
    .line 1468
    .line 1469
    const-string v3, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    .line 1470
    .line 1471
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1481
    .line 1482
    .line 1483
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v0

    .line 1487
    invoke-direct {v1, v12, v0}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 1488
    .line 1489
    .line 1490
    return-object v1

    .line 1491
    :cond_6
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 1492
    .line 1493
    const/4 v1, 0x0

    .line 1494
    invoke-direct {v0, v5, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 1495
    .line 1496
    .line 1497
    return-object v0
.end method
