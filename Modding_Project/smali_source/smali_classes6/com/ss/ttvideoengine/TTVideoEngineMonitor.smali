.class public final Lcom/ss/ttvideoengine/TTVideoEngineMonitor;
.super Ljava/lang/Object;
.source "TTVideoEngineMonitor.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;,
        Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;,
        Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CROSSTALK_DIDHAPPEN:Ljava/lang/String; = "com.bytedance.android.vodsdk.player.monitor.ACTION_CROSSTALK_DIDHAPPEN"

.field private static final ACTION_LIVE_PLAYER_PLAYING:Ljava/lang/String; = "com.bytedance.android.livesdk.player.monitor.ACTION_LIVE_PLAYER_PLAYING"

.field private static final ACTION_LIVE_PLAYER_STOP_OR_RELEASE:Ljava/lang/String; = "com.bytedance.android.livesdk.player.monitor.ACTION_LIVE_PLAYER_STOP_OR_RELEASE"

.field private static final TAG:Ljava/lang/String; = "TTVideoEngineMonitor"

.field private static volatile enableCheck:Z = false

.field private static volatile instance:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;


# instance fields
.field private allEngineWrapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCrosstalkReceiver:Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;

.field private mainHandler:Landroid/os/Handler;

.field private playingCount:I

.field private playingLivePLayerInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->allEngineWrapper:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->playingCount:I

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->playingLivePLayerInfos:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->start()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic a(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->crosstalkCheck()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->enableCheck:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->playingLivePLayerInfos:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->playingCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$600(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->postRunCrosstalkCheck()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private crosstalkCheck()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->playingLivePLayerInfos:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->playingCount:I

    .line 9
    .line 10
    add-int v2, v1, v0

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    if-lt v2, v3, :cond_7

    .line 17
    .line 18
    if-lez v1, :cond_5

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v7, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->allEngineWrapper:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_3

    .line 45
    .line 46
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Ljava/lang/String;

    .line 51
    .line 52
    iget-object v9, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->allEngineWrapper:Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    check-cast v9, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;

    .line 59
    .line 60
    if-nez v9, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v9}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;->access$100(Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;)Ljava/lang/ref/WeakReference;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    check-cast v10, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 72
    .line 73
    if-eqz v10, :cond_2

    .line 74
    .line 75
    invoke-static {v9}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;->access$200(Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_0

    .line 80
    .line 81
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto/16 :goto_9

    .line 87
    .line 88
    :cond_2
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-lez v7, :cond_4

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_4

    .line 107
    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Ljava/lang/String;

    .line 113
    .line 114
    iget-object v8, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->allEngineWrapper:Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    move v2, v4

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    move-object v1, v5

    .line 123
    move v2, v6

    .line 124
    :goto_2
    if-lez v0, :cond_6

    .line 125
    .line 126
    new-instance v5, Ljava/util/HashMap;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->playingLivePLayerInfos:Ljava/util/HashMap;

    .line 129
    .line 130
    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 131
    .line 132
    .line 133
    move v7, v4

    .line 134
    move-object v0, v5

    .line 135
    move-object v5, v1

    .line 136
    move v1, v7

    .line 137
    goto :goto_3

    .line 138
    :cond_6
    move-object v0, v5

    .line 139
    move v7, v6

    .line 140
    move-object v5, v1

    .line 141
    move v1, v4

    .line 142
    goto :goto_3

    .line 143
    :cond_7
    move-object v0, v5

    .line 144
    move v1, v6

    .line 145
    move v2, v1

    .line 146
    move v7, v2

    .line 147
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    if-nez v1, :cond_8

    .line 149
    .line 150
    return-void

    .line 151
    :cond_8
    if-eqz v5, :cond_9

    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    goto :goto_4

    .line 158
    :cond_9
    move v1, v6

    .line 159
    :goto_4
    if-eqz v0, :cond_a

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    goto :goto_5

    .line 166
    :cond_a
    move v8, v6

    .line 167
    :goto_5
    add-int/2addr v1, v8

    .line 168
    if-ge v1, v3, :cond_b

    .line 169
    .line 170
    return-void

    .line 171
    :cond_b
    if-eqz v5, :cond_c

    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-gtz v1, :cond_d

    .line 178
    .line 179
    :cond_c
    move v2, v6

    .line 180
    :cond_d
    if-eqz v0, :cond_e

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-gtz v1, :cond_f

    .line 187
    .line 188
    :cond_e
    move v7, v6

    .line 189
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .line 193
    .line 194
    if-eqz v2, :cond_11

    .line 195
    .line 196
    if-eqz v5, :cond_11

    .line 197
    .line 198
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-lez v2, :cond_11

    .line 203
    .line 204
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    :cond_10
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_11

    .line 213
    .line 214
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 219
    .line 220
    invoke-virtual {v3, v5, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->crosstalkHappen(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    if-eqz v7, :cond_10

    .line 225
    .line 226
    if-nez v6, :cond_10

    .line 227
    .line 228
    if-eqz v3, :cond_10

    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    if-lez v8, :cond_10

    .line 235
    .line 236
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    .line 238
    .line 239
    move v6, v4

    .line 240
    goto :goto_6

    .line 241
    :cond_11
    if-eqz v7, :cond_14

    .line 242
    .line 243
    if-eqz v0, :cond_14

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-lez v2, :cond_14

    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    :cond_12
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_13

    .line 264
    .line 265
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    check-cast v5, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;

    .line 276
    .line 277
    if-eqz v5, :cond_12

    .line 278
    .line 279
    iget-object v6, v5, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;->mTag:Ljava/lang/String;

    .line 280
    .line 281
    iget-object v5, v5, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineLivePlayerInfo;->mSubTag:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {v6, v5, v4, v3}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->generateCrosstalkMap(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/HashMap;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_13
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->generateCrosstalkCallbackStr(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-nez v1, :cond_14

    .line 300
    .line 301
    new-instance v1, Landroid/content/Intent;

    .line 302
    .line 303
    const-string v2, "com.bytedance.android.vodsdk.player.monitor.ACTION_CROSSTALK_DIDHAPPEN"

    .line 304
    .line 305
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    const-string v2, "crosstalk_info_list"

    .line 309
    .line 310
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    .line 312
    .line 313
    :try_start_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->mContext:Landroid/content/Context;

    .line 314
    .line 315
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    .line 321
    .line 322
    goto :goto_8

    .line 323
    :catch_0
    move-exception v0

    .line 324
    const-string v1, "TTVideoEngineMonitor"

    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :cond_14
    :goto_8
    return-void

    .line 334
    :goto_9
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    throw v0
.end method

.method public static enableCrosstalkCheck(Landroid/content/Context;Z)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sput-boolean p1, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->enableCheck:Z

    .line 2
    .line 3
    invoke-static {p0}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->getInstance(Landroid/content/Context;)Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static generateCrosstalkCallbackStr(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method private static generateCrosstalkMap(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
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
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string/jumbo v1, "tag"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    const-string/jumbo p0, "subtag"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "islive"

    .line 35
    .line 36
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    const-string p0, "enginehash"

    .line 46
    .line 47
    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_2
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ss/ttvideoengine/TTVideoEngineMonitor;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->instance:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->instance:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->instance:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 18
    .line 19
    const-string p0, "TTVideoEngineMonitor"

    .line 20
    .line 21
    const-string v1, "Construct TTVideoEngineMonitor"

    .line 22
    .line 23
    invoke-static {p0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_1
    :goto_2
    sget-object p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->instance:Lcom/ss/ttvideoengine/TTVideoEngineMonitor;

    .line 34
    .line 35
    return-object p0
.end method

.method private declared-synchronized postRunCrosstalkCheck()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->mainHandler:Landroid/os/Handler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->mainHandler:Landroid/os/Handler;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->mainHandler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v1, Lcom/ss/ttvideoengine/p;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/ss/ttvideoengine/p;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v2, 0x64

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v0
.end method

.method private registerBroadcastReceiver(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "com.bytedance.android.livesdk.player.monitor.ACTION_LIVE_PLAYER_PLAYING"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "com.bytedance.android.livesdk.player.monitor.ACTION_LIVE_PLAYER_STOP_OR_RELEASE"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, p0, v2}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;Lcom/ss/ttvideoengine/TTVideoEngineMonitor$1;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->mCrosstalkReceiver:Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;

    .line 20
    .line 21
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->mCrosstalkReceiver:Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;

    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private unregisterBroadcastReceiver(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->mCrosstalkReceiver:Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->mCrosstalkReceiver:Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string v0, "TTVideoEngineMonitor"

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->mCrosstalkReceiver:Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;

    .line 27
    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public engineStateChange(IZ)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sEngineCrosstalkCheck:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez p2, :cond_2

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->allEngineWrapper:Ljava/util/HashMap;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ""

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;->access$200(Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;->access$202(Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;Z)Z

    .line 45
    .line 46
    .line 47
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->playingCount:I

    .line 48
    .line 49
    sub-int/2addr p1, v1

    .line 50
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->playingCount:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    monitor-exit p0

    .line 56
    goto :goto_3

    .line 57
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1

    .line 59
    :cond_2
    monitor-enter p0

    .line 60
    :try_start_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->allEngineWrapper:Ljava/util/HashMap;

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, ""

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;->access$200(Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-nez p2, :cond_3

    .line 92
    .line 93
    invoke-static {p1, v1}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;->access$202(Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;Z)Z

    .line 94
    .line 95
    .line 96
    iget p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->playingCount:I

    .line 97
    .line 98
    add-int/2addr p1, v1

    .line 99
    iput p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->playingCount:I

    .line 100
    .line 101
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->playingLivePLayerInfos:Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iget p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->playingCount:I

    .line 108
    .line 109
    add-int/2addr p2, p1

    .line 110
    const/4 p1, 0x2

    .line 111
    if-lt p2, p1, :cond_3

    .line 112
    .line 113
    move v0, v1

    .line 114
    goto :goto_2

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    goto :goto_4

    .line 117
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    invoke-direct {p0}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->postRunCrosstalkCheck()V

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_3
    return-void

    .line 124
    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    throw p1
.end method

.method public start()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->enableCheck:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->mCrosstalkReceiver:Lcom/ss/ttvideoengine/TTVideoEngineMonitor$CrosstalkReceiver;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->registerBroadcastReceiver(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public startObserve(ILcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor$TTVideoEngineStateWrapper;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineMonitor;Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 7
    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->allEngineWrapper:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ""

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->unregisterBroadcastReceiver(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stopObserve(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMonitor;->allEngineWrapper:Ljava/util/HashMap;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method
