.class Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;
.super Ljava/util/TimerTask;
.source "VideoEventLoggerV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;-><init>(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)V

    return-void
.end method

.method private addIfChanged(Ljava/util/LinkedHashMap;ILjava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/util/LinkedHashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "TT;>;ITT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    aget-object v0, v1, v0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$3300(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$3400(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getPortraitData()Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getNetworkRTTLevel()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getNetworkRTTMS()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget v6, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentConfigBitrate:I

    .line 40
    .line 41
    iget-object v7, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttList:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-static {}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getNetType()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-static {}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getSignalStrength()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurQuality:Ljava/lang/String;

    .line 56
    .line 57
    if-gez v6, :cond_0

    .line 58
    .line 59
    iget-object v6, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 60
    .line 61
    invoke-static {v6}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$3500(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const/16 v10, 0x4b

    .line 66
    .line 67
    invoke-interface {v6, v10}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v10

    .line 71
    long-to-int v6, v10

    .line 72
    :cond_0
    iget-object v10, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttList:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    const/4 v11, 0x0

    .line 79
    if-eqz v10, :cond_1

    .line 80
    .line 81
    iget-object v10, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttList:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v3, v11}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getRttHistoryData(I)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v12

    .line 87
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v10, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttMsList:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    if-eqz v10, :cond_2

    .line 97
    .line 98
    iget-object v10, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttMsList:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v3, v11}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getRttMsHistoryData(I)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object v10, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlMultiSpeedList:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-eqz v10, :cond_3

    .line 114
    .line 115
    iget-object v10, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlMultiSpeedList:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v3, v11}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getNetSpeedHistoryData(I)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    .line 123
    .line 124
    :cond_3
    iget-object v10, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 125
    .line 126
    invoke-static {v10}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$3600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    if-lt v7, v10, :cond_4

    .line 131
    .line 132
    if-lez v7, :cond_4

    .line 133
    .line 134
    iget-object v7, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttList:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_4
    iget-object v7, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttList:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    iget-object v4, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttMsList:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    iget-object v7, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 155
    .line 156
    invoke-static {v7}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$3600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)I

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-lt v4, v7, :cond_5

    .line 161
    .line 162
    if-lez v4, :cond_5

    .line 163
    .line 164
    iget-object v4, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttMsList:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    :cond_5
    iget-object v4, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttMsList:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    const-string v4, "VideoEventLoggerV2"

    .line 179
    .line 180
    monitor-enter v4

    .line 181
    :try_start_0
    iget-object v5, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 182
    .line 183
    invoke-static {v5}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$100(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)J

    .line 184
    .line 185
    .line 186
    move-result-wide v12

    .line 187
    const-wide/16 v14, 0x0

    .line 188
    .line 189
    cmp-long v5, v12, v14

    .line 190
    .line 191
    const/high16 v7, -0x40800000    # -1.0f

    .line 192
    .line 193
    if-lez v5, :cond_6

    .line 194
    .line 195
    iget-object v5, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 196
    .line 197
    invoke-static {v5}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$000(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)J

    .line 198
    .line 199
    .line 200
    move-result-wide v12

    .line 201
    const-wide/16 v16, 0x8

    .line 202
    .line 203
    mul-long v12, v12, v16

    .line 204
    .line 205
    long-to-float v5, v12

    .line 206
    const/high16 v10, 0x447a0000    # 1000.0f

    .line 207
    .line 208
    mul-float/2addr v5, v10

    .line 209
    iget-object v10, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 210
    .line 211
    invoke-static {v10}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$100(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v12

    .line 215
    long-to-float v10, v12

    .line 216
    div-float/2addr v5, v10

    .line 217
    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    goto/16 :goto_1

    .line 220
    .line 221
    :cond_6
    move v5, v7

    .line 222
    :goto_0
    iget-object v10, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 223
    .line 224
    invoke-static {v10, v14, v15}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$102(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;J)J

    .line 225
    .line 226
    .line 227
    iget-object v10, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 228
    .line 229
    invoke-static {v10, v14, v15}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$002(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;J)J

    .line 230
    .line 231
    .line 232
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    const/4 v4, 0x0

    .line 234
    cmpl-float v4, v5, v4

    .line 235
    .line 236
    if-gtz v4, :cond_7

    .line 237
    .line 238
    iget-object v4, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 239
    .line 240
    invoke-static {v4}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$3700(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-nez v4, :cond_9

    .line 245
    .line 246
    :cond_7
    iget-object v4, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlMultiSpeedList:Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    iget-object v10, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 253
    .line 254
    invoke-static {v10}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$3600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)I

    .line 255
    .line 256
    .line 257
    move-result v10

    .line 258
    if-lt v4, v10, :cond_8

    .line 259
    .line 260
    if-lez v4, :cond_8

    .line 261
    .line 262
    iget-object v4, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlMultiSpeedList:Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    :cond_8
    iget-object v4, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlMultiSpeedList:Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    :cond_9
    invoke-virtual {v3, v5}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->setNetSpeed(F)V

    .line 277
    .line 278
    .line 279
    if-lez v6, :cond_a

    .line 280
    .line 281
    iget-object v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mBitrateList:Ljava/util/LinkedHashMap;

    .line 282
    .line 283
    iget v4, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetQualityIndex:I

    .line 284
    .line 285
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-direct {v1, v3, v4, v5}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->addIfChanged(Ljava/util/LinkedHashMap;ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    if-nez v3, :cond_b

    .line 297
    .line 298
    iget-object v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mQualityList:Ljava/util/LinkedHashMap;

    .line 299
    .line 300
    iget v4, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetQualityIndex:I

    .line 301
    .line 302
    invoke-direct {v1, v3, v4, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->addIfChanged(Ljava/util/LinkedHashMap;ILjava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    :cond_b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_c

    .line 310
    .line 311
    iget-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetworkTypeList:Ljava/util/LinkedHashMap;

    .line 312
    .line 313
    iget v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetQualityIndex:I

    .line 314
    .line 315
    invoke-direct {v1, v0, v3, v8}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->addIfChanged(Ljava/util/LinkedHashMap;ILjava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    :cond_c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-nez v0, :cond_d

    .line 323
    .line 324
    iget-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSignalStrengthList:Ljava/util/LinkedHashMap;

    .line 325
    .line 326
    iget v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetQualityIndex:I

    .line 327
    .line 328
    invoke-direct {v1, v0, v3, v9}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->addIfChanged(Ljava/util/LinkedHashMap;ILjava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    :cond_d
    iget-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCurrentList:Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    iget-object v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 338
    .line 339
    invoke-static {v3}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$3600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)I

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-lt v0, v3, :cond_e

    .line 344
    .line 345
    if-lez v0, :cond_e

    .line 346
    .line 347
    iget-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCurrentList:Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    :cond_e
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;

    .line 353
    .line 354
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->access$3300(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getBatteryCurrent()F

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    cmpl-float v3, v0, v7

    .line 363
    .line 364
    if-eqz v3, :cond_f

    .line 365
    .line 366
    iget-object v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCurrentList:Ljava/util/ArrayList;

    .line 367
    .line 368
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    :cond_f
    iget v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetQualityIndex:I

    .line 376
    .line 377
    add-int/lit8 v0, v0, 0x1

    .line 378
    .line 379
    iput v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetQualityIndex:I

    .line 380
    .line 381
    return-void

    .line 382
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    throw v0
.end method
