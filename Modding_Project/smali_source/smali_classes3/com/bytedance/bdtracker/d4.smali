.class public Lcom/bytedance/bdtracker/d4;
.super Lcom/bytedance/bdtracker/u3;
.source ""


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/b4;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/x3;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/e4;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/c4;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/h4;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/i4;",
            ">;"
        }
    .end annotation
.end field

.field public y:Lorg/json/JSONObject;

.field public z:[B


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
    .locals 2
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/bdtracker/u3;->b:J

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/bdtracker/u3;->c:J

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/d4;->z:[B

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/bdtracker/d4;->A:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/bdtracker/u3;->l:I

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/bdtracker/d4;->B:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    const/4 p1, 0x7

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

.method public final a(Ljava/util/Set;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/bdtracker/b;->a(Ljava/lang/String;)Lcom/bytedance/bdtracker/d;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->isBavEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/bdtracker/d4;->u:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getAutoTrackEventType()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/bytedance/applog/event/AutoTrackEventType;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/e4;

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz p1, :cond_1

    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->u:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/e4;

    iget-boolean v3, v2, Lcom/bytedance/bdtracker/e4;->C:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz p1, :cond_3

    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->s:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/b4;

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz p1, :cond_5

    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->x:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/i4;

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz p1, :cond_7

    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    return-object v1
.end method

.method public b()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v12, "e_ids"

    const-string v13, "varchar"

    const-string v0, "_id"

    const-string v1, "integer primary key autoincrement"

    const-string v2, "local_time_ms"

    const-string v3, "integer"

    const-string v4, "_data"

    const-string v5, "blob"

    const-string v6, "_fail"

    const-string v7, "integer"

    const-string v8, "event_type"

    const-string v9, "integer"

    const-string v10, "_app_id"

    const-string v11, "varchar"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/ContentValues;)V
    .locals 2
    .param p1    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-wide v0, p0, Lcom/bytedance/bdtracker/u3;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d4;->o()[B

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget v0, p0, Lcom/bytedance/bdtracker/u3;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "event_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    const-string v1, "_app_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->B:Ljava/lang/String;

    const-string v1, "e_ids"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

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
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/bdtracker/u3;->b:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "packV2"

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/bytedance/bdtracker/b;->a(Ljava/lang/String;)Lcom/bytedance/bdtracker/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "magic_tag"

    .line 15
    .line 16
    const-string v4, "ss_app_log"

    .line 17
    .line 18
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    iget-object v3, v0, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 22
    .line 23
    const-string v4, "header"

    .line 24
    .line 25
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    sget-object v3, Lcom/bytedance/bdtracker/p3;->d:Lorg/json/JSONObject;

    .line 29
    .line 30
    const-string v4, "time_sync"

    .line 31
    .line 32
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    new-instance v3, Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v4, v0, Lcom/bytedance/bdtracker/d4;->v:Ljava/util/List;

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    new-instance v4, Lorg/json/JSONArray;

    .line 51
    .line 52
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v5, v0, Lcom/bytedance/bdtracker/d4;->v:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_0

    .line 66
    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lcom/bytedance/bdtracker/c4;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    .line 79
    .line 80
    iget-object v6, v6, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const-string v5, "launch"

    .line 87
    .line 88
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object v4, v0, Lcom/bytedance/bdtracker/d4;->w:Ljava/util/List;

    .line 92
    .line 93
    if-eqz v4, :cond_a

    .line 94
    .line 95
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-nez v4, :cond_a

    .line 100
    .line 101
    new-instance v4, Lorg/json/JSONArray;

    .line 102
    .line 103
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-object v5, v0, Lcom/bytedance/bdtracker/d4;->w:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_9

    .line 117
    .line 118
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Lcom/bytedance/bdtracker/h4;

    .line 123
    .line 124
    invoke-virtual {v6}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    const/4 v8, 0x0

    .line 129
    if-eqz v1, :cond_2

    .line 130
    .line 131
    iget v9, v1, Lcom/bytedance/bdtracker/d;->l:I

    .line 132
    .line 133
    if-lez v9, :cond_2

    .line 134
    .line 135
    const-string v10, "launch_from"

    .line 136
    .line 137
    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    .line 139
    .line 140
    iput v8, v1, Lcom/bytedance/bdtracker/d;->l:I

    .line 141
    .line 142
    :cond_2
    iget-object v9, v0, Lcom/bytedance/bdtracker/d4;->u:Ljava/util/List;

    .line 143
    .line 144
    if-nez v9, :cond_3

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    iget-object v10, v0, Lcom/bytedance/bdtracker/d4;->u:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    if-eqz v11, :cond_5

    .line 163
    .line 164
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    check-cast v11, Lcom/bytedance/bdtracker/e4;

    .line 169
    .line 170
    iget-object v12, v11, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v13, v6, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v12, v13}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    if-eqz v12, :cond_4

    .line 179
    .line 180
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    if-nez v10, :cond_6

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    new-instance v11, Lorg/json/JSONArray;

    .line 196
    .line 197
    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 198
    .line 199
    .line 200
    const-wide/16 v12, 0x0

    .line 201
    .line 202
    move v14, v8

    .line 203
    :goto_3
    if-ge v14, v10, :cond_8

    .line 204
    .line 205
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    check-cast v15, Lcom/bytedance/bdtracker/e4;

    .line 210
    .line 211
    new-instance v8, Lorg/json/JSONArray;

    .line 212
    .line 213
    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 214
    .line 215
    .line 216
    move-object/from16 v16, v1

    .line 217
    .line 218
    iget-object v1, v15, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    .line 219
    .line 220
    move-object/from16 v17, v5

    .line 221
    .line 222
    const/4 v5, 0x0

    .line 223
    invoke-virtual {v8, v5, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 224
    .line 225
    .line 226
    move-object v1, v6

    .line 227
    iget-wide v5, v15, Lcom/bytedance/bdtracker/e4;->s:J

    .line 228
    .line 229
    const-wide/16 v18, 0x3e7

    .line 230
    .line 231
    add-long v5, v5, v18

    .line 232
    .line 233
    const-wide/16 v18, 0x3e8

    .line 234
    .line 235
    div-long v5, v5, v18

    .line 236
    .line 237
    move-object/from16 v18, v9

    .line 238
    .line 239
    const/4 v9, 0x1

    .line 240
    invoke-virtual {v8, v9, v5, v6}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v11, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 244
    .line 245
    .line 246
    iget-wide v5, v15, Lcom/bytedance/bdtracker/u3;->c:J

    .line 247
    .line 248
    cmp-long v8, v5, v12

    .line 249
    .line 250
    if-lez v8, :cond_7

    .line 251
    .line 252
    iget-object v8, v15, Lcom/bytedance/bdtracker/e4;->v:Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {v8}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    const-string v9, "$page_title"

    .line 259
    .line 260
    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    .line 262
    .line 263
    iget-object v8, v15, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    .line 264
    .line 265
    invoke-static {v8}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    const-string v9, "$page_key"

    .line 270
    .line 271
    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    .line 273
    .line 274
    move-wide v12, v5

    .line 275
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 276
    .line 277
    move-object v6, v1

    .line 278
    move-object/from16 v1, v16

    .line 279
    .line 280
    move-object/from16 v5, v17

    .line 281
    .line 282
    move-object/from16 v9, v18

    .line 283
    .line 284
    const/4 v8, 0x0

    .line 285
    goto :goto_3

    .line 286
    :cond_8
    move-object/from16 v16, v1

    .line 287
    .line 288
    move-object/from16 v17, v5

    .line 289
    .line 290
    move-object v1, v6

    .line 291
    const-string v5, "activites"

    .line 292
    .line 293
    invoke-virtual {v7, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 297
    .line 298
    .line 299
    iget-object v1, v1, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    .line 300
    .line 301
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-object/from16 v1, v16

    .line 305
    .line 306
    move-object/from16 v5, v17

    .line 307
    .line 308
    goto/16 :goto_1

    .line 309
    .line 310
    :cond_9
    const-string v1, "terminate"

    .line 311
    .line 312
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    .line 314
    .line 315
    :cond_a
    invoke-virtual {v0, v3}, Lcom/bytedance/bdtracker/d4;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    if-lez v4, :cond_b

    .line 324
    .line 325
    const-string v4, "event_v3"

    .line 326
    .line 327
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    .line 329
    .line 330
    :cond_b
    iget-object v1, v0, Lcom/bytedance/bdtracker/d4;->t:Ljava/util/List;

    .line 331
    .line 332
    if-eqz v1, :cond_e

    .line 333
    .line 334
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-nez v1, :cond_e

    .line 339
    .line 340
    new-instance v1, Ljava/util/HashMap;

    .line 341
    .line 342
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 343
    .line 344
    .line 345
    iget-object v4, v0, Lcom/bytedance/bdtracker/d4;->t:Ljava/util/List;

    .line 346
    .line 347
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    if-eqz v5, :cond_d

    .line 356
    .line 357
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    check-cast v5, Lcom/bytedance/bdtracker/x3;

    .line 362
    .line 363
    iget-object v6, v5, Lcom/bytedance/bdtracker/x3;->s:Ljava/lang/String;

    .line 364
    .line 365
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    check-cast v6, Lorg/json/JSONArray;

    .line 370
    .line 371
    if-nez v6, :cond_c

    .line 372
    .line 373
    new-instance v6, Lorg/json/JSONArray;

    .line 374
    .line 375
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 376
    .line 377
    .line 378
    iget-object v7, v5, Lcom/bytedance/bdtracker/x3;->s:Ljava/lang/String;

    .line 379
    .line 380
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    :cond_c
    invoke-virtual {v5}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 388
    .line 389
    .line 390
    iget-object v5, v5, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    .line 391
    .line 392
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    goto :goto_4

    .line 396
    :cond_d
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    if-eqz v4, :cond_e

    .line 409
    .line 410
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    check-cast v4, Ljava/util/Map$Entry;

    .line 415
    .line 416
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    check-cast v5, Ljava/lang/String;

    .line 421
    .line 422
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    .line 428
    .line 429
    goto :goto_5

    .line 430
    :cond_e
    const-string v1, ","

    .line 431
    .line 432
    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    iput-object v1, v0, Lcom/bytedance/bdtracker/d4;->B:Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    iget-object v3, v0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    .line 443
    .line 444
    iget-wide v4, v0, Lcom/bytedance/bdtracker/u3;->c:J

    .line 445
    .line 446
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    const/4 v5, 0x4

    .line 455
    const-string v6, "Pack success ts:{}"

    .line 456
    .line 457
    invoke-interface {v1, v5, v3, v6, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    return-object v2
.end method

.method public k()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->v:Ljava/util/List;

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int/2addr v1, v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->w:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sub-int/2addr v1, v0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/bytedance/bdtracker/b;->a(Ljava/lang/String;)Lcom/bytedance/bdtracker/d;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->isBavEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->u:Ljava/util/List;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sub-int/2addr v1, v0

    .line 44
    :cond_2
    return v1
.end method

.method public l()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/bdtracker/d4;->B:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/d4;->B:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, ","

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "ssid"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->v:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/bytedance/bdtracker/c4;

    .line 30
    .line 31
    iget-object v3, v2, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    move-object v5, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->u:Ljava/util/List;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/bytedance/bdtracker/e4;

    .line 69
    .line 70
    iget-object v3, v2, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->t:Ljava/util/List;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_6

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/bytedance/bdtracker/x3;

    .line 105
    .line 106
    iget-object v3, v2, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_5

    .line 113
    .line 114
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 115
    .line 116
    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_6
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->s:Ljava/util/List;

    .line 123
    .line 124
    if-eqz v0, :cond_8

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_8

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Lcom/bytedance/bdtracker/b4;

    .line 141
    .line 142
    iget-object v3, v2, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_7

    .line 149
    .line 150
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 151
    .line 152
    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    iget-object v3, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    .line 163
    .line 164
    const/4 v0, 0x0

    .line 165
    new-array v6, v0, [Ljava/lang/Object;

    .line 166
    .line 167
    const/4 v2, 0x4

    .line 168
    const-string v4, "Reload ssid from event failed"

    .line 169
    .line 170
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_8
    return-void
.end method

.method public n()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "user_unique_id_type"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->v:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/bytedance/bdtracker/c4;

    .line 30
    .line 31
    iget-object v3, v2, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    move-object v5, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->u:Ljava/util/List;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/bytedance/bdtracker/e4;

    .line 69
    .line 70
    iget-object v3, v2, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->t:Ljava/util/List;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_6

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/bytedance/bdtracker/x3;

    .line 105
    .line 106
    iget-object v3, v2, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_5

    .line 113
    .line 114
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 115
    .line 116
    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_6
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->s:Ljava/util/List;

    .line 123
    .line 124
    if-eqz v0, :cond_8

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_8

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Lcom/bytedance/bdtracker/b4;

    .line 141
    .line 142
    iget-object v3, v2, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_7

    .line 149
    .line 150
    iget-object v0, p0, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 151
    .line 152
    iget-object v2, v2, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    iget-object v3, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    .line 163
    .line 164
    const/4 v0, 0x0

    .line 165
    new-array v6, v0, [Ljava/lang/Object;

    .line 166
    .line 167
    const/4 v2, 0x4

    .line 168
    const-string v4, "Reload uuid type from event failed"

    .line 169
    .line 170
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_8
    return-void
.end method

.method public final o()[B
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "UTF-8"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    move-object v5, v0

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/u3;->d()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v3, p0, Lcom/bytedance/bdtracker/u3;->a:Ljava/util/List;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    new-array v6, v0, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    const-string v4, "Convert json to bytes failed"

    .line 29
    .line 30
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Pack detail:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/bdtracker/d4;->s:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/d4;->t:Ljava/util/List;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/2addr v1, v2

    .line 27
    :cond_1
    if-lez v1, :cond_2

    .line 28
    .line 29
    const-string v2, "\teventCount="

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v1, p0, Lcom/bytedance/bdtracker/d4;->u:Ljava/util/List;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    const-string v1, "\tpageCount="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/bytedance/bdtracker/d4;->u:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-object v1, p0, Lcom/bytedance/bdtracker/d4;->v:Ljava/util/List;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    const-string v1, "\tlaunchCount="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/bytedance/bdtracker/d4;->v:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_4
    iget-object v1, p0, Lcom/bytedance/bdtracker/d4;->w:Ljava/util/List;

    .line 86
    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    const-string v1, "\tterminateCount="

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/bytedance/bdtracker/d4;->w:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-object v1, p0, Lcom/bytedance/bdtracker/d4;->x:Ljava/util/List;

    .line 110
    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_6

    .line 118
    .line 119
    const-string v1, "\ttraceCount="

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/bytedance/bdtracker/d4;->x:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :cond_6
    iget v1, p0, Lcom/bytedance/bdtracker/d4;->A:I

    .line 134
    .line 135
    if-lez v1, :cond_7

    .line 136
    .line 137
    const-string v1, "\tfailCount="

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget v1, p0, Lcom/bytedance/bdtracker/d4;->A:I

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    return-object v0
.end method
