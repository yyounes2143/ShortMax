.class Lcom/applovin/impl/q0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/applovin/impl/sdk/network/a;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Object;

.field private final e:Z

.field private final f:Lcom/applovin/impl/q0$b;

.field private final g:Lcom/applovin/impl/q0$e;

.field final synthetic h:Lcom/applovin/impl/q0;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/q0;Ljava/lang/String;Lcom/applovin/impl/sdk/network/a;Ljava/lang/String;Ljava/lang/Object;ZLcom/applovin/impl/q0$b;Lcom/applovin/impl/q0$e;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/applovin/impl/q0$c;->b:Lcom/applovin/impl/sdk/network/a;

    .line 5
    iput-object p4, p0, Lcom/applovin/impl/q0$c;->c:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/applovin/impl/q0$c;->d:Ljava/lang/Object;

    .line 7
    iput-boolean p6, p0, Lcom/applovin/impl/q0$c;->e:Z

    .line 8
    iput-object p7, p0, Lcom/applovin/impl/q0$c;->f:Lcom/applovin/impl/q0$b;

    .line 9
    iput-object p8, p0, Lcom/applovin/impl/q0$c;->g:Lcom/applovin/impl/q0$e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/q0;Ljava/lang/String;Lcom/applovin/impl/sdk/network/a;Ljava/lang/String;Ljava/lang/Object;ZLcom/applovin/impl/q0$b;Lcom/applovin/impl/q0$e;Lcom/applovin/impl/q0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/applovin/impl/q0$c;-><init>(Lcom/applovin/impl/q0;Ljava/lang/String;Lcom/applovin/impl/sdk/network/a;Ljava/lang/String;Ljava/lang/Object;ZLcom/applovin/impl/q0$b;Lcom/applovin/impl/q0$e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/y3$d;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/y3$d;->e()J

    .line 2
    .line 3
    .line 4
    move-result-wide v7

    .line 5
    const/4 v9, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/applovin/impl/y3$d;->c()I

    .line 7
    .line 8
    .line 9
    move-result v10
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-lez v10, :cond_b

    .line 11
    .line 12
    const/16 v0, 0xc8

    .line 13
    .line 14
    if-lt v10, v0, :cond_a

    .line 15
    .line 16
    const/16 v0, 0x190

    .line 17
    .line 18
    if-ge v10, v0, :cond_a

    .line 19
    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->f:Lcom/applovin/impl/q0$b;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {v0, v7, v8}, Lcom/applovin/impl/q0$b;->a(Lcom/applovin/impl/q0$b;J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    move-object v10, v0

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :catch_0
    move-exception p1

    .line 33
    move v3, v10

    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->c:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 41
    .line 42
    move v3, v10

    .line 43
    move-wide v4, v7

    .line 44
    invoke-static/range {v0 .. v5}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/applovin/impl/y3$d;->d()[B

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/applovin/impl/k7;->h(Landroid/content/Context;)Z

    .line 56
    .line 57
    .line 58
    move-result v0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    const-string v1, "UTF-8"

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    :try_start_2
    iget-boolean v0, p0, Lcom/applovin/impl/q0$c;->e:Z

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-static {v6}, Lcom/applovin/impl/s4;->b([B)Lcom/applovin/impl/s4$a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-object v2, Lcom/applovin/impl/s4$a;->d:Lcom/applovin/impl/s4$a;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    if-eq v0, v2, :cond_4

    .line 74
    .line 75
    :cond_1
    const-string v0, ""

    .line 76
    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    :try_start_3
    new-instance v2, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/applovin/impl/y3$d;->d()[B

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move-object v2, v0

    .line 94
    :goto_1
    iget-object v3, p0, Lcom/applovin/impl/q0$c;->b:Lcom/applovin/impl/sdk/network/a;

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/network/a;->b()Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->b:Lcom/applovin/impl/sdk/network/a;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/a;->b()Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_3
    iget-object v3, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 113
    .line 114
    invoke-static {v3}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;)Lcom/applovin/impl/sdk/k;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iget-object v4, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v3, v2, v4, v0}, Lcom/applovin/impl/sdk/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    if-eqz v6, :cond_9

    .line 128
    .line 129
    new-instance v11, Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/applovin/impl/y3$d;->d()[B

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-direct {v11, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->f:Lcom/applovin/impl/q0$b;

    .line 143
    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    array-length v1, v6

    .line 147
    int-to-long v1, v1

    .line 148
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/q0$b;->b(Lcom/applovin/impl/q0$b;J)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->b:Lcom/applovin/impl/sdk/network/a;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/a;->r()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    iget-object v12, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 160
    .line 161
    new-instance v13, Lcom/applovin/impl/q0$d;

    .line 162
    .line 163
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->b:Lcom/applovin/impl/sdk/network/a;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/a;->f()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    array-length v0, v6

    .line 170
    int-to-long v2, v0

    .line 171
    move-object v0, v13

    .line 172
    move-wide v4, v7

    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/q0$d;-><init>(Ljava/lang/String;JJ)V

    .line 174
    .line 175
    .line 176
    invoke-static {v12, v13}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;Lcom/applovin/impl/q0$d;)Lcom/applovin/impl/q0$d;

    .line 177
    .line 178
    .line 179
    :cond_5
    iget-boolean v0, p0, Lcom/applovin/impl/q0$c;->e:Z

    .line 180
    .line 181
    if-eqz v0, :cond_7

    .line 182
    .line 183
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 184
    .line 185
    invoke-static {v0}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;)Lcom/applovin/impl/sdk/k;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->j0()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 194
    .line 195
    invoke-static {v1}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;)Lcom/applovin/impl/sdk/k;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-static {v6, v0, v1}, Lcom/applovin/impl/s4;->b([BLjava/lang/String;Lcom/applovin/impl/sdk/k;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    if-nez v0, :cond_6

    .line 204
    .line 205
    new-instance v1, Ljava/util/HashMap;

    .line 206
    .line 207
    const/4 v2, 0x2

    .line 208
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 209
    .line 210
    .line 211
    const-string v2, "request"

    .line 212
    .line 213
    iget-object v3, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    const-string v2, "response"

    .line 223
    .line 224
    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    iget-object v2, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 228
    .line 229
    invoke-static {v2}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;)Lcom/applovin/impl/sdk/k;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    const-string v3, "rdf"

    .line 238
    .line 239
    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    .line 241
    .line 242
    :cond_6
    move-object v11, v0

    .line 243
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 244
    .line 245
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->d:Ljava/lang/Object;

    .line 246
    .line 247
    invoke-static {v0, v11, v1}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->g:Lcom/applovin/impl/q0$e;

    .line 252
    .line 253
    iget-object v2, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 254
    .line 255
    invoke-interface {v1, v2, v0, v10}, Lcom/applovin/impl/q0$e;->a(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 256
    .line 257
    .line 258
    goto/16 :goto_4

    .line 259
    .line 260
    :catchall_1
    move-exception v0

    .line 261
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v2, "Unable to parse response from "

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v2, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v2, " because of "

    .line 281
    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v2, " : "

    .line 297
    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    iget-object v2, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 313
    .line 314
    invoke-static {v2}, Lcom/applovin/impl/q0;->b(Lcom/applovin/impl/q0;)Lcom/applovin/impl/sdk/o;

    .line 315
    .line 316
    .line 317
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 318
    .line 319
    .line 320
    move-result v2
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    const-string v3, "ConnectionManager"

    .line 322
    .line 323
    if-eqz v2, :cond_8

    .line 324
    .line 325
    :try_start_6
    iget-object v2, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 326
    .line 327
    invoke-static {v2}, Lcom/applovin/impl/q0;->b(Lcom/applovin/impl/q0;)Lcom/applovin/impl/sdk/o;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v2, v3, v1, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .line 333
    .line 334
    :cond_8
    const-string/jumbo v2, "url"

    .line 335
    .line 336
    .line 337
    iget-object v4, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 338
    .line 339
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHostAndPath(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-static {v2, v4}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    iget-object v4, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 348
    .line 349
    invoke-static {v4}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;)Lcom/applovin/impl/sdk/k;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    const-string v5, "failedToParseResponse"

    .line 358
    .line 359
    invoke-virtual {v4, v3, v5, v0, v2}, Lcom/applovin/impl/q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 360
    .line 361
    .line 362
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->g:Lcom/applovin/impl/q0$e;

    .line 363
    .line 364
    iget-object v2, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 365
    .line 366
    const/16 v3, -0x320

    .line 367
    .line 368
    invoke-interface {v0, v2, v3, v1, v9}, Lcom/applovin/impl/q0$e;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_4

    .line 372
    .line 373
    :cond_9
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->g:Lcom/applovin/impl/q0$e;

    .line 374
    .line 375
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 376
    .line 377
    iget-object v2, p0, Lcom/applovin/impl/q0$c;->d:Ljava/lang/Object;

    .line 378
    .line 379
    invoke-interface {v0, v1, v2, v10}, Lcom/applovin/impl/q0$e;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_4

    .line 383
    .line 384
    :cond_a
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->g:Lcom/applovin/impl/q0$e;

    .line 385
    .line 386
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 387
    .line 388
    invoke-interface {v0, v1, v10, v9, v9}, Lcom/applovin/impl/q0$e;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_4

    .line 392
    .line 393
    :cond_b
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 394
    .line 395
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->c:Ljava/lang/String;

    .line 396
    .line 397
    iget-object v2, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 398
    .line 399
    const/4 v6, 0x0

    .line 400
    move v3, v10

    .line 401
    move-wide v4, v7

    .line 402
    invoke-static/range {v0 .. v6}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    .line 403
    .line 404
    .line 405
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->g:Lcom/applovin/impl/q0$e;

    .line 406
    .line 407
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 408
    .line 409
    invoke-interface {v0, v1, v10, v9, v9}, Lcom/applovin/impl/q0$e;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 410
    .line 411
    .line 412
    goto/16 :goto_4

    .line 413
    .line 414
    :goto_2
    invoke-virtual {p1}, Lcom/applovin/impl/y3$d;->b()I

    .line 415
    .line 416
    .line 417
    move-result v11

    .line 418
    :try_start_7
    invoke-virtual {p1}, Lcom/applovin/impl/y3$d;->f()[B

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    new-instance v0, Ljava/lang/String;

    .line 423
    .line 424
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 425
    .line 426
    .line 427
    if-eqz p1, :cond_d

    .line 428
    .line 429
    iget-boolean v1, p0, Lcom/applovin/impl/q0$c;->e:Z

    .line 430
    .line 431
    if-eqz v1, :cond_c

    .line 432
    .line 433
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 434
    .line 435
    invoke-static {v0}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;)Lcom/applovin/impl/sdk/k;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->j0()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 444
    .line 445
    invoke-static {v1}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;)Lcom/applovin/impl/sdk/k;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/s4;->b([BLjava/lang/String;Lcom/applovin/impl/sdk/k;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    :cond_c
    iget-object p1, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 454
    .line 455
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->d:Ljava/lang/Object;

    .line 456
    .line 457
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 461
    :catchall_2
    :cond_d
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 462
    .line 463
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->c:Ljava/lang/String;

    .line 464
    .line 465
    iget-object v2, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 466
    .line 467
    move v3, v11

    .line 468
    move-wide v4, v7

    .line 469
    move-object v6, v10

    .line 470
    invoke-static/range {v0 .. v6}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    .line 471
    .line 472
    .line 473
    iget-object p1, p0, Lcom/applovin/impl/q0$c;->g:Lcom/applovin/impl/q0$e;

    .line 474
    .line 475
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 476
    .line 477
    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-interface {p1, v0, v11, v1, v9}, Lcom/applovin/impl/q0$e;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    goto :goto_4

    .line 485
    :catch_1
    move-exception p1

    .line 486
    const/4 v0, 0x0

    .line 487
    move v3, v0

    .line 488
    :goto_3
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->d:Ljava/lang/Object;

    .line 489
    .line 490
    const/16 v10, -0x385

    .line 491
    .line 492
    if-eqz v0, :cond_e

    .line 493
    .line 494
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 495
    .line 496
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->c:Ljava/lang/String;

    .line 497
    .line 498
    iget-object v2, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 499
    .line 500
    move-wide v4, v7

    .line 501
    move-object v6, p1

    .line 502
    invoke-static/range {v0 .. v6}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    .line 503
    .line 504
    .line 505
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->g:Lcom/applovin/impl/q0$e;

    .line 506
    .line 507
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 508
    .line 509
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    invoke-interface {v0, v1, v10, p1, v9}, Lcom/applovin/impl/q0$e;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    goto :goto_4

    .line 517
    :cond_e
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->h:Lcom/applovin/impl/q0;

    .line 518
    .line 519
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->c:Ljava/lang/String;

    .line 520
    .line 521
    iget-object v2, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 522
    .line 523
    move-wide v4, v7

    .line 524
    invoke-static/range {v0 .. v5}, Lcom/applovin/impl/q0;->a(Lcom/applovin/impl/q0;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 525
    .line 526
    .line 527
    iget-object p1, p0, Lcom/applovin/impl/q0$c;->g:Lcom/applovin/impl/q0$e;

    .line 528
    .line 529
    iget-object v0, p0, Lcom/applovin/impl/q0$c;->a:Ljava/lang/String;

    .line 530
    .line 531
    iget-object v1, p0, Lcom/applovin/impl/q0$c;->d:Ljava/lang/Object;

    .line 532
    .line 533
    invoke-interface {p1, v0, v1, v10}, Lcom/applovin/impl/q0$e;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 534
    .line 535
    .line 536
    :goto_4
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/applovin/impl/y3$d;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/applovin/impl/q0$c;->a(Lcom/applovin/impl/y3$d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
