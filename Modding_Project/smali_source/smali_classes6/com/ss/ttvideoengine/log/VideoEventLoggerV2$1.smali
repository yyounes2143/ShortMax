.class Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$1;
.super Ljava/lang/Object;
.source "VideoEventLoggerV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->updateMultiNetworkSpeed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

.field final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$1;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$1;->val$info:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "VideoEventLoggerV2"

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    iget-object v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$1;->val$info:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v3, "data"

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v3, 0x0

    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    move v6, v3

    .line 23
    move-wide v7, v4

    .line 24
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    if-ge v6, v9, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    const-string v10, "downinfo"

    .line 35
    .line 36
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    if-eqz v9, :cond_1

    .line 41
    .line 42
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    if-lez v10, :cond_1

    .line 47
    .line 48
    move v10, v3

    .line 49
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    if-ge v10, v11, :cond_1

    .line 54
    .line 55
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    const-string/jumbo v12, "size"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v12

    .line 66
    const-string v14, "costTime"

    .line 67
    .line 68
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v14

    .line 72
    cmp-long v11, v12, v4

    .line 73
    .line 74
    if-nez v11, :cond_0

    .line 75
    .line 76
    const-wide/16 v16, -0x1

    .line 77
    .line 78
    cmp-long v11, v14, v16

    .line 79
    .line 80
    if-nez v11, :cond_0

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_0
    iget-object v11, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$1;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 84
    .line 85
    invoke-static {v11}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$000(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v16

    .line 89
    add-long v12, v16, v12

    .line 90
    .line 91
    invoke-static {v11, v12, v13}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$002(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;J)J

    .line 92
    .line 93
    .line 94
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 95
    .line 96
    .line 97
    move-result-wide v7

    .line 98
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    goto :goto_5

    .line 103
    :catch_0
    move-exception v0

    .line 104
    goto :goto_3

    .line 105
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$1;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 109
    .line 110
    invoke-static {v0, v7, v8}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$102(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;J)J

    .line 111
    .line 112
    .line 113
    const-string v0, "VideoEventLoggerV2"

    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string/jumbo v4, "update multi speed size:"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v4, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$1;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 127
    .line 128
    invoke-static {v4}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$000(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v4

    .line 132
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v4, ", time:"

    .line 136
    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v4, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$1;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 141
    .line 142
    invoke-static {v4}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$100(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)J

    .line 143
    .line 144
    .line 145
    move-result-wide v4

    .line 146
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {v0, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :goto_3
    :try_start_1
    const-string v3, "VideoEventLoggerV2"

    .line 158
    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string/jumbo v5, "update networkspeed error "

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v3, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :goto_4
    monitor-exit v2

    .line 185
    return-void

    .line 186
    :goto_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    throw v0
.end method
