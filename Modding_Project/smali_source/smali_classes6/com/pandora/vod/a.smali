.class public Lcom/pandora/vod/a;
.super Ljava/lang/Object;
.source "VodALog.java"


# static fields
.field private static a:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:J = -0x1L

.field private static c:Z

.field private static d:Z

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:Ljava/lang/String;

.field private static j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method static synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/pandora/vod/a;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static declared-synchronized b()V
    .locals 6

    .line 1
    const-class v0, Lcom/pandora/vod/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/pandora/vod/a;->j:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {}, Lcom/pandora/vod/a;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const-string v1, "VodALog"

    .line 13
    .line 14
    const-string v2, "init alog not exist"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    if-nez v1, :cond_1

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :cond_1
    :try_start_1
    sget-wide v2, Lcom/pandora/vod/a;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    const-wide/16 v4, -0x1

    .line 31
    .line 32
    cmp-long v2, v2, v4

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/pandora/common/applog/AppLogWrapper;->getDid()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "VodALog"

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v5, "init deviceID:"

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v3, v4}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/pandora/vod/a;->e()V

    .line 73
    .line 74
    .line 75
    sget-boolean v3, Lcom/pandora/vod/a;->c:Z

    .line 76
    .line 77
    if-nez v3, :cond_4

    .line 78
    .line 79
    const-string v1, "VodALog"

    .line 80
    .line 81
    const-string v2, "init settings disable alog"

    .line 82
    .line 83
    invoke-static {v1, v2}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    .line 85
    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 88
    :cond_4
    :try_start_4
    new-instance v3, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;

    .line 89
    .line 90
    invoke-direct {v3}, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;-><init>()V

    .line 91
    .line 92
    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, "VolcVodLog"

    .line 115
    .line 116
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iput-object v1, v3, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->logPath:Ljava/lang/String;

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    iput-boolean v1, v3, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->enableStdout:Z

    .line 127
    .line 128
    const/4 v1, 0x1

    .line 129
    iput v1, v3, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->logLevel:I

    .line 130
    .line 131
    sget-boolean v1, Lcom/pandora/vod/a;->c:Z

    .line 132
    .line 133
    iput-boolean v1, v3, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->enableLogFile:Z

    .line 134
    .line 135
    sget-boolean v1, Lcom/pandora/vod/a;->d:Z

    .line 136
    .line 137
    iput-boolean v1, v3, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->enableThreadLoop:Z

    .line 138
    .line 139
    sget-object v1, Lcom/pandora/vod/a;->i:Ljava/lang/String;

    .line 140
    .line 141
    iput-object v1, v3, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->query_url:Ljava/lang/String;

    .line 142
    .line 143
    sget v1, Lcom/pandora/vod/a;->e:I

    .line 144
    .line 145
    int-to-long v4, v1

    .line 146
    iput-wide v4, v3, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->interval:J

    .line 147
    .line 148
    sget v1, Lcom/pandora/vod/a;->f:I

    .line 149
    .line 150
    iput v1, v3, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->maxLogSize:I

    .line 151
    .line 152
    sget v1, Lcom/pandora/vod/a;->g:I

    .line 153
    .line 154
    iput v1, v3, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->singleLogSize:I

    .line 155
    .line 156
    sget v1, Lcom/pandora/vod/a;->h:I

    .line 157
    .line 158
    iput v1, v3, Lcom/bytertc/volcbaselog/VolcBaseLogConfig;->logExpireTime:I

    .line 159
    .line 160
    const/16 v1, 0x14

    .line 161
    .line 162
    invoke-static {v3, v1, v2}, Lcom/bytertc/volcbaselog/VolcBaseLogNative;->init(Lcom/bytertc/volcbaselog/VolcBaseLogConfig;ILjava/lang/String;)J

    .line 163
    .line 164
    .line 165
    move-result-wide v3

    .line 166
    sput-wide v3, Lcom/pandora/vod/a;->b:J

    .line 167
    .line 168
    const-string v1, "VodALog"

    .line 169
    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v4, "init handler:"

    .line 176
    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    sget-wide v4, Lcom/pandora/vod/a;->b:J

    .line 181
    .line 182
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v4, ", deviceID:"

    .line 186
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v1, v2}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance v1, Lcom/pandora/vod/a$a;

    .line 201
    .line 202
    invoke-direct {v1}, Lcom/pandora/vod/a$a;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->setListener(Lcom/ss/ttvideoengine/utils/TTVideoEngineLogListener;)V

    .line 206
    .line 207
    .line 208
    new-instance v1, Lcom/pandora/vod/a$b;

    .line 209
    .line 210
    invoke-direct {v1}, Lcom/pandora/vod/a$b;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-static {v1}, Lcom/bytedance/vcloud/cacheModule/utils/CmLog;->setAlogCallback(Lcom/bytedance/vcloud/cacheModule/utils/CmLog$AlogCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    .line 215
    .line 216
    monitor-exit v0

    .line 217
    return-void

    .line 218
    :goto_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 219
    throw v1
.end method

.method private static declared-synchronized c()Z
    .locals 4

    .line 1
    const-class v0, Lcom/pandora/vod/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/pandora/vod/a;->a:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_1
    const-class v1, Lcom/bytertc/volcbaselog/VolcBaseLogNative;

    .line 12
    .line 13
    sget v3, Lcom/bytertc/volcbaselog/VolcBaseLogNative;->a:I

    .line 14
    .line 15
    sput-object v1, Lcom/pandora/vod/a;->a:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return v2

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    monitor-exit v0

    .line 22
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    throw v1
.end method

.method static d(Landroid/content/Context;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sput-object p0, Lcom/pandora/vod/a;->j:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private static e()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "alog_config"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v1, "enable_log_file"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v3, 0x1

    .line 22
    if-lez v1, :cond_1

    .line 23
    .line 24
    move v1, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v1, v2

    .line 27
    :goto_0
    sput-boolean v1, Lcom/pandora/vod/a;->c:Z

    .line 28
    .line 29
    const-string v1, "enable_query"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-lez v1, :cond_2

    .line 36
    .line 37
    move v2, v3

    .line 38
    :cond_2
    sput-boolean v2, Lcom/pandora/vod/a;->d:Z

    .line 39
    .line 40
    const-string v1, "query_interval"

    .line 41
    .line 42
    const v2, 0x1d4c0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    sput v1, Lcom/pandora/vod/a;->e:I

    .line 50
    .line 51
    const-string v1, "max_log_size"

    .line 52
    .line 53
    const/16 v2, 0x64

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    sput v1, Lcom/pandora/vod/a;->f:I

    .line 60
    .line 61
    const-string/jumbo v1, "single_log_file_size"

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x2

    .line 65
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    sput v1, Lcom/pandora/vod/a;->g:I

    .line 70
    .line 71
    const-string v1, "log_expire_time"

    .line 72
    .line 73
    const v2, 0x93a80

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    sput v1, Lcom/pandora/vod/a;->h:I

    .line 81
    .line 82
    const-string v1, "query_url"

    .line 83
    .line 84
    const-string v2, ""

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Lcom/pandora/vod/a;->i:Ljava/lang/String;

    .line 91
    .line 92
    return-void
.end method
