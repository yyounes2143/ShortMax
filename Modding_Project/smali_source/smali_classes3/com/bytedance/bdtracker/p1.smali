.class public Lcom/bytedance/bdtracker/p1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/bytedance/bdtracker/d;

.field public final c:Lcom/bytedance/applog/InitConfig;

.field public final d:Landroid/content/SharedPreferences;

.field public final e:Landroid/content/SharedPreferences;

.field public final f:Landroid/content/SharedPreferences;

.field public volatile g:Lorg/json/JSONObject;

.field public volatile h:Ljava/lang/String;

.field public volatile i:Lorg/json/JSONObject;

.field public final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public n:I

.field public o:J

.field public p:I

.field public q:J

.field public r:Z

.field public s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/bdtracker/p1;->j:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/bytedance/bdtracker/p1;->k:Ljava/util/Set;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput v2, p0, Lcom/bytedance/bdtracker/p1;->m:I

    .line 20
    .line 21
    const/16 v3, 0x1b

    .line 22
    .line 23
    iput v3, p0, Lcom/bytedance/bdtracker/p1;->n:I

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    iput-wide v3, p0, Lcom/bytedance/bdtracker/p1;->o:J

    .line 28
    .line 29
    iput v2, p0, Lcom/bytedance/bdtracker/p1;->p:I

    .line 30
    .line 31
    iput-wide v3, p0, Lcom/bytedance/bdtracker/p1;->q:J

    .line 32
    .line 33
    iput-boolean v2, p0, Lcom/bytedance/bdtracker/p1;->r:Z

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    iput v3, p0, Lcom/bytedance/bdtracker/p1;->s:I

    .line 37
    .line 38
    iput-object p1, p0, Lcom/bytedance/bdtracker/p1;->b:Lcom/bytedance/bdtracker/d;

    .line 39
    .line 40
    iput-object p2, p0, Lcom/bytedance/bdtracker/p1;->a:Landroid/content/Context;

    .line 41
    .line 42
    iput-object p3, p0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 43
    .line 44
    invoke-virtual {p3}, Lcom/bytedance/applog/InitConfig;->getSpName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-static {p2, p3, v2}, Lcom/bytedance/bdtracker/g4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    iput-object p3, p0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 53
    .line 54
    const-string v3, "header_custom"

    .line 55
    .line 56
    invoke-static {p1, v3}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {p2, v3, v2}, Lcom/bytedance/bdtracker/g4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iput-object v3, p0, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    .line 65
    .line 66
    const-string v3, "last_sp_session"

    .line 67
    .line 68
    invoke-static {p1, v3}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p2, p1, v2}, Lcom/bytedance/bdtracker/g4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/bytedance/bdtracker/p1;->e:Landroid/content/SharedPreferences;

    .line 77
    .line 78
    const-string p1, "block_events_v1"

    .line 79
    .line 80
    const/4 p2, 0x0

    .line 81
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_0

    .line 86
    .line 87
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 88
    .line 89
    .line 90
    :cond_0
    const-string p1, "block_events_v3"

    .line 91
    .line 92
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_1

    .line 97
    .line 98
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 99
    .line 100
    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/u3;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/u3;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/u3;

    instance-of v2, v1, Lcom/bytedance/bdtracker/b4;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/bytedance/bdtracker/b4;

    .line 13
    iget-object v3, p0, Lcom/bytedance/bdtracker/p1;->l:Ljava/util/HashSet;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    const-string v6, "real_time_events"

    const-string v7, "[]"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move v7, v3

    :goto_1
    if-ge v7, v5, :cond_2

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v6

    goto :goto_4

    :goto_3
    iget-object v5, p0, Lcom/bytedance/bdtracker/p1;->b:Lcom/bytedance/bdtracker/d;

    .line 14
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v6, "ConfigManager"

    .line 15
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "getRealTimeEvents failed"

    invoke-interface {v5, v6, v7, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_3
    :goto_4
    iput-object v3, p0, Lcom/bytedance/bdtracker/p1;->l:Ljava/util/HashSet;

    .line 16
    iget-object v2, v2, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    .line 17
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public a()Lorg/json/JSONObject;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->g:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    const-string v3, "ab_configure"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :catchall_0
    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/bytedance/bdtracker/p1;->g:Lorg/json/JSONObject;

    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public a(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->j:Ljava/util/Set;

    const-string v1, "block_events_v1"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/bytedance/bdtracker/p1;->k:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/bdtracker/p1;->k:Ljava/util/Set;

    const-string v0, "block_events_v3"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 8
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "backoff_ratio"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/bdtracker/p1;->m:I

    if-ltz v0, :cond_0

    const/16 v2, 0x2710

    if-le v0, v2, :cond_1

    :cond_0
    iput v1, p0, Lcom/bytedance/bdtracker/p1;->m:I

    :cond_1
    iget v0, p0, Lcom/bytedance/bdtracker/p1;->m:I

    const/16 v2, 0x1b

    const/4 v3, 0x1

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const-string v4, "max_request_frequency"

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/bytedance/bdtracker/p1;->n:I

    if-lt v4, v3, :cond_3

    if-le v4, v2, :cond_4

    :cond_3
    iput v0, p0, Lcom/bytedance/bdtracker/p1;->n:I

    :cond_4
    iget v0, p0, Lcom/bytedance/bdtracker/p1;->m:I

    const-wide/16 v4, 0x0

    if-lez v0, :cond_5

    iget-wide v6, p0, Lcom/bytedance/bdtracker/p1;->o:J

    cmp-long v2, v6, v4

    if-nez v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bytedance/bdtracker/p1;->o:J

    iput v3, p0, Lcom/bytedance/bdtracker/p1;->p:I

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    iput-wide v4, p0, Lcom/bytedance/bdtracker/p1;->o:J

    iput v1, p0, Lcom/bytedance/bdtracker/p1;->p:I

    :cond_6
    :goto_1
    const-string v0, "batch_event_interval"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bytedance/bdtracker/p1;->q:J

    const-string v0, "enter_background_not_send"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_7

    goto :goto_2

    :cond_7
    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/bytedance/bdtracker/p1;->r:Z

    iget-object p1, p0, Lcom/bytedance/bdtracker/p1;->b:Lcom/bytedance/bdtracker/d;

    .line 18
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v0, "ConfigManager"

    .line 19
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "updateLogRespConfig mBackoffRatio: "

    invoke-static {v2}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/bdtracker/p1;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mMaxRequestFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bytedance/bdtracker/p1;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mBackoffWindowStartTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/bytedance/bdtracker/p1;->o:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mBackoffWindowSendCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bytedance/bdtracker/p1;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mEventIntervalFromLogResp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/bytedance/bdtracker/p1;->q:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)Z
    .locals 4

    .line 3
    int-to-long v0, p1

    const-wide/16 v2, 0x32

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const-wide/16 v2, 0x270f

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(J)Z
    .locals 2

    .line 4
    const-wide/16 v0, 0x2710

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x493e0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    const-string v1, "sensitive_fields"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ljava/util/List;Lcom/bytedance/bdtracker/e0;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/u3;",
            ">;",
            "Lcom/bytedance/bdtracker/e0;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/p1;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/bdtracker/p1;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/u3;

    instance-of v2, v1, Lcom/bytedance/bdtracker/b4;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/bytedance/bdtracker/b4;

    iget-object v2, p0, Lcom/bytedance/bdtracker/p1;->k:Ljava/util/Set;

    .line 6
    iget-object v1, v1, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    .line 7
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 8
    iget-object v1, p2, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    goto :goto_2

    .line 9
    :cond_3
    instance-of v2, v1, Lcom/bytedance/bdtracker/x3;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "label"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/bdtracker/p1;->j:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 10
    iget-object v1, p2, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 11
    :goto_2
    invoke-virtual {p2}, Lcom/bytedance/bdtracker/e0;->d()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3ea

    const-wide/16 v4, 0x2

    .line 12
    invoke-static {v1, v4, v5, v2, v3}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;JLjava/lang/String;I)V

    goto :goto_0

    :cond_5
    :goto_3
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getChannel()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getTweakedChannel()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/p1;->a:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/bytedance/bdtracker/p1;->a:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/16 v3, 0x80

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 44
    .line 45
    const-string v2, "UMENG_CHANNEL"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    iget-object v2, p0, Lcom/bytedance/bdtracker/p1;->b:Lcom/bytedance/bdtracker/d;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 56
    .line 57
    const-string v3, "ConfigManager"

    .line 58
    .line 59
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x0

    .line 64
    new-array v4, v4, [Ljava/lang/Object;

    .line 65
    .line 66
    const-string v5, "getChannel failed"

    .line 67
    .line 68
    invoke-interface {v2, v3, v5, v1, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->h:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    const-string v1, "external_ab_version"

    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/bytedance/bdtracker/p1;->h:Ljava/lang/String;

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v0

    .line 27
    :cond_0
    :goto_0
    return-object v0
.end method

.method public d()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "session_interval"

    .line 4
    .line 5
    const-wide/16 v2, 0x7530

    .line 6
    .line 7
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "ssid_"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "user_unique_id"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isAbEnable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isAbEnable()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, "bav_ab_config"

    .line 18
    .line 19
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public h()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getProcess()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-static {}, Lcom/bytedance/bdtracker/l0$b;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    iget-object v3, p0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 22
    .line 23
    const-string v4, ":"

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v2

    .line 34
    :goto_0
    invoke-virtual {v3, v0}, Lcom/bytedance/applog/InitConfig;->setProcess(I)Lcom/bytedance/applog/InitConfig;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/InitConfig;->setProcess(I)Lcom/bytedance/applog/InitConfig;

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getProcess()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ne v0, v2, :cond_3

    .line 50
    .line 51
    move v1, v2

    .line 52
    :cond_3
    return v1
.end method

.method public i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isMonitorEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "monitor_enabled"

    .line 10
    .line 11
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isOaidEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "oaid"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/p1;->a(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "app_log_last_config_time"

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/bytedance/bdtracker/p1$a;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/p1$a;-><init>(Lcom/bytedance/bdtracker/p1;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "remote_settings"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
