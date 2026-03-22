.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;
.super Landroid/os/Handler;
.source "TTVideoEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_initUsingHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    if-ne v0, v1, :cond_c

    .line 9
    .line 10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/lang/String;

    .line 13
    .line 14
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    int-to-long v1, v1

    .line 17
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 18
    .line 19
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/util/HashMap;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string/jumbo v4, "video"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 35
    .line 36
    invoke-static {v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/util/HashMap;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v5, "audio"

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/String;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 49
    .line 50
    iget v5, v5, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    .line 51
    .line 52
    const/4 v6, 0x5

    .line 53
    if-ne v5, v6, :cond_0

    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 69
    .line 70
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 77
    .line 78
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-interface {v3, v1, v2}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setDashAudioCacheSize(J)V

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 86
    .line 87
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/16 v4, 0xb7

    .line 92
    .line 93
    invoke-interface {v3, v4, p1}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setIntOption(II)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_2

    .line 102
    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_2

    .line 108
    .line 109
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 110
    .line 111
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 118
    .line 119
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-interface {v3, v1, v2}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setDashVideoCacheSize(J)V

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 127
    .line 128
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    const/16 v4, 0xb6

    .line 133
    .line 134
    invoke-interface {v3, v4, p1}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setIntOption(II)V

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 138
    .line 139
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6600(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/util/ArrayList;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    const/4 v4, 0x1

    .line 144
    const/4 v5, 0x2

    .line 145
    const-string v6, " miss reason = "

    .line 146
    .line 147
    const-string v7, " groupid = "

    .line 148
    .line 149
    const-string v8, " vid = "

    .line 150
    .line 151
    const-string v9, " size = "

    .line 152
    .line 153
    const-string/jumbo v10, "using mdl cache, key :"

    .line 154
    .line 155
    .line 156
    const-string v11, ""

    .line 157
    .line 158
    if-eqz v3, :cond_7

    .line 159
    .line 160
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 161
    .line 162
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6600(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_7

    .line 171
    .line 172
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 173
    .line 174
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)J

    .line 175
    .line 176
    .line 177
    move-result-wide v12

    .line 178
    add-long/2addr v12, v1

    .line 179
    invoke-static {v3, v12, v13}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6702(Lcom/ss/ttvideoengine/TTVideoEngineImpl;J)J

    .line 180
    .line 181
    .line 182
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 183
    .line 184
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    if-eqz v3, :cond_3

    .line 189
    .line 190
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 191
    .line 192
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    iget-object v12, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 197
    .line 198
    invoke-static {v12}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)J

    .line 199
    .line 200
    .line 201
    move-result-wide v12

    .line 202
    invoke-interface {v3, v12, v13}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setVideoCacheSize(J)V

    .line 203
    .line 204
    .line 205
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 206
    .line 207
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    const/16 v12, 0xb5

    .line 212
    .line 213
    invoke-interface {v3, v12, p1}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setIntOption(II)V

    .line 214
    .line 215
    .line 216
    :cond_3
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    new-instance v12, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object v8, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 243
    .line 244
    invoke-static {v8}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    if-eqz v8, :cond_4

    .line 253
    .line 254
    move-object v8, v11

    .line 255
    goto :goto_1

    .line 256
    :cond_4
    iget-object v8, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 257
    .line 258
    invoke-static {v8}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    :goto_1
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    iget-object v7, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 269
    .line 270
    invoke-static {v7}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    if-eqz v7, :cond_5

    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_5
    iget-object v7, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 282
    .line 283
    invoke-static {v7}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-static {v3, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 304
    .line 305
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/util/HashMap;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    if-lt p1, v5, :cond_6

    .line 314
    .line 315
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 316
    .line 317
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/util/HashMap;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    if-eqz p1, :cond_d

    .line 326
    .line 327
    :cond_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 328
    .line 329
    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mVideoEngineInfoListener:Lcom/ss/ttvideoengine/VideoEngineInfoListener;

    .line 330
    .line 331
    if-eqz p1, :cond_d

    .line 332
    .line 333
    new-instance p1, Lcom/ss/ttvideoengine/VideoEngineInfos;

    .line 334
    .line 335
    invoke-direct {p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v3, "mdlfilepathhitcachesize"

    .line 339
    .line 340
    invoke-virtual {p1, v3}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setKey(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iput-object v0, p1, Lcom/ss/ttvideoengine/VideoEngineInfos;->mUsingMDLPlayFilePath:Ljava/lang/String;

    .line 344
    .line 345
    iput-wide v1, p1, Lcom/ss/ttvideoengine/VideoEngineInfos;->mHitCacheSize:J

    .line 346
    .line 347
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 348
    .line 349
    invoke-virtual {v0, p1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->notifyEngineInfo(Lcom/ss/ttvideoengine/VideoEngineInfos;Z)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_5

    .line 353
    .line 354
    :cond_7
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 355
    .line 356
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/util/ArrayList;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    if-eqz v3, :cond_d

    .line 361
    .line 362
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 363
    .line 364
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6800(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/util/ArrayList;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-eqz v3, :cond_d

    .line 373
    .line 374
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 375
    .line 376
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)J

    .line 377
    .line 378
    .line 379
    move-result-wide v12

    .line 380
    add-long/2addr v12, v1

    .line 381
    invoke-static {v3, v12, v13}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6702(Lcom/ss/ttvideoengine/TTVideoEngineImpl;J)J

    .line 382
    .line 383
    .line 384
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 385
    .line 386
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    if-eqz v3, :cond_8

    .line 391
    .line 392
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 393
    .line 394
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    iget-object v12, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 399
    .line 400
    invoke-static {v12}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6700(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)J

    .line 401
    .line 402
    .line 403
    move-result-wide v12

    .line 404
    invoke-interface {v3, v12, v13}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setVideoCacheSize(J)V

    .line 405
    .line 406
    .line 407
    :cond_8
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 408
    .line 409
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->logcatTag()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    new-instance v12, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    iget-object v8, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 434
    .line 435
    invoke-static {v8}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 440
    .line 441
    .line 442
    move-result v8

    .line 443
    if-eqz v8, :cond_9

    .line 444
    .line 445
    move-object v8, v11

    .line 446
    goto :goto_3

    .line 447
    :cond_9
    iget-object v8, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 448
    .line 449
    invoke-static {v8}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v8

    .line 453
    :goto_3
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    iget-object v7, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 460
    .line 461
    invoke-static {v7}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 466
    .line 467
    .line 468
    move-result v7

    .line 469
    if-eqz v7, :cond_a

    .line 470
    .line 471
    goto :goto_4

    .line 472
    :cond_a
    iget-object v7, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 473
    .line 474
    invoke-static {v7}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v11

    .line 478
    :goto_4
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    invoke-static {v3, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 495
    .line 496
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/util/HashMap;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 501
    .line 502
    .line 503
    move-result p1

    .line 504
    if-lt p1, v5, :cond_b

    .line 505
    .line 506
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 507
    .line 508
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6500(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/util/HashMap;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result p1

    .line 516
    if-eqz p1, :cond_d

    .line 517
    .line 518
    :cond_b
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 519
    .line 520
    iget-object p1, p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mVideoEngineInfoListener:Lcom/ss/ttvideoengine/VideoEngineInfoListener;

    .line 521
    .line 522
    if-eqz p1, :cond_d

    .line 523
    .line 524
    new-instance p1, Lcom/ss/ttvideoengine/VideoEngineInfos;

    .line 525
    .line 526
    invoke-direct {p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;-><init>()V

    .line 527
    .line 528
    .line 529
    const-string v3, "mdlhitcachesize"

    .line 530
    .line 531
    invoke-virtual {p1, v3}, Lcom/ss/ttvideoengine/VideoEngineInfos;->setKey(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    iput-object v0, p1, Lcom/ss/ttvideoengine/VideoEngineInfos;->mUsingMDLPlayTaskKey:Ljava/lang/String;

    .line 535
    .line 536
    iput-wide v1, p1, Lcom/ss/ttvideoengine/VideoEngineInfos;->mHitCacheSize:J

    .line 537
    .line 538
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 539
    .line 540
    invoke-virtual {v0, p1, v4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->notifyEngineInfo(Lcom/ss/ttvideoengine/VideoEngineInfos;Z)V

    .line 541
    .line 542
    .line 543
    goto :goto_5

    .line 544
    :cond_c
    const/16 p1, 0x21

    .line 545
    .line 546
    if-ne v0, p1, :cond_d

    .line 547
    .line 548
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$8;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 549
    .line 550
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->_doResetByPool()V

    .line 551
    .line 552
    .line 553
    :cond_d
    :goto_5
    return-void
.end method
