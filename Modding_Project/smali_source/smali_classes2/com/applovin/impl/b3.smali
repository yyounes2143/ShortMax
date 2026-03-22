.class public Lcom/applovin/impl/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/b3$a;,
        Lcom/applovin/impl/b3$b;
    }
.end annotation


# instance fields
.field private final A:Ljava/util/List;

.field private final B:Ljava/util/List;

.field private final C:Ljava/util/List;

.field private final D:Ljava/util/List;

.field private final E:Ljava/util/Map;

.field private final F:Z

.field private final G:Z

.field private final H:Lcom/applovin/impl/x6;

.field private final I:Z

.field private final J:Ljava/lang/String;

.field private final K:Ljava/util/Map;

.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Lcom/applovin/impl/b3$a;

.field private c:I

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:I

.field private final y:Ljava/util/List;

.field private final z:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v4, "MediatedNetwork"

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v3, v1, Lcom/applovin/impl/b3;->a:Lcom/applovin/impl/sdk/k;

    .line 13
    .line 14
    const-string v0, "name"

    .line 15
    .line 16
    const-string v5, ""

    .line 17
    .line 18
    invoke-static {v2, v0, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, v1, Lcom/applovin/impl/b3;->p:Ljava/lang/String;

    .line 23
    .line 24
    const-string v6, "display_name"

    .line 25
    .line 26
    invoke-static {v2, v6, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    iput-object v6, v1, Lcom/applovin/impl/b3;->q:Ljava/lang/String;

    .line 31
    .line 32
    const-string v6, "adapter_class"

    .line 33
    .line 34
    invoke-static {v2, v6, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    iput-object v7, v1, Lcom/applovin/impl/b3;->r:Ljava/lang/String;

    .line 39
    .line 40
    const-string v7, "latest_adapter_version"

    .line 41
    .line 42
    invoke-static {v2, v7, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iput-object v7, v1, Lcom/applovin/impl/b3;->u:Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct/range {p0 .. p1}, Lcom/applovin/impl/b3;->a(Lorg/json/JSONObject;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    iput-object v7, v1, Lcom/applovin/impl/b3;->B:Ljava/util/List;

    .line 53
    .line 54
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    const-string v8, "hide_if_missing"

    .line 57
    .line 58
    invoke-static {v2, v8, v7}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    iput-boolean v8, v1, Lcom/applovin/impl/b3;->k:Z

    .line 67
    .line 68
    new-instance v8, Lorg/json/JSONObject;

    .line 69
    .line 70
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v9, "configuration"

    .line 74
    .line 75
    invoke-static {v2, v9, v8}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-direct {v1, v8, v3}, Lcom/applovin/impl/b3;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    iput-object v9, v1, Lcom/applovin/impl/b3;->z:Ljava/util/List;

    .line 84
    .line 85
    const-string v9, "java_8_required"

    .line 86
    .line 87
    invoke-static {v8, v9, v7}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    iput-boolean v9, v1, Lcom/applovin/impl/b3;->o:Z

    .line 96
    .line 97
    const-string v9, "has_micro_sdk"

    .line 98
    .line 99
    invoke-static {v8, v9, v7}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    iput-boolean v9, v1, Lcom/applovin/impl/b3;->F:Z

    .line 108
    .line 109
    const-string v9, "hide_initialization_status"

    .line 110
    .line 111
    invoke-static {v8, v9, v7}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    iput-boolean v7, v1, Lcom/applovin/impl/b3;->G:Z

    .line 120
    .line 121
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 122
    .line 123
    const-string v9, "check_sdk_adapter_version_mismatch"

    .line 124
    .line 125
    invoke-static {v8, v9, v7}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    iput-boolean v7, v1, Lcom/applovin/impl/b3;->n:Z

    .line 134
    .line 135
    const-string v7, "live_network_filtering_names"

    .line 136
    .line 137
    const/4 v9, 0x0

    .line 138
    invoke-static {v8, v7, v9}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    iput-object v7, v1, Lcom/applovin/impl/b3;->C:Ljava/util/List;

    .line 143
    .line 144
    new-instance v7, Lorg/json/JSONObject;

    .line 145
    .line 146
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v10, "test_mode"

    .line 150
    .line 151
    invoke-static {v8, v10, v7}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    const-string v11, "network_names"

    .line 156
    .line 157
    invoke-static {v7, v11, v9}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    if-eqz v11, :cond_3

    .line 162
    .line 163
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    if-lez v12, :cond_3

    .line 168
    .line 169
    new-instance v12, Ljava/util/ArrayList;

    .line 170
    .line 171
    filled-new-array {v0}, [Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Ljava/util/HashMap;

    .line 183
    .line 184
    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    invoke-direct {v0, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v14

    .line 199
    if-eqz v14, :cond_2

    .line 200
    .line 201
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    check-cast v14, Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {v14}, Lcom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    .line 208
    .line 209
    .line 210
    move-result-object v15

    .line 211
    invoke-static {v11, v14, v9}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v14

    .line 215
    if-eqz v15, :cond_0

    .line 216
    .line 217
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 218
    .line 219
    .line 220
    move-result v16

    .line 221
    if-eqz v16, :cond_1

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_2
    iput-object v12, v1, Lcom/applovin/impl/b3;->D:Ljava/util/List;

    .line 232
    .line 233
    iput-object v0, v1, Lcom/applovin/impl/b3;->E:Ljava/util/Map;

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    iput-object v0, v1, Lcom/applovin/impl/b3;->D:Ljava/util/List;

    .line 245
    .line 246
    iput-object v9, v1, Lcom/applovin/impl/b3;->E:Ljava/util/Map;

    .line 247
    .line 248
    :goto_1
    new-instance v0, Lorg/json/JSONObject;

    .line 249
    .line 250
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-static {v2, v10, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 258
    .line 259
    const-string v11, "supported"

    .line 260
    .line 261
    invoke-static {v0, v11, v10}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 266
    .line 267
    .line 268
    move-result v11

    .line 269
    iput-boolean v11, v1, Lcom/applovin/impl/b3;->i:Z

    .line 270
    .line 271
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 272
    .line 273
    const-string v12, "test_mode_requires_init"

    .line 274
    .line 275
    invoke-static {v2, v12, v11}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 280
    .line 281
    .line 282
    move-result v11

    .line 283
    iput-boolean v11, v1, Lcom/applovin/impl/b3;->j:Z

    .line 284
    .line 285
    const-string v11, "message"

    .line 286
    .line 287
    invoke-static {v0, v11, v9}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iput-object v0, v1, Lcom/applovin/impl/b3;->v:Ljava/lang/String;

    .line 292
    .line 293
    const-string v0, "tcf_config"

    .line 294
    .line 295
    invoke-static {v8, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    new-instance v11, Lcom/applovin/impl/x6;

    .line 300
    .line 301
    iget-object v12, v1, Lcom/applovin/impl/b3;->q:Ljava/lang/String;

    .line 302
    .line 303
    invoke-direct {v11, v0, v12}, Lcom/applovin/impl/x6;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iput-object v11, v1, Lcom/applovin/impl/b3;->H:Lcom/applovin/impl/x6;

    .line 307
    .line 308
    const-string v0, "existence_classes"

    .line 309
    .line 310
    invoke-static {v2, v0, v9}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    if-eqz v0, :cond_4

    .line 315
    .line 316
    invoke-static {v0}, Lcom/applovin/impl/k7;->a(Ljava/util/List;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    iput-boolean v0, v1, Lcom/applovin/impl/b3;->d:Z

    .line 321
    .line 322
    goto :goto_2

    .line 323
    :cond_4
    const-string v0, "existence_class"

    .line 324
    .line 325
    invoke-static {v2, v0, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v0}, Lcom/applovin/impl/k7;->a(Ljava/lang/String;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    iput-boolean v0, v1, Lcom/applovin/impl/b3;->d:Z

    .line 334
    .line 335
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 336
    .line 337
    .line 338
    move-result-object v11

    .line 339
    iget-object v0, v1, Lcom/applovin/impl/b3;->r:Ljava/lang/String;

    .line 340
    .line 341
    const-string v12, "init_adapter_class"

    .line 342
    .line 343
    invoke-static {v8, v12, v9}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v12

    .line 347
    if-eqz v12, :cond_5

    .line 348
    .line 349
    iput-object v12, v1, Lcom/applovin/impl/b3;->r:Ljava/lang/String;

    .line 350
    .line 351
    :cond_5
    invoke-static {v0, v3}, Lcom/applovin/impl/t3;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/k;)Lcom/applovin/mediation/adapter/MaxAdapter;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    const/4 v12, 0x1

    .line 356
    if-eqz v0, :cond_a

    .line 357
    .line 358
    iput-boolean v12, v1, Lcom/applovin/impl/b3;->e:Z

    .line 359
    .line 360
    :try_start_0
    invoke-interface {v0}, Lcom/applovin/mediation/adapter/MaxAdapter;->getAdapterVersion()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 364
    :try_start_1
    invoke-static {v0}, Lcom/applovin/impl/t3;->a(Lcom/applovin/mediation/adapter/MaxAdapter;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 368
    :try_start_2
    iget-object v12, v1, Lcom/applovin/impl/b3;->r:Ljava/lang/String;

    .line 369
    .line 370
    invoke-static {v0, v12}, Lcom/applovin/impl/t3;->a(Lcom/applovin/mediation/adapter/MaxAdapter;Ljava/lang/String;)Z

    .line 371
    .line 372
    .line 373
    move-result v12

    .line 374
    iput-boolean v12, v1, Lcom/applovin/impl/b3;->h:Z

    .line 375
    .line 376
    const-string v12, "is_mrec_supported"

    .line 377
    .line 378
    invoke-static {v7, v12, v10}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 379
    .line 380
    .line 381
    move-result-object v7

    .line 382
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    invoke-direct {v1, v0, v7}, Lcom/applovin/impl/b3;->a(Lcom/applovin/mediation/adapter/MaxAdapter;Z)Ljava/util/List;

    .line 387
    .line 388
    .line 389
    move-result-object v11

    .line 390
    const-string v7, "native_ad_view_config"

    .line 391
    .line 392
    invoke-static {v8, v7, v9}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    if-eqz v7, :cond_8

    .line 397
    .line 398
    const-string v10, "min_adapter_version"

    .line 399
    .line 400
    invoke-static {v7, v10, v9}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v10

    .line 404
    if-eqz v10, :cond_7

    .line 405
    .line 406
    invoke-static {v14, v10}, Lcom/applovin/impl/k7;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    if-ltz v10, :cond_6

    .line 411
    .line 412
    goto :goto_4

    .line 413
    :cond_6
    const/4 v10, 0x0

    .line 414
    goto :goto_5

    .line 415
    :catchall_0
    move-exception v0

    .line 416
    :goto_3
    move-object v7, v9

    .line 417
    const/4 v10, 0x0

    .line 418
    goto :goto_7

    .line 419
    :cond_7
    :goto_4
    const/4 v10, 0x1

    .line 420
    :goto_5
    :try_start_3
    const-string v12, "network_name"

    .line 421
    .line 422
    invoke-static {v7, v12, v9}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 426
    goto :goto_6

    .line 427
    :catchall_1
    move-exception v0

    .line 428
    move-object v7, v9

    .line 429
    goto :goto_7

    .line 430
    :cond_8
    move-object v7, v9

    .line 431
    const/4 v10, 0x0

    .line 432
    :goto_6
    :try_start_4
    invoke-interface {v0}, Lcom/applovin/mediation/adapter/MaxAdapter;->isBeta()Z

    .line 433
    .line 434
    .line 435
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 436
    move-object v9, v7

    .line 437
    move v7, v0

    .line 438
    goto :goto_8

    .line 439
    :catchall_2
    move-exception v0

    .line 440
    goto :goto_7

    .line 441
    :catchall_3
    move-exception v0

    .line 442
    move-object v15, v5

    .line 443
    goto :goto_3

    .line 444
    :catchall_4
    move-exception v0

    .line 445
    move-object v14, v5

    .line 446
    move-object v15, v14

    .line 447
    goto :goto_3

    .line 448
    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    const-string v9, "Failed to load adapter for network "

    .line 454
    .line 455
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    iget-object v9, v1, Lcom/applovin/impl/b3;->p:Ljava/lang/String;

    .line 459
    .line 460
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    const-string v9, ". Please check that you have a compatible network SDK integrated. Error: "

    .line 464
    .line 465
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-static {v4, v0}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    move-object v9, v7

    .line 479
    const/4 v7, 0x0

    .line 480
    :goto_8
    :try_start_5
    iget-object v0, v1, Lcom/applovin/impl/b3;->r:Ljava/lang/String;

    .line 481
    .line 482
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    const-string v12, "loadNativeAd"

    .line 487
    .line 488
    const-class v13, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 489
    .line 490
    move/from16 v17, v7

    .line 491
    .line 492
    :try_start_6
    const-class v7, Landroid/app/Activity;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 493
    .line 494
    move-object/from16 v18, v9

    .line 495
    .line 496
    :try_start_7
    const-class v9, Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

    .line 497
    .line 498
    filled-new-array {v13, v7, v9}, [Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    move-result-object v7

    .line 502
    invoke-virtual {v0, v12, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 503
    .line 504
    .line 505
    move-result-object v7

    .line 506
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    move-result-object v7

    .line 510
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 514
    move v4, v0

    .line 515
    move/from16 v7, v17

    .line 516
    .line 517
    move-object/from16 v0, v18

    .line 518
    .line 519
    goto :goto_b

    .line 520
    :catchall_5
    move-exception v0

    .line 521
    goto :goto_a

    .line 522
    :catchall_6
    move-exception v0

    .line 523
    :goto_9
    move-object/from16 v18, v9

    .line 524
    .line 525
    goto :goto_a

    .line 526
    :catchall_7
    move-exception v0

    .line 527
    move/from16 v17, v7

    .line 528
    .line 529
    goto :goto_9

    .line 530
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 531
    .line 532
    .line 533
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 534
    .line 535
    .line 536
    move-result v7

    .line 537
    if-eqz v7, :cond_9

    .line 538
    .line 539
    invoke-virtual/range {p2 .. p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 540
    .line 541
    .line 542
    move-result-object v7

    .line 543
    const-string v9, "Failed to check if adapter overrides MaxNativeAdAdapter"

    .line 544
    .line 545
    invoke-virtual {v7, v4, v9, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 546
    .line 547
    .line 548
    :cond_9
    move/from16 v7, v17

    .line 549
    .line 550
    move-object/from16 v0, v18

    .line 551
    .line 552
    const/4 v4, 0x0

    .line 553
    goto :goto_b

    .line 554
    :cond_a
    const/4 v4, 0x0

    .line 555
    iput-boolean v4, v1, Lcom/applovin/impl/b3;->e:Z

    .line 556
    .line 557
    move-object v14, v5

    .line 558
    move-object v15, v14

    .line 559
    const/4 v0, 0x0

    .line 560
    const/4 v4, 0x0

    .line 561
    const/4 v7, 0x0

    .line 562
    const/4 v10, 0x0

    .line 563
    :goto_b
    iput-object v14, v1, Lcom/applovin/impl/b3;->t:Ljava/lang/String;

    .line 564
    .line 565
    iput-object v15, v1, Lcom/applovin/impl/b3;->s:Ljava/lang/String;

    .line 566
    .line 567
    iput-object v11, v1, Lcom/applovin/impl/b3;->y:Ljava/util/List;

    .line 568
    .line 569
    iput-boolean v4, v1, Lcom/applovin/impl/b3;->l:Z

    .line 570
    .line 571
    iput-boolean v10, v1, Lcom/applovin/impl/b3;->m:Z

    .line 572
    .line 573
    iput-object v0, v1, Lcom/applovin/impl/b3;->w:Ljava/lang/String;

    .line 574
    .line 575
    invoke-direct {v1, v8, v14, v3}, Lcom/applovin/impl/b3;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/applovin/impl/sdk/k;)Ljava/util/List;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    iput-object v0, v1, Lcom/applovin/impl/b3;->A:Ljava/util/List;

    .line 580
    .line 581
    const-string v0, "alternative_network"

    .line 582
    .line 583
    const/4 v4, 0x0

    .line 584
    invoke-static {v2, v0, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    invoke-static {v0, v6, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-static {v0}, Lcom/applovin/impl/k7;->a(Ljava/lang/String;)Z

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    iput-boolean v0, v1, Lcom/applovin/impl/b3;->g:Z

    .line 597
    .line 598
    invoke-direct/range {p0 .. p0}, Lcom/applovin/impl/b3;->a()Lcom/applovin/impl/b3$a;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    iput-object v0, v1, Lcom/applovin/impl/b3;->b:Lcom/applovin/impl/b3$a;

    .line 603
    .line 604
    iget-object v0, v1, Lcom/applovin/impl/b3;->u:Ljava/lang/String;

    .line 605
    .line 606
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    if-nez v0, :cond_b

    .line 611
    .line 612
    if-nez v7, :cond_b

    .line 613
    .line 614
    const/4 v0, 0x1

    .line 615
    goto :goto_c

    .line 616
    :cond_b
    const/4 v0, 0x0

    .line 617
    :goto_c
    iput-boolean v0, v1, Lcom/applovin/impl/b3;->f:Z

    .line 618
    .line 619
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    iget-object v2, v1, Lcom/applovin/impl/b3;->p:Ljava/lang/String;

    .line 624
    .line 625
    const-string v4, "_"

    .line 626
    .line 627
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 628
    .line 629
    .line 630
    move-result v2

    .line 631
    const/4 v4, -0x1

    .line 632
    if-eq v2, v4, :cond_c

    .line 633
    .line 634
    iget-object v4, v1, Lcom/applovin/impl/b3;->p:Ljava/lang/String;

    .line 635
    .line 636
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v4

    .line 640
    const/4 v5, 0x0

    .line 641
    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    goto :goto_d

    .line 646
    :cond_c
    iget-object v2, v1, Lcom/applovin/impl/b3;->p:Ljava/lang/String;

    .line 647
    .line 648
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    :goto_d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    new-instance v5, Ljava/lang/StringBuilder;

    .line 657
    .line 658
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .line 660
    .line 661
    const-string v6, "applovin_ic_mediation_"

    .line 662
    .line 663
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v5

    .line 677
    const-string v6, "drawable"

    .line 678
    .line 679
    invoke-virtual {v4, v2, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    move-result v2

    .line 683
    iput v2, v1, Lcom/applovin/impl/b3;->x:I

    .line 684
    .line 685
    sget-object v2, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->NOT_INITIALIZED:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    .line 686
    .line 687
    invoke-virtual {v2}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    .line 688
    .line 689
    .line 690
    move-result v2

    .line 691
    iput v2, v1, Lcom/applovin/impl/b3;->c:I

    .line 692
    .line 693
    invoke-static {v0}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    const-string v2, "adapter_initialization_status"

    .line 698
    .line 699
    invoke-virtual {v0, v1, v2}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual/range {p2 .. p2}, Lcom/applovin/impl/sdk/k;->S()Lcom/applovin/impl/mediation/f;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    iget-object v2, v1, Lcom/applovin/impl/b3;->r:Ljava/lang/String;

    .line 707
    .line 708
    invoke-virtual {v0, v2}, Lcom/applovin/impl/mediation/f;->a(Ljava/lang/String;)Ljava/lang/Integer;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    if-eqz v0, :cond_d

    .line 713
    .line 714
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    iput v0, v1, Lcom/applovin/impl/b3;->c:I

    .line 719
    .line 720
    :cond_d
    const-string v0, "amazon_marketplace"

    .line 721
    .line 722
    const/4 v2, 0x0

    .line 723
    invoke-static {v8, v0, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    if-eqz v0, :cond_12

    .line 728
    .line 729
    iget-boolean v3, v1, Lcom/applovin/impl/b3;->d:Z

    .line 730
    .line 731
    if-eqz v3, :cond_12

    .line 732
    .line 733
    const/4 v3, 0x1

    .line 734
    iput-boolean v3, v1, Lcom/applovin/impl/b3;->I:Z

    .line 735
    .line 736
    const-string v3, "test_mode_app_id"

    .line 737
    .line 738
    invoke-static {v0, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    iput-object v3, v1, Lcom/applovin/impl/b3;->J:Ljava/lang/String;

    .line 743
    .line 744
    new-instance v2, Lorg/json/JSONObject;

    .line 745
    .line 746
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 747
    .line 748
    .line 749
    const-string v3, "test_mode_slot_ids"

    .line 750
    .line 751
    invoke-static {v0, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    new-instance v2, Ljava/util/HashMap;

    .line 756
    .line 757
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 758
    .line 759
    .line 760
    move-result v3

    .line 761
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 765
    .line 766
    .line 767
    move-result-object v3

    .line 768
    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 769
    .line 770
    .line 771
    move-result v4

    .line 772
    if-eqz v4, :cond_11

    .line 773
    .line 774
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v4

    .line 778
    check-cast v4, Ljava/lang/String;

    .line 779
    .line 780
    invoke-static {v4}, Lcom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    .line 781
    .line 782
    .line 783
    move-result-object v5

    .line 784
    const/4 v6, 0x0

    .line 785
    invoke-static {v0, v4, v6}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 786
    .line 787
    .line 788
    move-result-object v4

    .line 789
    if-eqz v5, :cond_e

    .line 790
    .line 791
    if-nez v4, :cond_f

    .line 792
    .line 793
    goto :goto_e

    .line 794
    :cond_f
    const-string/jumbo v7, "uuid"

    .line 795
    .line 796
    .line 797
    invoke-static {v4, v7, v6}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v7

    .line 801
    if-nez v7, :cond_10

    .line 802
    .line 803
    goto :goto_e

    .line 804
    :cond_10
    new-instance v6, Lcom/applovin/impl/x;

    .line 805
    .line 806
    invoke-direct {v6, v7, v4, v5}, Lcom/applovin/impl/x;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/mediation/MaxAdFormat;)V

    .line 807
    .line 808
    .line 809
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    goto :goto_e

    .line 813
    :cond_11
    iput-object v2, v1, Lcom/applovin/impl/b3;->K:Ljava/util/Map;

    .line 814
    .line 815
    goto :goto_f

    .line 816
    :cond_12
    const/4 v2, 0x0

    .line 817
    iput-boolean v2, v1, Lcom/applovin/impl/b3;->I:Z

    .line 818
    .line 819
    const/4 v2, 0x0

    .line 820
    iput-object v2, v1, Lcom/applovin/impl/b3;->J:Ljava/lang/String;

    .line 821
    .line 822
    iput-object v2, v1, Lcom/applovin/impl/b3;->K:Ljava/util/Map;

    .line 823
    .line 824
    :goto_f
    return-void
.end method

.method private a()Lcom/applovin/impl/b3$a;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->d:Z

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->e:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/applovin/impl/b3$a;->e:Lcom/applovin/impl/b3$a;

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->g:Z

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/applovin/impl/b3$a;->b:Lcom/applovin/impl/b3$a;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/applovin/impl/b3$a;->c:Lcom/applovin/impl/b3$a;

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->e:Z

    if-eqz v0, :cond_3

    .line 8
    sget-object v0, Lcom/applovin/impl/b3$a;->c:Lcom/applovin/impl/b3$a;

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lcom/applovin/impl/b3$a;->b:Lcom/applovin/impl/b3$a;

    .line 10
    :goto_0
    sget-object v1, Lcom/applovin/impl/b3$a;->b:Lcom/applovin/impl/b3$a;

    if-ne v0, v1, :cond_4

    return-object v0

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/applovin/impl/b3;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/m4;

    .line 12
    invoke-virtual {v2}, Lcom/applovin/impl/m4;->c()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v0, Lcom/applovin/impl/b3$a;->d:Lcom/applovin/impl/b3$a;

    return-object v0

    .line 13
    :cond_6
    iget-object v1, p0, Lcom/applovin/impl/b3;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/j1;

    .line 14
    invoke-virtual {v2}, Lcom/applovin/impl/j1;->c()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v0, Lcom/applovin/impl/b3$a;->d:Lcom/applovin/impl/b3$a;

    return-object v0

    .line 15
    :cond_8
    iget-boolean v1, p0, Lcom/applovin/impl/b3;->o:Z

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/applovin/impl/sdk/k;->G0()Z

    move-result v1

    if-nez v1, :cond_9

    .line 16
    sget-object v0, Lcom/applovin/impl/b3$a;->d:Lcom/applovin/impl/b3$a;

    return-object v0

    .line 17
    :cond_9
    invoke-virtual {p0}, Lcom/applovin/impl/b3;->F()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 18
    sget-object v0, Lcom/applovin/impl/b3$a;->c:Lcom/applovin/impl/b3$a;

    :cond_a
    return-object v0
.end method

.method private a(Lcom/applovin/mediation/adapter/MaxAdapter;Z)Ljava/util/List;
    .locals 2

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    instance-of v1, p1, Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;

    if-eqz v1, :cond_0

    .line 21
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    instance-of v1, p1, Lcom/applovin/mediation/adapter/MaxAppOpenAdapter;

    if-eqz v1, :cond_1

    .line 23
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->APP_OPEN:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_1
    instance-of v1, p1, Lcom/applovin/mediation/adapter/MaxRewardedAdapter;

    if-eqz v1, :cond_2

    .line 25
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_2
    instance-of v1, p1, Lcom/applovin/mediation/adapter/MaxAdViewAdapter;

    if-eqz v1, :cond_3

    .line 27
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    .line 29
    sget-object p2, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_3
    instance-of p1, p1, Lcom/applovin/mediation/adapter/MaxNativeAdAdapter;

    if-eqz p1, :cond_4

    .line 31
    sget-object p1, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2

    .line 43
    const-string v0, "supported_regions"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    .line 44
    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->optList(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)Ljava/util/List;
    .locals 5

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v0, p0, Lcom/applovin/impl/b3;->r:Ljava/lang/String;

    const-string v1, "com.applovin.mediation.adapters.AppLovinMediationAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/applovin/impl/m4;

    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.android.gms.permission.AD_ID"

    const-string v3, "Please add\n<uses-permission android:name=\"com.google.android.gms.permission.AD_ID\" />\nto your AndroidManifest.xml"

    invoke-direct {v0, v2, v3, v1}, Lcom/applovin/impl/m4;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0}, Lcom/applovin/impl/m4;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "permissions"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 39
    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    new-instance v2, Lcom/applovin/impl/m4;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/applovin/impl/m4;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 42
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/applovin/impl/sdk/k;)Ljava/util/List;
    .locals 6

    .line 45
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "dependencies"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    .line 46
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "dependencies_v2"

    invoke-static {p1, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 48
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 49
    invoke-static {v0, v3, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 50
    new-instance v5, Lcom/applovin/impl/j1;

    invoke-direct {v5, v4, p3}, Lcom/applovin/impl/j1;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 51
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 53
    invoke-static {p1, v2, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 54
    const-string v3, "min_adapter_version"

    invoke-static {v0, v3, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    const-string v4, "max_adapter_version"

    invoke-static {v0, v4, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-static {p2, v3, v4}, Lcom/applovin/impl/j1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 57
    :cond_2
    new-instance v3, Lcom/applovin/impl/j1;

    invoke-direct {v3, v0, p3}, Lcom/applovin/impl/j1;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 58
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->I:Z

    .line 2
    .line 3
    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public F()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->n:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/b3;->s:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/b3;->s:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "\\."

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    array-length v0, v0

    .line 25
    iget-object v1, p0, Lcom/applovin/impl/b3;->s:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/applovin/impl/k7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/applovin/impl/b3;->t:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2, v0}, Lcom/applovin/impl/k7;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    xor-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    return v0
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public H()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->b:Lcom/applovin/impl/b3$a;

    .line 2
    .line 3
    sget-object v1, Lcom/applovin/impl/b3$a;->b:Lcom/applovin/impl/b3$a;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->k:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->G:Z

    .line 2
    .line 3
    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public a(Lcom/applovin/impl/b3;)I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/applovin/impl/b3;->q:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/impl/b3;->q:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/applovin/impl/b3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/applovin/impl/b3;->a(Lcom/applovin/impl/b3;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->K:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->A:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediatedNetwork"

    .line 2
    .line 3
    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/b3;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/b3;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\n---------- "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/applovin/impl/b3;->p:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " ----------"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "\nStatus  - "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/applovin/impl/b3;->b:Lcom/applovin/impl/b3$a;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/applovin/impl/b3$a;->a(Lcom/applovin/impl/b3$a;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "\nSDK     - "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/applovin/impl/b3;->d:Z

    .line 41
    .line 42
    const-string v2, "UNAVAILABLE"

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/applovin/impl/b3;->s:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/applovin/impl/b3;->s:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object v1, v2

    .line 58
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, "\nAdapter - "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/applovin/impl/b3;->e:Z

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    iget-object v1, p0, Lcom/applovin/impl/b3;->t:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    iget-object v2, p0, Lcom/applovin/impl/b3;->t:Ljava/lang/String;

    .line 79
    .line 80
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/applovin/impl/b3;->n()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const-string v3, ": "

    .line 96
    .line 97
    const-string v4, "\n* MISSING "

    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lcom/applovin/impl/m4;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/applovin/impl/m4;->c()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-nez v5, :cond_2

    .line 112
    .line 113
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/applovin/impl/m4;->b()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/applovin/impl/m4;->a()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/applovin/impl/b3;->f()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_5

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Lcom/applovin/impl/j1;

    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/applovin/impl/j1;->c()Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-nez v5, :cond_4

    .line 159
    .line 160
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/applovin/impl/j1;->b()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/applovin/impl/j1;->a()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->C:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->z:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Lcom/applovin/impl/sdk/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "adapter_class"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/applovin/impl/b3;->r:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "init_status"

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/applovin/impl/b3;->c:I

    .line 33
    .line 34
    iget-object p1, p0, Lcom/applovin/impl/b3;->a:Lcom/applovin/impl/sdk/k;

    .line 35
    .line 36
    invoke-static {v0, p1}, Lcom/applovin/impl/t3;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/k;)Lcom/applovin/mediation/adapter/MaxAdapter;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-static {p1}, Lcom/applovin/impl/t3;->a(Lcom/applovin/mediation/adapter/MaxAdapter;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v1, p0, Lcom/applovin/impl/b3;->s:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    iput-object p1, p0, Lcom/applovin/impl/b3;->s:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p1, p0, Lcom/applovin/impl/b3;->a:Lcom/applovin/impl/sdk/k;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v1, p0, Lcom/applovin/impl/b3;->s:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Lcom/applovin/impl/b3$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->b:Lcom/applovin/impl/b3$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->y:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->B:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Lcom/applovin/impl/x6;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->H:Lcom/applovin/impl/x6;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "MediatedNetwork{name="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/applovin/impl/b3;->p:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", displayName="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/applovin/impl/b3;->q:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", sdkAvailable="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/applovin/impl/b3;->d:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", sdkVersion="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/applovin/impl/b3;->s:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", adapterAvailable="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/applovin/impl/b3;->e:Z

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", adapterVersion="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/applovin/impl/b3;->t:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string/jumbo v1, "}"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->D:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b3;->E:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()Lcom/applovin/impl/b3$b;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/applovin/impl/b3$b;->d:Lcom/applovin/impl/b3$b;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/b3;->b:Lcom/applovin/impl/b3$a;

    .line 9
    .line 10
    sget-object v1, Lcom/applovin/impl/b3$a;->e:Lcom/applovin/impl/b3$a;

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    sget-object v1, Lcom/applovin/impl/b3$a;->c:Lcom/applovin/impl/b3$a;

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/applovin/impl/b3;->G()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/applovin/impl/b3;->A()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    :cond_1
    sget-object v0, Lcom/applovin/impl/b3$b;->e:Lcom/applovin/impl/b3$b;

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/b3;->a:Lcom/applovin/impl/sdk/k;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->t0()Lcom/applovin/impl/c7;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/applovin/impl/c7;->c()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    sget-object v0, Lcom/applovin/impl/b3$b;->g:Lcom/applovin/impl/b3$b;

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_3
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->j:Z

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    iget v0, p0, Lcom/applovin/impl/b3;->c:I

    .line 53
    .line 54
    sget-object v1, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_FAILURE:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eq v0, v1, :cond_4

    .line 61
    .line 62
    iget v0, p0, Lcom/applovin/impl/b3;->c:I

    .line 63
    .line 64
    sget-object v1, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZING:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-ne v0, v1, :cond_5

    .line 71
    .line 72
    :cond_4
    sget-object v0, Lcom/applovin/impl/b3$b;->f:Lcom/applovin/impl/b3$b;

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_5
    sget-object v0, Lcom/applovin/impl/b3$b;->h:Lcom/applovin/impl/b3$b;

    .line 76
    .line 77
    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b3;->F:Z

    .line 2
    .line 3
    return v0
.end method
