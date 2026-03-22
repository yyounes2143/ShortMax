.class public Lcom/bytedance/bdtracker/c4;
.super Lcom/bytedance/bdtracker/u3;
.source ""


# instance fields
.field public s:I

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/bdtracker/u3;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)I
    .locals 1
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/bdtracker/u3;->a(Landroid/database/Cursor;)I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/c4;->t:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/bdtracker/c4;->s:I

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/c4;->v:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/bdtracker/c4;->w:I

    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/c4;->x:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/c4;->y:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/bdtracker/c4;->z:Z

    const/16 p1, 0x15

    return p1
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/bdtracker/u3;
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    const-string v3, "Not allowed"

    invoke-interface {p1, v2, v0, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p0}, Lcom/bytedance/bdtracker/u3;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v15, "resume_from_background"

    const-string v16, "integer"

    const-string v3, "ver_name"

    const-string v4, "varchar"

    const-string v5, "ver_code"

    const-string v6, "integer"

    const-string v7, "last_session"

    const-string v8, "varchar"

    const-string v9, "is_first_time"

    const-string v10, "integer"

    const-string v11, "page_title"

    const-string v12, "varchar"

    const-string v13, "page_key"

    const-string v14, "varchar"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public b(Landroid/content/ContentValues;)V
    .locals 2
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1}, Lcom/bytedance/bdtracker/u3;->b(Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/c4;->t:Ljava/lang/String;

    const-string v1, "ver_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/bdtracker/c4;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ver_code"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/c4;->v:Ljava/lang/String;

    const-string v1, "last_session"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/bytedance/bdtracker/c4;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_first_time"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/c4;->x:Ljava/lang/String;

    const-string v1, "page_title"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/c4;->y:Ljava/lang/String;

    const-string v1, "page_key"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/c4;->z:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "resume_from_background"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    const-string v3, "Not allowed"

    invoke-interface {p1, v2, v0, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/c4;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "bg"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "fg"

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "launch"

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/bytedance/bdtracker/u3;->c:J

    .line 7
    .line 8
    const-string v3, "local_time_ms"

    .line 9
    .line 10
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    iget-wide v1, p0, Lcom/bytedance/bdtracker/u3;->d:J

    .line 14
    .line 15
    const-string v3, "tea_event_index"

    .line 16
    .line 17
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "session_id"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    iget-wide v1, p0, Lcom/bytedance/bdtracker/u3;->f:J

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    cmp-long v3, v1, v3

    .line 32
    .line 33
    if-lez v3, :cond_0

    .line 34
    .line 35
    const-string v3, "user_id"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->g:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->g:Ljava/lang/String;

    .line 52
    .line 53
    :goto_0
    const-string v2, "user_unique_id"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    .line 67
    .line 68
    const-string v2, "$user_unique_id_type"

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    .line 82
    .line 83
    const-string v2, "ssid"

    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-boolean v1, p0, Lcom/bytedance/bdtracker/c4;->u:Z

    .line 89
    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    const-string v2, "is_background"

    .line 93
    .line 94
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    :cond_4
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->n:Ljava/lang/String;

    .line 98
    .line 99
    const-string v2, "datetime"

    .line 100
    .line 101
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->j:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_5

    .line 111
    .line 112
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->j:Ljava/lang/String;

    .line 113
    .line 114
    const-string v2, "ab_sdk_version"

    .line 115
    .line 116
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    :cond_5
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v1}, Lcom/bytedance/bdtracker/b;->a(Ljava/lang/String;)Lcom/bytedance/bdtracker/d;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-eqz v1, :cond_6

    .line 126
    .line 127
    invoke-interface {v1}, Lcom/bytedance/applog/IAppLogInstance;->getDeepLinkUrl()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_6

    .line 136
    .line 137
    const-string v2, "$deeplink_url"

    .line 138
    .line 139
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    :cond_6
    iget-object v1, p0, Lcom/bytedance/bdtracker/c4;->v:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    const/4 v2, 0x1

    .line 149
    if-nez v1, :cond_7

    .line 150
    .line 151
    const-string v1, "uuid_changed"

    .line 152
    .line 153
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    iget-object v1, p0, Lcom/bytedance/bdtracker/c4;->v:Ljava/lang/String;

    .line 157
    .line 158
    const-string v3, "original_session_id"

    .line 159
    .line 160
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    :cond_7
    iget v1, p0, Lcom/bytedance/bdtracker/c4;->w:I

    .line 164
    .line 165
    const-string v3, "true"

    .line 166
    .line 167
    if-ne v1, v2, :cond_8

    .line 168
    .line 169
    const-string v1, "$is_first_time"

    .line 170
    .line 171
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    :cond_8
    iget-object v1, p0, Lcom/bytedance/bdtracker/c4;->x:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    const-string v2, ""

    .line 181
    .line 182
    if-eqz v1, :cond_9

    .line 183
    .line 184
    move-object v1, v2

    .line 185
    goto :goto_1

    .line 186
    :cond_9
    iget-object v1, p0, Lcom/bytedance/bdtracker/c4;->x:Ljava/lang/String;

    .line 187
    .line 188
    :goto_1
    const-string v4, "$page_title"

    .line 189
    .line 190
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    iget-object v1, p0, Lcom/bytedance/bdtracker/c4;->y:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_a

    .line 200
    .line 201
    move-object v1, v2

    .line 202
    goto :goto_2

    .line 203
    :cond_a
    iget-object v1, p0, Lcom/bytedance/bdtracker/c4;->y:Ljava/lang/String;

    .line 204
    .line 205
    :goto_2
    const-string v4, "$page_key"

    .line 206
    .line 207
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    .line 209
    .line 210
    iget-boolean v1, p0, Lcom/bytedance/bdtracker/c4;->z:Z

    .line 211
    .line 212
    if-eqz v1, :cond_b

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_b
    const-string v3, "false"

    .line 216
    .line 217
    :goto_3
    const-string v1, "$resume_from_background"

    .line 218
    .line 219
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v0, v2}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return-object v0
.end method
