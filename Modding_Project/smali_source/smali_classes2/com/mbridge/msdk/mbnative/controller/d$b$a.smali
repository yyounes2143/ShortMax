.class Lcom/mbridge/msdk/mbnative/controller/d$b$a;
.super Ljava/lang/Object;
.source "NativePreloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

.field final synthetic b:Lcom/mbridge/msdk/mbnative/controller/d$b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbnative/controller/d$b;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

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
    .locals 11

    .line 1
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->PRELOAD_RESULT_IN_SUBTHREAD:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 14
    .line 15
    .line 16
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;)Ljava/lang/Runnable;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 28
    .line 29
    iget-object v4, v3, Lcom/mbridge/msdk/mbnative/controller/d$b;->m:Lcom/mbridge/msdk/mbnative/controller/d;

    .line 30
    .line 31
    iget-object v4, v4, Lcom/mbridge/msdk/mbnative/controller/b;->a:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;)Ljava/lang/Runnable;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/mbridge/msdk/mbnative/controller/d$b;->m:Lcom/mbridge/msdk/mbnative/controller/d;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->a()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v5, "0_"

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v6, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 70
    .line 71
    iget-object v6, v6, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->a()Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 99
    .line 100
    iget-object v5, v5, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 113
    .line 114
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->f(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-lez v3, :cond_5

    .line 119
    .line 120
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 121
    .line 122
    iget-object v3, v3, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 129
    .line 130
    invoke-static {v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->f(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-le v3, v4, :cond_4

    .line 135
    .line 136
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 137
    .line 138
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->f(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-static {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 143
    .line 144
    .line 145
    goto/16 :goto_2

    .line 146
    .line 147
    :cond_4
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 148
    .line 149
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 150
    .line 151
    iget-object v4, v4, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    invoke-static {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 158
    .line 159
    .line 160
    goto/16 :goto_2

    .line 161
    .line 162
    :cond_5
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 163
    .line 164
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->f(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    const/4 v4, -0x1

    .line 169
    if-ne v3, v4, :cond_6

    .line 170
    .line 171
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 172
    .line 173
    invoke-static {v3, v2}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_6
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 178
    .line 179
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->f(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    const/4 v4, -0x3

    .line 184
    if-ne v3, v4, :cond_7

    .line 185
    .line 186
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 187
    .line 188
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 189
    .line 190
    iget-object v4, v4, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    invoke-static {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_7
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 201
    .line 202
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->f(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    const/4 v4, -0x2

    .line 207
    if-ne v3, v4, :cond_a

    .line 208
    .line 209
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 210
    .line 211
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/b;->getTemplate()I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    const/4 v4, 0x3

    .line 216
    if-ne v3, v4, :cond_8

    .line 217
    .line 218
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 219
    .line 220
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->h(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_9

    .line 225
    .line 226
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 227
    .line 228
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->h(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    invoke-static {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_8
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 237
    .line 238
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->i(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-eqz v3, :cond_9

    .line 243
    .line 244
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 245
    .line 246
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->i(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    invoke-static {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 251
    .line 252
    .line 253
    :cond_9
    :goto_1
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 254
    .line 255
    invoke-static {v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->g(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-gtz v3, :cond_a

    .line 260
    .line 261
    invoke-static {}, Lcom/mbridge/msdk/mbnative/controller/d;->b()Ljava/util/Map;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 266
    .line 267
    iget-object v4, v4, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 268
    .line 269
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    check-cast v3, Ljava/lang/Integer;

    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 280
    .line 281
    invoke-static {v4, v3}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 282
    .line 283
    .line 284
    :cond_a
    :goto_2
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 285
    .line 286
    iget-object v3, v3, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 293
    .line 294
    invoke-static {v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->g(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-ge v3, v4, :cond_b

    .line 299
    .line 300
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 301
    .line 302
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 303
    .line 304
    iget-object v4, v4, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    invoke-static {v3, v4}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;I)I

    .line 311
    .line 312
    .line 313
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .line 317
    .line 318
    new-instance v4, Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .line 322
    .line 323
    new-instance v8, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 324
    .line 325
    invoke-direct {v8}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 326
    .line 327
    .line 328
    const/16 v5, 0x2a

    .line 329
    .line 330
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    const-string v6, "adtp"

    .line 335
    .line 336
    invoke-virtual {v8, v6, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 340
    .line 341
    invoke-virtual {v5}, Lcom/mbridge/msdk/mbnative/service/net/b;->b()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    const-string v6, "hb"

    .line 350
    .line 351
    if-nez v5, :cond_c

    .line 352
    .line 353
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    invoke-virtual {v8, v6, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    goto :goto_3

    .line 361
    :cond_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    invoke-virtual {v8, v6, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :goto_3
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    iget-object v6, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 373
    .line 374
    invoke-virtual {v6}, Lcom/mbridge/msdk/mbnative/service/net/b;->b()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    iget-object v6, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 379
    .line 380
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    move-object v9, v6

    .line 389
    check-cast v9, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 390
    .line 391
    iget-object v6, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 392
    .line 393
    iget-object v10, v6, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 394
    .line 395
    const/4 v6, 0x1

    .line 396
    invoke-virtual/range {v5 .. v10}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(ZLjava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    move v6, v2

    .line 401
    :goto_4
    iget-object v7, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 402
    .line 403
    iget-object v7, v7, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 404
    .line 405
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 406
    .line 407
    .line 408
    move-result v7

    .line 409
    if-ge v6, v7, :cond_12

    .line 410
    .line 411
    iget-object v7, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 412
    .line 413
    iget-object v7, v7, Lcom/mbridge/msdk/foundation/entity/b;->ads:Ljava/util/ArrayList;

    .line 414
    .line 415
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    check-cast v7, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 420
    .line 421
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->o()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    invoke-virtual {v7, v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setLocalRequestId(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    iget-object v8, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 429
    .line 430
    iget-object v8, v8, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 431
    .line 432
    invoke-virtual {v7, v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 440
    .line 441
    .line 442
    move-result-object v8

    .line 443
    invoke-virtual {v7}, Lcom/mbridge/msdk/out/Campaign;->getPackageName()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v9

    .line 447
    invoke-static {v8, v9}, Lcom/mbridge/msdk/foundation/tools/u0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 448
    .line 449
    .line 450
    move-result v8

    .line 451
    iget-object v9, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 452
    .line 453
    iget-object v9, v9, Lcom/mbridge/msdk/mbnative/controller/d$b;->m:Lcom/mbridge/msdk/mbnative/controller/d;

    .line 454
    .line 455
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 456
    .line 457
    .line 458
    move-result-object v10

    .line 459
    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 460
    .line 461
    .line 462
    move-result-object v10

    .line 463
    invoke-virtual {v9, v10, v7}, Lcom/mbridge/msdk/mbnative/controller/b;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 464
    .line 465
    .line 466
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 467
    .line 468
    .line 469
    move-result v9

    .line 470
    iget-object v10, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 471
    .line 472
    invoke-static {v10}, Lcom/mbridge/msdk/mbnative/controller/d$b;->g(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 473
    .line 474
    .line 475
    move-result v10

    .line 476
    if-ge v9, v10, :cond_11

    .line 477
    .line 478
    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    .line 479
    .line 480
    .line 481
    move-result v9

    .line 482
    const/16 v10, 0x63

    .line 483
    .line 484
    if-eq v9, v10, :cond_11

    .line 485
    .line 486
    invoke-static {v7}, Lcom/mbridge/msdk/foundation/tools/u0;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    .line 487
    .line 488
    .line 489
    move-result v9

    .line 490
    if-eqz v9, :cond_e

    .line 491
    .line 492
    if-eqz v8, :cond_d

    .line 493
    .line 494
    move v8, v1

    .line 495
    goto :goto_5

    .line 496
    :cond_d
    const/4 v8, 0x2

    .line 497
    :goto_5
    invoke-virtual {v7, v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setRtinsType(I)V

    .line 498
    .line 499
    .line 500
    :cond_e
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 501
    .line 502
    .line 503
    move-result-object v8

    .line 504
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 505
    .line 506
    .line 507
    move-result-object v8

    .line 508
    invoke-static {v8, v7}, Lcom/mbridge/msdk/foundation/same/c;->b(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    .line 509
    .line 510
    .line 511
    move-result v8

    .line 512
    if-eqz v8, :cond_f

    .line 513
    .line 514
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v8

    .line 521
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 522
    .line 523
    .line 524
    move-result v8

    .line 525
    if-nez v8, :cond_10

    .line 526
    .line 527
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    goto :goto_6

    .line 531
    :cond_f
    iget-object v8, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 532
    .line 533
    iget-object v8, v8, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 534
    .line 535
    sget v9, Lcom/mbridge/msdk/foundation/same/a;->x:I

    .line 536
    .line 537
    invoke-static {v8, v7, v9}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    .line 538
    .line 539
    .line 540
    :cond_10
    :goto_6
    iget-object v8, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 541
    .line 542
    const/4 v9, 0x0

    .line 543
    invoke-static {v8, v7, v9, v9}, Lcom/mbridge/msdk/mbnative/controller/d$b;->a(Lcom/mbridge/msdk/mbnative/controller/d$b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V

    .line 544
    .line 545
    .line 546
    :cond_11
    iget-object v8, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 547
    .line 548
    iget-object v8, v8, Lcom/mbridge/msdk/mbnative/controller/d$b;->m:Lcom/mbridge/msdk/mbnative/controller/d;

    .line 549
    .line 550
    invoke-static {v8}, Lcom/mbridge/msdk/mbnative/controller/d;->a(Lcom/mbridge/msdk/mbnative/controller/d;)Z

    .line 551
    .line 552
    .line 553
    move-result v9

    .line 554
    invoke-virtual {v8, v9, v7}, Lcom/mbridge/msdk/mbnative/controller/d;->a(ZLcom/mbridge/msdk/out/Campaign;)V

    .line 555
    .line 556
    .line 557
    add-int/lit8 v6, v6, 0x1

    .line 558
    .line 559
    goto/16 :goto_4

    .line 560
    .line 561
    :cond_12
    iget-object v5, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 562
    .line 563
    iget-object v6, v5, Lcom/mbridge/msdk/mbnative/controller/d$b;->m:Lcom/mbridge/msdk/mbnative/controller/d;

    .line 564
    .line 565
    iget-object v5, v5, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 566
    .line 567
    invoke-static {v6, v4, v5}, Lcom/mbridge/msdk/mbnative/controller/d;->a(Lcom/mbridge/msdk/mbnative/controller/d;Ljava/util/List;Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 571
    .line 572
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    if-eqz v4, :cond_13

    .line 581
    .line 582
    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 583
    .line 584
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 593
    .line 594
    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getType()I

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    :cond_13
    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/cache/c;->a(I)Lcom/mbridge/msdk/mbnative/cache/b;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    if-eqz v1, :cond_14

    .line 603
    .line 604
    iget-object v4, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 605
    .line 606
    iget-object v4, v4, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 607
    .line 608
    invoke-virtual {v1, v4, v3}, Lcom/mbridge/msdk/mbnative/cache/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    :cond_14
    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 612
    .line 613
    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/controller/d$b;->b(Lcom/mbridge/msdk/mbnative/controller/d$b;)I

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->b:Lcom/mbridge/msdk/mbnative/controller/d$b;

    .line 618
    .line 619
    iget-object v3, v3, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    .line 620
    .line 621
    invoke-static {v1, v3}, Lcom/mbridge/msdk/mbnative/controller/d;->a(ILjava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    if-eqz v1, :cond_15

    .line 629
    .line 630
    if-eqz v0, :cond_15

    .line 631
    .line 632
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 633
    .line 634
    .line 635
    :cond_15
    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 636
    .line 637
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    if-eqz v0, :cond_16

    .line 646
    .line 647
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 656
    .line 657
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 666
    .line 667
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    .line 668
    .line 669
    .line 670
    move-result v1

    .line 671
    iget-object v3, p0, Lcom/mbridge/msdk/mbnative/controller/d$b$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 672
    .line 673
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 682
    .line 683
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/click/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 688
    .line 689
    .line 690
    :cond_16
    return-void
.end method
