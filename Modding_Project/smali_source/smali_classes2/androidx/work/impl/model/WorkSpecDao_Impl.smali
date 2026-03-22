.class public final Landroidx/work/impl/model/WorkSpecDao_Impl;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/model/WorkSpecDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetLastEnqueuedTime:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfWorkSpec:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$1;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$1;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;

    .line 12
    .line 13
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__updateAdapterOfWorkSpec:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 19
    .line 20
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 26
    .line 27
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$4;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$4;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

    .line 33
    .line 34
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$5;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$5;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

    .line 40
    .line 41
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$6;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$6;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    .line 47
    .line 48
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$7;

    .line 49
    .line 50
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$7;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Landroidx/room/SharedSQLiteStatement;

    .line 54
    .line 55
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$8;

    .line 56
    .line 57
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$8;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 61
    .line 62
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$9;

    .line 63
    .line 64
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$9;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 68
    .line 69
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$10;

    .line 70
    .line 71
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$10;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    .line 75
    .line 76
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;

    .line 77
    .line 78
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$11;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    .line 82
    .line 83
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$12;

    .line 84
    .line 85
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$12;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    .line 89
    .line 90
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$13;

    .line 91
    .line 92
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$13;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

    .line 96
    .line 97
    return-void
.end method

.method private __fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/work/Data;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x3e7

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-le v1, v2, :cond_4

    .line 20
    .line 21
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 22
    .line 23
    invoke-direct {v0, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    move v4, v3

    .line 31
    move v5, v4

    .line 32
    :cond_1
    :goto_0
    if-ge v4, v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1, v4}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v4}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    if-ne v5, v2, :cond_1

    .line 54
    .line 55
    invoke-direct {p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 59
    .line 60
    invoke-direct {v0, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 61
    .line 62
    .line 63
    move v5, v3

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    if-lez v5, :cond_3

    .line 66
    .line 67
    invoke-direct {p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void

    .line 71
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 85
    .line 86
    .line 87
    const-string v4, ")"

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/4 v2, 0x1

    .line 105
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_6

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Ljava/lang/String;

    .line 116
    .line 117
    if-nez v4, :cond_5

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    invoke-virtual {v1, v2, v4}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    invoke-static {v0, v1, v3, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :try_start_0
    const-string/jumbo v1, "work_spec_id"

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    const/4 v4, -0x1

    .line 144
    if-ne v1, v4, :cond_7

    .line 145
    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_9

    .line 155
    .line 156
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {p1, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Ljava/util/ArrayList;

    .line 165
    .line 166
    if-eqz v4, :cond_7

    .line 167
    .line 168
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_8

    .line 173
    .line 174
    move-object v5, v2

    .line 175
    goto :goto_4

    .line 176
    :cond_8
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    :goto_4
    invoke-static {v5}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :catchall_0
    move-exception p1

    .line 189
    goto :goto_5

    .line 190
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 195
    .line 196
    .line 197
    throw p1
.end method

.method private __fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x3e7

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-le v1, v2, :cond_4

    .line 20
    .line 21
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 22
    .line 23
    invoke-direct {v0, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    move v4, v3

    .line 31
    move v5, v4

    .line 32
    :cond_1
    :goto_0
    if-ge v4, v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1, v4}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v4}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v0, v6, v7}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    if-ne v5, v2, :cond_1

    .line 54
    .line 55
    invoke-direct {p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 59
    .line 60
    invoke-direct {v0, v2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 61
    .line 62
    .line 63
    move v5, v3

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    if-lez v5, :cond_3

    .line 66
    .line 67
    invoke-direct {p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void

    .line 71
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 85
    .line 86
    .line 87
    const-string v4, ")"

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/4 v2, 0x1

    .line 105
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_6

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Ljava/lang/String;

    .line 116
    .line 117
    if-nez v4, :cond_5

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    invoke-virtual {v1, v2, v4}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    invoke-static {v0, v1, v3, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :try_start_0
    const-string/jumbo v1, "work_spec_id"

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    const/4 v4, -0x1

    .line 144
    if-ne v1, v4, :cond_7

    .line 145
    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_9

    .line 155
    .line 156
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {p1, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Ljava/util/ArrayList;

    .line 165
    .line 166
    if-eqz v4, :cond_7

    .line 167
    .line 168
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_8

    .line 173
    .line 174
    move-object v5, v2

    .line 175
    goto :goto_4

    .line 176
    :cond_8
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    :goto_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catchall_0
    move-exception p1

    .line 185
    goto :goto_5

    .line 186
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 191
    .line 192
    .line 193
    throw p1
.end method

.method static synthetic access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
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


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public getAllEligibleWorkSpecsForScheduling(I)Ljava/util/List;
    .locals 70
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    move/from16 v0, p1

    .line 11
    .line 12
    int-to-long v4, v0

    .line 13
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 19
    .line 20
    .line 21
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    :try_start_0
    const-string v0, "id"

    .line 30
    .line 31
    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const-string v7, "state"

    .line 36
    .line 37
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const-string/jumbo v8, "worker_class_name"

    .line 42
    .line 43
    .line 44
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const-string v9, "input_merger_class_name"

    .line 49
    .line 50
    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    const-string v10, "input"

    .line 55
    .line 56
    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    const-string v11, "output"

    .line 61
    .line 62
    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    const-string v12, "initial_delay"

    .line 67
    .line 68
    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    const-string v13, "interval_duration"

    .line 73
    .line 74
    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    const-string v14, "flex_duration"

    .line 79
    .line 80
    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v14

    .line 84
    const-string v15, "run_attempt_count"

    .line 85
    .line 86
    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    const-string v2, "backoff_policy"

    .line 91
    .line 92
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    const-string v4, "backoff_delay_duration"

    .line 97
    .line 98
    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    const-string v5, "last_enqueue_time"

    .line 103
    .line 104
    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    const-string v1, "minimum_retention_duration"

    .line 109
    .line 110
    invoke-static {v6, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    move-object/from16 v16, v3

    .line 115
    .line 116
    :try_start_1
    const-string v3, "schedule_requested_at"

    .line 117
    .line 118
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    move/from16 v17, v3

    .line 123
    .line 124
    const-string v3, "run_in_foreground"

    .line 125
    .line 126
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    move/from16 v18, v3

    .line 131
    .line 132
    const-string v3, "out_of_quota_policy"

    .line 133
    .line 134
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    move/from16 v19, v3

    .line 139
    .line 140
    const-string v3, "period_count"

    .line 141
    .line 142
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    move/from16 v20, v3

    .line 147
    .line 148
    const-string v3, "generation"

    .line 149
    .line 150
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    move/from16 v21, v3

    .line 155
    .line 156
    const-string v3, "required_network_type"

    .line 157
    .line 158
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    move/from16 v22, v3

    .line 163
    .line 164
    const-string v3, "requires_charging"

    .line 165
    .line 166
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    move/from16 v23, v3

    .line 171
    .line 172
    const-string v3, "requires_device_idle"

    .line 173
    .line 174
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    move/from16 v24, v3

    .line 179
    .line 180
    const-string v3, "requires_battery_not_low"

    .line 181
    .line 182
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    move/from16 v25, v3

    .line 187
    .line 188
    const-string v3, "requires_storage_not_low"

    .line 189
    .line 190
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    move/from16 v26, v3

    .line 195
    .line 196
    const-string/jumbo v3, "trigger_content_update_delay"

    .line 197
    .line 198
    .line 199
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    move/from16 v27, v3

    .line 204
    .line 205
    const-string/jumbo v3, "trigger_max_content_delay"

    .line 206
    .line 207
    .line 208
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    move/from16 v28, v3

    .line 213
    .line 214
    const-string v3, "content_uri_triggers"

    .line 215
    .line 216
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    move/from16 v29, v3

    .line 221
    .line 222
    new-instance v3, Ljava/util/ArrayList;

    .line 223
    .line 224
    move/from16 v30, v1

    .line 225
    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .line 232
    .line 233
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_b

    .line 238
    .line 239
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_0

    .line 244
    .line 245
    const/16 v32, 0x0

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    move-object/from16 v32, v1

    .line 253
    .line 254
    :goto_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 259
    .line 260
    .line 261
    move-result-object v33

    .line 262
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_1

    .line 267
    .line 268
    const/16 v34, 0x0

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    move-object/from16 v34, v1

    .line 276
    .line 277
    :goto_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eqz v1, :cond_2

    .line 282
    .line 283
    const/16 v35, 0x0

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    move-object/from16 v35, v1

    .line 291
    .line 292
    :goto_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_3

    .line 297
    .line 298
    const/4 v1, 0x0

    .line 299
    goto :goto_4

    .line 300
    :cond_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    :goto_4
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 305
    .line 306
    .line 307
    move-result-object v36

    .line 308
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-eqz v1, :cond_4

    .line 313
    .line 314
    const/4 v1, 0x0

    .line 315
    goto :goto_5

    .line 316
    :cond_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getBlob(I)[B

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    :goto_5
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 321
    .line 322
    .line 323
    move-result-object v37

    .line 324
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v38

    .line 328
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 329
    .line 330
    .line 331
    move-result-wide v40

    .line 332
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 333
    .line 334
    .line 335
    move-result-wide v42

    .line 336
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 337
    .line 338
    .line 339
    move-result v45

    .line 340
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 345
    .line 346
    .line 347
    move-result-object v46

    .line 348
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 349
    .line 350
    .line 351
    move-result-wide v47

    .line 352
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 353
    .line 354
    .line 355
    move-result-wide v49

    .line 356
    move/from16 v1, v30

    .line 357
    .line 358
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 359
    .line 360
    .line 361
    move-result-wide v51

    .line 362
    move/from16 v30, v0

    .line 363
    .line 364
    move/from16 v0, v17

    .line 365
    .line 366
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 367
    .line 368
    .line 369
    move-result-wide v53

    .line 370
    move/from16 v17, v0

    .line 371
    .line 372
    move/from16 v0, v18

    .line 373
    .line 374
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 375
    .line 376
    .line 377
    move-result v18

    .line 378
    if-eqz v18, :cond_5

    .line 379
    .line 380
    move/from16 v18, v0

    .line 381
    .line 382
    move/from16 v0, v19

    .line 383
    .line 384
    const/16 v55, 0x1

    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_5
    move/from16 v18, v0

    .line 388
    .line 389
    move/from16 v0, v19

    .line 390
    .line 391
    const/16 v55, 0x0

    .line 392
    .line 393
    :goto_6
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 394
    .line 395
    .line 396
    move-result v19

    .line 397
    invoke-static/range {v19 .. v19}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 398
    .line 399
    .line 400
    move-result-object v56

    .line 401
    move/from16 v19, v0

    .line 402
    .line 403
    move/from16 v0, v20

    .line 404
    .line 405
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 406
    .line 407
    .line 408
    move-result v57

    .line 409
    move/from16 v20, v0

    .line 410
    .line 411
    move/from16 v0, v21

    .line 412
    .line 413
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 414
    .line 415
    .line 416
    move-result v58

    .line 417
    move/from16 v21, v0

    .line 418
    .line 419
    move/from16 v0, v22

    .line 420
    .line 421
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 422
    .line 423
    .line 424
    move-result v22

    .line 425
    invoke-static/range {v22 .. v22}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 426
    .line 427
    .line 428
    move-result-object v60

    .line 429
    move/from16 v22, v0

    .line 430
    .line 431
    move/from16 v0, v23

    .line 432
    .line 433
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 434
    .line 435
    .line 436
    move-result v23

    .line 437
    if-eqz v23, :cond_6

    .line 438
    .line 439
    move/from16 v23, v0

    .line 440
    .line 441
    move/from16 v0, v24

    .line 442
    .line 443
    const/16 v61, 0x1

    .line 444
    .line 445
    goto :goto_7

    .line 446
    :cond_6
    move/from16 v23, v0

    .line 447
    .line 448
    move/from16 v0, v24

    .line 449
    .line 450
    const/16 v61, 0x0

    .line 451
    .line 452
    :goto_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 453
    .line 454
    .line 455
    move-result v24

    .line 456
    if-eqz v24, :cond_7

    .line 457
    .line 458
    move/from16 v24, v0

    .line 459
    .line 460
    move/from16 v0, v25

    .line 461
    .line 462
    const/16 v62, 0x1

    .line 463
    .line 464
    goto :goto_8

    .line 465
    :cond_7
    move/from16 v24, v0

    .line 466
    .line 467
    move/from16 v0, v25

    .line 468
    .line 469
    const/16 v62, 0x0

    .line 470
    .line 471
    :goto_8
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 472
    .line 473
    .line 474
    move-result v25

    .line 475
    if-eqz v25, :cond_8

    .line 476
    .line 477
    move/from16 v25, v0

    .line 478
    .line 479
    move/from16 v0, v26

    .line 480
    .line 481
    const/16 v63, 0x1

    .line 482
    .line 483
    goto :goto_9

    .line 484
    :cond_8
    move/from16 v25, v0

    .line 485
    .line 486
    move/from16 v0, v26

    .line 487
    .line 488
    const/16 v63, 0x0

    .line 489
    .line 490
    :goto_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 491
    .line 492
    .line 493
    move-result v26

    .line 494
    if-eqz v26, :cond_9

    .line 495
    .line 496
    move/from16 v26, v0

    .line 497
    .line 498
    move/from16 v0, v27

    .line 499
    .line 500
    const/16 v64, 0x1

    .line 501
    .line 502
    goto :goto_a

    .line 503
    :cond_9
    move/from16 v26, v0

    .line 504
    .line 505
    move/from16 v0, v27

    .line 506
    .line 507
    const/16 v64, 0x0

    .line 508
    .line 509
    :goto_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 510
    .line 511
    .line 512
    move-result-wide v65

    .line 513
    move/from16 v27, v0

    .line 514
    .line 515
    move/from16 v0, v28

    .line 516
    .line 517
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 518
    .line 519
    .line 520
    move-result-wide v67

    .line 521
    move/from16 v28, v0

    .line 522
    .line 523
    move/from16 v0, v29

    .line 524
    .line 525
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 526
    .line 527
    .line 528
    move-result v29

    .line 529
    if-eqz v29, :cond_a

    .line 530
    .line 531
    const/16 v29, 0x0

    .line 532
    .line 533
    goto :goto_b

    .line 534
    :cond_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 535
    .line 536
    .line 537
    move-result-object v29

    .line 538
    :goto_b
    invoke-static/range {v29 .. v29}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 539
    .line 540
    .line 541
    move-result-object v69

    .line 542
    new-instance v44, Landroidx/work/Constraints;

    .line 543
    .line 544
    move-object/from16 v59, v44

    .line 545
    .line 546
    invoke-direct/range {v59 .. v69}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 547
    .line 548
    .line 549
    move/from16 v29, v0

    .line 550
    .line 551
    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    .line 552
    .line 553
    move-object/from16 v31, v0

    .line 554
    .line 555
    invoke-direct/range {v31 .. v58}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    .line 556
    .line 557
    .line 558
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    .line 560
    .line 561
    move/from16 v0, v30

    .line 562
    .line 563
    move/from16 v30, v1

    .line 564
    .line 565
    goto/16 :goto_0

    .line 566
    .line 567
    :catchall_0
    move-exception v0

    .line 568
    goto :goto_c

    .line 569
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 570
    .line 571
    .line 572
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 573
    .line 574
    .line 575
    return-object v3

    .line 576
    :catchall_1
    move-exception v0

    .line 577
    move-object/from16 v16, v3

    .line 578
    .line 579
    :goto_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 580
    .line 581
    .line 582
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 583
    .line 584
    .line 585
    throw v0
.end method

.method public getAllUnfinishedWork()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    move-object v5, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    :goto_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 57
    .line 58
    .line 59
    return-object v4

    .line 60
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public getAllWorkSpecIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT id FROM workspec"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    move-object v5, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    :goto_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 57
    .line 58
    .line 59
    return-object v4

    .line 60
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public getAllWorkSpecIdsLiveData()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT id FROM workspec"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string/jumbo v2, "workspec"

    .line 15
    .line 16
    .line 17
    filled-new-array {v2}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$14;

    .line 22
    .line 23
    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$14;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {v1, v2, v0, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public getEligibleWorkForScheduling(I)Ljava/util/List;
    .locals 70
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    move/from16 v0, p1

    .line 11
    .line 12
    int-to-long v4, v0

    .line 13
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 19
    .line 20
    .line 21
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    :try_start_0
    const-string v0, "id"

    .line 30
    .line 31
    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const-string v7, "state"

    .line 36
    .line 37
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const-string/jumbo v8, "worker_class_name"

    .line 42
    .line 43
    .line 44
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const-string v9, "input_merger_class_name"

    .line 49
    .line 50
    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    const-string v10, "input"

    .line 55
    .line 56
    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    const-string v11, "output"

    .line 61
    .line 62
    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    const-string v12, "initial_delay"

    .line 67
    .line 68
    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    const-string v13, "interval_duration"

    .line 73
    .line 74
    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    const-string v14, "flex_duration"

    .line 79
    .line 80
    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v14

    .line 84
    const-string v15, "run_attempt_count"

    .line 85
    .line 86
    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    const-string v2, "backoff_policy"

    .line 91
    .line 92
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    const-string v4, "backoff_delay_duration"

    .line 97
    .line 98
    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    const-string v5, "last_enqueue_time"

    .line 103
    .line 104
    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    const-string v1, "minimum_retention_duration"

    .line 109
    .line 110
    invoke-static {v6, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    move-object/from16 v16, v3

    .line 115
    .line 116
    :try_start_1
    const-string v3, "schedule_requested_at"

    .line 117
    .line 118
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    move/from16 v17, v3

    .line 123
    .line 124
    const-string v3, "run_in_foreground"

    .line 125
    .line 126
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    move/from16 v18, v3

    .line 131
    .line 132
    const-string v3, "out_of_quota_policy"

    .line 133
    .line 134
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    move/from16 v19, v3

    .line 139
    .line 140
    const-string v3, "period_count"

    .line 141
    .line 142
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    move/from16 v20, v3

    .line 147
    .line 148
    const-string v3, "generation"

    .line 149
    .line 150
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    move/from16 v21, v3

    .line 155
    .line 156
    const-string v3, "required_network_type"

    .line 157
    .line 158
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    move/from16 v22, v3

    .line 163
    .line 164
    const-string v3, "requires_charging"

    .line 165
    .line 166
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    move/from16 v23, v3

    .line 171
    .line 172
    const-string v3, "requires_device_idle"

    .line 173
    .line 174
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    move/from16 v24, v3

    .line 179
    .line 180
    const-string v3, "requires_battery_not_low"

    .line 181
    .line 182
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    move/from16 v25, v3

    .line 187
    .line 188
    const-string v3, "requires_storage_not_low"

    .line 189
    .line 190
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    move/from16 v26, v3

    .line 195
    .line 196
    const-string/jumbo v3, "trigger_content_update_delay"

    .line 197
    .line 198
    .line 199
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    move/from16 v27, v3

    .line 204
    .line 205
    const-string/jumbo v3, "trigger_max_content_delay"

    .line 206
    .line 207
    .line 208
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    move/from16 v28, v3

    .line 213
    .line 214
    const-string v3, "content_uri_triggers"

    .line 215
    .line 216
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    move/from16 v29, v3

    .line 221
    .line 222
    new-instance v3, Ljava/util/ArrayList;

    .line 223
    .line 224
    move/from16 v30, v1

    .line 225
    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .line 232
    .line 233
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_b

    .line 238
    .line 239
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_0

    .line 244
    .line 245
    const/16 v32, 0x0

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    move-object/from16 v32, v1

    .line 253
    .line 254
    :goto_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 259
    .line 260
    .line 261
    move-result-object v33

    .line 262
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_1

    .line 267
    .line 268
    const/16 v34, 0x0

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    move-object/from16 v34, v1

    .line 276
    .line 277
    :goto_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eqz v1, :cond_2

    .line 282
    .line 283
    const/16 v35, 0x0

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    move-object/from16 v35, v1

    .line 291
    .line 292
    :goto_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_3

    .line 297
    .line 298
    const/4 v1, 0x0

    .line 299
    goto :goto_4

    .line 300
    :cond_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    :goto_4
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 305
    .line 306
    .line 307
    move-result-object v36

    .line 308
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-eqz v1, :cond_4

    .line 313
    .line 314
    const/4 v1, 0x0

    .line 315
    goto :goto_5

    .line 316
    :cond_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getBlob(I)[B

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    :goto_5
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 321
    .line 322
    .line 323
    move-result-object v37

    .line 324
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v38

    .line 328
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 329
    .line 330
    .line 331
    move-result-wide v40

    .line 332
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 333
    .line 334
    .line 335
    move-result-wide v42

    .line 336
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 337
    .line 338
    .line 339
    move-result v45

    .line 340
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 345
    .line 346
    .line 347
    move-result-object v46

    .line 348
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 349
    .line 350
    .line 351
    move-result-wide v47

    .line 352
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 353
    .line 354
    .line 355
    move-result-wide v49

    .line 356
    move/from16 v1, v30

    .line 357
    .line 358
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 359
    .line 360
    .line 361
    move-result-wide v51

    .line 362
    move/from16 v30, v0

    .line 363
    .line 364
    move/from16 v0, v17

    .line 365
    .line 366
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 367
    .line 368
    .line 369
    move-result-wide v53

    .line 370
    move/from16 v17, v0

    .line 371
    .line 372
    move/from16 v0, v18

    .line 373
    .line 374
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 375
    .line 376
    .line 377
    move-result v18

    .line 378
    if-eqz v18, :cond_5

    .line 379
    .line 380
    move/from16 v18, v0

    .line 381
    .line 382
    move/from16 v0, v19

    .line 383
    .line 384
    const/16 v55, 0x1

    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_5
    move/from16 v18, v0

    .line 388
    .line 389
    move/from16 v0, v19

    .line 390
    .line 391
    const/16 v55, 0x0

    .line 392
    .line 393
    :goto_6
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 394
    .line 395
    .line 396
    move-result v19

    .line 397
    invoke-static/range {v19 .. v19}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 398
    .line 399
    .line 400
    move-result-object v56

    .line 401
    move/from16 v19, v0

    .line 402
    .line 403
    move/from16 v0, v20

    .line 404
    .line 405
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 406
    .line 407
    .line 408
    move-result v57

    .line 409
    move/from16 v20, v0

    .line 410
    .line 411
    move/from16 v0, v21

    .line 412
    .line 413
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 414
    .line 415
    .line 416
    move-result v58

    .line 417
    move/from16 v21, v0

    .line 418
    .line 419
    move/from16 v0, v22

    .line 420
    .line 421
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 422
    .line 423
    .line 424
    move-result v22

    .line 425
    invoke-static/range {v22 .. v22}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 426
    .line 427
    .line 428
    move-result-object v60

    .line 429
    move/from16 v22, v0

    .line 430
    .line 431
    move/from16 v0, v23

    .line 432
    .line 433
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 434
    .line 435
    .line 436
    move-result v23

    .line 437
    if-eqz v23, :cond_6

    .line 438
    .line 439
    move/from16 v23, v0

    .line 440
    .line 441
    move/from16 v0, v24

    .line 442
    .line 443
    const/16 v61, 0x1

    .line 444
    .line 445
    goto :goto_7

    .line 446
    :cond_6
    move/from16 v23, v0

    .line 447
    .line 448
    move/from16 v0, v24

    .line 449
    .line 450
    const/16 v61, 0x0

    .line 451
    .line 452
    :goto_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 453
    .line 454
    .line 455
    move-result v24

    .line 456
    if-eqz v24, :cond_7

    .line 457
    .line 458
    move/from16 v24, v0

    .line 459
    .line 460
    move/from16 v0, v25

    .line 461
    .line 462
    const/16 v62, 0x1

    .line 463
    .line 464
    goto :goto_8

    .line 465
    :cond_7
    move/from16 v24, v0

    .line 466
    .line 467
    move/from16 v0, v25

    .line 468
    .line 469
    const/16 v62, 0x0

    .line 470
    .line 471
    :goto_8
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 472
    .line 473
    .line 474
    move-result v25

    .line 475
    if-eqz v25, :cond_8

    .line 476
    .line 477
    move/from16 v25, v0

    .line 478
    .line 479
    move/from16 v0, v26

    .line 480
    .line 481
    const/16 v63, 0x1

    .line 482
    .line 483
    goto :goto_9

    .line 484
    :cond_8
    move/from16 v25, v0

    .line 485
    .line 486
    move/from16 v0, v26

    .line 487
    .line 488
    const/16 v63, 0x0

    .line 489
    .line 490
    :goto_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 491
    .line 492
    .line 493
    move-result v26

    .line 494
    if-eqz v26, :cond_9

    .line 495
    .line 496
    move/from16 v26, v0

    .line 497
    .line 498
    move/from16 v0, v27

    .line 499
    .line 500
    const/16 v64, 0x1

    .line 501
    .line 502
    goto :goto_a

    .line 503
    :cond_9
    move/from16 v26, v0

    .line 504
    .line 505
    move/from16 v0, v27

    .line 506
    .line 507
    const/16 v64, 0x0

    .line 508
    .line 509
    :goto_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 510
    .line 511
    .line 512
    move-result-wide v65

    .line 513
    move/from16 v27, v0

    .line 514
    .line 515
    move/from16 v0, v28

    .line 516
    .line 517
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 518
    .line 519
    .line 520
    move-result-wide v67

    .line 521
    move/from16 v28, v0

    .line 522
    .line 523
    move/from16 v0, v29

    .line 524
    .line 525
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 526
    .line 527
    .line 528
    move-result v29

    .line 529
    if-eqz v29, :cond_a

    .line 530
    .line 531
    const/16 v29, 0x0

    .line 532
    .line 533
    goto :goto_b

    .line 534
    :cond_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 535
    .line 536
    .line 537
    move-result-object v29

    .line 538
    :goto_b
    invoke-static/range {v29 .. v29}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 539
    .line 540
    .line 541
    move-result-object v69

    .line 542
    new-instance v44, Landroidx/work/Constraints;

    .line 543
    .line 544
    move-object/from16 v59, v44

    .line 545
    .line 546
    invoke-direct/range {v59 .. v69}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 547
    .line 548
    .line 549
    move/from16 v29, v0

    .line 550
    .line 551
    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    .line 552
    .line 553
    move-object/from16 v31, v0

    .line 554
    .line 555
    invoke-direct/range {v31 .. v58}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    .line 556
    .line 557
    .line 558
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    .line 560
    .line 561
    move/from16 v0, v30

    .line 562
    .line 563
    move/from16 v30, v1

    .line 564
    .line 565
    goto/16 :goto_0

    .line 566
    .line 567
    :catchall_0
    move-exception v0

    .line 568
    goto :goto_c

    .line 569
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 570
    .line 571
    .line 572
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 573
    .line 574
    .line 575
    return-object v3

    .line 576
    :catchall_1
    move-exception v0

    .line 577
    move-object/from16 v16, v3

    .line 578
    .line 579
    :goto_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 580
    .line 581
    .line 582
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 583
    .line 584
    .line 585
    throw v0
.end method

.method public getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/Data;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    move-object v4, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :goto_2
    invoke-static {v4}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 71
    .line 72
    .line 73
    return-object v3

    .line 74
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 78
    .line 79
    .line 80
    throw v1
.end method

.method public getRecentlyCompletedWork(J)Ljava/util/List;
    .locals 70
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    move-wide/from16 v4, p1

    .line 11
    .line 12
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    :try_start_0
    const-string v0, "id"

    .line 29
    .line 30
    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v7, "state"

    .line 35
    .line 36
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const-string/jumbo v8, "worker_class_name"

    .line 41
    .line 42
    .line 43
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    const-string v9, "input_merger_class_name"

    .line 48
    .line 49
    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    const-string v10, "input"

    .line 54
    .line 55
    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    const-string v11, "output"

    .line 60
    .line 61
    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    const-string v12, "initial_delay"

    .line 66
    .line 67
    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    const-string v13, "interval_duration"

    .line 72
    .line 73
    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    const-string v14, "flex_duration"

    .line 78
    .line 79
    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v14

    .line 83
    const-string v15, "run_attempt_count"

    .line 84
    .line 85
    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v15

    .line 89
    const-string v2, "backoff_policy"

    .line 90
    .line 91
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const-string v4, "backoff_delay_duration"

    .line 96
    .line 97
    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    const-string v5, "last_enqueue_time"

    .line 102
    .line 103
    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    const-string v1, "minimum_retention_duration"

    .line 108
    .line 109
    invoke-static {v6, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    move-object/from16 v16, v3

    .line 114
    .line 115
    :try_start_1
    const-string v3, "schedule_requested_at"

    .line 116
    .line 117
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    move/from16 v17, v3

    .line 122
    .line 123
    const-string v3, "run_in_foreground"

    .line 124
    .line 125
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    move/from16 v18, v3

    .line 130
    .line 131
    const-string v3, "out_of_quota_policy"

    .line 132
    .line 133
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    move/from16 v19, v3

    .line 138
    .line 139
    const-string v3, "period_count"

    .line 140
    .line 141
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    move/from16 v20, v3

    .line 146
    .line 147
    const-string v3, "generation"

    .line 148
    .line 149
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    move/from16 v21, v3

    .line 154
    .line 155
    const-string v3, "required_network_type"

    .line 156
    .line 157
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    move/from16 v22, v3

    .line 162
    .line 163
    const-string v3, "requires_charging"

    .line 164
    .line 165
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    move/from16 v23, v3

    .line 170
    .line 171
    const-string v3, "requires_device_idle"

    .line 172
    .line 173
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    move/from16 v24, v3

    .line 178
    .line 179
    const-string v3, "requires_battery_not_low"

    .line 180
    .line 181
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    move/from16 v25, v3

    .line 186
    .line 187
    const-string v3, "requires_storage_not_low"

    .line 188
    .line 189
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    move/from16 v26, v3

    .line 194
    .line 195
    const-string/jumbo v3, "trigger_content_update_delay"

    .line 196
    .line 197
    .line 198
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    move/from16 v27, v3

    .line 203
    .line 204
    const-string/jumbo v3, "trigger_max_content_delay"

    .line 205
    .line 206
    .line 207
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    move/from16 v28, v3

    .line 212
    .line 213
    const-string v3, "content_uri_triggers"

    .line 214
    .line 215
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    move/from16 v29, v3

    .line 220
    .line 221
    new-instance v3, Ljava/util/ArrayList;

    .line 222
    .line 223
    move/from16 v30, v1

    .line 224
    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    .line 231
    .line 232
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_b

    .line 237
    .line 238
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_0

    .line 243
    .line 244
    const/16 v32, 0x0

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    move-object/from16 v32, v1

    .line 252
    .line 253
    :goto_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 258
    .line 259
    .line 260
    move-result-object v33

    .line 261
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_1

    .line 266
    .line 267
    const/16 v34, 0x0

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    move-object/from16 v34, v1

    .line 275
    .line 276
    :goto_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_2

    .line 281
    .line 282
    const/16 v35, 0x0

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    move-object/from16 v35, v1

    .line 290
    .line 291
    :goto_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_3

    .line 296
    .line 297
    const/4 v1, 0x0

    .line 298
    goto :goto_4

    .line 299
    :cond_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    :goto_4
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 304
    .line 305
    .line 306
    move-result-object v36

    .line 307
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_4

    .line 312
    .line 313
    const/4 v1, 0x0

    .line 314
    goto :goto_5

    .line 315
    :cond_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getBlob(I)[B

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    :goto_5
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 320
    .line 321
    .line 322
    move-result-object v37

    .line 323
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 324
    .line 325
    .line 326
    move-result-wide v38

    .line 327
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 328
    .line 329
    .line 330
    move-result-wide v40

    .line 331
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 332
    .line 333
    .line 334
    move-result-wide v42

    .line 335
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 336
    .line 337
    .line 338
    move-result v45

    .line 339
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 344
    .line 345
    .line 346
    move-result-object v46

    .line 347
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 348
    .line 349
    .line 350
    move-result-wide v47

    .line 351
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 352
    .line 353
    .line 354
    move-result-wide v49

    .line 355
    move/from16 v1, v30

    .line 356
    .line 357
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 358
    .line 359
    .line 360
    move-result-wide v51

    .line 361
    move/from16 v30, v0

    .line 362
    .line 363
    move/from16 v0, v17

    .line 364
    .line 365
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 366
    .line 367
    .line 368
    move-result-wide v53

    .line 369
    move/from16 v17, v0

    .line 370
    .line 371
    move/from16 v0, v18

    .line 372
    .line 373
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 374
    .line 375
    .line 376
    move-result v18

    .line 377
    if-eqz v18, :cond_5

    .line 378
    .line 379
    move/from16 v18, v0

    .line 380
    .line 381
    move/from16 v0, v19

    .line 382
    .line 383
    const/16 v55, 0x1

    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_5
    move/from16 v18, v0

    .line 387
    .line 388
    move/from16 v0, v19

    .line 389
    .line 390
    const/16 v55, 0x0

    .line 391
    .line 392
    :goto_6
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 393
    .line 394
    .line 395
    move-result v19

    .line 396
    invoke-static/range {v19 .. v19}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 397
    .line 398
    .line 399
    move-result-object v56

    .line 400
    move/from16 v19, v0

    .line 401
    .line 402
    move/from16 v0, v20

    .line 403
    .line 404
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 405
    .line 406
    .line 407
    move-result v57

    .line 408
    move/from16 v20, v0

    .line 409
    .line 410
    move/from16 v0, v21

    .line 411
    .line 412
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 413
    .line 414
    .line 415
    move-result v58

    .line 416
    move/from16 v21, v0

    .line 417
    .line 418
    move/from16 v0, v22

    .line 419
    .line 420
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 421
    .line 422
    .line 423
    move-result v22

    .line 424
    invoke-static/range {v22 .. v22}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 425
    .line 426
    .line 427
    move-result-object v60

    .line 428
    move/from16 v22, v0

    .line 429
    .line 430
    move/from16 v0, v23

    .line 431
    .line 432
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 433
    .line 434
    .line 435
    move-result v23

    .line 436
    if-eqz v23, :cond_6

    .line 437
    .line 438
    move/from16 v23, v0

    .line 439
    .line 440
    move/from16 v0, v24

    .line 441
    .line 442
    const/16 v61, 0x1

    .line 443
    .line 444
    goto :goto_7

    .line 445
    :cond_6
    move/from16 v23, v0

    .line 446
    .line 447
    move/from16 v0, v24

    .line 448
    .line 449
    const/16 v61, 0x0

    .line 450
    .line 451
    :goto_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 452
    .line 453
    .line 454
    move-result v24

    .line 455
    if-eqz v24, :cond_7

    .line 456
    .line 457
    move/from16 v24, v0

    .line 458
    .line 459
    move/from16 v0, v25

    .line 460
    .line 461
    const/16 v62, 0x1

    .line 462
    .line 463
    goto :goto_8

    .line 464
    :cond_7
    move/from16 v24, v0

    .line 465
    .line 466
    move/from16 v0, v25

    .line 467
    .line 468
    const/16 v62, 0x0

    .line 469
    .line 470
    :goto_8
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 471
    .line 472
    .line 473
    move-result v25

    .line 474
    if-eqz v25, :cond_8

    .line 475
    .line 476
    move/from16 v25, v0

    .line 477
    .line 478
    move/from16 v0, v26

    .line 479
    .line 480
    const/16 v63, 0x1

    .line 481
    .line 482
    goto :goto_9

    .line 483
    :cond_8
    move/from16 v25, v0

    .line 484
    .line 485
    move/from16 v0, v26

    .line 486
    .line 487
    const/16 v63, 0x0

    .line 488
    .line 489
    :goto_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 490
    .line 491
    .line 492
    move-result v26

    .line 493
    if-eqz v26, :cond_9

    .line 494
    .line 495
    move/from16 v26, v0

    .line 496
    .line 497
    move/from16 v0, v27

    .line 498
    .line 499
    const/16 v64, 0x1

    .line 500
    .line 501
    goto :goto_a

    .line 502
    :cond_9
    move/from16 v26, v0

    .line 503
    .line 504
    move/from16 v0, v27

    .line 505
    .line 506
    const/16 v64, 0x0

    .line 507
    .line 508
    :goto_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 509
    .line 510
    .line 511
    move-result-wide v65

    .line 512
    move/from16 v27, v0

    .line 513
    .line 514
    move/from16 v0, v28

    .line 515
    .line 516
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 517
    .line 518
    .line 519
    move-result-wide v67

    .line 520
    move/from16 v28, v0

    .line 521
    .line 522
    move/from16 v0, v29

    .line 523
    .line 524
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 525
    .line 526
    .line 527
    move-result v29

    .line 528
    if-eqz v29, :cond_a

    .line 529
    .line 530
    const/16 v29, 0x0

    .line 531
    .line 532
    goto :goto_b

    .line 533
    :cond_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 534
    .line 535
    .line 536
    move-result-object v29

    .line 537
    :goto_b
    invoke-static/range {v29 .. v29}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 538
    .line 539
    .line 540
    move-result-object v69

    .line 541
    new-instance v44, Landroidx/work/Constraints;

    .line 542
    .line 543
    move-object/from16 v59, v44

    .line 544
    .line 545
    invoke-direct/range {v59 .. v69}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 546
    .line 547
    .line 548
    move/from16 v29, v0

    .line 549
    .line 550
    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    .line 551
    .line 552
    move-object/from16 v31, v0

    .line 553
    .line 554
    invoke-direct/range {v31 .. v58}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    .line 555
    .line 556
    .line 557
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    .line 559
    .line 560
    move/from16 v0, v30

    .line 561
    .line 562
    move/from16 v30, v1

    .line 563
    .line 564
    goto/16 :goto_0

    .line 565
    .line 566
    :catchall_0
    move-exception v0

    .line 567
    goto :goto_c

    .line 568
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 569
    .line 570
    .line 571
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 572
    .line 573
    .line 574
    return-object v3

    .line 575
    :catchall_1
    move-exception v0

    .line 576
    move-object/from16 v16, v3

    .line 577
    .line 578
    :goto_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 579
    .line 580
    .line 581
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 582
    .line 583
    .line 584
    throw v0
.end method

.method public getRunningWork()Ljava/util/List;
    .locals 70
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM workspec WHERE state=1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    :try_start_0
    const-string v0, "id"

    .line 23
    .line 24
    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v6, "state"

    .line 29
    .line 30
    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const-string/jumbo v7, "worker_class_name"

    .line 35
    .line 36
    .line 37
    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const-string v8, "input_merger_class_name"

    .line 42
    .line 43
    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    const-string v9, "input"

    .line 48
    .line 49
    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    const-string v10, "output"

    .line 54
    .line 55
    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    const-string v11, "initial_delay"

    .line 60
    .line 61
    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    const-string v12, "interval_duration"

    .line 66
    .line 67
    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    const-string v13, "flex_duration"

    .line 72
    .line 73
    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    const-string v14, "run_attempt_count"

    .line 78
    .line 79
    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v14

    .line 83
    const-string v15, "backoff_policy"

    .line 84
    .line 85
    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v15

    .line 89
    const-string v2, "backoff_delay_duration"

    .line 90
    .line 91
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const-string v4, "last_enqueue_time"

    .line 96
    .line 97
    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    const-string v1, "minimum_retention_duration"

    .line 102
    .line 103
    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    move-object/from16 v16, v3

    .line 108
    .line 109
    :try_start_1
    const-string v3, "schedule_requested_at"

    .line 110
    .line 111
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    move/from16 v17, v3

    .line 116
    .line 117
    const-string v3, "run_in_foreground"

    .line 118
    .line 119
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    move/from16 v18, v3

    .line 124
    .line 125
    const-string v3, "out_of_quota_policy"

    .line 126
    .line 127
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    move/from16 v19, v3

    .line 132
    .line 133
    const-string v3, "period_count"

    .line 134
    .line 135
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    move/from16 v20, v3

    .line 140
    .line 141
    const-string v3, "generation"

    .line 142
    .line 143
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    move/from16 v21, v3

    .line 148
    .line 149
    const-string v3, "required_network_type"

    .line 150
    .line 151
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    move/from16 v22, v3

    .line 156
    .line 157
    const-string v3, "requires_charging"

    .line 158
    .line 159
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    move/from16 v23, v3

    .line 164
    .line 165
    const-string v3, "requires_device_idle"

    .line 166
    .line 167
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    move/from16 v24, v3

    .line 172
    .line 173
    const-string v3, "requires_battery_not_low"

    .line 174
    .line 175
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    move/from16 v25, v3

    .line 180
    .line 181
    const-string v3, "requires_storage_not_low"

    .line 182
    .line 183
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    move/from16 v26, v3

    .line 188
    .line 189
    const-string/jumbo v3, "trigger_content_update_delay"

    .line 190
    .line 191
    .line 192
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    move/from16 v27, v3

    .line 197
    .line 198
    const-string/jumbo v3, "trigger_max_content_delay"

    .line 199
    .line 200
    .line 201
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    move/from16 v28, v3

    .line 206
    .line 207
    const-string v3, "content_uri_triggers"

    .line 208
    .line 209
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    move/from16 v29, v3

    .line 214
    .line 215
    new-instance v3, Ljava/util/ArrayList;

    .line 216
    .line 217
    move/from16 v30, v1

    .line 218
    .line 219
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .line 225
    .line 226
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_b

    .line 231
    .line 232
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_0

    .line 237
    .line 238
    const/16 v32, 0x0

    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    move-object/from16 v32, v1

    .line 246
    .line 247
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 252
    .line 253
    .line 254
    move-result-object v33

    .line 255
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_1

    .line 260
    .line 261
    const/16 v34, 0x0

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    move-object/from16 v34, v1

    .line 269
    .line 270
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_2

    .line 275
    .line 276
    const/16 v35, 0x0

    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    move-object/from16 v35, v1

    .line 284
    .line 285
    :goto_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_3

    .line 290
    .line 291
    const/4 v1, 0x0

    .line 292
    goto :goto_4

    .line 293
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    :goto_4
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 298
    .line 299
    .line 300
    move-result-object v36

    .line 301
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_4

    .line 306
    .line 307
    const/4 v1, 0x0

    .line 308
    goto :goto_5

    .line 309
    :cond_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    :goto_5
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 314
    .line 315
    .line 316
    move-result-object v37

    .line 317
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 318
    .line 319
    .line 320
    move-result-wide v38

    .line 321
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 322
    .line 323
    .line 324
    move-result-wide v40

    .line 325
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 326
    .line 327
    .line 328
    move-result-wide v42

    .line 329
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 330
    .line 331
    .line 332
    move-result v45

    .line 333
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 338
    .line 339
    .line 340
    move-result-object v46

    .line 341
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 342
    .line 343
    .line 344
    move-result-wide v47

    .line 345
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 346
    .line 347
    .line 348
    move-result-wide v49

    .line 349
    move/from16 v1, v30

    .line 350
    .line 351
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 352
    .line 353
    .line 354
    move-result-wide v51

    .line 355
    move/from16 v30, v0

    .line 356
    .line 357
    move/from16 v0, v17

    .line 358
    .line 359
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 360
    .line 361
    .line 362
    move-result-wide v53

    .line 363
    move/from16 v17, v0

    .line 364
    .line 365
    move/from16 v0, v18

    .line 366
    .line 367
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 368
    .line 369
    .line 370
    move-result v18

    .line 371
    const/16 v31, 0x1

    .line 372
    .line 373
    if-eqz v18, :cond_5

    .line 374
    .line 375
    move/from16 v18, v0

    .line 376
    .line 377
    move/from16 v0, v19

    .line 378
    .line 379
    move/from16 v55, v31

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_5
    move/from16 v18, v0

    .line 383
    .line 384
    move/from16 v0, v19

    .line 385
    .line 386
    const/16 v55, 0x0

    .line 387
    .line 388
    :goto_6
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 389
    .line 390
    .line 391
    move-result v19

    .line 392
    invoke-static/range {v19 .. v19}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 393
    .line 394
    .line 395
    move-result-object v56

    .line 396
    move/from16 v19, v0

    .line 397
    .line 398
    move/from16 v0, v20

    .line 399
    .line 400
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 401
    .line 402
    .line 403
    move-result v57

    .line 404
    move/from16 v20, v0

    .line 405
    .line 406
    move/from16 v0, v21

    .line 407
    .line 408
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 409
    .line 410
    .line 411
    move-result v58

    .line 412
    move/from16 v21, v0

    .line 413
    .line 414
    move/from16 v0, v22

    .line 415
    .line 416
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 417
    .line 418
    .line 419
    move-result v22

    .line 420
    invoke-static/range {v22 .. v22}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 421
    .line 422
    .line 423
    move-result-object v60

    .line 424
    move/from16 v22, v0

    .line 425
    .line 426
    move/from16 v0, v23

    .line 427
    .line 428
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 429
    .line 430
    .line 431
    move-result v23

    .line 432
    if-eqz v23, :cond_6

    .line 433
    .line 434
    move/from16 v23, v0

    .line 435
    .line 436
    move/from16 v0, v24

    .line 437
    .line 438
    move/from16 v61, v31

    .line 439
    .line 440
    goto :goto_7

    .line 441
    :cond_6
    move/from16 v23, v0

    .line 442
    .line 443
    move/from16 v0, v24

    .line 444
    .line 445
    const/16 v61, 0x0

    .line 446
    .line 447
    :goto_7
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 448
    .line 449
    .line 450
    move-result v24

    .line 451
    if-eqz v24, :cond_7

    .line 452
    .line 453
    move/from16 v24, v0

    .line 454
    .line 455
    move/from16 v0, v25

    .line 456
    .line 457
    move/from16 v62, v31

    .line 458
    .line 459
    goto :goto_8

    .line 460
    :cond_7
    move/from16 v24, v0

    .line 461
    .line 462
    move/from16 v0, v25

    .line 463
    .line 464
    const/16 v62, 0x0

    .line 465
    .line 466
    :goto_8
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 467
    .line 468
    .line 469
    move-result v25

    .line 470
    if-eqz v25, :cond_8

    .line 471
    .line 472
    move/from16 v25, v0

    .line 473
    .line 474
    move/from16 v0, v26

    .line 475
    .line 476
    move/from16 v63, v31

    .line 477
    .line 478
    goto :goto_9

    .line 479
    :cond_8
    move/from16 v25, v0

    .line 480
    .line 481
    move/from16 v0, v26

    .line 482
    .line 483
    const/16 v63, 0x0

    .line 484
    .line 485
    :goto_9
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 486
    .line 487
    .line 488
    move-result v26

    .line 489
    if-eqz v26, :cond_9

    .line 490
    .line 491
    move/from16 v26, v0

    .line 492
    .line 493
    move/from16 v0, v27

    .line 494
    .line 495
    move/from16 v64, v31

    .line 496
    .line 497
    goto :goto_a

    .line 498
    :cond_9
    move/from16 v26, v0

    .line 499
    .line 500
    move/from16 v0, v27

    .line 501
    .line 502
    const/16 v64, 0x0

    .line 503
    .line 504
    :goto_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 505
    .line 506
    .line 507
    move-result-wide v65

    .line 508
    move/from16 v27, v0

    .line 509
    .line 510
    move/from16 v0, v28

    .line 511
    .line 512
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 513
    .line 514
    .line 515
    move-result-wide v67

    .line 516
    move/from16 v28, v0

    .line 517
    .line 518
    move/from16 v0, v29

    .line 519
    .line 520
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 521
    .line 522
    .line 523
    move-result v29

    .line 524
    if-eqz v29, :cond_a

    .line 525
    .line 526
    const/16 v29, 0x0

    .line 527
    .line 528
    goto :goto_b

    .line 529
    :cond_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 530
    .line 531
    .line 532
    move-result-object v29

    .line 533
    :goto_b
    invoke-static/range {v29 .. v29}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 534
    .line 535
    .line 536
    move-result-object v69

    .line 537
    new-instance v44, Landroidx/work/Constraints;

    .line 538
    .line 539
    move-object/from16 v59, v44

    .line 540
    .line 541
    invoke-direct/range {v59 .. v69}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 542
    .line 543
    .line 544
    move/from16 v29, v0

    .line 545
    .line 546
    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    .line 547
    .line 548
    move-object/from16 v31, v0

    .line 549
    .line 550
    invoke-direct/range {v31 .. v58}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    .line 551
    .line 552
    .line 553
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    .line 555
    .line 556
    move/from16 v0, v30

    .line 557
    .line 558
    move/from16 v30, v1

    .line 559
    .line 560
    goto/16 :goto_0

    .line 561
    .line 562
    :catchall_0
    move-exception v0

    .line 563
    goto :goto_c

    .line 564
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 565
    .line 566
    .line 567
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 568
    .line 569
    .line 570
    return-object v3

    .line 571
    :catchall_1
    move-exception v0

    .line 572
    move-object/from16 v16, v3

    .line 573
    .line 574
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 575
    .line 576
    .line 577
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 578
    .line 579
    .line 580
    throw v0
.end method

.method public getScheduleRequestedAtLiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT schedule_requested_at FROM workspec WHERE id=?"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string/jumbo v1, "workspec"

    .line 24
    .line 25
    .line 26
    filled-new-array {v1}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Landroidx/work/impl/model/WorkSpecDao_Impl$18;

    .line 31
    .line 32
    invoke-direct {v2, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$18;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v1, v0, v2}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public getScheduledWork()Ljava/util/List;
    .locals 70
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    :try_start_0
    const-string v0, "id"

    .line 23
    .line 24
    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v6, "state"

    .line 29
    .line 30
    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const-string/jumbo v7, "worker_class_name"

    .line 35
    .line 36
    .line 37
    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const-string v8, "input_merger_class_name"

    .line 42
    .line 43
    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    const-string v9, "input"

    .line 48
    .line 49
    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    const-string v10, "output"

    .line 54
    .line 55
    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    const-string v11, "initial_delay"

    .line 60
    .line 61
    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    const-string v12, "interval_duration"

    .line 66
    .line 67
    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    const-string v13, "flex_duration"

    .line 72
    .line 73
    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    const-string v14, "run_attempt_count"

    .line 78
    .line 79
    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v14

    .line 83
    const-string v15, "backoff_policy"

    .line 84
    .line 85
    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v15

    .line 89
    const-string v2, "backoff_delay_duration"

    .line 90
    .line 91
    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const-string v4, "last_enqueue_time"

    .line 96
    .line 97
    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    const-string v1, "minimum_retention_duration"

    .line 102
    .line 103
    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    move-object/from16 v16, v3

    .line 108
    .line 109
    :try_start_1
    const-string v3, "schedule_requested_at"

    .line 110
    .line 111
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    move/from16 v17, v3

    .line 116
    .line 117
    const-string v3, "run_in_foreground"

    .line 118
    .line 119
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    move/from16 v18, v3

    .line 124
    .line 125
    const-string v3, "out_of_quota_policy"

    .line 126
    .line 127
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    move/from16 v19, v3

    .line 132
    .line 133
    const-string v3, "period_count"

    .line 134
    .line 135
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    move/from16 v20, v3

    .line 140
    .line 141
    const-string v3, "generation"

    .line 142
    .line 143
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    move/from16 v21, v3

    .line 148
    .line 149
    const-string v3, "required_network_type"

    .line 150
    .line 151
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    move/from16 v22, v3

    .line 156
    .line 157
    const-string v3, "requires_charging"

    .line 158
    .line 159
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    move/from16 v23, v3

    .line 164
    .line 165
    const-string v3, "requires_device_idle"

    .line 166
    .line 167
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    move/from16 v24, v3

    .line 172
    .line 173
    const-string v3, "requires_battery_not_low"

    .line 174
    .line 175
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    move/from16 v25, v3

    .line 180
    .line 181
    const-string v3, "requires_storage_not_low"

    .line 182
    .line 183
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    move/from16 v26, v3

    .line 188
    .line 189
    const-string/jumbo v3, "trigger_content_update_delay"

    .line 190
    .line 191
    .line 192
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    move/from16 v27, v3

    .line 197
    .line 198
    const-string/jumbo v3, "trigger_max_content_delay"

    .line 199
    .line 200
    .line 201
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    move/from16 v28, v3

    .line 206
    .line 207
    const-string v3, "content_uri_triggers"

    .line 208
    .line 209
    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    move/from16 v29, v3

    .line 214
    .line 215
    new-instance v3, Ljava/util/ArrayList;

    .line 216
    .line 217
    move/from16 v30, v1

    .line 218
    .line 219
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .line 225
    .line 226
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_b

    .line 231
    .line 232
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_0

    .line 237
    .line 238
    const/16 v32, 0x0

    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    move-object/from16 v32, v1

    .line 246
    .line 247
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 252
    .line 253
    .line 254
    move-result-object v33

    .line 255
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_1

    .line 260
    .line 261
    const/16 v34, 0x0

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    move-object/from16 v34, v1

    .line 269
    .line 270
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_2

    .line 275
    .line 276
    const/16 v35, 0x0

    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    move-object/from16 v35, v1

    .line 284
    .line 285
    :goto_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_3

    .line 290
    .line 291
    const/4 v1, 0x0

    .line 292
    goto :goto_4

    .line 293
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    :goto_4
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 298
    .line 299
    .line 300
    move-result-object v36

    .line 301
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_4

    .line 306
    .line 307
    const/4 v1, 0x0

    .line 308
    goto :goto_5

    .line 309
    :cond_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    :goto_5
    invoke-static {v1}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 314
    .line 315
    .line 316
    move-result-object v37

    .line 317
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 318
    .line 319
    .line 320
    move-result-wide v38

    .line 321
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 322
    .line 323
    .line 324
    move-result-wide v40

    .line 325
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 326
    .line 327
    .line 328
    move-result-wide v42

    .line 329
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 330
    .line 331
    .line 332
    move-result v45

    .line 333
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 338
    .line 339
    .line 340
    move-result-object v46

    .line 341
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 342
    .line 343
    .line 344
    move-result-wide v47

    .line 345
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 346
    .line 347
    .line 348
    move-result-wide v49

    .line 349
    move/from16 v1, v30

    .line 350
    .line 351
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 352
    .line 353
    .line 354
    move-result-wide v51

    .line 355
    move/from16 v30, v0

    .line 356
    .line 357
    move/from16 v0, v17

    .line 358
    .line 359
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 360
    .line 361
    .line 362
    move-result-wide v53

    .line 363
    move/from16 v17, v0

    .line 364
    .line 365
    move/from16 v0, v18

    .line 366
    .line 367
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 368
    .line 369
    .line 370
    move-result v18

    .line 371
    const/16 v31, 0x1

    .line 372
    .line 373
    if-eqz v18, :cond_5

    .line 374
    .line 375
    move/from16 v18, v0

    .line 376
    .line 377
    move/from16 v0, v19

    .line 378
    .line 379
    move/from16 v55, v31

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_5
    move/from16 v18, v0

    .line 383
    .line 384
    move/from16 v0, v19

    .line 385
    .line 386
    const/16 v55, 0x0

    .line 387
    .line 388
    :goto_6
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 389
    .line 390
    .line 391
    move-result v19

    .line 392
    invoke-static/range {v19 .. v19}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 393
    .line 394
    .line 395
    move-result-object v56

    .line 396
    move/from16 v19, v0

    .line 397
    .line 398
    move/from16 v0, v20

    .line 399
    .line 400
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 401
    .line 402
    .line 403
    move-result v57

    .line 404
    move/from16 v20, v0

    .line 405
    .line 406
    move/from16 v0, v21

    .line 407
    .line 408
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 409
    .line 410
    .line 411
    move-result v58

    .line 412
    move/from16 v21, v0

    .line 413
    .line 414
    move/from16 v0, v22

    .line 415
    .line 416
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 417
    .line 418
    .line 419
    move-result v22

    .line 420
    invoke-static/range {v22 .. v22}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 421
    .line 422
    .line 423
    move-result-object v60

    .line 424
    move/from16 v22, v0

    .line 425
    .line 426
    move/from16 v0, v23

    .line 427
    .line 428
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 429
    .line 430
    .line 431
    move-result v23

    .line 432
    if-eqz v23, :cond_6

    .line 433
    .line 434
    move/from16 v23, v0

    .line 435
    .line 436
    move/from16 v0, v24

    .line 437
    .line 438
    move/from16 v61, v31

    .line 439
    .line 440
    goto :goto_7

    .line 441
    :cond_6
    move/from16 v23, v0

    .line 442
    .line 443
    move/from16 v0, v24

    .line 444
    .line 445
    const/16 v61, 0x0

    .line 446
    .line 447
    :goto_7
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 448
    .line 449
    .line 450
    move-result v24

    .line 451
    if-eqz v24, :cond_7

    .line 452
    .line 453
    move/from16 v24, v0

    .line 454
    .line 455
    move/from16 v0, v25

    .line 456
    .line 457
    move/from16 v62, v31

    .line 458
    .line 459
    goto :goto_8

    .line 460
    :cond_7
    move/from16 v24, v0

    .line 461
    .line 462
    move/from16 v0, v25

    .line 463
    .line 464
    const/16 v62, 0x0

    .line 465
    .line 466
    :goto_8
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 467
    .line 468
    .line 469
    move-result v25

    .line 470
    if-eqz v25, :cond_8

    .line 471
    .line 472
    move/from16 v25, v0

    .line 473
    .line 474
    move/from16 v0, v26

    .line 475
    .line 476
    move/from16 v63, v31

    .line 477
    .line 478
    goto :goto_9

    .line 479
    :cond_8
    move/from16 v25, v0

    .line 480
    .line 481
    move/from16 v0, v26

    .line 482
    .line 483
    const/16 v63, 0x0

    .line 484
    .line 485
    :goto_9
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 486
    .line 487
    .line 488
    move-result v26

    .line 489
    if-eqz v26, :cond_9

    .line 490
    .line 491
    move/from16 v26, v0

    .line 492
    .line 493
    move/from16 v0, v27

    .line 494
    .line 495
    move/from16 v64, v31

    .line 496
    .line 497
    goto :goto_a

    .line 498
    :cond_9
    move/from16 v26, v0

    .line 499
    .line 500
    move/from16 v0, v27

    .line 501
    .line 502
    const/16 v64, 0x0

    .line 503
    .line 504
    :goto_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 505
    .line 506
    .line 507
    move-result-wide v65

    .line 508
    move/from16 v27, v0

    .line 509
    .line 510
    move/from16 v0, v28

    .line 511
    .line 512
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 513
    .line 514
    .line 515
    move-result-wide v67

    .line 516
    move/from16 v28, v0

    .line 517
    .line 518
    move/from16 v0, v29

    .line 519
    .line 520
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 521
    .line 522
    .line 523
    move-result v29

    .line 524
    if-eqz v29, :cond_a

    .line 525
    .line 526
    const/16 v29, 0x0

    .line 527
    .line 528
    goto :goto_b

    .line 529
    :cond_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 530
    .line 531
    .line 532
    move-result-object v29

    .line 533
    :goto_b
    invoke-static/range {v29 .. v29}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 534
    .line 535
    .line 536
    move-result-object v69

    .line 537
    new-instance v44, Landroidx/work/Constraints;

    .line 538
    .line 539
    move-object/from16 v59, v44

    .line 540
    .line 541
    invoke-direct/range {v59 .. v69}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 542
    .line 543
    .line 544
    move/from16 v29, v0

    .line 545
    .line 546
    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    .line 547
    .line 548
    move-object/from16 v31, v0

    .line 549
    .line 550
    invoke-direct/range {v31 .. v58}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    .line 551
    .line 552
    .line 553
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    .line 555
    .line 556
    move/from16 v0, v30

    .line 557
    .line 558
    move/from16 v30, v1

    .line 559
    .line 560
    goto/16 :goto_0

    .line 561
    .line 562
    :catchall_0
    move-exception v0

    .line 563
    goto :goto_c

    .line 564
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 565
    .line 566
    .line 567
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 568
    .line 569
    .line 570
    return-object v3

    .line 571
    :catchall_1
    move-exception v0

    .line 572
    move-object/from16 v16, v3

    .line 573
    .line 574
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 575
    .line 576
    .line 577
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 578
    .line 579
    .line 580
    throw v0
.end method

.method public getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;
    .locals 4

    .line 1
    const-string v0, "SELECT state FROM workspec WHERE id=?"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :goto_1
    if-nez v1, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    sget-object v2, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 62
    .line 63
    .line 64
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    goto :goto_2

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 72
    .line 73
    .line 74
    return-object v2

    .line 75
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 79
    .line 80
    .line 81
    throw v1
.end method

.method public getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    move-object v4, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    goto :goto_3

    .line 63
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 67
    .line 68
    .line 69
    return-object v3

    .line 70
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 74
    .line 75
    .line 76
    throw v1
.end method

.method public getUnfinishedWorkWithTag(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    move-object v4, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    goto :goto_3

    .line 63
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 67
    .line 68
    .line 69
    return-object v3

    .line 70
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 74
    .line 75
    .line 76
    throw v1
.end method

.method public getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;
    .locals 68

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "SELECT * FROM workspec WHERE id=?"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static {v0, v2, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    :try_start_0
    const-string v0, "id"

    .line 35
    .line 36
    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-string v7, "state"

    .line 41
    .line 42
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    const-string/jumbo v8, "worker_class_name"

    .line 47
    .line 48
    .line 49
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    const-string v9, "input_merger_class_name"

    .line 54
    .line 55
    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    const-string v10, "input"

    .line 60
    .line 61
    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    const-string v11, "output"

    .line 66
    .line 67
    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    const-string v12, "initial_delay"

    .line 72
    .line 73
    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    const-string v13, "interval_duration"

    .line 78
    .line 79
    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    const-string v14, "flex_duration"

    .line 84
    .line 85
    invoke-static {v6, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v14

    .line 89
    const-string v15, "run_attempt_count"

    .line 90
    .line 91
    invoke-static {v6, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    const-string v3, "backoff_policy"

    .line 96
    .line 97
    invoke-static {v6, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const-string v4, "backoff_delay_duration"

    .line 102
    .line 103
    invoke-static {v6, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const-string v5, "last_enqueue_time"

    .line 108
    .line 109
    invoke-static {v6, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    const-string v1, "minimum_retention_duration"

    .line 114
    .line 115
    invoke-static {v6, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    move-object/from16 v16, v2

    .line 120
    .line 121
    :try_start_1
    const-string v2, "schedule_requested_at"

    .line 122
    .line 123
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    move/from16 v17, v2

    .line 128
    .line 129
    const-string v2, "run_in_foreground"

    .line 130
    .line 131
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    move/from16 v18, v2

    .line 136
    .line 137
    const-string v2, "out_of_quota_policy"

    .line 138
    .line 139
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    move/from16 v19, v2

    .line 144
    .line 145
    const-string v2, "period_count"

    .line 146
    .line 147
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    move/from16 v20, v2

    .line 152
    .line 153
    const-string v2, "generation"

    .line 154
    .line 155
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    move/from16 v21, v2

    .line 160
    .line 161
    const-string v2, "required_network_type"

    .line 162
    .line 163
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    move/from16 v22, v2

    .line 168
    .line 169
    const-string v2, "requires_charging"

    .line 170
    .line 171
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    move/from16 v23, v2

    .line 176
    .line 177
    const-string v2, "requires_device_idle"

    .line 178
    .line 179
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    move/from16 v24, v2

    .line 184
    .line 185
    const-string v2, "requires_battery_not_low"

    .line 186
    .line 187
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    move/from16 v25, v2

    .line 192
    .line 193
    const-string v2, "requires_storage_not_low"

    .line 194
    .line 195
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    move/from16 v26, v2

    .line 200
    .line 201
    const-string/jumbo v2, "trigger_content_update_delay"

    .line 202
    .line 203
    .line 204
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    move/from16 v27, v2

    .line 209
    .line 210
    const-string/jumbo v2, "trigger_max_content_delay"

    .line 211
    .line 212
    .line 213
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    move/from16 v28, v2

    .line 218
    .line 219
    const-string v2, "content_uri_triggers"

    .line 220
    .line 221
    invoke-static {v6, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 226
    .line 227
    .line 228
    move-result v29

    .line 229
    if-eqz v29, :cond_c

    .line 230
    .line 231
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 232
    .line 233
    .line 234
    move-result v29

    .line 235
    if-eqz v29, :cond_1

    .line 236
    .line 237
    const/16 v30, 0x0

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    move-object/from16 v30, v0

    .line 245
    .line 246
    :goto_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 251
    .line 252
    .line 253
    move-result-object v31

    .line 254
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_2

    .line 259
    .line 260
    const/16 v32, 0x0

    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    move-object/from16 v32, v0

    .line 268
    .line 269
    :goto_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz v0, :cond_3

    .line 274
    .line 275
    const/16 v33, 0x0

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    move-object/from16 v33, v0

    .line 283
    .line 284
    :goto_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_4

    .line 289
    .line 290
    const/4 v0, 0x0

    .line 291
    goto :goto_4

    .line 292
    :cond_4
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    :goto_4
    invoke-static {v0}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 297
    .line 298
    .line 299
    move-result-object v34

    .line 300
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_5

    .line 305
    .line 306
    const/4 v0, 0x0

    .line 307
    goto :goto_5

    .line 308
    :cond_5
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getBlob(I)[B

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    :goto_5
    invoke-static {v0}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 313
    .line 314
    .line 315
    move-result-object v35

    .line 316
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 317
    .line 318
    .line 319
    move-result-wide v36

    .line 320
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 321
    .line 322
    .line 323
    move-result-wide v38

    .line 324
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v40

    .line 328
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 329
    .line 330
    .line 331
    move-result v43

    .line 332
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    .line 337
    .line 338
    .line 339
    move-result-object v44

    .line 340
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 341
    .line 342
    .line 343
    move-result-wide v45

    .line 344
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 345
    .line 346
    .line 347
    move-result-wide v47

    .line 348
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 349
    .line 350
    .line 351
    move-result-wide v49

    .line 352
    move/from16 v0, v17

    .line 353
    .line 354
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 355
    .line 356
    .line 357
    move-result-wide v51

    .line 358
    move/from16 v0, v18

    .line 359
    .line 360
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_6

    .line 365
    .line 366
    move/from16 v0, v19

    .line 367
    .line 368
    const/16 v53, 0x1

    .line 369
    .line 370
    goto :goto_6

    .line 371
    :cond_6
    move/from16 v0, v19

    .line 372
    .line 373
    const/16 v53, 0x0

    .line 374
    .line 375
    :goto_6
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    .line 380
    .line 381
    .line 382
    move-result-object v54

    .line 383
    move/from16 v0, v20

    .line 384
    .line 385
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 386
    .line 387
    .line 388
    move-result v55

    .line 389
    move/from16 v0, v21

    .line 390
    .line 391
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 392
    .line 393
    .line 394
    move-result v56

    .line 395
    move/from16 v0, v22

    .line 396
    .line 397
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    .line 402
    .line 403
    .line 404
    move-result-object v58

    .line 405
    move/from16 v0, v23

    .line 406
    .line 407
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-eqz v0, :cond_7

    .line 412
    .line 413
    move/from16 v0, v24

    .line 414
    .line 415
    const/16 v59, 0x1

    .line 416
    .line 417
    goto :goto_7

    .line 418
    :cond_7
    move/from16 v0, v24

    .line 419
    .line 420
    const/16 v59, 0x0

    .line 421
    .line 422
    :goto_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_8

    .line 427
    .line 428
    move/from16 v0, v25

    .line 429
    .line 430
    const/16 v60, 0x1

    .line 431
    .line 432
    goto :goto_8

    .line 433
    :cond_8
    move/from16 v0, v25

    .line 434
    .line 435
    const/16 v60, 0x0

    .line 436
    .line 437
    :goto_8
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-eqz v0, :cond_9

    .line 442
    .line 443
    move/from16 v0, v26

    .line 444
    .line 445
    const/16 v61, 0x1

    .line 446
    .line 447
    goto :goto_9

    .line 448
    :cond_9
    move/from16 v0, v26

    .line 449
    .line 450
    const/16 v61, 0x0

    .line 451
    .line 452
    :goto_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-eqz v0, :cond_a

    .line 457
    .line 458
    move/from16 v0, v27

    .line 459
    .line 460
    const/16 v62, 0x1

    .line 461
    .line 462
    goto :goto_a

    .line 463
    :cond_a
    move/from16 v0, v27

    .line 464
    .line 465
    const/16 v62, 0x0

    .line 466
    .line 467
    :goto_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 468
    .line 469
    .line 470
    move-result-wide v63

    .line 471
    move/from16 v0, v28

    .line 472
    .line 473
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 474
    .line 475
    .line 476
    move-result-wide v65

    .line 477
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    if-eqz v0, :cond_b

    .line 482
    .line 483
    const/4 v5, 0x0

    .line 484
    goto :goto_b

    .line 485
    :cond_b
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getBlob(I)[B

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    :goto_b
    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    .line 490
    .line 491
    .line 492
    move-result-object v67

    .line 493
    new-instance v42, Landroidx/work/Constraints;

    .line 494
    .line 495
    move-object/from16 v57, v42

    .line 496
    .line 497
    invoke-direct/range {v57 .. v67}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 498
    .line 499
    .line 500
    new-instance v5, Landroidx/work/impl/model/WorkSpec;

    .line 501
    .line 502
    move-object/from16 v29, v5

    .line 503
    .line 504
    invoke-direct/range {v29 .. v56}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    .line 506
    .line 507
    goto :goto_c

    .line 508
    :catchall_0
    move-exception v0

    .line 509
    goto :goto_d

    .line 510
    :cond_c
    const/4 v5, 0x0

    .line 511
    :goto_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 512
    .line 513
    .line 514
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 515
    .line 516
    .line 517
    return-object v5

    .line 518
    :catchall_1
    move-exception v0

    .line 519
    move-object/from16 v16, v2

    .line 520
    .line 521
    :goto_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 522
    .line 523
    .line 524
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 525
    .line 526
    .line 527
    throw v0
.end method

.method public getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$IdAndState;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {p1, v0, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    move-object v5, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    :goto_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    new-instance v7, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 66
    .line 67
    invoke-direct {v7, v5, v6}, Landroidx/work/impl/model/WorkSpec$IdAndState;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v1

    .line 75
    goto :goto_3

    .line 76
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 80
    .line 81
    .line 82
    return-object v4

    .line 83
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 87
    .line 88
    .line 89
    throw v1
.end method

.method public getWorkStatusPojoForId(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id=?"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 39
    .line 40
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v6, Landroidx/collection/ArrayMap;

    .line 44
    .line 45
    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    const/4 v8, 0x0

    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v0, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Ljava/util/ArrayList;

    .line 64
    .line 65
    if-nez v9, :cond_2

    .line 66
    .line 67
    new-instance v9, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v7, v9}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_5

    .line 78
    .line 79
    :cond_2
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Ljava/util/ArrayList;

    .line 88
    .line 89
    if-nez v8, :cond_1

    .line 90
    .line 91
    new-instance v8, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v7, v8}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    const/4 v7, -0x1

    .line 101
    invoke-interface {v5, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_8

    .line 115
    .line 116
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_4

    .line 121
    .line 122
    move-object v10, v4

    .line 123
    goto :goto_3

    .line 124
    :cond_4
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    move-object v10, v7

    .line 129
    :goto_3
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    const/4 v3, 0x2

    .line 138
    invoke-interface {v5, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_5

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_5
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    :goto_4
    invoke-static {v4}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    const/4 v3, 0x3

    .line 154
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    const/4 v3, 0x4

    .line 159
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 160
    .line 161
    .line 162
    move-result v14

    .line 163
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v0, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Ljava/util/ArrayList;

    .line 172
    .line 173
    if-nez v0, :cond_6

    .line 174
    .line 175
    new-instance v0, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .line 179
    .line 180
    :cond_6
    move-object v15, v0

    .line 181
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v6, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Ljava/util/ArrayList;

    .line 190
    .line 191
    if-nez v0, :cond_7

    .line 192
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    :cond_7
    move-object/from16 v16, v0

    .line 199
    .line 200
    new-instance v4, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 201
    .line 202
    move-object v9, v4

    .line 203
    invoke-direct/range {v9 .. v16}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;IILjava/util/List;Ljava/util/List;)V

    .line 204
    .line 205
    .line 206
    :cond_8
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 207
    .line 208
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .line 210
    .line 211
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    .line 216
    .line 217
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 218
    .line 219
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 220
    .line 221
    .line 222
    return-object v4

    .line 223
    :catchall_1
    move-exception v0

    .line 224
    goto :goto_6

    .line 225
    :goto_5
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 229
    .line 230
    .line 231
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    :goto_6
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 233
    .line 234
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 235
    .line 236
    .line 237
    throw v0
.end method

.method public getWorkStatusPojoForIds(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v2, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN ("

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {v0, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 17
    .line 18
    .line 19
    const-string v3, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v3, 0x1

    .line 37
    move v4, v3

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Ljava/lang/String;

    .line 49
    .line 50
    if-nez v5, :cond_0

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 65
    .line 66
    .line 67
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 70
    .line 71
    .line 72
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 76
    .line 77
    .line 78
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 80
    .line 81
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 82
    .line 83
    .line 84
    new-instance v6, Landroidx/collection/ArrayMap;

    .line 85
    .line 86
    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    const/4 v8, 0x0

    .line 94
    if-eqz v7, :cond_4

    .line 95
    .line 96
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v0, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    check-cast v9, Ljava/util/ArrayList;

    .line 105
    .line 106
    if-nez v9, :cond_3

    .line 107
    .line 108
    new-instance v9, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v7, v9}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :cond_3
    :goto_3
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    check-cast v8, Ljava/util/ArrayList;

    .line 129
    .line 130
    if-nez v8, :cond_2

    .line 131
    .line 132
    new-instance v8, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v7, v8}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    const/4 v7, -0x1

    .line 142
    invoke-interface {v5, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 143
    .line 144
    .line 145
    invoke-direct {v1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 149
    .line 150
    .line 151
    new-instance v7, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .line 159
    .line 160
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    if-eqz v9, :cond_9

    .line 165
    .line 166
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    if-eqz v9, :cond_5

    .line 171
    .line 172
    move-object v11, v4

    .line 173
    goto :goto_5

    .line 174
    :cond_5
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    move-object v11, v9

    .line 179
    :goto_5
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    invoke-static {v9}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 184
    .line 185
    .line 186
    move-result-object v12

    .line 187
    const/4 v9, 0x2

    .line 188
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    if-eqz v10, :cond_6

    .line 193
    .line 194
    move-object v9, v4

    .line 195
    goto :goto_6

    .line 196
    :cond_6
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    :goto_6
    invoke-static {v9}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    const/4 v9, 0x3

    .line 205
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    const/4 v9, 0x4

    .line 210
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 211
    .line 212
    .line 213
    move-result v15

    .line 214
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    invoke-virtual {v0, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    check-cast v9, Ljava/util/ArrayList;

    .line 223
    .line 224
    if-nez v9, :cond_7

    .line 225
    .line 226
    new-instance v9, Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .line 230
    .line 231
    :cond_7
    move-object/from16 v16, v9

    .line 232
    .line 233
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    invoke-virtual {v6, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    check-cast v9, Ljava/util/ArrayList;

    .line 242
    .line 243
    if-nez v9, :cond_8

    .line 244
    .line 245
    new-instance v9, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    :cond_8
    move-object/from16 v17, v9

    .line 251
    .line 252
    new-instance v9, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 253
    .line 254
    move-object v10, v9

    .line 255
    invoke-direct/range {v10 .. v17}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;IILjava/util/List;Ljava/util/List;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_9
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 263
    .line 264
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    .line 266
    .line 267
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 271
    .line 272
    .line 273
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 274
    .line 275
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 276
    .line 277
    .line 278
    return-object v7

    .line 279
    :catchall_1
    move-exception v0

    .line 280
    goto :goto_8

    .line 281
    :goto_7
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 285
    .line 286
    .line 287
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 288
    :goto_8
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 289
    .line 290
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 291
    .line 292
    .line 293
    throw v0
.end method

.method public getWorkStatusPojoForName(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 39
    .line 40
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v6, Landroidx/collection/ArrayMap;

    .line 44
    .line 45
    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    const/4 v8, 0x0

    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v0, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Ljava/util/ArrayList;

    .line 64
    .line 65
    if-nez v9, :cond_2

    .line 66
    .line 67
    new-instance v9, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v7, v9}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_2
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Ljava/util/ArrayList;

    .line 88
    .line 89
    if-nez v8, :cond_1

    .line 90
    .line 91
    new-instance v8, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v7, v8}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    const/4 v7, -0x1

    .line 101
    invoke-interface {v5, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 108
    .line 109
    .line 110
    new-instance v7, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .line 118
    .line 119
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_8

    .line 124
    .line 125
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-eqz v9, :cond_4

    .line 130
    .line 131
    move-object v11, v4

    .line 132
    goto :goto_4

    .line 133
    :cond_4
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    move-object v11, v9

    .line 138
    :goto_4
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    invoke-static {v9}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    const/4 v9, 0x2

    .line 147
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    if-eqz v10, :cond_5

    .line 152
    .line 153
    move-object v9, v4

    .line 154
    goto :goto_5

    .line 155
    :cond_5
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    :goto_5
    invoke-static {v9}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    const/4 v9, 0x3

    .line 164
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 165
    .line 166
    .line 167
    move-result v14

    .line 168
    const/4 v9, 0x4

    .line 169
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-virtual {v0, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    check-cast v9, Ljava/util/ArrayList;

    .line 182
    .line 183
    if-nez v9, :cond_6

    .line 184
    .line 185
    new-instance v9, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    :cond_6
    move-object/from16 v16, v9

    .line 191
    .line 192
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    invoke-virtual {v6, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    check-cast v9, Ljava/util/ArrayList;

    .line 201
    .line 202
    if-nez v9, :cond_7

    .line 203
    .line 204
    new-instance v9, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    :cond_7
    move-object/from16 v17, v9

    .line 210
    .line 211
    new-instance v9, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 212
    .line 213
    move-object v10, v9

    .line 214
    invoke-direct/range {v10 .. v17}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;IILjava/util/List;Ljava/util/List;)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_8
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    .line 225
    .line 226
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    .line 231
    .line 232
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 233
    .line 234
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 235
    .line 236
    .line 237
    return-object v7

    .line 238
    :catchall_1
    move-exception v0

    .line 239
    goto :goto_7

    .line 240
    :goto_6
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 244
    .line 245
    .line 246
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    :goto_7
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 248
    .line 249
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 250
    .line 251
    .line 252
    throw v0
.end method

.method public getWorkStatusPojoForTag(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static {v0, v2, v3, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 39
    .line 40
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v6, Landroidx/collection/ArrayMap;

    .line 44
    .line 45
    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    const/4 v8, 0x0

    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v0, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Ljava/util/ArrayList;

    .line 64
    .line 65
    if-nez v9, :cond_2

    .line 66
    .line 67
    new-instance v9, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v7, v9}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_2
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v6, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Ljava/util/ArrayList;

    .line 88
    .line 89
    if-nez v8, :cond_1

    .line 90
    .line 91
    new-instance v8, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v7, v8}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    const/4 v7, -0x1

    .line 101
    invoke-interface {v5, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Landroidx/collection/ArrayMap;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, v6}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Landroidx/collection/ArrayMap;)V

    .line 108
    .line 109
    .line 110
    new-instance v7, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .line 118
    .line 119
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_8

    .line 124
    .line 125
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    if-eqz v9, :cond_4

    .line 130
    .line 131
    move-object v11, v4

    .line 132
    goto :goto_4

    .line 133
    :cond_4
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    move-object v11, v9

    .line 138
    :goto_4
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    invoke-static {v9}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    const/4 v9, 0x2

    .line 147
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    if-eqz v10, :cond_5

    .line 152
    .line 153
    move-object v9, v4

    .line 154
    goto :goto_5

    .line 155
    :cond_5
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    :goto_5
    invoke-static {v9}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    const/4 v9, 0x3

    .line 164
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 165
    .line 166
    .line 167
    move-result v14

    .line 168
    const/4 v9, 0x4

    .line 169
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-virtual {v0, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    check-cast v9, Ljava/util/ArrayList;

    .line 182
    .line 183
    if-nez v9, :cond_6

    .line 184
    .line 185
    new-instance v9, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    :cond_6
    move-object/from16 v16, v9

    .line 191
    .line 192
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    invoke-virtual {v6, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    check-cast v9, Ljava/util/ArrayList;

    .line 201
    .line 202
    if-nez v9, :cond_7

    .line 203
    .line 204
    new-instance v9, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    :cond_7
    move-object/from16 v17, v9

    .line 210
    .line 211
    new-instance v9, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 212
    .line 213
    move-object v10, v9

    .line 214
    invoke-direct/range {v10 .. v17}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;IILjava/util/List;Ljava/util/List;)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_8
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    .line 225
    .line 226
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    .line 231
    .line 232
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 233
    .line 234
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 235
    .line 236
    .line 237
    return-object v7

    .line 238
    :catchall_1
    move-exception v0

    .line 239
    goto :goto_7

    .line 240
    :goto_6
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 244
    .line 245
    .line 246
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 247
    :goto_7
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 248
    .line 249
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 250
    .line 251
    .line 252
    throw v0
.end method

.method public getWorkStatusPojoLiveDataForIds(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN ("

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 15
    .line 16
    .line 17
    const-string v2, ")"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v1, 0x1

    .line 35
    move v2, v1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/String;

    .line 47
    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v2, "WorkProgress"

    .line 67
    .line 68
    const-string/jumbo v3, "workspec"

    .line 69
    .line 70
    .line 71
    const-string v4, "WorkTag"

    .line 72
    .line 73
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$15;

    .line 78
    .line 79
    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$15;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method

.method public getWorkStatusPojoLiveDataForName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string/jumbo v2, "workspec"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v3, "workname"

    .line 27
    .line 28
    .line 29
    const-string v4, "WorkTag"

    .line 30
    .line 31
    const-string v5, "WorkProgress"

    .line 32
    .line 33
    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$17;

    .line 38
    .line 39
    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$17;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method public getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-string v0, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string/jumbo v2, "workspec"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v3, "worktag"

    .line 27
    .line 28
    .line 29
    const-string v4, "WorkTag"

    .line 30
    .line 31
    const-string v5, "WorkProgress"

    .line 32
    .line 33
    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Landroidx/work/impl/model/WorkSpecDao_Impl$16;

    .line 38
    .line 39
    invoke-direct {v3, p0, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$16;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2, v1, v3}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method public hasUnfinishedWork()Z
    .locals 4

    .line 1
    const-string v0, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 27
    .line 28
    .line 29
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 47
    .line 48
    .line 49
    throw v1
.end method

.method public incrementGeneration(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public incrementPeriodCount(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 44
    .line 45
    .line 46
    return p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public markWorkSpecScheduled(Ljava/lang/String;J)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-interface {v0, v1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 48
    .line 49
    .line 50
    return p1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 45
    .line 46
    .line 47
    throw v1
.end method

.method public resetScheduledState()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 46
    .line 47
    .line 48
    throw v1
.end method

.method public resetWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 44
    .line 45
    .line 46
    return p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public setLastEnqueuedTime(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Landroidx/room/SharedSQLiteStatement;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-interface {v0, v1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x2

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Landroidx/room/SharedSQLiteStatement;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueuedTime:Landroidx/room/SharedSQLiteStatement;

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public setOutput(Ljava/lang/String;Landroidx/work/Data;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p2}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v1, 0x1

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v0, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 p2, 0x2

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v0, p2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 62
    .line 63
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method public setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    int-to-long v1, p1

    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 53
    .line 54
    .line 55
    return p1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 58
    .line 59
    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public updateWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__updateAdapterOfWorkSpec:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method
