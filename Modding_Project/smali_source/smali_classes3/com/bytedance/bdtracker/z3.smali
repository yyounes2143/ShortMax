.class public Lcom/bytedance/bdtracker/z3;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/bytedance/bdtracker/e0;

.field public final b:Lcom/bytedance/bdtracker/y3;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;Lcom/bytedance/bdtracker/y3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/bdtracker/z3;->b:Lcom/bytedance/bdtracker/y3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/applog/event/IEventHandler;ILjava/lang/String;Lcom/bytedance/bdtracker/u3;Lorg/json/JSONObject;)Lcom/bytedance/applog/event/EventPolicy;
    .locals 5

    invoke-virtual {p4}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    invoke-virtual {p4}, Lcom/bytedance/bdtracker/u3;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 1
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 3
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x5

    const-string v4, "Param:[{}] is not a json string"

    invoke-interface {v2, v3, v4, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    invoke-static {p5, v1}, Lcom/bytedance/bdtracker/l0$b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_1
    invoke-interface {p1, p2, p3, v1}, Lcom/bytedance/applog/event/IEventHandler;->onReceive(ILjava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/applog/event/EventPolicy;

    move-result-object p1

    .line 4
    iput-object v1, p4, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    return-object p1
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/u3;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/bdtracker/u3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "eventv3"

    :try_start_1
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/u3;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/bdtracker/b4;

    iget-object v1, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 10
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 11
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/e1;

    .line 12
    iget-object v2, v0, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    iget-object v0, v0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/bdtracker/e1;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 14
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 15
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x5

    const-string v2, "Notify event observer failed"

    invoke-interface {v0, v1, v2, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/bytedance/applog/event/IEventHandler;Lcom/bytedance/bdtracker/u3;)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/bytedance/applog/event/IEventHandler;->acceptType()I

    move-result v1

    instance-of v2, p2, Lcom/bytedance/bdtracker/w3;

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/bytedance/applog/event/EventType;->a(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v7, p2, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    const/16 v4, 0x8

    const-string v5, "bav2b_click"

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/bdtracker/z3;->a(Lcom/bytedance/applog/event/IEventHandler;ILjava/lang/String;Lcom/bytedance/bdtracker/u3;Lorg/json/JSONObject;)Lcom/bytedance/applog/event/EventPolicy;

    move-result-object p1

    goto :goto_2

    :cond_0
    instance-of v2, p2, Lcom/bytedance/bdtracker/b4;

    if-eqz v2, :cond_1

    invoke-static {v1, v0}, Lcom/bytedance/applog/event/EventType;->a(II)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/bytedance/bdtracker/b4;

    .line 5
    iget-object v1, v1, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    move v4, v0

    goto :goto_1

    .line 6
    :cond_1
    instance-of v2, p2, Lcom/bytedance/bdtracker/e4;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/bytedance/applog/event/EventType;->a(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v7, p2, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    const/4 v4, 0x4

    const-string v5, "bav2b_page"

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/bdtracker/z3;->a(Lcom/bytedance/applog/event/IEventHandler;ILjava/lang/String;Lcom/bytedance/bdtracker/u3;Lorg/json/JSONObject;)Lcom/bytedance/applog/event/EventPolicy;

    move-result-object p1

    goto :goto_2

    :cond_2
    instance-of v2, p2, Lcom/bytedance/bdtracker/f4;

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/bytedance/applog/event/EventType;->a(II)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/bytedance/bdtracker/f4;

    .line 7
    iget-object v1, v1, Lcom/bytedance/bdtracker/f4;->t:Ljava/lang/String;

    move v4, v2

    .line 8
    :goto_1
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p2, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 9
    :goto_2
    sget-object p2, Lcom/bytedance/applog/event/EventPolicy;->DENY:Lcom/bytedance/applog/event/EventPolicy;

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    return v0
.end method

.method public b(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/u3;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_11

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_d

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isTrackEventEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->C:Lcom/bytedance/applog/event/IEventHandler;

    .line 49
    .line 50
    const/4 v4, 0x5

    .line 51
    const/4 v5, 0x0

    .line 52
    :try_start_0
    iget-object v6, p0, Lcom/bytedance/bdtracker/z3;->b:Lcom/bytedance/bdtracker/y3;

    .line 53
    .line 54
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    .line 56
    .line 57
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    move-object v8, v5

    .line 66
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_7

    .line 71
    .line 72
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    check-cast v9, Lcom/bytedance/bdtracker/u3;

    .line 77
    .line 78
    invoke-virtual {p0, v1, v9}, Lcom/bytedance/bdtracker/z3;->a(Lcom/bytedance/applog/event/IEventHandler;Lcom/bytedance/bdtracker/u3;)Z

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-nez v10, :cond_2

    .line 83
    .line 84
    iget-object v1, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 85
    .line 86
    iget-object v5, v1, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/e0;->d()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-wide/16 v7, 0x2

    .line 93
    .line 94
    const/16 v9, 0x3ed

    .line 95
    .line 96
    invoke-static {v5, v7, v8, v1, v9}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;JLjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    invoke-static {v6}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception v1

    .line 104
    move-object v5, v6

    .line 105
    goto/16 :goto_4

    .line 106
    .line 107
    :cond_2
    :try_start_2
    iget-object v10, v9, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-eqz v10, :cond_3

    .line 114
    .line 115
    iget-object v10, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 116
    .line 117
    iget-object v10, v10, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 118
    .line 119
    iget-object v10, v10, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 120
    .line 121
    iput-object v10, v9, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 122
    .line 123
    :cond_3
    iget-object v10, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 124
    .line 125
    iget-object v10, v10, Lcom/bytedance/bdtracker/e0;->E:Lcom/bytedance/bdtracker/f0;

    .line 126
    .line 127
    invoke-virtual {v10, v9}, Lcom/bytedance/bdtracker/f0;->a(Lcom/bytedance/bdtracker/u3;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9}, Lcom/bytedance/bdtracker/u3;->f()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    invoke-virtual {v9, v8}, Lcom/bytedance/bdtracker/u3;->a(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    invoke-virtual {v6, v10, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 139
    .line 140
    .line 141
    move-result-wide v10

    .line 142
    iput-wide v10, v9, Lcom/bytedance/bdtracker/u3;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .line 144
    const-string v10, "eventv3"

    .line 145
    .line 146
    :try_start_3
    invoke-virtual {v9}, Lcom/bytedance/bdtracker/u3;->f()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-eqz v10, :cond_4

    .line 155
    .line 156
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    instance-of v10, v9, Lcom/bytedance/bdtracker/c4;

    .line 161
    .line 162
    if-eqz v10, :cond_5

    .line 163
    .line 164
    move-object v10, v9

    .line 165
    check-cast v10, Lcom/bytedance/bdtracker/c4;

    .line 166
    .line 167
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_5
    instance-of v10, v9, Lcom/bytedance/bdtracker/e4;

    .line 172
    .line 173
    if-eqz v10, :cond_6

    .line 174
    .line 175
    move-object v10, v9

    .line 176
    check-cast v10, Lcom/bytedance/bdtracker/e4;

    .line 177
    .line 178
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    :cond_6
    :goto_1
    const-string v10, "event_save_db"

    .line 182
    .line 183
    invoke-static {v10, v9}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_7
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 191
    .line 192
    iget-object v5, v1, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/e0;->d()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const-string v7, "data"

    .line 199
    .line 200
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-eqz v7, :cond_8

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_8
    if-eqz v5, :cond_9

    .line 211
    .line 212
    new-instance v7, Lcom/bytedance/bdtracker/r2;

    .line 213
    .line 214
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    invoke-direct {v7, v8}, Lcom/bytedance/bdtracker/r2;-><init>(I)V

    .line 219
    .line 220
    .line 221
    move-object v8, v5

    .line 222
    check-cast v8, Lcom/bytedance/bdtracker/m2;

    .line 223
    .line 224
    invoke-virtual {v8, v7}, Lcom/bytedance/bdtracker/m2;->a(Lcom/bytedance/bdtracker/p2;)V

    .line 225
    .line 226
    .line 227
    :cond_9
    if-eqz v5, :cond_c

    .line 228
    .line 229
    new-instance v13, Lcom/bytedance/bdtracker/t2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    .line 231
    if-eqz v1, :cond_a

    .line 232
    .line 233
    :goto_2
    move-object v10, v1

    .line 234
    goto :goto_3

    .line 235
    :cond_a
    const-string v1, ""

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :goto_3
    const-wide/16 v11, 0x1

    .line 239
    .line 240
    const-wide/16 v8, 0x1

    .line 241
    .line 242
    move-object v7, v13

    .line 243
    :try_start_4
    invoke-direct/range {v7 .. v12}, Lcom/bytedance/bdtracker/t2;-><init>(JLjava/lang/String;J)V

    .line 244
    .line 245
    .line 246
    check-cast v5, Lcom/bytedance/bdtracker/m2;

    .line 247
    .line 248
    invoke-virtual {v5, v13}, Lcom/bytedance/bdtracker/m2;->a(Lcom/bytedance/bdtracker/p2;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 249
    .line 250
    .line 251
    goto :goto_6

    .line 252
    :catchall_1
    move-exception v1

    .line 253
    :goto_4
    :try_start_5
    iget-object v6, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 254
    .line 255
    iget-object v6, v6, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 256
    .line 257
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 258
    .line 259
    const-string v7, "Insert to table failed"

    .line 260
    .line 261
    :try_start_6
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    invoke-interface {v6, v4, v7, v8}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-lez v6, :cond_b

    .line 273
    .line 274
    const/4 v6, 0x0

    .line 275
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    instance-of p1, p1, Lcom/bytedance/bdtracker/i4;

    .line 280
    .line 281
    if-nez p1, :cond_b

    .line 282
    .line 283
    iget-object p1, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 284
    .line 285
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 286
    .line 287
    invoke-static {p1, v1}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :catchall_2
    move-exception p1

    .line 292
    goto/16 :goto_c

    .line 293
    .line 294
    :cond_b
    :goto_5
    move-object v6, v5

    .line 295
    :cond_c
    :goto_6
    invoke-static {v6}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, v3}, Lcom/bytedance/bdtracker/z3;->a(Ljava/util/List;)V

    .line 299
    .line 300
    .line 301
    :try_start_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_e

    .line 310
    .line 311
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    check-cast v1, Lcom/bytedance/bdtracker/e4;

    .line 316
    .line 317
    iget-wide v2, v1, Lcom/bytedance/bdtracker/e4;->s:J

    .line 318
    .line 319
    const-wide/16 v5, -0x1

    .line 320
    .line 321
    cmp-long v2, v2, v5

    .line 322
    .line 323
    if-nez v2, :cond_d

    .line 324
    .line 325
    iget-object v2, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 326
    .line 327
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 328
    .line 329
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/e1;

    .line 330
    .line 331
    iget-object v1, v1, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    .line 332
    .line 333
    invoke-virtual {v2, v1}, Lcom/bytedance/bdtracker/e1;->onPageEnter(Lorg/json/JSONObject;)V

    .line 334
    .line 335
    .line 336
    goto :goto_7

    .line 337
    :catchall_3
    move-exception p1

    .line 338
    goto :goto_8

    .line 339
    :cond_d
    iget-object v2, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 340
    .line 341
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 342
    .line 343
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/e1;

    .line 344
    .line 345
    iget-object v1, v1, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    .line 346
    .line 347
    invoke-virtual {v2, v1}, Lcom/bytedance/bdtracker/e1;->onPageLeave(Lorg/json/JSONObject;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 348
    .line 349
    .line 350
    goto :goto_7

    .line 351
    :goto_8
    iget-object v1, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 352
    .line 353
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 354
    .line 355
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 356
    .line 357
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    const-string v2, "Notify event observer failed"

    .line 362
    .line 363
    invoke-interface {v1, v4, v2, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    :cond_e
    :try_start_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_f

    .line 375
    .line 376
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    check-cast v1, Lcom/bytedance/bdtracker/c4;

    .line 381
    .line 382
    iget-object v2, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 383
    .line 384
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 385
    .line 386
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->b:Lcom/bytedance/bdtracker/f1;

    .line 387
    .line 388
    iget-wide v5, v1, Lcom/bytedance/bdtracker/u3;->b:J

    .line 389
    .line 390
    iget-object v1, v1, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v2, v5, v6, v1}, Lcom/bytedance/bdtracker/f1;->onSessionStart(JLjava/lang/String;)V

    .line 393
    .line 394
    .line 395
    goto :goto_9

    .line 396
    :catchall_4
    move-exception p1

    .line 397
    goto :goto_b

    .line 398
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-eqz v0, :cond_10

    .line 407
    .line 408
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    check-cast v0, Lcom/bytedance/bdtracker/c4;

    .line 413
    .line 414
    iget-object v1, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 415
    .line 416
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 417
    .line 418
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/e1;

    .line 419
    .line 420
    iget-object v0, v0, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    .line 421
    .line 422
    invoke-virtual {v1, v0}, Lcom/bytedance/bdtracker/e1;->onLaunch(Lorg/json/JSONObject;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 423
    .line 424
    .line 425
    goto :goto_a

    .line 426
    :goto_b
    iget-object v0, p0, Lcom/bytedance/bdtracker/z3;->a:Lcom/bytedance/bdtracker/e0;

    .line 427
    .line 428
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 429
    .line 430
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 431
    .line 432
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    const-string v1, "Notify session observer failed "

    .line 437
    .line 438
    invoke-interface {v0, v4, v1, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    :cond_10
    return-void

    .line 442
    :goto_c
    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 443
    .line 444
    .line 445
    throw p1

    .line 446
    :cond_11
    :goto_d
    return-void
.end method
