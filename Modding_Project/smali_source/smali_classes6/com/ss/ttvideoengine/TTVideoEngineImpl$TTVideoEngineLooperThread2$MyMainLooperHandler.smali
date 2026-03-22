.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;
.super Landroid/os/Handler;
.source "TTVideoEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMainLooperHandler"
.end annotation


# instance fields
.field private mEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngineImpl;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;Lcom/ss/ttvideoengine/TTVideoEngineImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Lcom/ss/ttvideoengine/TTVideoEngineImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->mEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "engine is null, return."

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    check-cast v1, Ljava/util/Map;

    .line 31
    .line 32
    const-string v3, "msgCond"

    .line 33
    .line 34
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/util/concurrent/locks/Condition;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object v3, v2

    .line 48
    :goto_0
    const-string v4, "paramObj"

    .line 49
    .line 50
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-object v4, v2

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move-object v1, v2

    .line 64
    move-object v3, v1

    .line 65
    move-object v4, v3

    .line 66
    :goto_1
    iget v5, p1, Landroid/os/Message;->what:I

    .line 67
    .line 68
    const/16 v6, 0x258

    .line 69
    .line 70
    if-eq v5, v6, :cond_b

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v7, 0x1

    .line 74
    const-string v8, ", now:"

    .line 75
    .line 76
    const-string v9, ", traceId not same, should be:"

    .line 77
    .line 78
    packed-switch v5, :pswitch_data_0

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v2, "unknown message: "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget p1, p1, Landroid/os/Message;->what:I

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :pswitch_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 115
    .line 116
    if-eqz v0, :cond_c

    .line 117
    .line 118
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 119
    .line 120
    iget-object v1, v1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 121
    .line 122
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 127
    .line 128
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttvideoengine/ListenerCompact;->onCurrentPlaybackTimeUpdate(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :pswitch_1
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 134
    .line 135
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/ListenerCompact;->onRefreshSurface(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    :pswitch_2
    check-cast v4, Ljava/lang/Long;

    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 151
    .line 152
    .line 153
    move-result-wide v1

    .line 154
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p1, v1, v2}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->showedFirstAVSyncVideoFrame(J)V

    .line 159
    .line 160
    .line 161
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 162
    .line 163
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/ListenerCompact;->onFirstAVSyncFrame(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_3

    .line 175
    .line 176
    :pswitch_3
    instance-of p1, v4, Ljava/lang/String;

    .line 177
    .line 178
    if-eqz p1, :cond_c

    .line 179
    .line 180
    check-cast v4, Ljava/lang/String;

    .line 181
    .line 182
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mTraceId:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-nez p1, :cond_4

    .line 189
    .line 190
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 191
    .line 192
    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v2, "MSG_NOTIFY_VIDEO_SECOND_FRAME engine:"

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mTraceId:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_3

    .line 233
    .line 234
    :cond_4
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 235
    .line 236
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/ListenerCompact;->onVideoSecondFrame(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_3

    .line 244
    .line 245
    :pswitch_4
    check-cast v4, Ljava/util/Map;

    .line 246
    .line 247
    const-string/jumbo p1, "type"

    .line 248
    .line 249
    .line 250
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    check-cast p1, Ljava/lang/Integer;

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    const-string p1, "pts"

    .line 261
    .line 262
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Ljava/lang/Long;

    .line 267
    .line 268
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 269
    .line 270
    .line 271
    move-result-wide v8

    .line 272
    const-string/jumbo p1, "wallClockTime"

    .line 273
    .line 274
    .line 275
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    check-cast p1, Ljava/lang/Long;

    .line 280
    .line 281
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 282
    .line 283
    .line 284
    move-result-wide v10

    .line 285
    const-string p1, "frameData"

    .line 286
    .line 287
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    move-object v12, p1

    .line 292
    check-cast v12, Ljava/util/HashMap;

    .line 293
    .line 294
    iget-object v5, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 295
    .line 296
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    invoke-virtual/range {v5 .. v12}, Lcom/ss/ttvideoengine/ListenerCompact;->onFrameAboutToBeRendered(Lcom/ss/ttvideoengine/TTVideoEngine;IJJLjava/util/Map;)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_3

    .line 304
    .line 305
    :pswitch_5
    check-cast v4, Ljava/util/Map;

    .line 306
    .line 307
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 308
    .line 309
    invoke-virtual {p1, v4}, Lcom/ss/ttvideoengine/ListenerCompact;->onAVBadInterlaced(Ljava/util/Map;)V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_3

    .line 313
    .line 314
    :pswitch_6
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 315
    .line 316
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/ListenerCompact;->onReadyForDisplay(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 321
    .line 322
    .line 323
    goto/16 :goto_3

    .line 324
    .line 325
    :pswitch_7
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 326
    .line 327
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 328
    .line 329
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 330
    .line 331
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttvideoengine/ListenerCompact;->onSARChanged(II)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_3

    .line 335
    .line 336
    :pswitch_8
    check-cast v4, Lcom/ss/ttvideoengine/Resolution;

    .line 337
    .line 338
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 339
    .line 340
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 341
    .line 342
    invoke-virtual {v0, v4, p1}, Lcom/ss/ttvideoengine/ListenerCompact;->onVideoStreamBitrateChanged(Lcom/ss/ttvideoengine/Resolution;I)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_3

    .line 346
    .line 347
    :pswitch_9
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 348
    .line 349
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 350
    .line 351
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/ListenerCompact;->onBufferEnd(I)V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_3

    .line 355
    .line 356
    :pswitch_a
    instance-of v1, v4, Ljava/util/Map;

    .line 357
    .line 358
    if-eqz v1, :cond_c

    .line 359
    .line 360
    check-cast v4, Ljava/util/Map;

    .line 361
    .line 362
    const-string v1, "bufferStartAction"

    .line 363
    .line 364
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    check-cast v1, Ljava/lang/Integer;

    .line 369
    .line 370
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    const-string/jumbo v2, "traceid"

    .line 375
    .line 376
    .line 377
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    check-cast v2, Ljava/lang/String;

    .line 382
    .line 383
    iget-object v4, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mTraceId:Ljava/lang/String;

    .line 384
    .line 385
    if-eq v2, v4, :cond_5

    .line 386
    .line 387
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 388
    .line 389
    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    const-string v4, "MSG_NOTIFY_BUFFER_START engine:"

    .line 401
    .line 402
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mTraceId:Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    goto/16 :goto_3

    .line 430
    .line 431
    :cond_5
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 432
    .line 433
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 434
    .line 435
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 436
    .line 437
    invoke-virtual {v0, v2, p1, v1}, Lcom/ss/ttvideoengine/ListenerCompact;->onBufferStart(III)V

    .line 438
    .line 439
    .line 440
    goto/16 :goto_3

    .line 441
    .line 442
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 443
    .line 444
    if-ne p1, v7, :cond_6

    .line 445
    .line 446
    move v6, v7

    .line 447
    :cond_6
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSeekCompletionListener:Lcom/ss/ttvideoengine/SeekCompletionListener;

    .line 448
    .line 449
    if-eqz p1, :cond_c

    .line 450
    .line 451
    invoke-interface {p1, v6}, Lcom/ss/ttvideoengine/SeekCompletionListener;->onCompletion(Z)V

    .line 452
    .line 453
    .line 454
    iput-object v2, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mSeekCompletionListener:Lcom/ss/ttvideoengine/SeekCompletionListener;

    .line 455
    .line 456
    goto/16 :goto_3

    .line 457
    .line 458
    :pswitch_c
    check-cast v4, Lcom/ss/ttvideoengine/utils/Error;

    .line 459
    .line 460
    if-eqz v1, :cond_7

    .line 461
    .line 462
    const-string p1, "paramObj1"

    .line 463
    .line 464
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v5

    .line 468
    if-eqz v5, :cond_7

    .line 469
    .line 470
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    move-object v2, p1

    .line 475
    check-cast v2, Ljava/lang/String;

    .line 476
    .line 477
    :cond_7
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 478
    .line 479
    invoke-virtual {p1, v4, v2}, Lcom/ss/ttvideoengine/ListenerCompact;->onVideoURLRouteFailed(Lcom/ss/ttvideoengine/utils/Error;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_3

    .line 483
    .line 484
    :pswitch_d
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mVideoEngineInfoListener:Lcom/ss/ttvideoengine/VideoEngineInfoListener;

    .line 485
    .line 486
    if-eqz p1, :cond_c

    .line 487
    .line 488
    check-cast v4, Lcom/ss/ttvideoengine/VideoEngineInfos;

    .line 489
    .line 490
    invoke-interface {p1, v4}, Lcom/ss/ttvideoengine/VideoEngineInfoListener;->onVideoEngineInfos(Lcom/ss/ttvideoengine/VideoEngineInfos;)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_3

    .line 494
    .line 495
    :pswitch_e
    check-cast v4, Lcom/ss/ttvideoengine/model/VideoModel;

    .line 496
    .line 497
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mVideoInfoListener:Lcom/ss/ttvideoengine/VideoInfoListener;

    .line 498
    .line 499
    if-eqz p1, :cond_c

    .line 500
    .line 501
    invoke-interface {p1, v4}, Lcom/ss/ttvideoengine/VideoInfoListener;->onFetchedVideoInfo(Lcom/ss/ttvideoengine/model/VideoModel;)Z

    .line 502
    .line 503
    .line 504
    move-result p1

    .line 505
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 506
    .line 507
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainMsgRetValue:Landroid/os/Parcel;

    .line 508
    .line 509
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 510
    .line 511
    .line 512
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 513
    .line 514
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->mMainMsgRetValue:Landroid/os/Parcel;

    .line 515
    .line 516
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    .line 518
    .line 519
    goto/16 :goto_3

    .line 520
    .line 521
    :pswitch_f
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 522
    .line 523
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 524
    .line 525
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/ListenerCompact;->onVideoStatusException(I)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_3

    .line 529
    .line 530
    :pswitch_10
    check-cast v4, Lcom/ss/ttvideoengine/utils/Error;

    .line 531
    .line 532
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 533
    .line 534
    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 535
    .line 536
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$8400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/VideoEngineConfigResolutionListener;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    if-eqz p1, :cond_8

    .line 541
    .line 542
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 543
    .line 544
    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 545
    .line 546
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$8500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Z

    .line 547
    .line 548
    .line 549
    move-result p1

    .line 550
    if-eqz p1, :cond_8

    .line 551
    .line 552
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 553
    .line 554
    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 555
    .line 556
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$8400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/VideoEngineConfigResolutionListener;

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    invoke-interface {p1, v4}, Lcom/ss/ttvideoengine/VideoEngineConfigResolutionListener;->onError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 561
    .line 562
    .line 563
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 564
    .line 565
    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 566
    .line 567
    invoke-static {p1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$8402(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttvideoengine/VideoEngineConfigResolutionListener;)Lcom/ss/ttvideoengine/VideoEngineConfigResolutionListener;

    .line 568
    .line 569
    .line 570
    :cond_8
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 571
    .line 572
    invoke-virtual {p1, v4}, Lcom/ss/ttvideoengine/ListenerCompact;->onError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 573
    .line 574
    .line 575
    goto/16 :goto_3

    .line 576
    .line 577
    :pswitch_11
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 578
    .line 579
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/ListenerCompact;->onCompletion(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 584
    .line 585
    .line 586
    goto/16 :goto_3

    .line 587
    .line 588
    :pswitch_12
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 589
    .line 590
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 595
    .line 596
    invoke-virtual {v1, v0, p1}, Lcom/ss/ttvideoengine/ListenerCompact;->onStreamChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 597
    .line 598
    .line 599
    goto/16 :goto_3

    .line 600
    .line 601
    :pswitch_13
    instance-of p1, v4, Ljava/lang/String;

    .line 602
    .line 603
    if-eqz p1, :cond_c

    .line 604
    .line 605
    check-cast v4, Ljava/lang/String;

    .line 606
    .line 607
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mTraceId:Ljava/lang/String;

    .line 608
    .line 609
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result p1

    .line 613
    if-nez p1, :cond_9

    .line 614
    .line 615
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 616
    .line 617
    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 618
    .line 619
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object p1

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    .line 627
    .line 628
    const-string v2, "MSG_NOTIFY_RENDER_START engine:"

    .line 629
    .line 630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mTraceId:Ljava/lang/String;

    .line 646
    .line 647
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    goto :goto_3

    .line 658
    :cond_9
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 659
    .line 660
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/ListenerCompact;->onRenderStart(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 665
    .line 666
    .line 667
    goto :goto_3

    .line 668
    :pswitch_14
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 669
    .line 670
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/ListenerCompact;->onPrepared(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 675
    .line 676
    .line 677
    goto :goto_3

    .line 678
    :pswitch_15
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 679
    .line 680
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/ListenerCompact;->onPrepare(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 685
    .line 686
    .line 687
    goto :goto_3

    .line 688
    :pswitch_16
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 689
    .line 690
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 695
    .line 696
    invoke-virtual {v1, v0, p1}, Lcom/ss/ttvideoengine/ListenerCompact;->onBufferingUpdate(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 697
    .line 698
    .line 699
    goto :goto_3

    .line 700
    :pswitch_17
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 701
    .line 702
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 707
    .line 708
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 709
    .line 710
    invoke-virtual {v1, v0, v2, p1}, Lcom/ss/ttvideoengine/ListenerCompact;->onVideoSizeChanged(Lcom/ss/ttvideoengine/TTVideoEngine;II)V

    .line 711
    .line 712
    .line 713
    goto :goto_3

    .line 714
    :pswitch_18
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 715
    .line 716
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 717
    .line 718
    if-ne p1, v7, :cond_a

    .line 719
    .line 720
    goto :goto_2

    .line 721
    :cond_a
    const/4 p1, 0x3

    .line 722
    if-eq v1, p1, :cond_c

    .line 723
    .line 724
    :goto_2
    iget-object p1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 725
    .line 726
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/ListenerCompact;->onLoadStateChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 731
    .line 732
    .line 733
    goto :goto_3

    .line 734
    :pswitch_19
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 735
    .line 736
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 741
    .line 742
    invoke-virtual {v1, v0, p1}, Lcom/ss/ttvideoengine/ListenerCompact;->onPlaybackStateChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 743
    .line 744
    .line 745
    goto :goto_3

    .line 746
    :cond_b
    iget-object v0, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mListenerCompact:Lcom/ss/ttvideoengine/ListenerCompact;

    .line 747
    .line 748
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 749
    .line 750
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 751
    .line 752
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttvideoengine/ListenerCompact;->onABRPredictBitrate(II)V

    .line 753
    .line 754
    .line 755
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2$MyMainLooperHandler;->this$1:Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;

    .line 756
    .line 757
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->access$8600(Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;)Ljava/util/concurrent/locks/Lock;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    invoke-virtual {p1, v0, v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$TTVideoEngineLooperThread2;->notifyMsgComplete(Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)V

    .line 762
    .line 763
    .line 764
    return-void

    .line 765
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
.end method
