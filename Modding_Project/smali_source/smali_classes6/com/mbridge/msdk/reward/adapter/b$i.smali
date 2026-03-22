.class final Lcom/mbridge/msdk/reward/adapter/b$i;
.super Ljava/lang/Object;
.source "RewardCampaignsResourceManager.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IH5SourceDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/reward/adapter/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private g:Lcom/mbridge/msdk/reward/adapter/b$n;

.field private h:Landroid/os/Handler;

.field private i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private final j:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/reward/adapter/b$n;Landroid/os/Handler;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            "Lcom/mbridge/msdk/reward/adapter/b$n;",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->a:Z

    .line 6
    .line 7
    iput p1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->b:I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p5, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->g:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 20
    .line 21
    iput-object p8, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    iput-wide p1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->j:J

    .line 28
    .line 29
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/adapter/b$i;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method private a(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 3
    new-instance v8, Lcom/mbridge/msdk/reward/adapter/b$i$a;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/reward/adapter/b$i$a;-><init>(Lcom/mbridge/msdk/reward/adapter/b$i;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/reward/adapter/b$i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->a:Z

    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setZipDownloadDone(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->b:I

    .line 10
    .line 11
    const/16 v1, 0x139

    .line 12
    .line 13
    const-string/jumbo v2, "url"

    .line 14
    .line 15
    .line 16
    const/16 v3, 0xc9

    .line 17
    .line 18
    const-string v4, "message"

    .line 19
    .line 20
    const-string v5, "key"

    .line 21
    .line 22
    const-string v6, "request_id"

    .line 23
    .line 24
    const-string/jumbo v7, "unit_id"

    .line 25
    .line 26
    .line 27
    const-string v8, "_"

    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    const/16 v1, 0x1f1

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    const/16 v1, 0x35b

    .line 36
    .line 37
    if-eq v0, v1, :cond_0

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/16 v1, 0xcd

    .line 46
    .line 47
    iput v1, v0, Landroid/os/Message;->what:I

    .line 48
    .line 49
    new-instance v1, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v7, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v2, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->g:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 120
    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 130
    .line 131
    invoke-direct {v0, v1, v2, v3}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->g:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 135
    .line 136
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 137
    .line 138
    const v3, 0xd6d86

    .line 139
    .line 140
    .line 141
    const/4 v4, 0x0

    .line 142
    invoke-static {v3, v0, p2, v4, v4}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-interface {v1, p1, v2, p2}, Lcom/mbridge/msdk/reward/adapter/b$n;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/error/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string p2, "RewardCampaignsResourceManager"

    .line 157
    .line 158
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iput v3, v0, Landroid/os/Message;->what:I

    .line 168
    .line 169
    new-instance v1, Landroid/os/Bundle;

    .line 170
    .line 171
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v1, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    sget-object v3, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 180
    .line 181
    iget-object v7, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v1, v3, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 213
    .line 214
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v1, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 235
    .line 236
    .line 237
    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 238
    .line 239
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    .line 241
    .line 242
    iget-boolean p2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->a:Z

    .line 243
    .line 244
    if-eqz p2, :cond_3

    .line 245
    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 247
    .line 248
    .line 249
    move-result-wide v0

    .line 250
    iget-wide v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->j:J

    .line 251
    .line 252
    sub-long v6, v0, v2

    .line 253
    .line 254
    const-string/jumbo v9, "url download failed"

    .line 255
    .line 256
    .line 257
    const-string v10, ""

    .line 258
    .line 259
    const/4 v5, 0x3

    .line 260
    move-object v4, p0

    .line 261
    move-object v8, p1

    .line 262
    invoke-direct/range {v4 .. v10}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_0

    .line 266
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iput v3, v0, Landroid/os/Message;->what:I

    .line 271
    .line 272
    new-instance v1, Landroid/os/Bundle;

    .line 273
    .line 274
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 275
    .line 276
    .line 277
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v1, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    sget-object v3, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 283
    .line 284
    iget-object v7, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v1, v3, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 316
    .line 317
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-virtual {v1, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 338
    .line 339
    .line 340
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 341
    .line 342
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 343
    .line 344
    .line 345
    :cond_3
    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p3, p1, v0}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setZipDownloadDone(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget p3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->b:I

    .line 10
    .line 11
    const/16 v0, 0x139

    .line 12
    .line 13
    const-string/jumbo v1, "url"

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x65

    .line 17
    .line 18
    const-string v3, "key"

    .line 19
    .line 20
    const-string v4, "request_id"

    .line 21
    .line 22
    const-string/jumbo v5, "unit_id"

    .line 23
    .line 24
    .line 25
    const-string v6, "_"

    .line 26
    .line 27
    if-eq p3, v0, :cond_2

    .line 28
    .line 29
    const/16 v0, 0x1f1

    .line 30
    .line 31
    if-eq p3, v0, :cond_1

    .line 32
    .line 33
    const/16 p2, 0x35b

    .line 34
    .line 35
    if-eq p3, p2, :cond_0

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const/16 p3, 0x69

    .line 44
    .line 45
    iput p3, p2, Landroid/os/Message;->what:I

    .line 46
    .line 47
    new-instance p3, Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p3, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p3, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    iget-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 110
    .line 111
    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    .line 113
    .line 114
    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->g:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 115
    .line 116
    if-eqz p2, :cond_3

    .line 117
    .line 118
    iget-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 123
    .line 124
    invoke-interface {p2, p3, v0, v1, p1}, Lcom/mbridge/msdk/reward/adapter/b$n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    iput v2, p3, Landroid/os/Message;->what:I

    .line 134
    .line 135
    new-instance v0, Landroid/os/Bundle;

    .line 136
    .line 137
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    sget-object v2, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v5, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v0, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    iget-object v4, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v4, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v4, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 179
    .line 180
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 201
    .line 202
    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    .line 204
    .line 205
    iget-boolean p3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->a:Z

    .line 206
    .line 207
    if-eqz p3, :cond_3

    .line 208
    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 210
    .line 211
    .line 212
    move-result-wide v0

    .line 213
    iget-wide v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->j:J

    .line 214
    .line 215
    sub-long v6, v0, v2

    .line 216
    .line 217
    const/4 v5, 0x1

    .line 218
    const-string v9, ""

    .line 219
    .line 220
    move-object v4, p0

    .line 221
    move-object v8, p1

    .line 222
    move-object v10, p2

    .line 223
    invoke-direct/range {v4 .. v10}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    iput v2, p2, Landroid/os/Message;->what:I

    .line 232
    .line 233
    new-instance p3, Landroid/os/Bundle;

    .line 234
    .line 235
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {p3, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    sget-object v0, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {p3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {p3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 277
    .line 278
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {p3, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 296
    .line 297
    .line 298
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 299
    .line 300
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    .line 302
    .line 303
    :cond_3
    :goto_0
    return-void
.end method
