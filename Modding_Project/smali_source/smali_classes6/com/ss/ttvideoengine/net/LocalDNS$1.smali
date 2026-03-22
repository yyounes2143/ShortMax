.class Lcom/ss/ttvideoengine/net/LocalDNS$1;
.super Ljava/lang/Object;
.source "LocalDNS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/net/LocalDNS;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/net/LocalDNS;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/net/LocalDNS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 3
    .line 4
    iget-object v2, v1, Lcom/ss/ttvideoengine/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/net/LocalDNS;->access$002(Lcom/ss/ttvideoengine/net/LocalDNS;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/ss/ttvideoengine/net/LocalDNS;->access$000(Lcom/ss/ttvideoengine/net/LocalDNS;)Ljava/net/InetAddress;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-class v1, Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_1
    iget-object v2, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/ss/ttvideoengine/net/LocalDNS;->access$100(Lcom/ss/ttvideoengine/net/LocalDNS;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    iget-object v2, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 33
    .line 34
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/net/LocalDNS;->access$102(Lcom/ss/ttvideoengine/net/LocalDNS;Z)Z

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 38
    .line 39
    new-instance v2, Lcom/ss/ttvideoengine/utils/Error;

    .line 40
    .line 41
    const-string v3, "kTTVideoErrorDomainLocalDNS"

    .line 42
    .line 43
    const/16 v4, -0x270e

    .line 44
    .line 45
    invoke-direct {v2, v3, v4}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v1

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw v0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/ss/ttvideoengine/net/LocalDNS;->access$000(Lcom/ss/ttvideoengine/net/LocalDNS;)Ljava/net/InetAddress;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 69
    .line 70
    invoke-static {v2}, Lcom/ss/ttvideoengine/net/LocalDNS;->access$000(Lcom/ss/ttvideoengine/net/LocalDNS;)Ljava/net/InetAddress;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    instance-of v2, v2, Ljava/net/Inet6Address;

    .line 75
    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    const-string v2, "[%s]"

    .line 79
    .line 80
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :cond_2
    const-class v2, Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 89
    .line 90
    monitor-enter v2

    .line 91
    :try_start_2
    iget-object v3, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 92
    .line 93
    invoke-static {v3}, Lcom/ss/ttvideoengine/net/LocalDNS;->access$100(Lcom/ss/ttvideoengine/net/LocalDNS;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_4

    .line 98
    .line 99
    iget-object v3, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 100
    .line 101
    invoke-static {v3, v0}, Lcom/ss/ttvideoengine/net/LocalDNS;->access$102(Lcom/ss/ttvideoengine/net/LocalDNS;Z)Z

    .line 102
    .line 103
    .line 104
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    if-nez v1, :cond_3

    .line 106
    .line 107
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 108
    .line 109
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    .line 110
    .line 111
    const-string v2, "kTTVideoErrorDomainLocalDNS"

    .line 112
    .line 113
    const/16 v3, -0x270d

    .line 114
    .line 115
    invoke-direct {v1, v2, v3}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    .line 123
    .line 124
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 125
    .line 126
    .line 127
    new-instance v2, Lorg/json/JSONArray;

    .line 128
    .line 129
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 133
    .line 134
    .line 135
    :try_start_3
    const-string v1, "ips"

    .line 136
    .line 137
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    .line 139
    .line 140
    const-string/jumbo v1, "time"

    .line 141
    .line 142
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    const-string v1, "dns_type"

    .line 151
    .line 152
    const-string v2, "localDNS"

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catch_0
    move-exception v1

    .line 159
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    :goto_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifySuccess(Lorg/json/JSONObject;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :catchall_1
    move-exception v0

    .line 169
    goto :goto_3

    .line 170
    :cond_4
    :try_start_4
    monitor-exit v2

    .line 171
    return-void

    .line 172
    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 173
    throw v0

    .line 174
    :catchall_2
    move-exception v1

    .line 175
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    const-class v2, Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 179
    .line 180
    monitor-enter v2

    .line 181
    :try_start_5
    iget-object v3, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 182
    .line 183
    invoke-static {v3}, Lcom/ss/ttvideoengine/net/LocalDNS;->access$100(Lcom/ss/ttvideoengine/net/LocalDNS;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_5

    .line 188
    .line 189
    iget-object v3, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 190
    .line 191
    invoke-static {v3, v0}, Lcom/ss/ttvideoengine/net/LocalDNS;->access$102(Lcom/ss/ttvideoengine/net/LocalDNS;Z)Z

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/LocalDNS$1;->this$0:Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 195
    .line 196
    new-instance v3, Lcom/ss/ttvideoengine/utils/Error;

    .line 197
    .line 198
    const-string v4, "kTTVideoErrorDomainLocalDNS"

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const/16 v5, -0x26f0

    .line 205
    .line 206
    invoke-direct {v3, v4, v5, v1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :catchall_3
    move-exception v0

    .line 214
    goto :goto_5

    .line 215
    :cond_5
    :goto_4
    monitor-exit v2

    .line 216
    return-void

    .line 217
    :goto_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 218
    throw v0
.end method
