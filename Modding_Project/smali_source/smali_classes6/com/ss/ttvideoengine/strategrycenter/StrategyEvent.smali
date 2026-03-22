.class public Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;
.super Ljava/lang/Object;
.source "StrategyEvent.java"


# static fields
.field private static final EST_PLAYTIME:Ljava/lang/String; = "est_play"

.field private static final FIRST_BLOCK_DECISION_TIME:Ljava/lang/String; = "first_block_decision_time"

.field private static final FIRST_BLOCK_EXEC_TIME:Ljava/lang/String; = "first_block_exec_time"

.field public static final LOG_KEY_ADAPTIVE_RANGE:Ljava/lang/String; = "st_adaptive_range"

.field private static final LOG_KEY_ADAPTIVE_RANGE_BUFFER_LOG:Ljava/lang/String; = "buffer_log"

.field private static final LOG_KEY_ADAPTIVE_RANGE_ENABLED:Ljava/lang/String; = "enabled"

.field private static final LOG_KEY_BANDWIDTH_BITRATE_RATIO:Ljava/lang/String; = "band_bitrate_ratio"

.field public static final LOG_KEY_BANDWIDTH_RANGE:Ljava/lang/String; = "st_band_range"

.field public static final LOG_KEY_BUFFER_DURATION:Ljava/lang/String; = "st_buf_dur"

.field public static final LOG_KEY_COMMON_EVENT_LOG:Ljava/lang/String; = "st_common"

.field private static final LOG_KEY_CURRENT_BANDWIDTH:Ljava/lang/String; = "current_bandwidth"

.field private static final LOG_KEY_FIRST_FRAME_LABEL:Ljava/lang/String; = "first_frame_label"

.field private static final LOG_KEY_LOAD_CONTROL_SLIDING_WINDOW:Ljava/lang/String; = "sliding_window"

.field private static final LOG_KEY_LOAD_CONTROL_VERSION:Ljava/lang/String; = "lc_version"

.field private static final LOG_KEY_MODULE_ACTIVATED:Ljava/lang/String; = "module_activated"

.field private static final LOG_KEY_PLAY_BUFFER_DIFF_COUNT:Ljava/lang/String; = "diff_ret_count"

.field public static final LOG_KEY_PLAY_TASK_CONTROL:Ljava/lang/String; = "st_play_task_op"

.field public static final LOG_KEY_PRELOAD:Ljava/lang/String; = "st_preload"

.field public static final LOG_KEY_PRELOAD_DECISION_INFO:Ljava/lang/String; = "st_preload_decision"

.field public static final LOG_KEY_PRELOAD_DECISION_INFO2:Ljava/lang/String; = "st_preload_decision2"

.field public static final LOG_KEY_PRELOAD_FINISHED_TIME:Ljava/lang/String; = "st_preload_finished_time"

.field public static final LOG_KEY_PRELOAD_PERSONALIZED:Ljava/lang/String; = "st_preload_personalized"

.field private static final LOG_KEY_PRELOAD_PERSONALIZED_OPTION:Ljava/lang/String; = "preload_personalized_option"

.field public static final LOG_KEY_PRELOAD_STRATEGY:Ljava/lang/String; = "st_preload_sc_info"

.field public static final LOG_KEY_REMAINING_BUFFER_DURATION:Ljava/lang/String; = "st_remaining_buf_dur"

.field private static final LOG_KEY_RE_BUFFER_DURATION_INITIAL:Ljava/lang/String; = "rebuf_dur_init"

.field private static final LOG_KEY_STALL_LABEL:Ljava/lang/String; = "stall_label"

.field private static final LOG_KEY_STARTUP_BUFFER_DURATION:Ljava/lang/String; = "startup_buf_dur"

.field private static final LOG_KEY_STARTUP_CACHE_SIZE:Ljava/lang/String; = "startup_cache"

.field public static final LOG_KEY_THROWS:Ljava/lang/String; = "st_throws"

.field private static final LOG_KEY_WATCH_DURATION_LABEL:Ljava/lang/String; = "watch_duration_label"

.field private static final PAUSE:Ljava/lang/String; = "pause"

.field private static final RANGE:Ljava/lang/String; = "range"

.field private static final RANGE_DURATION:Ljava/lang/String; = "range_dur"

.field private static final RESUME:Ljava/lang/String; = "resume"

.field private static final SAFE_FACTOR:Ljava/lang/String; = "safe_factor"

.field private static final SEEKLABEL:Ljava/lang/String; = "seek_label"

.field private static final SMART_LEVEL:Ljava/lang/String; = "smart_level"

.field private static final TAG:Ljava/lang/String; = "StrategyEvent"

.field private static final TARGET_BUFFER:Ljava/lang/String; = "target_buffer"


# instance fields
.field private final mNoVidMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnexpectedThrowables:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVidMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mVidMap:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mNoVidMap:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mUnexpectedThrowables:Ljava/util/Queue;

    .line 24
    .line 25
    return-void
.end method

.method private static convertCounterMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    instance-of v2, v2, Ljava/util/Map;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/util/Map;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->convertCounterMap(Ljava/util/Map;)Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    instance-of v2, v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    return-object v0
.end method

.method private eventImpl(Ljava/lang/String;IILjava/lang/String;)V
    .locals 22
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    const-string v5, "range_dur"

    .line 12
    .line 13
    const-string/jumbo v6, "target_buffer"

    .line 14
    .line 15
    .line 16
    const-string v7, "safe_factor"

    .line 17
    .line 18
    const-string v8, "first_block_decision_time"

    .line 19
    .line 20
    const-string v9, "first_block_exec_time"

    .line 21
    .line 22
    const-string v10, "est_play"

    .line 23
    .line 24
    const-string/jumbo v11, "startup_cache"

    .line 25
    .line 26
    .line 27
    const-string/jumbo v12, "st_preload_finished_time"

    .line 28
    .line 29
    .line 30
    const-string v13, "band_bitrate_ratio"

    .line 31
    .line 32
    const-string/jumbo v14, "st_preload_decision"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v15, "st_preload_decision2"

    .line 36
    .line 37
    .line 38
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v16

    .line 42
    if-nez v16, :cond_1

    .line 43
    .line 44
    move-object/from16 v16, v15

    .line 45
    .line 46
    const-string/jumbo v15, "unknown"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v15

    .line 53
    if-nez v15, :cond_0

    .line 54
    .line 55
    iget-object v15, v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mVidMap:Ljava/util/concurrent/ConcurrentMap;

    .line 56
    .line 57
    move-object/from16 v17, v5

    .line 58
    .line 59
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {v15, v0, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object v5, v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mVidMap:Ljava/util/concurrent/ConcurrentMap;

    .line 68
    .line 69
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 74
    .line 75
    :goto_0
    move-object v5, v0

    .line 76
    goto :goto_2

    .line 77
    :cond_0
    move-object/from16 v17, v5

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move-object/from16 v17, v5

    .line 81
    .line 82
    move-object/from16 v16, v15

    .line 83
    .line 84
    :goto_1
    iget-object v0, v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mNoVidMap:Ljava/util/concurrent/ConcurrentMap;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :goto_2
    const/16 v0, 0x7e5

    .line 88
    .line 89
    const-string v15, "info"

    .line 90
    .line 91
    move-object/from16 v18, v6

    .line 92
    .line 93
    const-string v6, "StrategyEvent"

    .line 94
    .line 95
    if-eq v2, v0, :cond_d

    .line 96
    .line 97
    move-object/from16 v19, v7

    .line 98
    .line 99
    const-string/jumbo v7, "st_adaptive_range"

    .line 100
    .line 101
    .line 102
    const-string/jumbo v0, "st_preload"

    .line 103
    .line 104
    .line 105
    move-object/from16 v20, v8

    .line 106
    .line 107
    const-string/jumbo v8, "st_preload_personalized"

    .line 108
    .line 109
    .line 110
    move-object/from16 v21, v9

    .line 111
    .line 112
    const-string/jumbo v9, "st_buf_dur"

    .line 113
    .line 114
    .line 115
    packed-switch v2, :pswitch_data_0

    .line 116
    .line 117
    .line 118
    goto/16 :goto_9

    .line 119
    .line 120
    :pswitch_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_e

    .line 125
    .line 126
    iget-object v2, v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mNoVidMap:Ljava/util/concurrent/ConcurrentMap;

    .line 127
    .line 128
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v2, "scene"

    .line 133
    .line 134
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto/16 :goto_9

    .line 138
    .line 139
    :pswitch_1
    invoke-static {v5, v9}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const-string/jumbo v3, "sliding_window"

    .line 148
    .line 149
    .line 150
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    goto/16 :goto_9

    .line 154
    .line 155
    :pswitch_2
    invoke-static {v5, v9}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    const-string v3, "lc_version"

    .line 164
    .line 165
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    goto/16 :goto_9

    .line 169
    .line 170
    :pswitch_3
    if-eqz v4, :cond_e

    .line 171
    .line 172
    :try_start_0
    invoke-static {v5, v14}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    new-instance v2, Lorg/json/JSONObject;

    .line 177
    .line 178
    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    .line 184
    goto/16 :goto_9

    .line 185
    .line 186
    :catch_0
    move-exception v0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v3, "LOG_KEY_PRELOAD_DECISION_INFO:\n"

    .line 193
    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v5, v14}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-interface {v0, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    goto/16 :goto_9

    .line 215
    .line 216
    :pswitch_4
    iget-object v0, v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mNoVidMap:Ljava/util/concurrent/ConcurrentMap;

    .line 217
    .line 218
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const-string v3, "module_activated"

    .line 223
    .line 224
    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    const-string/jumbo v3, "st_common"

    .line 229
    .line 230
    .line 231
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    goto/16 :goto_9

    .line 235
    .line 236
    :pswitch_5
    const-string/jumbo v0, "st_band_range"

    .line 237
    .line 238
    .line 239
    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const-string v3, "current_bandwidth"

    .line 248
    .line 249
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    :try_start_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-interface {v2, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    .line 262
    .line 263
    goto/16 :goto_9

    .line 264
    .line 265
    :catch_1
    move-exception v0

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v5, "LOG_KEY_BANDWIDTH_BITRATE_RATIO:\n"

    .line 272
    .line 273
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-interface {v2, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    goto/16 :goto_9

    .line 290
    .line 291
    :pswitch_6
    :try_start_2
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v2

    .line 295
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-interface {v5, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 300
    .line 301
    .line 302
    goto/16 :goto_9

    .line 303
    .line 304
    :catch_2
    move-exception v0

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    const-string v3, "EVENT_PLAY_RELATED_PRELOAD_FINISHED:\n"

    .line 311
    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-interface {v5, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    goto/16 :goto_9

    .line 329
    .line 330
    :pswitch_7
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    check-cast v0, Ljava/util/Map;

    .line 335
    .line 336
    if-eqz v0, :cond_e

    .line 337
    .line 338
    const-string v2, "diff_ret_count"

    .line 339
    .line 340
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    check-cast v4, Ljava/lang/Integer;

    .line 345
    .line 346
    if-nez v4, :cond_2

    .line 347
    .line 348
    const/4 v4, 0x0

    .line 349
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    add-int/2addr v4, v3

    .line 358
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    goto/16 :goto_9

    .line 366
    .line 367
    :pswitch_8
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    const-string/jumbo v2, "st_remaining_buf_dur"

    .line 372
    .line 373
    .line 374
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    goto/16 :goto_9

    .line 378
    .line 379
    :pswitch_9
    if-nez v4, :cond_3

    .line 380
    .line 381
    const-string v0, "EVENT_ADAPTIVE_RANGE_BUFFER: logInfo is null"

    .line 382
    .line 383
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_9

    .line 387
    .line 388
    :cond_3
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    .line 389
    .line 390
    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 391
    .line 392
    .line 393
    goto :goto_3

    .line 394
    :catch_3
    move-exception v0

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    const-string v3, "EVENT_ADAPTIVE_RANGE_BUFFER:\n"

    .line 401
    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    move-object v0, v4

    .line 416
    :goto_3
    invoke-static {v5, v7}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    const-string v3, "buffer_log"

    .line 421
    .line 422
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    goto/16 :goto_9

    .line 426
    .line 427
    :pswitch_a
    invoke-static {v5, v7}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    const-string v3, "enabled"

    .line 436
    .line 437
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    goto/16 :goto_9

    .line 441
    .line 442
    :pswitch_b
    invoke-static {v5, v8}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    const-string v3, "first_frame_label"

    .line 451
    .line 452
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    goto/16 :goto_9

    .line 456
    .line 457
    :pswitch_c
    invoke-static {v5, v8}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    const-string/jumbo v3, "stall_label"

    .line 466
    .line 467
    .line 468
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    goto/16 :goto_9

    .line 472
    .line 473
    :pswitch_d
    invoke-static {v5, v8}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    const-string/jumbo v3, "watch_duration_label"

    .line 482
    .line 483
    .line 484
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    goto/16 :goto_9

    .line 488
    .line 489
    :pswitch_e
    invoke-static {v5, v8}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    const-string v3, "preload_personalized_option"

    .line 498
    .line 499
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    goto/16 :goto_9

    .line 503
    .line 504
    :pswitch_f
    invoke-static {v5, v9}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    const-string/jumbo v3, "startup_buf_dur"

    .line 513
    .line 514
    .line 515
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    if-eqz v4, :cond_e

    .line 519
    .line 520
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    .line 521
    .line 522
    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-interface {v2, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 526
    .line 527
    .line 528
    goto/16 :goto_9

    .line 529
    .line 530
    :catch_4
    move-exception v0

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .line 535
    .line 536
    const-string v5, "LOG_KEY_STARTUP_CACHE_SIZE:\n"

    .line 537
    .line 538
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    goto/16 :goto_9

    .line 555
    .line 556
    :pswitch_10
    invoke-static {v5, v9}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    const-string v3, "rebuf_dur_init"

    .line 565
    .line 566
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    goto/16 :goto_9

    .line 570
    .line 571
    :pswitch_11
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    if-nez v2, :cond_e

    .line 576
    .line 577
    iget-object v2, v1, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mNoVidMap:Ljava/util/concurrent/ConcurrentMap;

    .line 578
    .line 579
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    const-string v2, "name"

    .line 584
    .line 585
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    goto/16 :goto_9

    .line 589
    .line 590
    :pswitch_12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 591
    .line 592
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 593
    .line 594
    .line 595
    const-string/jumbo v2, "st_play_task_op"

    .line 596
    .line 597
    .line 598
    invoke-interface {v5, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    move-object v2, v0

    .line 606
    check-cast v2, Ljava/util/concurrent/ConcurrentMap;

    .line 607
    .line 608
    const/4 v0, 0x1

    .line 609
    if-eq v3, v0, :cond_c

    .line 610
    .line 611
    const/4 v0, 0x2

    .line 612
    if-eq v3, v0, :cond_b

    .line 613
    .line 614
    const/4 v0, 0x4

    .line 615
    if-eq v3, v0, :cond_a

    .line 616
    .line 617
    const/4 v0, 0x5

    .line 618
    if-eq v3, v0, :cond_8

    .line 619
    .line 620
    const/4 v0, 0x6

    .line 621
    if-eq v3, v0, :cond_6

    .line 622
    .line 623
    const/4 v0, 0x7

    .line 624
    if-eq v3, v0, :cond_4

    .line 625
    .line 626
    packed-switch v3, :pswitch_data_1

    .line 627
    .line 628
    .line 629
    goto/16 :goto_9

    .line 630
    .line 631
    :pswitch_13
    const-string/jumbo v0, "smart_level"

    .line 632
    .line 633
    .line 634
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    goto/16 :goto_9

    .line 638
    .line 639
    :pswitch_14
    :try_start_5
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 640
    .line 641
    .line 642
    move-result-wide v7

    .line 643
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    invoke-interface {v2, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 648
    .line 649
    .line 650
    goto/16 :goto_9

    .line 651
    .line 652
    :catch_5
    move-exception v0

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .line 657
    .line 658
    const-string v5, "EST_PLAYTIME:\n"

    .line 659
    .line 660
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-interface {v2, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    goto/16 :goto_9

    .line 677
    .line 678
    :pswitch_15
    :try_start_6
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 679
    .line 680
    .line 681
    move-result-wide v7

    .line 682
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 683
    .line 684
    .line 685
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_7

    .line 686
    move-object/from16 v3, v21

    .line 687
    .line 688
    :try_start_7
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    .line 689
    .line 690
    .line 691
    goto/16 :goto_9

    .line 692
    .line 693
    :catch_6
    move-exception v0

    .line 694
    goto :goto_4

    .line 695
    :catch_7
    move-exception v0

    .line 696
    move-object/from16 v3, v21

    .line 697
    .line 698
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    .line 702
    .line 703
    const-string v7, "PLAY_TASK_FIRST_BLOCK_EXEC_TIME:\n"

    .line 704
    .line 705
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    goto/16 :goto_9

    .line 722
    .line 723
    :pswitch_16
    :try_start_8
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 724
    .line 725
    .line 726
    move-result-wide v7

    .line 727
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 728
    .line 729
    .line 730
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_9

    .line 731
    move-object/from16 v3, v20

    .line 732
    .line 733
    :try_start_9
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_8

    .line 734
    .line 735
    .line 736
    goto/16 :goto_9

    .line 737
    .line 738
    :catch_8
    move-exception v0

    .line 739
    goto :goto_5

    .line 740
    :catch_9
    move-exception v0

    .line 741
    move-object/from16 v3, v20

    .line 742
    .line 743
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 744
    .line 745
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .line 747
    .line 748
    const-string v7, "PLAY_TASK_FIRST_BLOCK_DECISION_TIME:\n"

    .line 749
    .line 750
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    goto/16 :goto_9

    .line 767
    .line 768
    :pswitch_17
    const-string v0, "seek_label"

    .line 769
    .line 770
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    goto/16 :goto_9

    .line 774
    .line 775
    :cond_4
    if-nez v4, :cond_5

    .line 776
    .line 777
    const-string v0, "PLAY_TASK_SAFE_FACTOR"

    .line 778
    .line 779
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    goto/16 :goto_9

    .line 783
    .line 784
    :cond_5
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    .line 785
    .line 786
    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_b

    .line 787
    .line 788
    .line 789
    move-object/from16 v3, v19

    .line 790
    .line 791
    :try_start_b
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_a

    .line 792
    .line 793
    .line 794
    goto/16 :goto_9

    .line 795
    .line 796
    :catch_a
    move-exception v0

    .line 797
    goto :goto_6

    .line 798
    :catch_b
    move-exception v0

    .line 799
    move-object/from16 v3, v19

    .line 800
    .line 801
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 802
    .line 803
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 804
    .line 805
    .line 806
    const-string v7, "PLAY_TASK_SAFE_FACTOR:\n"

    .line 807
    .line 808
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    goto/16 :goto_9

    .line 825
    .line 826
    :cond_6
    if-nez v4, :cond_7

    .line 827
    .line 828
    const-string v0, "PLAY_TASK_TARGET_BUFFER"

    .line 829
    .line 830
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    goto/16 :goto_9

    .line 834
    .line 835
    :cond_7
    :try_start_c
    new-instance v0, Lorg/json/JSONObject;

    .line 836
    .line 837
    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_d

    .line 838
    .line 839
    .line 840
    move-object/from16 v3, v18

    .line 841
    .line 842
    :try_start_d
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_c

    .line 843
    .line 844
    .line 845
    goto/16 :goto_9

    .line 846
    .line 847
    :catch_c
    move-exception v0

    .line 848
    goto :goto_7

    .line 849
    :catch_d
    move-exception v0

    .line 850
    move-object/from16 v3, v18

    .line 851
    .line 852
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 853
    .line 854
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    .line 856
    .line 857
    const-string v7, "PLAY_TASK_TARGET_BUFFER:\n"

    .line 858
    .line 859
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    goto/16 :goto_9

    .line 876
    .line 877
    :cond_8
    if-nez v4, :cond_9

    .line 878
    .line 879
    const-string v0, "PLAY_TASK_RANGE_DURATION: logInfo is null"

    .line 880
    .line 881
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    goto/16 :goto_9

    .line 885
    .line 886
    :cond_9
    :try_start_e
    new-instance v0, Lorg/json/JSONObject;

    .line 887
    .line 888
    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_f

    .line 889
    .line 890
    .line 891
    move-object/from16 v3, v17

    .line 892
    .line 893
    :try_start_f
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_e

    .line 894
    .line 895
    .line 896
    goto/16 :goto_9

    .line 897
    .line 898
    :catch_e
    move-exception v0

    .line 899
    goto :goto_8

    .line 900
    :catch_f
    move-exception v0

    .line 901
    move-object/from16 v3, v17

    .line 902
    .line 903
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    .line 904
    .line 905
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    .line 907
    .line 908
    const-string v7, "PLAY_TASK_RANGE_DURATION:\n"

    .line 909
    .line 910
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    goto :goto_9

    .line 927
    :cond_a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 928
    .line 929
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 930
    .line 931
    .line 932
    const-string v3, "range"

    .line 933
    .line 934
    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 942
    .line 943
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 944
    .line 945
    .line 946
    goto :goto_9

    .line 947
    :cond_b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 948
    .line 949
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 950
    .line 951
    .line 952
    const-string v3, "resume"

    .line 953
    .line 954
    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 962
    .line 963
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 964
    .line 965
    .line 966
    goto :goto_9

    .line 967
    :cond_c
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 968
    .line 969
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 970
    .line 971
    .line 972
    const-string v3, "pause"

    .line 973
    .line 974
    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 982
    .line 983
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 984
    .line 985
    .line 986
    goto :goto_9

    .line 987
    :cond_d
    if-eqz v4, :cond_e

    .line 988
    .line 989
    move-object/from16 v2, v16

    .line 990
    .line 991
    :try_start_10
    invoke-static {v5, v2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    new-instance v3, Lorg/json/JSONObject;

    .line 996
    .line 997
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 998
    .line 999
    .line 1000
    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_10

    .line 1001
    .line 1002
    .line 1003
    goto :goto_9

    .line 1004
    :catch_10
    move-exception v0

    .line 1005
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    const-string v7, "LOG_KEY_PRELOAD_DECISION_INFO2:\n"

    .line 1011
    .line 1012
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    invoke-static {v6, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-static {v5, v2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    invoke-interface {v0, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    :cond_e
    :goto_9
    return-void

    .line 1033
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method private static putIfAbsentAndGetMap(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/String;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0    # Ljava/util/concurrent/ConcurrentMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/concurrent/ConcurrentMap;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public event(Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->eventImpl(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception v6

    .line 6
    iget-object v7, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mUnexpectedThrowables:Ljava/util/Queue;

    .line 7
    .line 8
    new-instance v8, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent$1;

    .line 9
    .line 10
    move-object v0, v8

    .line 11
    move-object v1, p0

    .line 12
    move-object v2, p1

    .line 13
    move v3, p2

    .line 14
    move v4, p3

    .line 15
    move-object v5, p4

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent$1;-><init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public getLogData(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mVidMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->convertCounterMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mNoVidMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    move-result-object v1

    const/16 v2, 0x7a45

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->getStringValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    const-string/jumbo v2, "st_preload_sc_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mUnexpectedThrowables:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    const-string/jumbo v1, "st_throws"

    iget-object v2, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mUnexpectedThrowables:Ljava/util/Queue;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mUnexpectedThrowables:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 12
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", gotten log data: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StrategyEvent"

    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    const-string/jumbo v0, "st_play_task_op"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mVidMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 16
    invoke-static {p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->convertCounterMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public popLogData(ILjava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "StrategyEvent"

    .line 2
    .line 3
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p1, p2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->popLogData(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string/jumbo v3, "traceId: "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p2, ", type: "

    .line 66
    .line 67
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, ", gotten log data: "

    .line 74
    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    return-object v1

    .line 89
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v1, "event log parse failed: "

    .line 95
    .line 96
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    return-object p1
.end method

.method public removeLogData(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyEvent;->mVidMap:Ljava/util/concurrent/ConcurrentMap;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
