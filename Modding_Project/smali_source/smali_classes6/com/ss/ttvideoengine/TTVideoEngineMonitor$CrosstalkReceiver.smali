.class Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TTVideoEngineMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrosstalkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;Lcom/ss/ttvideoengine/TTVideoEngineMonitor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->access$300()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p2, :cond_a

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    const-string p1, "enginehash"

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    const-string v1, "com.bytedance.android.livesdk.player.monitor.ACTION_LIVE_PLAYER_STOP_OR_RELEASE"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_8

    .line 52
    .line 53
    const-string v1, "com.bytedance.android.livesdk.player.monitor.ACTION_LIVE_PLAYER_PLAYING"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->access$400(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)Ljava/util/HashMap;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;

    .line 74
    .line 75
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    const-string/jumbo v0, "tag"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string/jumbo v1, "subtag"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    new-instance v1, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 96
    .line 97
    invoke-direct {v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_5

    .line 105
    .line 106
    iput-object v0, v1, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;->mTag:Ljava/lang/String;

    .line 107
    .line 108
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    iput-object p2, v1, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;->mSubTag:Ljava/lang/String;

    .line 115
    .line 116
    :cond_6
    monitor-enter p0

    .line 117
    :try_start_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 118
    .line 119
    invoke-static {p2}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->access$400(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)Ljava/util/HashMap;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->access$400(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)Ljava/util/HashMap;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 137
    .line 138
    invoke-static {p2}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->access$500(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    add-int/2addr p2, p1

    .line 143
    const/4 p1, 0x2

    .line 144
    if-lt p2, p1, :cond_7

    .line 145
    .line 146
    const/4 p1, 0x1

    .line 147
    goto :goto_0

    .line 148
    :cond_7
    const/4 p1, 0x0

    .line 149
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    if-eqz p1, :cond_9

    .line 151
    .line 152
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 153
    .line 154
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->access$600(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :catchall_0
    move-exception p1

    .line 159
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    throw p1

    .line 161
    :catchall_1
    move-exception p1

    .line 162
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    throw p1

    .line 164
    :cond_8
    monitor-enter p0

    .line 165
    :try_start_4
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 166
    .line 167
    invoke-static {p2}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->access$400(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)Ljava/util/HashMap;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    monitor-exit p0

    .line 175
    :cond_9
    :goto_1
    return-void

    .line 176
    :catchall_2
    move-exception p1

    .line 177
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 178
    throw p1

    .line 179
    :cond_a
    :goto_2
    return-void
.end method
