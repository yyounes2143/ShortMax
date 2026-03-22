.class public final Lcom/startshorts/androidplayer/db/DbManager;
.super Ljava/lang/Object;
.source "DbManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/db/DbManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Lcom/startshorts/androidplayer/db/Database;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static c:Z

.field private static final d:Lgt/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/p<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/db/DbManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/db/DbManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/db/DbManager;->a:Lcom/startshorts/androidplayer/db/DbManager;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, v1, v0}, Lgt/r;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/p;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/startshorts/androidplayer/db/DbManager;->d:Lgt/p;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lcom/startshorts/androidplayer/db/Database;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "context"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-boolean v0, Lcom/startshorts/androidplayer/db/DbManager;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    :try_start_1
    sget-object v0, Lcom/startshorts/androidplayer/db/DbManager;->b:Lcom/startshorts/androidplayer/db/Database;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    .line 16
    if-nez v0, :cond_4

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    :try_start_2
    new-instance v1, Lfk/p;

    .line 20
    .line 21
    invoke-direct {v1}, Lfk/p;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lfk/p;->d()Lfk/p;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v2, Lud/b;->a:Lud/b;

    .line 29
    .line 30
    invoke-virtual {v2}, Lud/b;->m0()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :catch_1
    move-exception p1

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Lud/b;->x3(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    const-class v2, Lcom/startshorts/androidplayer/db/Database;

    .line 64
    .line 65
    const-string/jumbo v4, "short-tv-product-v3-db"

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v2, v4}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v2, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;

    .line 81
    .line 82
    invoke-direct {v2}, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;-><init>()V

    .line 83
    .line 84
    .line 85
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const-string v4, "getBytes(...)"

    .line 92
    .line 93
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3}, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;->passphrase([B)Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    new-instance v3, Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 101
    .line 102
    invoke-direct {v3}, Lcom/tencent/wcdb/database/SQLiteCipherSpec;-><init>()V

    .line 103
    .line 104
    .line 105
    const/16 v4, 0x1000

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->setPageSize(I)Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const v4, 0xfa00

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4}, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->setKDFIteration(I)Lcom/tencent/wcdb/database/SQLiteCipherSpec;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;->cipherSpec(Lcom/tencent/wcdb/database/SQLiteCipherSpec;)Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2, v0}, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;->writeAheadLoggingEnabled(Z)Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2, v0}, Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;->asyncCheckpointEnabled(Z)Lcom/tencent/wcdb/room/db/WCDBOpenHelperFactory;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {p1, v2}, Landroidx/room/RoomDatabase$Builder;->openHelperFactory(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;)Landroidx/room/RoomDatabase$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Lcom/startshorts/androidplayer/db/Database;

    .line 139
    .line 140
    sput-object p1, Lcom/startshorts/androidplayer/db/DbManager;->b:Lcom/startshorts/androidplayer/db/Database;

    .line 141
    .line 142
    const/4 p1, 0x0

    .line 143
    sput-boolean p1, Lcom/startshorts/androidplayer/db/DbManager;->c:Z

    .line 144
    .line 145
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 146
    .line 147
    const-string v2, "DbManager"

    .line 148
    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v4, "create Database took "

    .line 155
    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Lfk/p;->b()J

    .line 160
    .line 161
    .line 162
    move-result-wide v4

    .line 163
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, "ms"

    .line 167
    .line 168
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {p1, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    .line 177
    .line 178
    :try_start_3
    sget-object p1, Lcom/startshorts/androidplayer/db/DbManager;->d:Lgt/p;

    .line 179
    .line 180
    invoke-interface {p1}, Lkotlinx/coroutines/r;->isCompleted()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_4

    .line 185
    .line 186
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 187
    .line 188
    :goto_1
    invoke-interface {p1, v0}, Lgt/p;->i(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 189
    .line 190
    .line 191
    goto :goto_5

    .line 192
    :catchall_1
    move-exception p1

    .line 193
    goto :goto_6

    .line 194
    :goto_2
    :try_start_4
    sput-boolean v0, Lcom/startshorts/androidplayer/db/DbManager;->c:Z

    .line 195
    .line 196
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 197
    .line 198
    const-string v1, "DbManager"

    .line 199
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v3, "create exception -> "

    .line 206
    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    .line 223
    .line 224
    :try_start_5
    sget-object p1, Lcom/startshorts/androidplayer/db/DbManager;->d:Lgt/p;

    .line 225
    .line 226
    invoke-interface {p1}, Lkotlinx/coroutines/r;->isCompleted()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_4

    .line 231
    .line 232
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 233
    .line 234
    goto :goto_1

    .line 235
    :goto_3
    :try_start_6
    sput-boolean v0, Lcom/startshorts/androidplayer/db/DbManager;->c:Z

    .line 236
    .line 237
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 238
    .line 239
    const-string v1, "DbManager"

    .line 240
    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    const-string v3, "create exception -> "

    .line 247
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 263
    .line 264
    .line 265
    :try_start_7
    sget-object p1, Lcom/startshorts/androidplayer/db/DbManager;->d:Lgt/p;

    .line 266
    .line 267
    invoke-interface {p1}, Lkotlinx/coroutines/r;->isCompleted()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-nez v0, :cond_4

    .line 272
    .line 273
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 274
    .line 275
    goto :goto_1

    .line 276
    :goto_4
    sget-object v0, Lcom/startshorts/androidplayer/db/DbManager;->d:Lgt/p;

    .line 277
    .line 278
    invoke-interface {v0}, Lkotlinx/coroutines/r;->isCompleted()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_3

    .line 283
    .line 284
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 285
    .line 286
    invoke-interface {v0, v1}, Lgt/p;->i(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    :cond_3
    throw p1

    .line 290
    :cond_4
    :goto_5
    sget-object p1, Lcom/startshorts/androidplayer/db/DbManager;->b:Lcom/startshorts/androidplayer/db/Database;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 291
    .line 292
    monitor-exit p0

    .line 293
    return-object p1

    .line 294
    :goto_6
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 295
    throw p1
.end method

.method public final b(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lvd/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/db/DbManager$getEventDao$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/db/DbManager$getEventDao$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/db/DbManager$getEventDao$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/db/DbManager$getEventDao$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/db/DbManager$getEventDao$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/db/DbManager$getEventDao$1;-><init>(Lcom/startshorts/androidplayer/db/DbManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/db/DbManager$getEventDao$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/db/DbManager$getEventDao$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/startshorts/androidplayer/db/DbManager;->d:Lgt/p;

    .line 54
    .line 55
    invoke-interface {p1}, Lkotlinx/coroutines/r;->isCompleted()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    iput v3, v0, Lcom/startshorts/androidplayer/db/DbManager$getEventDao$1;->j:I

    .line 62
    .line 63
    invoke-interface {p1, v0}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v1, :cond_3

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    :goto_1
    sget-object p1, Lcom/startshorts/androidplayer/db/DbManager;->b:Lcom/startshorts/androidplayer/db/Database;

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/db/Database;->e()Lvd/a;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    const/4 p1, 0x0

    .line 80
    :goto_2
    return-object p1
.end method
