.class Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB_Impl$a;
.super Landroidx/room/RoomOpenDelegate;
.source "DownloadTaskDB_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB_Impl;->g()Landroidx/room/RoomOpenDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB_Impl;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB_Impl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB_Impl$a;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB_Impl;

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
    const-string v0, "CREATE TABLE IF NOT EXISTS `download_tasks` (`shortPlayId` INTEGER NOT NULL, `dramaId` INTEGER NOT NULL, `dramaNum` INTEGER NOT NULL, `url` TEXT NOT NULL, `solution` INTEGER NOT NULL, `fileSize` INTEGER NOT NULL, `downloadState` INTEGER NOT NULL, `cacheKey` TEXT NOT NULL, `shortCoverUrl` TEXT, `dramaCoverUrl` TEXT, `dramaName` TEXT, `content` TEXT, `shortPlayCode` TEXT, `upack` TEXT, `lock` INTEGER, `downloadProgress` REAL NOT NULL, PRIMARY KEY(`cacheKey`))"

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
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'c3bbd1484132bf4de44e2e36a0d30e3f\')"

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
    const-string v0, "DROP TABLE IF EXISTS `download_tasks`"

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB_Impl$a;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB_Impl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB_Impl;->f(Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB_Impl;Landroidx/sqlite/SQLiteConnection;)V

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
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x1

    .line 12
    const-string v3, "shortPlayId"

    .line 13
    .line 14
    const-string v4, "INTEGER"

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    move-object v2, v1

    .line 19
    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "shortPlayId"

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x1

    .line 31
    const-string v4, "dramaId"

    .line 32
    .line 33
    const-string v5, "INTEGER"

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    const/4 v7, 0x0

    .line 37
    move-object v3, v1

    .line 38
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    const-string v2, "dramaId"

    .line 42
    .line 43
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 47
    .line 48
    const-string v4, "dramaNum"

    .line 49
    .line 50
    const-string v5, "INTEGER"

    .line 51
    .line 52
    move-object v3, v1

    .line 53
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const-string v2, "dramaNum"

    .line 57
    .line 58
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 62
    .line 63
    const-string v4, "url"

    .line 64
    .line 65
    const-string v5, "TEXT"

    .line 66
    .line 67
    move-object v3, v1

    .line 68
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const-string v2, "url"

    .line 72
    .line 73
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 77
    .line 78
    const-string v4, "solution"

    .line 79
    .line 80
    const-string v5, "INTEGER"

    .line 81
    .line 82
    move-object v3, v1

    .line 83
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    const-string v2, "solution"

    .line 87
    .line 88
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 92
    .line 93
    const-string v4, "fileSize"

    .line 94
    .line 95
    const-string v5, "INTEGER"

    .line 96
    .line 97
    move-object v3, v1

    .line 98
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    const-string v2, "fileSize"

    .line 102
    .line 103
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 107
    .line 108
    const-string v4, "downloadState"

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
    const-string v2, "downloadState"

    .line 117
    .line 118
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 122
    .line 123
    const-string v4, "cacheKey"

    .line 124
    .line 125
    const-string v5, "TEXT"

    .line 126
    .line 127
    const/4 v7, 0x1

    .line 128
    move-object v3, v1

    .line 129
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    const-string v2, "cacheKey"

    .line 133
    .line 134
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 138
    .line 139
    const-string v4, "shortCoverUrl"

    .line 140
    .line 141
    const-string v5, "TEXT"

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    const/4 v7, 0x0

    .line 145
    move-object v3, v1

    .line 146
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    const-string v2, "shortCoverUrl"

    .line 150
    .line 151
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 155
    .line 156
    const-string v4, "dramaCoverUrl"

    .line 157
    .line 158
    const-string v5, "TEXT"

    .line 159
    .line 160
    move-object v3, v1

    .line 161
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    const-string v2, "dramaCoverUrl"

    .line 165
    .line 166
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 170
    .line 171
    const-string v4, "dramaName"

    .line 172
    .line 173
    const-string v5, "TEXT"

    .line 174
    .line 175
    move-object v3, v1

    .line 176
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    const-string v2, "dramaName"

    .line 180
    .line 181
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 185
    .line 186
    const-string v4, "content"

    .line 187
    .line 188
    const-string v5, "TEXT"

    .line 189
    .line 190
    move-object v3, v1

    .line 191
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    const-string v2, "content"

    .line 195
    .line 196
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 200
    .line 201
    const-string v4, "shortPlayCode"

    .line 202
    .line 203
    const-string v5, "TEXT"

    .line 204
    .line 205
    move-object v3, v1

    .line 206
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    const-string v2, "shortPlayCode"

    .line 210
    .line 211
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 215
    .line 216
    const-string v4, "upack"

    .line 217
    .line 218
    const-string v5, "TEXT"

    .line 219
    .line 220
    move-object v3, v1

    .line 221
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    const-string v2, "upack"

    .line 225
    .line 226
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 230
    .line 231
    const-string v4, "lock"

    .line 232
    .line 233
    const-string v5, "INTEGER"

    .line 234
    .line 235
    move-object v3, v1

    .line 236
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    const-string v2, "lock"

    .line 240
    .line 241
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .line 245
    .line 246
    const-string v4, "downloadProgress"

    .line 247
    .line 248
    const-string v5, "REAL"

    .line 249
    .line 250
    const/4 v6, 0x1

    .line 251
    move-object v3, v1

    .line 252
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 253
    .line 254
    .line 255
    const-string v2, "downloadProgress"

    .line 256
    .line 257
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    new-instance v1, Ljava/util/HashSet;

    .line 261
    .line 262
    const/4 v2, 0x0

    .line 263
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 264
    .line 265
    .line 266
    new-instance v3, Ljava/util/HashSet;

    .line 267
    .line 268
    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 269
    .line 270
    .line 271
    new-instance v4, Landroidx/room/util/TableInfo;

    .line 272
    .line 273
    const-string v5, "download_tasks"

    .line 274
    .line 275
    invoke-direct {v4, v5, v0, v1, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 276
    .line 277
    .line 278
    invoke-static {p1, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {v4, p1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_0

    .line 287
    .line 288
    new-instance v0, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 289
    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    const-string v3, "download_tasks(com.startshorts.androidplayer.bean.download.DownloadTaskInfo).\n Expected:\n"

    .line 296
    .line 297
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v3, "\n Found:\n"

    .line 304
    .line 305
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-direct {v0, v2, p1}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    return-object v0

    .line 319
    :cond_0
    new-instance p1, Landroidx/room/RoomOpenDelegate$ValidationResult;

    .line 320
    .line 321
    const/4 v0, 0x1

    .line 322
    const/4 v1, 0x0

    .line 323
    invoke-direct {p1, v0, v1}, Landroidx/room/RoomOpenDelegate$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    return-object p1
.end method
