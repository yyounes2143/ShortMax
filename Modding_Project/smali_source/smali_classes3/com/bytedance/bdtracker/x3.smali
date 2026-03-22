.class public Lcom/bytedance/bdtracker/x3;
.super Lcom/bytedance/bdtracker/u3;
.source ""


# instance fields
.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/bdtracker/u3;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/bdtracker/x3;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/bdtracker/x3;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/bytedance/bdtracker/u3;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/bdtracker/x3;->t:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/bdtracker/x3;->s:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/bdtracker/x3;->t:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/bdtracker/u3;->l:I

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

    iput-object v0, p0, Lcom/bytedance/bdtracker/x3;->t:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/bdtracker/x3;->s:Ljava/lang/String;

    const/16 p1, 0x10

    return p1
.end method

.method public a(Lorg/json/JSONObject;)Lcom/bytedance/bdtracker/u3;
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;)Lcom/bytedance/bdtracker/u3;

    const-string v0, "params"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/x3;->t:Ljava/lang/String;

    const-string v0, "category"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/bdtracker/x3;->s:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bytedance/bdtracker/u3;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v0, "varchar"

    const-string v2, "category"

    const-string v3, "params"

    filled-new-array {v3, v0, v2, v0}, [Ljava/lang/String;

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

    iget-object v0, p0, Lcom/bytedance/bdtracker/x3;->t:Ljava/lang/String;

    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/x3;->s:Ljava/lang/String;

    const-string v1, "category"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-super {p0, p1}, Lcom/bytedance/bdtracker/u3;->b(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/x3;->t:Ljava/lang/String;

    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/bdtracker/x3;->s:Ljava/lang/String;

    const-string v1, "category"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "param:"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/bdtracker/x3;->t:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " category:"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/bytedance/bdtracker/x3;->s:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "custom_event"

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 10

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
    iget-object v1, p0, Lcom/bytedance/bdtracker/x3;->t:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    const/4 v1, 0x4

    .line 97
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 98
    .line 99
    iget-object v3, p0, Lcom/bytedance/bdtracker/x3;->t:Ljava/lang/String;

    .line 100
    .line 101
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_5

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    if-eqz v6, :cond_4

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    iget-object v7, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    const-string v8, "\u81ea\u5b9a\u4e49\u4e8b\u4ef6\u5b58\u5728\u91cd\u590d\u7684key"

    .line 137
    .line 138
    const/4 v9, 0x0

    .line 139
    :try_start_1
    new-array v9, v9, [Ljava/lang/Object;

    .line 140
    .line 141
    invoke-interface {v6, v1, v7, v8, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :catch_0
    move-exception v2

    .line 146
    goto :goto_3

    .line 147
    :cond_4
    :goto_2
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :goto_3
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    iget-object v4, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    .line 156
    .line 157
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const-string v5, "\u89e3\u6790\u4e8b\u4ef6\u53c2\u6570\u5931\u8d25"

    .line 162
    .line 163
    invoke-interface {v3, v1, v4, v5, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_5
    return-object v0
.end method
