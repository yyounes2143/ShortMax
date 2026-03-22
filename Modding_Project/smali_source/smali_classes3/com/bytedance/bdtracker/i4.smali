.class public Lcom/bytedance/bdtracker/i4;
.super Lcom/bytedance/bdtracker/u3;
.source ""


# static fields
.field public static final s:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/bdtracker/i4;->s:Lorg/json/JSONObject;

    .line 7
    .line 8
    :try_start_0
    const-string v1, "_staging_flag"

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string v1, "params_for_special"

    .line 15
    .line 16
    const-string v2, "applog_trace"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    move-object v5, v0

    .line 24
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v0, "trace"

    .line 29
    .line 30
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/4 v0, 0x0

    .line 35
    new-array v6, v0, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v2, 0x4

    .line 38
    const-string v4, "JSON handle failed"

    .line 39
    .line 40
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

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
.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "trace"

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
    const-string v1, "event"

    .line 89
    .line 90
    const-string v2, "rangersapplog_trace"

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    sget-object v1, Lcom/bytedance/bdtracker/i4;->s:Lorg/json/JSONObject;

    .line 96
    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 98
    .line 99
    .line 100
    iget v1, p0, Lcom/bytedance/bdtracker/u3;->k:I

    .line 101
    .line 102
    sget-object v2, Lcom/bytedance/bdtracker/t4$a;->b:Lcom/bytedance/bdtracker/t4$a;

    .line 103
    .line 104
    iget v2, v2, Lcom/bytedance/bdtracker/t4$a;->a:I

    .line 105
    .line 106
    if-eq v1, v2, :cond_4

    .line 107
    .line 108
    const-string v2, "nt"

    .line 109
    .line 110
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-object v1, p0, Lcom/bytedance/bdtracker/u3;->n:Ljava/lang/String;

    .line 114
    .line 115
    const-string v2, "datetime"

    .line 116
    .line 117
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    return-object v0
.end method
