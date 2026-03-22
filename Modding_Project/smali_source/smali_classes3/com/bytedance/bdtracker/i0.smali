.class public Lcom/bytedance/bdtracker/i0;
.super Lcom/bytedance/bdtracker/c0;
.source ""


# static fields
.field public static final h:[J


# instance fields
.field public final g:Lcom/bytedance/bdtracker/a3;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    const-wide/16 v1, 0x2710

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-wide v1, v0, v3

    .line 8
    .line 9
    sput-object v0, Lcom/bytedance/bdtracker/i0;->h:[J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/e0;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/bdtracker/c0;-><init>(Lcom/bytedance/bdtracker/e0;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/bdtracker/a3;

    .line 5
    .line 6
    const-string v1, "sender_"

    .line 7
    .line 8
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, Lcom/bytedance/bdtracker/a3;-><init>(Ljava/lang/String;Lcom/bytedance/bdtracker/p1;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/bdtracker/i0;->g:Lcom/bytedance/bdtracker/a3;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/bdtracker/i0$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/bdtracker/i0$a;-><init>(Lcom/bytedance/bdtracker/i0;Ljava/util/Set;Z)V

    const-string p1, "event_upload_eid"

    invoke-static {p1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/bdtracker/d4;)Z
    .locals 9

    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/r3;

    .line 3
    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 4
    iget-object v2, v1, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 5
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    move-result-object v2

    iget v3, p1, Lcom/bytedance/bdtracker/u3;->l:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/bdtracker/r3;->a(Lcom/bytedance/bdtracker/e0;Lorg/json/JSONObject;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Lcom/bytedance/bdtracker/d4;->z:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, "local_time"

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 7
    iget-object v5, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 8
    iget-object v5, v5, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 9
    invoke-virtual {v4, v0, v3, v5}, Lcom/bytedance/bdtracker/p3;->a([Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/bdtracker/p1;)I

    move-result v0

    const/16 v4, 0xc8

    const/4 v5, 0x1

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/i0;->g:Lcom/bytedance/bdtracker/a3;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/a3;->c()V

    iput v2, p1, Lcom/bytedance/bdtracker/d4;->A:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d4;->l()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/bytedance/bdtracker/i0;->a(Ljava/util/Set;Z)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bytedance/bdtracker/a4;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    move v2, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move v5, v2

    goto :goto_1

    :cond_0
    const/16 v3, 0x1f4

    if-lt v0, v3, :cond_1

    const/16 v3, 0x258

    if-ge v0, v3, :cond_1

    :try_start_3
    iget-object v3, p0, Lcom/bytedance/bdtracker/i0;->g:Lcom/bytedance/bdtracker/a3;

    invoke-virtual {v3}, Lcom/bytedance/bdtracker/a3;->b()V

    :cond_1
    iget-object v3, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 10
    iget-object v4, v3, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 11
    invoke-virtual {v3}, Lcom/bytedance/bdtracker/e0;->d()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0xd

    invoke-static {v4, v6, v7, v3, v0}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;JLjava/lang/String;I)V

    iget-object v3, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 12
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 13
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v4, "Send pack failed:{}"

    .line 14
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v4, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Lcom/bytedance/bdtracker/d4;->A:I

    add-int/2addr v0, v5

    iput v0, p1, Lcom/bytedance/bdtracker/d4;->A:I

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d4;->l()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/bdtracker/i0;->a(Ljava/util/Set;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :goto_1
    iget-object v3, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 15
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 16
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 17
    new-array v4, v2, [Ljava/lang/Object;

    const-string v6, "Send pack failed"

    invoke-interface {v3, v1, v6, v0, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d4;->l()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/bytedance/bdtracker/i0;->a(Ljava/util/Set;Z)V

    goto :goto_0

    :goto_2
    return v2
.end method

.method public c()Z
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-wide/32 v6, 0xc350

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0, v1, v6, v7}, Lcom/bytedance/bdtracker/j0;->a(JJ)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 28
    .line 29
    new-array v2, v5, [Ljava/lang/Object;

    .line 30
    .line 31
    const-string v6, "New play session event"

    .line 32
    .line 33
    invoke-interface {v1, v3, v6, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 37
    .line 38
    const-string v2, "play_session"

    .line 39
    .line 40
    invoke-virtual {v1, v2, v0, v4}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->flush()V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->h()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_d

    .line 57
    .line 58
    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/j0;->c()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v2, v0, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v2, v1}, Lcom/bytedance/bdtracker/t4;->a(Landroid/content/Context;Z)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "access"

    .line 73
    .line 74
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_c

    .line 86
    .line 87
    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getHeaderCustomCallback()Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    invoke-interface {v1, v0}, Lcom/bytedance/applog/IHeaderCustomTimelyCallback;->updateHeader(Lorg/json/JSONObject;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 103
    .line 104
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const-string v6, "Send events with header:{}"

    .line 109
    .line 110
    invoke-interface {v1, v3, v6, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 120
    .line 121
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v6, p0, Lcom/bytedance/bdtracker/i0;->g:Lcom/bytedance/bdtracker/a3;

    .line 124
    .line 125
    invoke-virtual {v6}, Lcom/bytedance/bdtracker/a3;->a()Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-nez v7, :cond_2

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v7

    .line 136
    iget-wide v9, v6, Lcom/bytedance/bdtracker/a3;->f:J

    .line 137
    .line 138
    sub-long v9, v7, v9

    .line 139
    .line 140
    sget-object v11, Lcom/bytedance/bdtracker/a3;->h:[[J

    .line 141
    .line 142
    iget v12, v6, Lcom/bytedance/bdtracker/a3;->c:I

    .line 143
    .line 144
    aget-object v11, v11, v12

    .line 145
    .line 146
    aget-wide v12, v11, v5

    .line 147
    .line 148
    cmp-long v9, v9, v12

    .line 149
    .line 150
    if-ltz v9, :cond_3

    .line 151
    .line 152
    iput v4, v6, Lcom/bytedance/bdtracker/a3;->d:I

    .line 153
    .line 154
    iput-wide v7, v6, Lcom/bytedance/bdtracker/a3;->f:J

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_3
    iget v7, v6, Lcom/bytedance/bdtracker/a3;->d:I

    .line 158
    .line 159
    int-to-long v8, v7

    .line 160
    const/4 v10, 0x2

    .line 161
    aget-wide v10, v11, v10

    .line 162
    .line 163
    cmp-long v8, v8, v10

    .line 164
    .line 165
    if-gez v8, :cond_e

    .line 166
    .line 167
    add-int/2addr v7, v4

    .line 168
    iput v7, v6, Lcom/bytedance/bdtracker/a3;->d:I

    .line 169
    .line 170
    :goto_0
    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/a4;->b(Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    const/16 v7, 0x8

    .line 175
    .line 176
    if-ge v6, v7, :cond_5

    .line 177
    .line 178
    sub-int/2addr v7, v6

    .line 179
    move v6, v5

    .line 180
    :goto_1
    if-ge v6, v7, :cond_5

    .line 181
    .line 182
    invoke-virtual {v1, v2, v0}, Lcom/bytedance/bdtracker/a4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    if-nez v8, :cond_4

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_5
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .line 196
    .line 197
    const/4 v6, 0x0

    .line 198
    :try_start_0
    iget-object v7, v1, Lcom/bytedance/bdtracker/a4;->a:Lcom/bytedance/bdtracker/y3;

    .line 199
    .line 200
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    filled-new-array {v2}, [Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    const-string v8, "SELECT * FROM packV2 WHERE _app_id= ? ORDER BY _id DESC LIMIT 8"

    .line 209
    .line 210
    invoke-virtual {v7, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    if-nez v6, :cond_6

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_6
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_7

    .line 222
    .line 223
    new-instance v2, Lcom/bytedance/bdtracker/d4;

    .line 224
    .line 225
    invoke-direct {v2}, Lcom/bytedance/bdtracker/d4;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v6}, Lcom/bytedance/bdtracker/d4;->a(Landroid/database/Cursor;)I

    .line 229
    .line 230
    .line 231
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :catchall_0
    move-exception v2

    .line 236
    goto :goto_5

    .line 237
    :cond_7
    :goto_4
    invoke-static {v6}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :goto_5
    :try_start_1
    iget-object v7, v1, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 242
    .line 243
    iget-object v7, v7, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 244
    .line 245
    iget-object v7, v7, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    .line 247
    const-string v8, "Query event packs failed"

    .line 248
    .line 249
    :try_start_2
    new-array v9, v5, [Ljava/lang/Object;

    .line 250
    .line 251
    const/4 v10, 0x5

    .line 252
    invoke-interface {v7, v10, v8, v2, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    iget-object v7, v1, Lcom/bytedance/bdtracker/a4;->b:Lcom/bytedance/bdtracker/e0;

    .line 256
    .line 257
    iget-object v7, v7, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 258
    .line 259
    invoke-static {v7, v2}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    .line 261
    .line 262
    invoke-static {v6}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    .line 263
    .line 264
    .line 265
    :goto_6
    iget-object v2, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 266
    .line 267
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 268
    .line 269
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 270
    .line 271
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    const-string v7, "{} packs to be sent"

    .line 284
    .line 285
    invoke-interface {v2, v3, v7, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-lez v2, :cond_e

    .line 293
    .line 294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    move v6, v5

    .line 299
    :cond_8
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    if-eqz v7, :cond_b

    .line 304
    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    check-cast v7, Lcom/bytedance/bdtracker/d4;

    .line 310
    .line 311
    iget-object v8, v7, Lcom/bytedance/bdtracker/d4;->z:[B

    .line 312
    .line 313
    if-eqz v8, :cond_a

    .line 314
    .line 315
    array-length v8, v8

    .line 316
    if-gtz v8, :cond_9

    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_9
    invoke-virtual {p0, v7}, Lcom/bytedance/bdtracker/i0;->a(Lcom/bytedance/bdtracker/d4;)Z

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    if-eqz v7, :cond_8

    .line 324
    .line 325
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_a
    :goto_9
    iput v5, v7, Lcom/bytedance/bdtracker/d4;->A:I

    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_b
    invoke-virtual {v1, v0}, Lcom/bytedance/bdtracker/a4;->b(Ljava/util/List;)V

    .line 332
    .line 333
    .line 334
    iget-object v1, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 335
    .line 336
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 337
    .line 338
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 339
    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string v7, "sender"

    .line 346
    .line 347
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string v7, " successfully send "

    .line 351
    .line 352
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v6, " packs (total: "

    .line 359
    .line 360
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v0, ")"

    .line 371
    .line 372
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    new-array v2, v5, [Ljava/lang/Object;

    .line 380
    .line 381
    invoke-interface {v1, v3, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    goto :goto_a

    .line 385
    :catchall_1
    move-exception v0

    .line 386
    invoke-static {v6}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/Cursor;)V

    .line 387
    .line 388
    .line 389
    throw v0

    .line 390
    :cond_c
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 391
    .line 392
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 393
    .line 394
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 395
    .line 396
    new-array v1, v5, [Ljava/lang/Object;

    .line 397
    .line 398
    const-string v2, "Header is empty"

    .line 399
    .line 400
    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    :cond_d
    move v4, v5

    .line 404
    :cond_e
    :goto_a
    return v4
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sender"

    .line 2
    .line 3
    return-object v0
.end method

.method public e()[J
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/i0;->h:[J

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public g()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 4
    .line 5
    iget-wide v1, v0, Lcom/bytedance/bdtracker/p1;->q:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/bdtracker/p1;->a(J)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-wide v0, v0, Lcom/bytedance/bdtracker/p1;->q:J

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    const-string v1, "batch_event_interval"

    .line 19
    .line 20
    const-wide/32 v2, 0xea60

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :goto_0
    return-wide v0
.end method
