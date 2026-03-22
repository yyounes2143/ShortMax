.class public Lcom/bytedance/bdtracker/b4;
.super Lcom/bytedance/bdtracker/u3;
.source ""


# instance fields
.field public s:Ljava/lang/String;

.field public t:Z

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/bdtracker/u3;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/bdtracker/u3;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/bdtracker/u3;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/bytedance/bdtracker/b4;->t:Z

    iput-object p4, p0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/bdtracker/u3;->l:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/bdtracker/u3;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/bytedance/bdtracker/b4;->t:Z

    iput-object p4, p0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/bdtracker/u3;->l:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/bdtracker/u3;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/bytedance/bdtracker/u3;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/bytedance/bdtracker/b4;->t:Z

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

    iput-object v0, p0, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/bdtracker/b4;->t:Z

    const/16 p1, 0x11

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

    const-string v0, "event"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    const-string v0, "params"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    const-string v0, "is_bav"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/bdtracker/b4;->t:Z

    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 9
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

    const-string v7, "is_bav"

    const-string v8, "integer"

    const-string v3, "event"

    const-string v4, "varchar"

    const-string v5, "params"

    const-string v6, "varchar"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public b(Landroid/content/ContentValues;)V
    .locals 7
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1}, Lcom/bytedance/bdtracker/u3;->b(Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    const-string v1, "event"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/b4;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/b4;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    const-string v4, "Fill params failed"

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/b4;->t:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_bav"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

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

    iget-object v0, p0, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    const-string v1, "event"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/b4;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/b4;->k()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/b4;->t:Z

    const-string v1, "is_bav"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "eventv3"

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
    iget-object v1, p0, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    .line 89
    .line 90
    const-string v2, "event"

    .line 91
    .line 92
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    iget-boolean v1, p0, Lcom/bytedance/bdtracker/b4;->t:Z

    .line 96
    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    const-string v1, "is_bav"

    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    :cond_4
    iget-boolean v1, p0, Lcom/bytedance/bdtracker/b4;->t:Z

    .line 106
    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    iget-object v1, p0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    .line 110
    .line 111
    if-nez v1, :cond_5

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/b4;->k()V

    .line 114
    .line 115
    .line 116
    :cond_5
    iget-object v1, p0, Lcom/bytedance/bdtracker/b4;->s:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/bytedance/bdtracker/u3;->k:I

    .line 122
    .line 123
    sget-object v2, Lcom/bytedance/bdtracker/t4$a;->b:Lcom/bytedance/bdtracker/t4$a;

    .line 124
    .line 125
    iget v2, v2, Lcom/bytedance/bdtracker/t4$a;->a:I

    .line 126
    .line 127
    if-eq v1, v2, :cond_6

    .line 128
    .line 129
    const-string v2, "nt"

    .line 130
    .line 131
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    :cond_6
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->n:Ljava/lang/String;

    .line 135
    .line 136
    const-string v2, "datetime"

    .line 137
    .line 138
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->j:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_7

    .line 148
    .line 149
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->j:Ljava/lang/String;

    .line 150
    .line 151
    const-string v2, "ab_sdk_version"

    .line 152
    .line 153
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    :cond_7
    return-object v0
.end method

.method public k()V
    .locals 0

    .line 1
    return-void
.end method
