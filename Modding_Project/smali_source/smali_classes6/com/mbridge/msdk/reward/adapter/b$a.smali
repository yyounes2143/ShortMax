.class Lcom/mbridge/msdk/reward/adapter/b$a;
.super Ljava/lang/Object;
.source "RewardCampaignsResourceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/adapter/b;->a(Landroid/content/Context;ZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/reward/adapter/b$h;Lcom/mbridge/msdk/reward/adapter/b$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/mbridge/msdk/reward/adapter/b$n;

.field final synthetic i:Lcom/mbridge/msdk/reward/adapter/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/b;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/reward/adapter/b$n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->d:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->g:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "_"

    .line 4
    .line 5
    const-string v3, "RewardCampaignsResourceManager"

    .line 6
    .line 7
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    if-eqz v0, :cond_14

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_14

    .line 16
    .line 17
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setCampaignList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 31
    .line 32
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    .line 36
    iget v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->d:I

    .line 37
    .line 38
    new-instance v0, Lcom/mbridge/msdk/reward/adapter/b$k;

    .line 39
    .line 40
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 41
    .line 42
    invoke-static {v4}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v14, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v15, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->g:Ljava/lang/String;

    .line 53
    .line 54
    move-object v10, v0

    .line 55
    invoke-direct/range {v10 .. v15}, Lcom/mbridge/msdk/reward/adapter/b$k;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move-object v10, v0

    .line 59
    invoke-virtual/range {v5 .. v10}, Lcom/mbridge/msdk/videocommon/download/b;->createUnitCache(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/mbridge/msdk/videocommon/listener/a;)Lcom/mbridge/msdk/videocommon/download/l;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v4, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v4}, Lcom/mbridge/msdk/videocommon/download/b;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    sget-boolean v4, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 74
    .line 75
    if-eqz v4, :cond_0

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_14

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move-object v15, v0

    .line 101
    check-cast v15, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 102
    .line 103
    if-nez v15, :cond_1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/16 v5, 0x6a

    .line 111
    .line 112
    iput v5, v0, Landroid/os/Message;->what:I

    .line 113
    .line 114
    new-instance v5, Landroid/os/Bundle;

    .line 115
    .line 116
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string/jumbo v6, "unit_id"

    .line 120
    .line 121
    .line 122
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-object v6, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v6, "request_id"

    .line 135
    .line 136
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v6, "key"

    .line 142
    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 179
    .line 180
    .line 181
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 182
    .line 183
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .line 189
    .line 190
    :catch_1
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 191
    .line 192
    .line 193
    move-result-object v16

    .line 194
    const-string v14, ".zip"

    .line 195
    .line 196
    const/4 v13, 0x2

    .line 197
    const/4 v12, 0x1

    .line 198
    const-string v11, ""

    .line 199
    .line 200
    const-string v10, "dyview"

    .line 201
    .line 202
    if-eqz v16, :cond_2

    .line 203
    .line 204
    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-eqz v6, :cond_3

    .line 217
    .line 218
    invoke-static {v10, v0}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-eqz v6, :cond_3

    .line 223
    .line 224
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 225
    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-static {v6, v12, v15, v5, v0}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_2
    move-object/from16 v19, v2

    .line 245
    .line 246
    move-object/from16 v23, v4

    .line 247
    .line 248
    move-object v2, v10

    .line 249
    move-object/from16 v17, v11

    .line 250
    .line 251
    move-object/from16 v27, v14

    .line 252
    .line 253
    goto/16 :goto_6

    .line 254
    .line 255
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-nez v5, :cond_2

    .line 260
    .line 261
    const-string v5, "cmpt=1"

    .line 262
    .line 263
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-nez v5, :cond_2

    .line 268
    .line 269
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 270
    .line 271
    invoke-static {v5, v15, v13}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_5

    .line 280
    .line 281
    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    new-instance v7, Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 286
    .line 287
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 288
    .line 289
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 290
    .line 291
    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 292
    .line 293
    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 294
    .line 295
    move-object/from16 v19, v2

    .line 296
    .line 297
    :try_start_3
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 298
    .line 299
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 300
    .line 301
    .line 302
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 303
    move-object/from16 v20, v11

    .line 304
    .line 305
    :try_start_4
    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 306
    .line 307
    move-object/from16 v21, v11

    .line 308
    .line 309
    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 310
    .line 311
    const/16 v22, 0x35b

    .line 312
    .line 313
    move-object/from16 v23, v5

    .line 314
    .line 315
    move-object v5, v7

    .line 316
    move-object/from16 v24, v7

    .line 317
    .line 318
    move-object/from16 v7, v23

    .line 319
    .line 320
    move-object/from16 v25, v8

    .line 321
    .line 322
    move-object v8, v12

    .line 323
    move-object v12, v9

    .line 324
    move-object v9, v13

    .line 325
    move-object v13, v10

    .line 326
    move-object v10, v15

    .line 327
    move-object/from16 v23, v4

    .line 328
    .line 329
    move-object/from16 v4, v20

    .line 330
    .line 331
    move-object/from16 v20, v21

    .line 332
    .line 333
    move-object/from16 v21, v11

    .line 334
    .line 335
    move/from16 v11, v22

    .line 336
    .line 337
    move-object/from16 v26, v12

    .line 338
    .line 339
    move-object v12, v2

    .line 340
    move-object v2, v13

    .line 341
    move-object/from16 v13, v20

    .line 342
    .line 343
    move-object/from16 v27, v14

    .line 344
    .line 345
    move-object/from16 v14, v21

    .line 346
    .line 347
    :try_start_5
    invoke-direct/range {v5 .. v14}, Lcom/mbridge/msdk/reward/adapter/b$l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ILandroid/os/Handler;Lcom/mbridge/msdk/reward/adapter/b$n;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 348
    .line 349
    .line 350
    move-object/from16 v6, v24

    .line 351
    .line 352
    move-object/from16 v5, v25

    .line 353
    .line 354
    move-object/from16 v14, v26

    .line 355
    .line 356
    invoke-virtual {v5, v14, v0, v6}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 357
    .line 358
    .line 359
    :cond_4
    :goto_2
    move-object/from16 v17, v4

    .line 360
    .line 361
    goto/16 :goto_6

    .line 362
    .line 363
    :catch_2
    move-exception v0

    .line 364
    goto :goto_4

    .line 365
    :catch_3
    move-exception v0

    .line 366
    move-object/from16 v23, v4

    .line 367
    .line 368
    move-object v2, v10

    .line 369
    move-object/from16 v27, v14

    .line 370
    .line 371
    move-object/from16 v4, v20

    .line 372
    .line 373
    goto :goto_4

    .line 374
    :catch_4
    move-exception v0

    .line 375
    :goto_3
    move-object/from16 v23, v4

    .line 376
    .line 377
    move-object v2, v10

    .line 378
    move-object v4, v11

    .line 379
    move-object/from16 v27, v14

    .line 380
    .line 381
    goto :goto_4

    .line 382
    :catch_5
    move-exception v0

    .line 383
    move-object/from16 v19, v2

    .line 384
    .line 385
    goto :goto_3

    .line 386
    :goto_4
    sget-boolean v5, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 387
    .line 388
    if-eqz v5, :cond_4

    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    goto :goto_2

    .line 398
    :cond_5
    move-object/from16 v19, v2

    .line 399
    .line 400
    move-object/from16 v23, v4

    .line 401
    .line 402
    move-object v2, v10

    .line 403
    move-object v4, v11

    .line 404
    move-object/from16 v27, v14

    .line 405
    .line 406
    move-object v14, v9

    .line 407
    const-string/jumbo v5, "\u5f00\u59cb\u4e0b\u8f7d html \u7c7b\u578b\u7684 template"

    .line 408
    .line 409
    .line 410
    invoke-static {v3, v5}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    :try_start_6
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 414
    .line 415
    .line 416
    move-result-object v13

    .line 417
    new-instance v12, Lcom/mbridge/msdk/reward/adapter/b$i;

    .line 418
    .line 419
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 420
    .line 421
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 422
    .line 423
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 424
    .line 425
    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 426
    .line 427
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 428
    .line 429
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 430
    .line 431
    .line 432
    move-result-object v17

    .line 433
    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 434
    .line 435
    const/16 v6, 0x35b

    .line 436
    .line 437
    move-object v5, v12

    .line 438
    move-object/from16 v20, v10

    .line 439
    .line 440
    move-object v10, v15

    .line 441
    move-object/from16 v28, v12

    .line 442
    .line 443
    move-object/from16 v12, v17

    .line 444
    .line 445
    move-object/from16 v17, v4

    .line 446
    .line 447
    move-object v4, v13

    .line 448
    move-object/from16 v13, v20

    .line 449
    .line 450
    :try_start_7
    invoke-direct/range {v5 .. v13}, Lcom/mbridge/msdk/reward/adapter/b$i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/reward/adapter/b$n;Landroid/os/Handler;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 451
    .line 452
    .line 453
    move-object/from16 v5, v28

    .line 454
    .line 455
    invoke-virtual {v4, v14, v0, v5}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 456
    .line 457
    .line 458
    goto :goto_6

    .line 459
    :catch_6
    move-exception v0

    .line 460
    goto :goto_5

    .line 461
    :catch_7
    move-exception v0

    .line 462
    move-object/from16 v17, v4

    .line 463
    .line 464
    :goto_5
    sget-boolean v4, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 465
    .line 466
    if-eqz v4, :cond_6

    .line 467
    .line 468
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    :cond_6
    :goto_6
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v11

    .line 479
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    invoke-static {v11}, Lcom/mbridge/msdk/foundation/tools/u0;->l(Ljava/lang/String;)Z

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 488
    .line 489
    .line 490
    move-result v5

    .line 491
    if-nez v5, :cond_9

    .line 492
    .line 493
    if-nez v0, :cond_7

    .line 494
    .line 495
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 496
    .line 497
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 498
    .line 499
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 500
    .line 501
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 502
    .line 503
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 504
    .line 505
    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 506
    .line 507
    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 508
    .line 509
    move-object v10, v15

    .line 510
    invoke-static/range {v5 .. v13}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Lcom/mbridge/msdk/reward/adapter/b$n;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 511
    .line 512
    .line 513
    goto :goto_8

    .line 514
    :cond_7
    if-eqz v4, :cond_8

    .line 515
    .line 516
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 517
    .line 518
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 519
    .line 520
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 521
    .line 522
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 523
    .line 524
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 525
    .line 526
    iget-object v12, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 527
    .line 528
    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 529
    .line 530
    move-object v10, v15

    .line 531
    invoke-static/range {v5 .. v13}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Lcom/mbridge/msdk/reward/adapter/b$n;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 532
    .line 533
    .line 534
    goto :goto_8

    .line 535
    :cond_8
    invoke-static {v2, v11}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    if-eqz v0, :cond_9

    .line 540
    .line 541
    :try_start_8
    const-string v0, "ecid"

    .line 542
    .line 543
    invoke-static {v11, v0}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 548
    .line 549
    .line 550
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 551
    goto :goto_7

    .line 552
    :catchall_0
    move-exception v0

    .line 553
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    const/16 v0, 0x194

    .line 561
    .line 562
    :goto_7
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 563
    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    .line 565
    .line 566
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    move-object/from16 v5, v17

    .line 573
    .line 574
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    const/4 v4, 0x2

    .line 582
    invoke-static {v2, v4, v15, v0, v11}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    :cond_9
    :goto_8
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    if-nez v0, :cond_a

    .line 594
    .line 595
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    if-nez v0, :cond_a

    .line 600
    .line 601
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 602
    .line 603
    const/4 v2, 0x6

    .line 604
    invoke-static {v0, v15, v2}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    invoke-virtual {v2, v0, v4}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->download(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    :cond_a
    invoke-virtual {v15}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    if-nez v2, :cond_b

    .line 628
    .line 629
    :try_start_9
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 630
    .line 631
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    new-instance v4, Lcom/mbridge/msdk/reward/adapter/b$j;

    .line 636
    .line 637
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 638
    .line 639
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 640
    .line 641
    .line 642
    move-result-object v6

    .line 643
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 644
    .line 645
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 646
    .line 647
    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 648
    .line 649
    const/4 v7, 0x0

    .line 650
    move-object v5, v4

    .line 651
    move-object v11, v15

    .line 652
    invoke-direct/range {v5 .. v11}, Lcom/mbridge/msdk/reward/adapter/b$j;-><init>(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v2, v0, v4}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 656
    .line 657
    .line 658
    goto :goto_9

    .line 659
    :catch_8
    move-exception v0

    .line 660
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 661
    .line 662
    if-eqz v2, :cond_b

    .line 663
    .line 664
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    :cond_b
    :goto_9
    invoke-virtual {v15}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 676
    .line 677
    .line 678
    move-result v2

    .line 679
    if-nez v2, :cond_c

    .line 680
    .line 681
    :try_start_a
    iget-object v2, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 682
    .line 683
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    new-instance v4, Lcom/mbridge/msdk/reward/adapter/b$j;

    .line 688
    .line 689
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 690
    .line 691
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 692
    .line 693
    .line 694
    move-result-object v6

    .line 695
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 696
    .line 697
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 698
    .line 699
    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 700
    .line 701
    const/4 v7, 0x0

    .line 702
    move-object v5, v4

    .line 703
    move-object v11, v15

    .line 704
    invoke-direct/range {v5 .. v11}, Lcom/mbridge/msdk/reward/adapter/b$j;-><init>(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v2, v0, v4}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 708
    .line 709
    .line 710
    goto :goto_a

    .line 711
    :catch_9
    move-exception v0

    .line 712
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 713
    .line 714
    if-eqz v2, :cond_c

    .line 715
    .line 716
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    :cond_c
    :goto_a
    if-eqz v16, :cond_13

    .line 724
    .line 725
    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->c()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 730
    .line 731
    .line 732
    move-result v2

    .line 733
    if-nez v2, :cond_f

    .line 734
    .line 735
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    if-nez v2, :cond_f

    .line 740
    .line 741
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAabEntity()Lcom/mbridge/msdk/foundation/entity/AabEntity;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    if-eqz v2, :cond_d

    .line 746
    .line 747
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAabEntity()Lcom/mbridge/msdk/foundation/entity/AabEntity;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    iget v2, v2, Lcom/mbridge/msdk/foundation/entity/AabEntity;->h3c:I

    .line 752
    .line 753
    goto :goto_b

    .line 754
    :cond_d
    const/4 v2, 0x0

    .line 755
    :goto_b
    new-instance v4, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 756
    .line 757
    const/4 v5, 0x1

    .line 758
    invoke-direct {v4, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>(Z)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->f(I)V

    .line 762
    .line 763
    .line 764
    move-object/from16 v2, v27

    .line 765
    .line 766
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 767
    .line 768
    .line 769
    move-result v2

    .line 770
    if-eqz v2, :cond_e

    .line 771
    .line 772
    const-string/jumbo v2, "\u5f00\u59cb\u4e0b\u8f7d zip \u7c7b\u578b\u7684 pause"

    .line 773
    .line 774
    .line 775
    invoke-static {v3, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    :try_start_b
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    new-instance v14, Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 783
    .line 784
    iget-object v6, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 785
    .line 786
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 787
    .line 788
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 789
    .line 790
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 791
    .line 792
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 793
    .line 794
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 795
    .line 796
    .line 797
    move-result-object v12

    .line 798
    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 799
    .line 800
    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 801
    .line 802
    const/16 v17, 0x139

    .line 803
    .line 804
    move-object v5, v14

    .line 805
    move-object v10, v15

    .line 806
    move-object/from16 v18, v11

    .line 807
    .line 808
    move/from16 v11, v17

    .line 809
    .line 810
    move-object/from16 v17, v15

    .line 811
    .line 812
    move-object v15, v14

    .line 813
    move-object/from16 v14, v18

    .line 814
    .line 815
    :try_start_c
    invoke-direct/range {v5 .. v14}, Lcom/mbridge/msdk/reward/adapter/b$l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ILandroid/os/Handler;Lcom/mbridge/msdk/reward/adapter/b$n;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v2, v4, v0, v15}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 819
    .line 820
    .line 821
    goto :goto_d

    .line 822
    :catch_a
    move-exception v0

    .line 823
    goto :goto_c

    .line 824
    :catch_b
    move-exception v0

    .line 825
    move-object/from16 v17, v15

    .line 826
    .line 827
    :goto_c
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 828
    .line 829
    if-eqz v2, :cond_10

    .line 830
    .line 831
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    goto :goto_d

    .line 839
    :cond_e
    move-object/from16 v17, v15

    .line 840
    .line 841
    :try_start_d
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    new-instance v14, Lcom/mbridge/msdk/reward/adapter/b$i;

    .line 846
    .line 847
    iget-object v7, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 848
    .line 849
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 850
    .line 851
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 852
    .line 853
    iget-object v11, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->h:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 854
    .line 855
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 856
    .line 857
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 858
    .line 859
    .line 860
    move-result-object v12

    .line 861
    iget-object v13, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 862
    .line 863
    const/16 v6, 0x139

    .line 864
    .line 865
    move-object v5, v14

    .line 866
    move-object/from16 v10, v17

    .line 867
    .line 868
    invoke-direct/range {v5 .. v13}, Lcom/mbridge/msdk/reward/adapter/b$i;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/reward/adapter/b$n;Landroid/os/Handler;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v2, v4, v0, v14}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->downloadH5Res(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 872
    .line 873
    .line 874
    goto :goto_d

    .line 875
    :catch_c
    move-exception v0

    .line 876
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 877
    .line 878
    if-eqz v2, :cond_10

    .line 879
    .line 880
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    goto :goto_d

    .line 888
    :cond_f
    move-object/from16 v17, v15

    .line 889
    .line 890
    :cond_10
    :goto_d
    invoke-virtual/range {v16 .. v16}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->a()Ljava/util/List;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    if-eqz v0, :cond_13

    .line 895
    .line 896
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 897
    .line 898
    .line 899
    move-result v2

    .line 900
    if-lez v2, :cond_13

    .line 901
    .line 902
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 903
    .line 904
    .line 905
    move-result-object v2

    .line 906
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 907
    .line 908
    .line 909
    move-result v0

    .line 910
    if-eqz v0, :cond_13

    .line 911
    .line 912
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c$a;

    .line 917
    .line 918
    if-eqz v0, :cond_11

    .line 919
    .line 920
    iget-object v4, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->a:Ljava/util/List;

    .line 921
    .line 922
    if-eqz v4, :cond_11

    .line 923
    .line 924
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 925
    .line 926
    .line 927
    move-result v4

    .line 928
    if-lez v4, :cond_11

    .line 929
    .line 930
    iget-object v0, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c$a;->a:Ljava/util/List;

    .line 931
    .line 932
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 933
    .line 934
    .line 935
    move-result-object v4

    .line 936
    :cond_12
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 937
    .line 938
    .line 939
    move-result v0

    .line 940
    if-eqz v0, :cond_11

    .line 941
    .line 942
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    check-cast v0, Ljava/lang/String;

    .line 947
    .line 948
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 949
    .line 950
    .line 951
    move-result v5

    .line 952
    if-nez v5, :cond_12

    .line 953
    .line 954
    :try_start_e
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->b:Landroid/content/Context;

    .line 955
    .line 956
    invoke-static {v5}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    .line 957
    .line 958
    .line 959
    move-result-object v12

    .line 960
    new-instance v13, Lcom/mbridge/msdk/reward/adapter/b$j;

    .line 961
    .line 962
    iget-object v5, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->i:Lcom/mbridge/msdk/reward/adapter/b;

    .line 963
    .line 964
    invoke-static {v5}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/reward/adapter/b;)Lcom/mbridge/msdk/reward/adapter/b$m;

    .line 965
    .line 966
    .line 967
    move-result-object v6

    .line 968
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->e:Ljava/lang/String;

    .line 969
    .line 970
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->c:Ljava/lang/String;

    .line 971
    .line 972
    iget-object v10, v1, Lcom/mbridge/msdk/reward/adapter/b$a;->f:Ljava/lang/String;

    .line 973
    .line 974
    const/4 v7, 0x1

    .line 975
    move-object v5, v13

    .line 976
    move-object/from16 v11, v17

    .line 977
    .line 978
    invoke-direct/range {v5 .. v11}, Lcom/mbridge/msdk/reward/adapter/b$j;-><init>(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v12, v0, v13}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    .line 982
    .line 983
    .line 984
    goto :goto_e

    .line 985
    :catch_d
    move-exception v0

    .line 986
    sget-boolean v5, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 987
    .line 988
    if-eqz v5, :cond_12

    .line 989
    .line 990
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    goto :goto_e

    .line 998
    :cond_13
    move-object/from16 v2, v19

    .line 999
    .line 1000
    move-object/from16 v4, v23

    .line 1001
    .line 1002
    goto/16 :goto_1

    .line 1003
    .line 1004
    :cond_14
    return-void
.end method
