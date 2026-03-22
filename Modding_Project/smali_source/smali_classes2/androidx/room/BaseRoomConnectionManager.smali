.class public abstract Landroidx/room/BaseRoomConnectionManager;
.super Ljava/lang/Object;
.source "RoomConnectionManager.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/BaseRoomConnectionManager$Companion;,
        Landroidx/room/BaseRoomConnectionManager$DriverWrapper;,
        Landroidx/room/BaseRoomConnectionManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRoomConnectionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomConnectionManager.kt\nandroidx/room/BaseRoomConnectionManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,365:1\n1#2:366\n1869#3,2:367\n1869#3,2:369\n1869#3,2:371\n1869#3,2:373\n1869#3,2:375\n*S KotlinDebug\n*F\n+ 1 RoomConnectionManager.kt\nandroidx/room/BaseRoomConnectionManager\n*L\n212#1:367,2\n256#1:369,2\n345#1:371,2\n349#1:373,2\n353#1:375,2\n*E\n"
    }
.end annotation


# static fields
.field public static final BUSY_TIMEOUT_MS:I = 0xbb8

.field public static final Companion:Landroidx/room/BaseRoomConnectionManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private isConfigured:Z

.field private isInitializing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/room/BaseRoomConnectionManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/room/BaseRoomConnectionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/room/BaseRoomConnectionManager;->Companion:Landroidx/room/BaseRoomConnectionManager$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$configurationConnection(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configurationConnection(Landroidx/sqlite/SQLiteConnection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$configureDatabase(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configureDatabase(Landroidx/sqlite/SQLiteConnection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$isConfigured$p(Landroidx/room/BaseRoomConnectionManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/room/BaseRoomConnectionManager;->isConfigured:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$isInitializing$p(Landroidx/room/BaseRoomConnectionManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/room/BaseRoomConnectionManager;->isInitializing:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$setInitializing$p(Landroidx/room/BaseRoomConnectionManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/room/BaseRoomConnectionManager;->isInitializing:Z

    .line 2
    .line 3
    return-void
.end method

.method private final checkIdentity(Landroidx/sqlite/SQLiteConnection;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->hasRoomMasterTable(Landroidx/sqlite/SQLiteConnection;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const-string v0, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :try_start_0
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    move-object v0, v1

    .line 29
    :goto_0
    invoke-static {p1, v1}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroidx/room/RoomOpenDelegate;->getIdentityHash()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroidx/room/RoomOpenDelegate;->getLegacyIdentityHash()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v2, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroidx/room/RoomOpenDelegate;->getIdentityHash()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, ", found: "

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    :catchall_1
    move-exception v1

    .line 107
    invoke-static {p1, v0}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw v1

    .line 111
    :cond_2
    const-string v0, "BEGIN EXCLUSIVE TRANSACTION"

    .line 112
    .line 113
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :try_start_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-boolean v1, v0, Landroidx/room/RoomOpenDelegate$ValidationResult;->isValid:Z

    .line 127
    .line 128
    if-eqz v1, :cond_3

    .line 129
    .line 130
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->updateIdentity(Landroidx/sqlite/SQLiteConnection;)V

    .line 138
    .line 139
    .line 140
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    goto :goto_3

    .line 147
    :catchall_2
    move-exception v0

    .line 148
    goto :goto_2

    .line 149
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 150
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v3, "Pre-packaged database has an invalid schema: "

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v0, v0, Landroidx/room/RoomOpenDelegate$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 178
    :goto_2
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 179
    .line 180
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_4

    .line 193
    .line 194
    move-object v1, v0

    .line 195
    check-cast v1, Lkotlin/Unit;

    .line 196
    .line 197
    const-string v1, "END TRANSACTION"

    .line 198
    .line 199
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_4
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-nez v1, :cond_6

    .line 207
    .line 208
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 209
    .line 210
    .line 211
    :cond_5
    :goto_4
    return-void

    .line 212
    :cond_6
    const-string v0, "ROLLBACK TRANSACTION"

    .line 213
    .line 214
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v1
.end method

.method private final configurationConnection(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configureSynchronousFlag(Landroidx/sqlite/SQLiteConnection;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configureBusyTimeout(Landroidx/sqlite/SQLiteConnection;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final configureBusyTimeout(Landroidx/sqlite/SQLiteConnection;)V
    .locals 5

    .line 1
    const-string v0, "PRAGMA busy_timeout"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v3}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v3, 0xbb8

    .line 20
    .line 21
    cmp-long v0, v1, v3

    .line 22
    .line 23
    if-gez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "PRAGMA busy_timeout = 3000"

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :catchall_1
    move-exception v1

    .line 34
    invoke-static {v0, p1}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw v1
.end method

.method private final configureDatabase(Landroidx/sqlite/SQLiteConnection;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configureJournalMode(Landroidx/sqlite/SQLiteConnection;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configureSynchronousFlag(Landroidx/sqlite/SQLiteConnection;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->configureBusyTimeout(Landroidx/sqlite/SQLiteConnection;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "PRAGMA user_version"

    .line 11
    .line 12
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    long-to-int v1, v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {v0, v2}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getVersion()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eq v1, v0, :cond_3

    .line 38
    .line 39
    const-string v0, "BEGIN EXCLUSIVE TRANSACTION"

    .line 40
    .line 41
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :try_start_1
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->onCreate(Landroidx/sqlite/SQLiteConnection;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getVersion()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p0, p1, v1, v0}, Landroidx/room/BaseRoomConnectionManager;->onMigrate(Landroidx/sqlite/SQLiteConnection;II)V

    .line 63
    .line 64
    .line 65
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "PRAGMA user_version = "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroidx/room/RoomOpenDelegate;->getVersion()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    goto :goto_2

    .line 100
    :goto_1
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 101
    .line 102
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_1

    .line 115
    .line 116
    move-object v1, v0

    .line 117
    check-cast v1, Lkotlin/Unit;

    .line 118
    .line 119
    const-string v1, "END TRANSACTION"

    .line 120
    .line 121
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_1
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-nez v0, :cond_2

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_2
    const-string v1, "ROLLBACK TRANSACTION"

    .line 132
    .line 133
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_3
    :goto_3
    invoke-virtual {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :catchall_1
    move-exception p1

    .line 142
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 143
    :catchall_2
    move-exception v1

    .line 144
    invoke-static {v0, p1}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    throw v1
.end method

.method private final configureJournalMode(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getConfiguration()Landroidx/room/DatabaseConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 6
    .line 7
    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "PRAGMA journal_mode = WAL"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "PRAGMA journal_mode = TRUNCATE"

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private final configureSynchronousFlag(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getConfiguration()Landroidx/room/DatabaseConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    .line 6
    .line 7
    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "PRAGMA synchronous = NORMAL"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "PRAGMA synchronous = FULL"

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private final createMasterTableIfNotExists(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final dropAllTables(Landroidx/sqlite/SQLiteConnection;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getConfiguration()Landroidx/room/DatabaseConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Landroidx/room/DatabaseConfiguration;->allowDestructiveMigrationForAllTables:Z

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    const-string v0, "SELECT name, type FROM sqlite_master WHERE type = \'table\' OR type = \'view\'"

    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :try_start_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->c()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "sqlite_"

    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    invoke-static {v4, v5, v2, v6, v3}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    const-string v2, "android_metadata"

    .line 41
    .line 42
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v2, 0x1

    .line 50
    invoke-interface {v0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string/jumbo v3, "view"

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v4, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {v0, v3}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    check-cast v1, Ljava/lang/Iterable;

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lkotlin/Pair;

    .line 99
    .line 100
    invoke-virtual {v1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    const/16 v3, 0x60

    .line 117
    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v4, "DROP VIEW IF EXISTS `"

    .line 126
    .line 127
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v4, "DROP TABLE IF EXISTS `"

    .line 150
    .line 151
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    :catchall_1
    move-exception v1

    .line 170
    invoke-static {v0, p1}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    throw v1

    .line 174
    :cond_4
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->dropAllTables(Landroidx/sqlite/SQLiteConnection;)V

    .line 179
    .line 180
    .line 181
    :cond_5
    return-void
.end method

.method private final hasEmptySchema(Landroidx/sqlite/SQLiteConnection;)Z
    .locals 6

    .line 1
    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :try_start_0
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    cmp-long v0, v2, v4

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 29
    invoke-static {p1, v0}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :catchall_1
    move-exception v1

    .line 35
    invoke-static {p1, v0}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method private final hasRoomMasterTable(Landroidx/sqlite/SQLiteConnection;)Z
    .locals 6

    .line 1
    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name = \'room_master_table\'"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :try_start_0
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    cmp-long v0, v2, v4

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 29
    invoke-static {p1, v0}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :catchall_1
    move-exception v1

    .line 35
    invoke-static {p1, v0}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method private final invokeCreateCallback(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getCallbacks()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/room/RoomDatabase$Callback;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/SQLiteConnection;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private final invokeDestructiveMigrationCallback(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getCallbacks()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/room/RoomDatabase$Callback;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/SQLiteConnection;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private final invokeOpenCallback(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getCallbacks()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/room/RoomDatabase$Callback;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private final updateIdentity(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->createMasterTableIfNotExists(Landroidx/sqlite/SQLiteConnection;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/room/RoomOpenDelegate;->getIdentityHash()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroidx/room/RoomMasterTable;->createInsertQuery(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method protected abstract getCallbacks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected abstract getConfiguration()Landroidx/room/DatabaseConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final getMaxNumberOfReaders(Landroidx/room/RoomDatabase$JournalMode;)I
    .locals 3
    .param p1    # Landroidx/room/RoomDatabase$JournalMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/room/BaseRoomConnectionManager$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "Can\'t get max number of reader for journal mode \'"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/16 p1, 0x27

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    return v1
.end method

.method protected final getMaxNumberOfWriters(Landroidx/room/RoomDatabase$JournalMode;)I
    .locals 3
    .param p1    # Landroidx/room/RoomDatabase$JournalMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/room/BaseRoomConnectionManager$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "Can\'t get max number of writers for journal mode \'"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 p1, 0x27

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_0
    return v1
.end method

.method protected abstract getOpenDelegate()Landroidx/room/RoomOpenDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final onCreate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 3
    .param p1    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->hasEmptySchema(Landroidx/sqlite/SQLiteConnection;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p1}, Landroidx/room/RoomOpenDelegate;->createAllTables(Landroidx/sqlite/SQLiteConnection;)V

    .line 15
    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-boolean v1, v0, Landroidx/room/RoomOpenDelegate$ValidationResult;->isValid:Z

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "Pre-packaged database has an invalid schema: "

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Landroidx/room/RoomOpenDelegate$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->updateIdentity(Landroidx/sqlite/SQLiteConnection;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onCreate(Landroidx/sqlite/SQLiteConnection;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->invokeCreateCallback(Landroidx/sqlite/SQLiteConnection;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method protected final onMigrate(Landroidx/sqlite/SQLiteConnection;II)V
    .locals 2
    .param p1    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getConfiguration()Landroidx/room/DatabaseConfiguration;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 11
    .line 12
    invoke-static {v0, p2, p3}, Landroidx/room/util/MigrationUtil;->findMigrationPath(Landroidx/room/RoomDatabase$MigrationContainer;II)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2, p1}, Landroidx/room/RoomOpenDelegate;->onPreMigrate(Landroidx/sqlite/SQLiteConnection;)V

    .line 23
    .line 24
    .line 25
    check-cast v0, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    check-cast p3, Landroidx/room/migration/Migration;

    .line 42
    .line 43
    invoke-virtual {p3, p1}, Landroidx/room/migration/Migration;->migrate(Landroidx/sqlite/SQLiteConnection;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2, p1}, Landroidx/room/RoomOpenDelegate;->onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iget-boolean p3, p2, Landroidx/room/RoomOpenDelegate$ValidationResult;->isValid:Z

    .line 56
    .line 57
    if-eqz p3, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2, p1}, Landroidx/room/RoomOpenDelegate;->onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->updateIdentity(Landroidx/sqlite/SQLiteConnection;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v0, "Migration didn\'t properly handle: "

    .line 78
    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object p2, p2, Landroidx/room/RoomOpenDelegate$ValidationResult;->expectedFoundMsg:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_2
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getConfiguration()Landroidx/room/DatabaseConfiguration;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0, p2, p3}, Landroidx/room/util/MigrationUtil;->isMigrationRequired(Landroidx/room/DatabaseConfiguration;II)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->dropAllTables(Landroidx/sqlite/SQLiteConnection;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->invokeDestructiveMigrationCallback(Landroidx/sqlite/SQLiteConnection;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p2, p1}, Landroidx/room/RoomOpenDelegate;->createAllTables(Landroidx/sqlite/SQLiteConnection;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    return-void

    .line 123
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v1, "A migration from "

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p2, " to "

    .line 139
    .line 140
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions."

    .line 147
    .line 148
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1
.end method

.method protected final onOpen(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1
    .param p1    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->checkIdentity(Landroidx/sqlite/SQLiteConnection;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/room/BaseRoomConnectionManager;->getOpenDelegate()Landroidx/room/RoomOpenDelegate;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Landroidx/room/RoomOpenDelegate;->onOpen(Landroidx/sqlite/SQLiteConnection;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/room/BaseRoomConnectionManager;->invokeOpenCallback(Landroidx/sqlite/SQLiteConnection;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Landroidx/room/BaseRoomConnectionManager;->isConfigured:Z

    .line 21
    .line 22
    return-void
.end method

.method public resolveFileName$room_runtime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "fileName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public abstract useConnection(ZLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/room/Transactor;",
            "-",
            "Lrs/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
