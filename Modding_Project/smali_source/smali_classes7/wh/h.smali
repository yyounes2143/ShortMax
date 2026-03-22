.class public final Lwh/h;
.super Ljava/lang/Object;
.source "DownloadTaskDao_Impl.java"

# interfaces
.implements Lwh/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/room/EntityDeleteOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeleteOrUpdateAdapter<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
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
    iput-object p1, p0, Lwh/h;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lwh/h$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lwh/h$a;-><init>(Lwh/h;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lwh/h;->b:Landroidx/room/EntityInsertAdapter;

    .line 12
    .line 13
    new-instance p1, Lwh/h$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lwh/h$b;-><init>(Lwh/h;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lwh/h;->c:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 19
    .line 20
    new-instance p1, Lwh/h$c;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lwh/h$c;-><init>(Lwh/h;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lwh/h;->d:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic g(ILandroidx/sqlite/SQLiteConnection;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwh/h;->p(ILandroidx/sqlite/SQLiteConnection;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lwh/h;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lwh/h;->s(Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lwh/h;->q(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lwh/h;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lwh/h;->r(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lwh/h;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lwh/h;->o(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lwh/h;->n(Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static m()Ljava/util/List;
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

.method private static synthetic n(Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "DELETE  FROM download_tasks"

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

.method private synthetic o(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lwh/h;->c:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method private static synthetic p(ILandroidx/sqlite/SQLiteConnection;)Ljava/lang/Integer;
    .locals 4

    .line 1
    const-string v0, "DELETE FROM download_tasks WHERE downloadState = ?"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    int-to-long v2, p0

    .line 9
    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method private static synthetic q(Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 40

    .line 1
    const-string v0, "SELECT * FROM download_tasks"

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
    const-string v2, "dramaId"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "dramaNum"

    .line 22
    .line 23
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string v4, "url"

    .line 28
    .line 29
    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const-string v5, "solution"

    .line 34
    .line 35
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const-string v6, "fileSize"

    .line 40
    .line 41
    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const-string v7, "downloadState"

    .line 46
    .line 47
    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const-string v8, "cacheKey"

    .line 52
    .line 53
    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const-string v9, "shortCoverUrl"

    .line 58
    .line 59
    invoke-static {v1, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const-string v10, "dramaCoverUrl"

    .line 64
    .line 65
    invoke-static {v1, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    const-string v11, "dramaName"

    .line 70
    .line 71
    invoke-static {v1, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    const-string v12, "content"

    .line 76
    .line 77
    invoke-static {v1, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    const-string v13, "shortPlayCode"

    .line 82
    .line 83
    invoke-static {v1, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    const-string v14, "upack"

    .line 88
    .line 89
    invoke-static {v1, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    const-string v15, "lock"

    .line 94
    .line 95
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v15

    .line 99
    move/from16 p0, v15

    .line 100
    .line 101
    const-string v15, "downloadProgress"

    .line 102
    .line 103
    invoke-static {v1, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    move/from16 v16, v15

    .line 108
    .line 109
    new-instance v15, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 115
    .line 116
    .line 117
    move-result v17

    .line 118
    if-eqz v17, :cond_9

    .line 119
    .line 120
    move/from16 v17, v14

    .line 121
    .line 122
    move-object/from16 v18, v15

    .line 123
    .line 124
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 125
    .line 126
    .line 127
    move-result-wide v14

    .line 128
    long-to-int v14, v14

    .line 129
    move/from16 v20, v14

    .line 130
    .line 131
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v14

    .line 135
    long-to-int v14, v14

    .line 136
    move/from16 v21, v14

    .line 137
    .line 138
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 139
    .line 140
    .line 141
    move-result-wide v14

    .line 142
    long-to-int v14, v14

    .line 143
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 144
    .line 145
    .line 146
    move-result v15

    .line 147
    const/16 v19, 0x0

    .line 148
    .line 149
    if-eqz v15, :cond_0

    .line 150
    .line 151
    move v15, v2

    .line 152
    move/from16 v36, v3

    .line 153
    .line 154
    move-object/from16 v23, v19

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_0
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v15

    .line 161
    move/from16 v36, v3

    .line 162
    .line 163
    move-object/from16 v23, v15

    .line 164
    .line 165
    move v15, v2

    .line 166
    :goto_1
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v2

    .line 170
    long-to-int v2, v2

    .line 171
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 172
    .line 173
    .line 174
    move-result-wide v25

    .line 175
    move/from16 v37, v4

    .line 176
    .line 177
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 178
    .line 179
    .line 180
    move-result-wide v3

    .line 181
    long-to-int v3, v3

    .line 182
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_1

    .line 187
    .line 188
    move-object/from16 v28, v19

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_1
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    move-object/from16 v28, v4

    .line 196
    .line 197
    :goto_2
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_2

    .line 202
    .line 203
    move-object/from16 v29, v19

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_2
    invoke-interface {v1, v9}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    move-object/from16 v29, v4

    .line 211
    .line 212
    :goto_3
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-eqz v4, :cond_3

    .line 217
    .line 218
    move-object/from16 v30, v19

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_3
    invoke-interface {v1, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    move-object/from16 v30, v4

    .line 226
    .line 227
    :goto_4
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_4

    .line 232
    .line 233
    move-object/from16 v31, v19

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_4
    invoke-interface {v1, v11}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    move-object/from16 v31, v4

    .line 241
    .line 242
    :goto_5
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-eqz v4, :cond_5

    .line 247
    .line 248
    move-object/from16 v32, v19

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_5
    invoke-interface {v1, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    move-object/from16 v32, v4

    .line 256
    .line 257
    :goto_6
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-eqz v4, :cond_6

    .line 262
    .line 263
    move/from16 v4, v17

    .line 264
    .line 265
    move-object/from16 v33, v19

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_6
    invoke-interface {v1, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    move-object/from16 v33, v4

    .line 273
    .line 274
    move/from16 v4, v17

    .line 275
    .line 276
    :goto_7
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 277
    .line 278
    .line 279
    move-result v17

    .line 280
    if-eqz v17, :cond_7

    .line 281
    .line 282
    move-object/from16 v34, v19

    .line 283
    .line 284
    :goto_8
    move/from16 v39, v0

    .line 285
    .line 286
    move/from16 v0, p0

    .line 287
    .line 288
    move/from16 p0, v39

    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_7
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v17

    .line 295
    move-object/from16 v34, v17

    .line 296
    .line 297
    goto :goto_8

    .line 298
    :goto_9
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 299
    .line 300
    .line 301
    move-result v17

    .line 302
    if-eqz v17, :cond_8

    .line 303
    .line 304
    move/from16 v38, v4

    .line 305
    .line 306
    move/from16 v17, v5

    .line 307
    .line 308
    move-object/from16 v35, v19

    .line 309
    .line 310
    goto :goto_a

    .line 311
    :cond_8
    move/from16 v38, v4

    .line 312
    .line 313
    move/from16 v17, v5

    .line 314
    .line 315
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 316
    .line 317
    .line 318
    move-result-wide v4

    .line 319
    long-to-int v4, v4

    .line 320
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    move-object/from16 v35, v4

    .line 325
    .line 326
    :goto_a
    new-instance v4, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 327
    .line 328
    move-object/from16 v19, v4

    .line 329
    .line 330
    move/from16 v22, v14

    .line 331
    .line 332
    move/from16 v24, v2

    .line 333
    .line 334
    move/from16 v27, v3

    .line 335
    .line 336
    invoke-direct/range {v19 .. v35}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;-><init>(IIILjava/lang/String;IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    .line 338
    .line 339
    move v3, v6

    .line 340
    move/from16 v2, v16

    .line 341
    .line 342
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getDouble(I)D

    .line 343
    .line 344
    .line 345
    move-result-wide v5

    .line 346
    double-to-float v5, v5

    .line 347
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->setDownloadProgress(F)V

    .line 348
    .line 349
    .line 350
    move-object/from16 v5, v18

    .line 351
    .line 352
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .line 354
    .line 355
    move/from16 v16, v2

    .line 356
    .line 357
    move v6, v3

    .line 358
    move v2, v15

    .line 359
    move/from16 v3, v36

    .line 360
    .line 361
    move/from16 v4, v37

    .line 362
    .line 363
    move/from16 v14, v38

    .line 364
    .line 365
    move-object v15, v5

    .line 366
    move/from16 v5, v17

    .line 367
    .line 368
    move/from16 v39, v0

    .line 369
    .line 370
    move/from16 v0, p0

    .line 371
    .line 372
    move/from16 p0, v39

    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :catchall_0
    move-exception v0

    .line 377
    goto :goto_b

    .line 378
    :cond_9
    move-object v5, v15

    .line 379
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 380
    .line 381
    .line 382
    return-object v5

    .line 383
    :goto_b
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 384
    .line 385
    .line 386
    throw v0
.end method

.method private synthetic r(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lwh/h;->b:Landroidx/room/EntityInsertAdapter;

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

.method private synthetic s(Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lwh/h;->b:Landroidx/room/EntityInsertAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)V

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
    iget-object v0, p0, Lwh/h;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lwh/b;

    .line 4
    .line 5
    invoke-direct {v1}, Lwh/b;-><init>()V

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

.method public b(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lwh/h;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lwh/c;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lwh/c;-><init>(Lwh/h;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

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

.method public c(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lwh/h;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lwh/d;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lwh/d;-><init>(Lwh/h;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

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

.method public d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwh/h;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lwh/f;

    .line 4
    .line 5
    invoke-direct {v1}, Lwh/f;-><init>()V

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

.method public e(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lwh/h;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lwh/e;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lwh/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public f(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lwh/h;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lwh/g;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lwh/g;-><init>(Lwh/h;Ljava/util/List;)V

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
