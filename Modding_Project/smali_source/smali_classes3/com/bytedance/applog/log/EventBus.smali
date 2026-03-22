.class public final Lcom/bytedance/applog/log/EventBus;
.super Ljava/lang/Thread;
.source "EventBus.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/log/EventBus$MessageEvent;,
        Lcom/bytedance/applog/log/EventBus$DataFetcher;,
        Lcom/bytedance/applog/log/EventBus$Subscription;
    }
.end annotation


# static fields
.field private static final EMIT_EVENT_MSG:I = 0x1

.field public static global:Lcom/bytedance/applog/log/AbsSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/applog/log/AbsSingleton<",
            "Lcom/bytedance/applog/log/EventBus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventHandler:Landroid/os/Handler;

.field private final subscriptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/applog/log/EventBus$Subscription;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/applog/log/EventBus$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/applog/log/EventBus$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/applog/log/EventBus;->global:Lcom/bytedance/applog/log/AbsSingleton;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private emit(Lcom/bytedance/applog/log/EventBus$MessageEvent;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/bytedance/applog/log/EventBus;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/applog/log/EventBus;->emitEvent(Lcom/bytedance/applog/log/EventBus$MessageEvent;)V

    :goto_0
    return-void
.end method

.method private emitEvent(Lcom/bytedance/applog/log/EventBus$MessageEvent;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->event:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    const-string v2, "applog_event_upload_eid"

    .line 20
    .line 21
    iget-object v3, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->event:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const-string v3, "responseByte"

    .line 28
    .line 29
    const-string v4, "$$EVENT_LOCAL_IDS"

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    :try_start_1
    iget-object v2, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    .line 34
    .line 35
    instance-of v5, v2, Lorg/json/JSONObject;

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    check-cast v2, Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget-object v2, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Lorg/json/JSONObject;

    .line 50
    .line 51
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    instance-of v5, v2, Ljava/util/Collection;

    .line 56
    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    check-cast v2, Ljava/util/Collection;

    .line 60
    .line 61
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_3

    .line 67
    :cond_1
    const-string v2, "applog_do_request_end"

    .line 68
    .line 69
    iget-object v5, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->event:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    iget-object v2, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    .line 78
    .line 79
    instance-of v5, v2, Lorg/json/JSONObject;

    .line 80
    .line 81
    if-eqz v5, :cond_2

    .line 82
    .line 83
    check-cast v2, Lorg/json/JSONObject;

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    iget-object v2, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v2, Lorg/json/JSONObject;

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    instance-of v5, v2, [B

    .line 100
    .line 101
    if-eqz v5, :cond_2

    .line 102
    .line 103
    check-cast v2, [B

    .line 104
    .line 105
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, [B

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 113
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_6

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    check-cast v5, Lcom/bytedance/applog/log/EventBus$Subscription;

    .line 128
    .line 129
    iget-object v6, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    .line 130
    .line 131
    instance-of v7, v6, Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .line 133
    if-eqz v7, :cond_5

    .line 134
    .line 135
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    .line 136
    .line 137
    iget-object v7, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    .line 138
    .line 139
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-nez v7, :cond_3

    .line 151
    .line 152
    invoke-virtual {v6, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    :cond_3
    if-eqz v2, :cond_4

    .line 156
    .line 157
    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    :cond_4
    invoke-interface {v5, v6}, Lcom/bytedance/applog/log/EventBus$Subscription;->sub(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :catch_0
    :try_start_3
    iget-object v6, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    .line 165
    .line 166
    invoke-interface {v5, v6}, Lcom/bytedance/applog/log/EventBus$Subscription;->sub(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    invoke-interface {v5, v6}, Lcom/bytedance/applog/log/EventBus$Subscription;->sub(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    :cond_6
    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Lcom/bytedance/applog/log/EventBus$DataFetcher;->fetch()Ljava/lang/Object;

    move-result-object p2

    .line 5
    new-instance v0, Lcom/bytedance/applog/log/EventBus$MessageEvent;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/applog/log/EventBus$MessageEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/bytedance/applog/log/EventBus;->emit(Lcom/bytedance/applog/log/EventBus$MessageEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public emit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/bytedance/applog/log/EventBus$MessageEvent;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/applog/log/EventBus$MessageEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/bytedance/applog/log/EventBus;->emit(Lcom/bytedance/applog/log/EventBus$MessageEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/bytedance/applog/log/EventBus;->emitEvent(Lcom/bytedance/applog/log/EventBus$MessageEvent;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return v1
.end method

.method public declared-synchronized listen(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$Subscription;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$Subscription;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    iget-object p2, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    iget-object p2, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    :goto_0
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :cond_2
    :goto_1
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p1
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/bytedance/applog/log/EventBus;->eventHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
