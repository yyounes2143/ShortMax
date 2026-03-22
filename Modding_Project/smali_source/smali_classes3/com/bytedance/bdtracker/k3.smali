.class public Lcom/bytedance/bdtracker/k3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/k3$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/bytedance/bdtracker/e0;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/bdtracker/k3$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/bdtracker/k3;->c:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/bdtracker/k3;->d:Ljava/util/Set;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lcom/bytedance/bdtracker/k3;->e:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 23
    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    .line 25
    .line 26
    const-string v1, "bd_tracker_profile:"

    .line 27
    .line 28
    invoke-static {v1}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    .line 48
    .line 49
    new-instance p1, Landroid/os/Handler;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/bytedance/bdtracker/k3;->b:Landroid/os/Handler;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final a(ILcom/bytedance/bdtracker/k3$b;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 7
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 8
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/d;->x:Z

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/bytedance/bdtracker/k3$b;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/bdtracker/f4;

    const-string v1, "__profile_"

    invoke-static {v1}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/bytedance/bdtracker/k3$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/bytedance/bdtracker/k3$b;->c:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/bdtracker/f4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 2
    iget-object v2, v1, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 3
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 4
    invoke-virtual {v2, v1, v0}, Lcom/bytedance/bdtracker/j0;->a(Lcom/bytedance/applog/IAppLogInstance;Lcom/bytedance/bdtracker/u3;)V

    iget-object v1, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    invoke-virtual {v1, v0}, Lcom/bytedance/bdtracker/e0;->b(Lcom/bytedance/bdtracker/u3;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/a4;->c:Lcom/bytedance/bdtracker/z3;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/z3;->b(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/bdtracker/k3;->b:Landroid/os/Handler;

    const/16 v0, 0x6a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->b:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final a(Ljava/util/Set;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 10
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 11
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 12
    new-instance v1, Lcom/bytedance/bdtracker/k3$a;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/bytedance/bdtracker/k3$a;-><init>(Lcom/bytedance/bdtracker/k3;Ljava/util/Set;Ljava/lang/String;Z)V

    const-string p1, "event_upload_eid"

    invoke-static {p1, v1}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/k3$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "append"

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bytedance/bdtracker/k3$b;-><init>(JLjava/lang/String;Lorg/json/JSONObject;)V

    const/16 p1, 0x69

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/k3;->a(ILcom/bytedance/bdtracker/k3$b;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/k3$b;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-string v3, "increment"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bytedance/bdtracker/k3$b;-><init>(JLjava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x67

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/k3;->a(ILcom/bytedance/bdtracker/k3$b;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/k3$b;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-string v3, "set"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bytedance/bdtracker/k3$b;-><init>(JLjava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x64

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/k3;->a(ILcom/bytedance/bdtracker/k3$b;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/k3$b;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-string v3, "set_once"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bytedance/bdtracker/k3$b;-><init>(JLjava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x66

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/k3;->a(ILcom/bytedance/bdtracker/k3$b;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public e(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/k3$b;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-string v3, "unset"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bytedance/bdtracker/k3$b;-><init>(JLjava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x68

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/k3;->a(ILcom/bytedance/bdtracker/k3$b;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    .line 1
    const-string v0, "ssid"

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/16 v3, 0x9

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    :pswitch_0
    goto/16 :goto_a

    .line 13
    .line 14
    :pswitch_1
    iget-object p1, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_a

    .line 19
    .line 20
    :cond_0
    iget-object v1, p1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/r1;->h()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v5, "Handle flush with dr state:{}"

    .line 39
    .line 40
    invoke-interface {v1, v3, v5, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/r1;->h()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_11

    .line 52
    .line 53
    iget-object p1, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v1, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/bytedance/bdtracker/a4;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    goto/16 :goto_a

    .line 76
    .line 77
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_11

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Ljava/util/Map$Entry;

    .line 101
    .line 102
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Ljava/lang/String;

    .line 107
    .line 108
    new-instance v7, Lorg/json/JSONArray;

    .line 109
    .line 110
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 111
    .line 112
    .line 113
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    .line 114
    .line 115
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v9, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 119
    .line 120
    iget-object v9, v9, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 121
    .line 122
    invoke-virtual {v9}, Lcom/bytedance/bdtracker/d;->getHeader()Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-static {v8, v9}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    .line 129
    const-string v9, "user_unique_id"

    .line 130
    .line 131
    :try_start_1
    invoke-static {v6}, Lcom/bytedance/bdtracker/l0$b;->c(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_2

    .line 136
    .line 137
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catchall_0
    move-exception v5

    .line 141
    goto/16 :goto_3

    .line 142
    .line 143
    :cond_2
    :goto_1
    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    new-instance v6, Lorg/json/JSONObject;

    .line 150
    .line 151
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    check-cast v9, Ljava/util/List;

    .line 159
    .line 160
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-eqz v10, :cond_4

    .line 169
    .line 170
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    check-cast v10, Lcom/bytedance/bdtracker/u3;

    .line 175
    .line 176
    invoke-virtual {v10}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 181
    .line 182
    .line 183
    iget-object v11, v10, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v11}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    if-eqz v11, :cond_3

    .line 190
    .line 191
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    if-nez v11, :cond_3

    .line 196
    .line 197
    iget-object v11, v10, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v8, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    .line 201
    .line 202
    :cond_3
    iget-object v10, v10, Lcom/bytedance/bdtracker/u3;->p:Ljava/lang/String;

    .line 203
    .line 204
    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_4
    iget-object v9, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 209
    .line 210
    invoke-virtual {v9, v8}, Lcom/bytedance/bdtracker/e0;->a(Lorg/json/JSONObject;)Z

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    if-nez v9, :cond_5

    .line 215
    .line 216
    iget-object v5, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 217
    .line 218
    iget-object v5, v5, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 219
    .line 220
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .line 222
    const-string v6, "Register to get ssid by temp header failed."

    .line 223
    .line 224
    :try_start_2
    new-array v7, v4, [Ljava/lang/Object;

    .line 225
    .line 226
    invoke-interface {v5, v3, v6, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_5
    const-string v9, "event_v3"

    .line 232
    .line 233
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    .line 235
    .line 236
    const-string v7, "magic_tag"

    .line 237
    .line 238
    const-string v9, "ss_app_log"

    .line 239
    .line 240
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    const-string v7, "header"

    .line 244
    .line 245
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    .line 247
    .line 248
    const-string v7, "time_sync"

    .line 249
    .line 250
    :try_start_3
    sget-object v8, Lcom/bytedance/bdtracker/p3;->d:Lorg/json/JSONObject;

    .line 251
    .line 252
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    .line 254
    .line 255
    const-string v7, "local_time"

    .line 256
    .line 257
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 258
    .line 259
    .line 260
    move-result-wide v8

    .line 261
    const-wide/16 v10, 0x3e8

    .line 262
    .line 263
    div-long/2addr v8, v10

    .line 264
    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 265
    .line 266
    .line 267
    iget-object v7, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 268
    .line 269
    invoke-virtual {v7}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    check-cast v8, Ljava/util/List;

    .line 278
    .line 279
    invoke-virtual {v7, v8}, Lcom/bytedance/bdtracker/a4;->a(Ljava/util/List;)V

    .line 280
    .line 281
    .line 282
    iget-object v7, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 283
    .line 284
    invoke-virtual {v7}, Lcom/bytedance/bdtracker/e0;->e()Lcom/bytedance/applog/UriConfig;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    invoke-virtual {v7}, Lcom/bytedance/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    filled-new-array {v7}, [Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    iget-object v8, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 297
    .line 298
    iget-object v9, v8, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 299
    .line 300
    iget-object v9, v9, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 301
    .line 302
    iget-object v8, v8, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 303
    .line 304
    invoke-virtual {v9, v7, v6, v8}, Lcom/bytedance/bdtracker/p3;->a([Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/bdtracker/p1;)I

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    const/16 v7, 0xc8

    .line 309
    .line 310
    if-eq v6, v7, :cond_6

    .line 311
    .line 312
    iget-object v6, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 313
    .line 314
    invoke-virtual {v6}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    check-cast v5, Ljava/util/List;

    .line 323
    .line 324
    invoke-virtual {v6, v5}, Lcom/bytedance/bdtracker/a4;->c(Ljava/util/List;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v1, v4}, Lcom/bytedance/bdtracker/k3;->a(Ljava/util/Set;Z)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :cond_6
    invoke-virtual {p0, v1, v2}, Lcom/bytedance/bdtracker/k3;->a(Ljava/util/Set;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 333
    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :goto_3
    iget-object v6, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 338
    .line 339
    iget-object v6, v6, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 340
    .line 341
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 342
    .line 343
    new-array v7, v4, [Ljava/lang/Object;

    .line 344
    .line 345
    const-string v8, "Flush failed"

    .line 346
    .line 347
    invoke-interface {v6, v3, v8, v5, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, v1, v4}, Lcom/bytedance/bdtracker/k3;->a(Ljava/util/Set;Z)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast p1, Lcom/bytedance/bdtracker/k3$b;

    .line 358
    .line 359
    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 360
    .line 361
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 362
    .line 363
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 364
    .line 365
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    const-string v4, "Handle append:{}"

    .line 370
    .line 371
    invoke-interface {v0, v3, v4, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/k3;->a(Lcom/bytedance/bdtracker/k3$b;)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_a

    .line 378
    .line 379
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast p1, Lcom/bytedance/bdtracker/k3$b;

    .line 382
    .line 383
    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 384
    .line 385
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 386
    .line 387
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 388
    .line 389
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    const-string v4, "Handle unset:{}"

    .line 394
    .line 395
    invoke-interface {v0, v3, v4, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/k3;->a(Lcom/bytedance/bdtracker/k3$b;)V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_a

    .line 402
    .line 403
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast p1, Lcom/bytedance/bdtracker/k3$b;

    .line 406
    .line 407
    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 408
    .line 409
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 410
    .line 411
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 412
    .line 413
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    const-string v4, "Handle increment:{}"

    .line 418
    .line 419
    invoke-interface {v0, v3, v4, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/k3;->a(Lcom/bytedance/bdtracker/k3$b;)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_a

    .line 426
    .line 427
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast p1, Lcom/bytedance/bdtracker/k3$b;

    .line 430
    .line 431
    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 432
    .line 433
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 434
    .line 435
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 436
    .line 437
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    const-string v5, "Handle setOnce:{}"

    .line 442
    .line 443
    invoke-interface {v0, v3, v5, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->e:Ljava/lang/String;

    .line 447
    .line 448
    if-eqz v0, :cond_7

    .line 449
    .line 450
    iget-object v1, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 451
    .line 452
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 453
    .line 454
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    goto :goto_4

    .line 463
    :cond_7
    move v0, v4

    .line 464
    :goto_4
    iget-object v1, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 465
    .line 466
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 467
    .line 468
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    iput-object v1, p0, Lcom/bytedance/bdtracker/k3;->e:Ljava/lang/String;

    .line 473
    .line 474
    iget-object v1, p1, Lcom/bytedance/bdtracker/k3$b;->c:Lorg/json/JSONObject;

    .line 475
    .line 476
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    move v5, v2

    .line 481
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 482
    .line 483
    .line 484
    move-result v6

    .line 485
    if-eqz v6, :cond_9

    .line 486
    .line 487
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    check-cast v6, Ljava/lang/String;

    .line 492
    .line 493
    iget-object v7, p0, Lcom/bytedance/bdtracker/k3;->d:Ljava/util/Set;

    .line 494
    .line 495
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v7

    .line 499
    if-nez v7, :cond_8

    .line 500
    .line 501
    move v5, v4

    .line 502
    :cond_8
    iget-object v7, p0, Lcom/bytedance/bdtracker/k3;->d:Ljava/util/Set;

    .line 503
    .line 504
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    goto :goto_5

    .line 508
    :cond_9
    if-eqz v0, :cond_a

    .line 509
    .line 510
    if-nez v5, :cond_11

    .line 511
    .line 512
    :cond_a
    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 513
    .line 514
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 515
    .line 516
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 517
    .line 518
    new-array v1, v4, [Ljava/lang/Object;

    .line 519
    .line 520
    const-string v4, "invoke profile set once."

    .line 521
    .line 522
    invoke-interface {v0, v3, v4, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/k3;->a(Lcom/bytedance/bdtracker/k3$b;)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_a

    .line 529
    .line 530
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 531
    .line 532
    check-cast p1, Lcom/bytedance/bdtracker/k3$b;

    .line 533
    .line 534
    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 535
    .line 536
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 537
    .line 538
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 539
    .line 540
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    const-string v5, "Handle set:{}"

    .line 545
    .line 546
    invoke-interface {v0, v3, v5, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->e:Ljava/lang/String;

    .line 550
    .line 551
    if-eqz v0, :cond_b

    .line 552
    .line 553
    iget-object v1, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 554
    .line 555
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 556
    .line 557
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    goto :goto_6

    .line 566
    :cond_b
    move v0, v4

    .line 567
    :goto_6
    iget-object v1, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 568
    .line 569
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 570
    .line 571
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    iput-object v1, p0, Lcom/bytedance/bdtracker/k3;->e:Ljava/lang/String;

    .line 576
    .line 577
    iget-object v1, p1, Lcom/bytedance/bdtracker/k3$b;->c:Lorg/json/JSONObject;

    .line 578
    .line 579
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    move v6, v2

    .line 584
    move v5, v4

    .line 585
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 586
    .line 587
    .line 588
    move-result v7

    .line 589
    if-eqz v7, :cond_f

    .line 590
    .line 591
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v7

    .line 595
    check-cast v7, Ljava/lang/String;

    .line 596
    .line 597
    iget-object v8, p0, Lcom/bytedance/bdtracker/k3;->c:Ljava/util/Map;

    .line 598
    .line 599
    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v8

    .line 603
    if-eqz v8, :cond_d

    .line 604
    .line 605
    iget-object v8, p0, Lcom/bytedance/bdtracker/k3;->c:Ljava/util/Map;

    .line 606
    .line 607
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v8

    .line 611
    if-eqz v8, :cond_d

    .line 612
    .line 613
    iget-object v8, p0, Lcom/bytedance/bdtracker/k3;->c:Ljava/util/Map;

    .line 614
    .line 615
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v8

    .line 619
    check-cast v8, Lcom/bytedance/bdtracker/k3$b;

    .line 620
    .line 621
    if-eqz v8, :cond_e

    .line 622
    .line 623
    iget-wide v9, v8, Lcom/bytedance/bdtracker/k3$b;->a:J

    .line 624
    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 626
    .line 627
    .line 628
    move-result-wide v11

    .line 629
    sub-long/2addr v11, v9

    .line 630
    const-wide/32 v9, 0xea60

    .line 631
    .line 632
    .line 633
    cmp-long v9, v11, v9

    .line 634
    .line 635
    if-ltz v9, :cond_c

    .line 636
    .line 637
    move v5, v2

    .line 638
    :cond_c
    :try_start_5
    iget-object v9, p1, Lcom/bytedance/bdtracker/k3$b;->c:Lorg/json/JSONObject;

    .line 639
    .line 640
    iget-object v8, v8, Lcom/bytedance/bdtracker/k3$b;->c:Lorg/json/JSONObject;

    .line 641
    .line 642
    const/4 v10, 0x0

    .line 643
    invoke-static {v9, v8, v10}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 644
    .line 645
    .line 646
    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 647
    if-nez v8, :cond_e

    .line 648
    .line 649
    :goto_8
    move v6, v4

    .line 650
    goto :goto_9

    .line 651
    :catchall_1
    move-exception v8

    .line 652
    iget-object v9, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 653
    .line 654
    iget-object v9, v9, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 655
    .line 656
    iget-object v9, v9, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 657
    .line 658
    new-array v10, v4, [Ljava/lang/Object;

    .line 659
    .line 660
    const-string v11, "JSON handle failed"

    .line 661
    .line 662
    invoke-interface {v9, v3, v11, v8, v10}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    goto :goto_9

    .line 666
    :cond_d
    move v5, v2

    .line 667
    goto :goto_8

    .line 668
    :cond_e
    :goto_9
    iget-object v8, p0, Lcom/bytedance/bdtracker/k3;->c:Ljava/util/Map;

    .line 669
    .line 670
    invoke-interface {v8, v7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    goto :goto_7

    .line 674
    :cond_f
    if-eqz v0, :cond_10

    .line 675
    .line 676
    if-nez v5, :cond_10

    .line 677
    .line 678
    if-nez v6, :cond_11

    .line 679
    .line 680
    :cond_10
    iget-object v0, p0, Lcom/bytedance/bdtracker/k3;->a:Lcom/bytedance/bdtracker/e0;

    .line 681
    .line 682
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 683
    .line 684
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 685
    .line 686
    new-array v1, v4, [Ljava/lang/Object;

    .line 687
    .line 688
    const-string v4, "invoke profile set."

    .line 689
    .line 690
    invoke-interface {v0, v3, v4, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/k3;->a(Lcom/bytedance/bdtracker/k3$b;)V

    .line 694
    .line 695
    .line 696
    :cond_11
    :goto_a
    return v2

    .line 697
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
