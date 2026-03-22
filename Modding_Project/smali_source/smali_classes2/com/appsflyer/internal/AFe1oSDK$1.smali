.class public final Lcom/appsflyer/internal/AFe1oSDK$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFe1oSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

.field private synthetic getRevenue:Lcom/appsflyer/internal/AFe1mSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFe1oSDK;Lcom/appsflyer/internal/AFe1mSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1oSDK;->areAllFieldsValid:Ljava/util/NavigableSet;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/appsflyer/internal/AFe1oSDK;->component4:Ljava/util/Set;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 11
    .line 12
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 19
    .line 20
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component3:Lcom/appsflyer/internal/AFg1cSDK;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v4, "tried to add already running task: "

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto/16 :goto_8

    .line 46
    .line 47
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/appsflyer/internal/AFe1oSDK;->areAllFieldsValid:Ljava/util/NavigableSet;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 52
    .line 53
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_e

    .line 58
    .line 59
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/appsflyer/internal/AFe1oSDK;->component1:Ljava/util/NavigableSet;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 64
    .line 65
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 76
    .line 77
    iget-object v3, v2, Lcom/appsflyer/internal/AFe1mSDK;->getCurrencyIso4217Code:Ljava/util/Set;

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/appsflyer/internal/AFe1pSDK;

    .line 94
    .line 95
    iget-object v5, v1, Lcom/appsflyer/internal/AFe1oSDK;->component2:Ljava/util/Set;

    .line 96
    .line 97
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_2

    .line 102
    .line 103
    iget-object v5, v2, Lcom/appsflyer/internal/AFe1mSDK;->AFAdRevenueData:Ljava/util/Set;

    .line 104
    .line 105
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/AFe1oSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFe1mSDK;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_4

    .line 118
    .line 119
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 120
    .line 121
    iget-object v1, v1, Lcom/appsflyer/internal/AFe1oSDK;->areAllFieldsValid:Ljava/util/NavigableSet;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 124
    .line 125
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 131
    .line 132
    iget-object v1, v1, Lcom/appsflyer/internal/AFe1oSDK;->component1:Ljava/util/NavigableSet;

    .line 133
    .line 134
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 135
    .line 136
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 143
    .line 144
    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component3:Lcom/appsflyer/internal/AFg1cSDK;

    .line 145
    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v5, "new task was blocked: "

    .line 149
    .line 150
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v5, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 154
    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1mSDK;->getMediationNetwork()V

    .line 168
    .line 169
    .line 170
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 171
    .line 172
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 173
    .line 174
    iget-object v3, v2, Lcom/appsflyer/internal/AFe1oSDK;->areAllFieldsValid:Ljava/util/NavigableSet;

    .line 175
    .line 176
    iget-object v2, v2, Lcom/appsflyer/internal/AFe1oSDK;->component3:Ljava/util/List;

    .line 177
    .line 178
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 179
    .line 180
    .line 181
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 182
    .line 183
    iget-object v2, v2, Lcom/appsflyer/internal/AFe1oSDK;->component3:Ljava/util/List;

    .line 184
    .line 185
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 190
    .line 191
    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component3:Lcom/appsflyer/internal/AFg1cSDK;

    .line 192
    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v5, "task not added, it\'s already in the queue: "

    .line 196
    .line 197
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v5, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 201
    .line 202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    if-eqz v1, :cond_d

    .line 214
    .line 215
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 216
    .line 217
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1oSDK;->component2:Ljava/util/Set;

    .line 218
    .line 219
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 220
    .line 221
    iget-object v1, v1, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    .line 222
    .line 223
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 227
    .line 228
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->component3:Lcom/appsflyer/internal/AFg1cSDK;

    .line 229
    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v3, "new task added: "

    .line 233
    .line 234
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-object v3, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 238
    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 250
    .line 251
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1oSDK;->getMediationNetwork:Ljava/util/List;

    .line 252
    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_7

    .line 262
    .line 263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Lcom/appsflyer/internal/AFe1qSDK;

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_7
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 271
    .line 272
    iget-object v1, v0, Lcom/appsflyer/internal/AFe1oSDK;->getRevenue:Ljava/util/concurrent/ExecutorService;

    .line 273
    .line 274
    new-instance v2, Lcom/appsflyer/internal/AFe1oSDK$2;

    .line 275
    .line 276
    invoke-direct {v2, v0}, Lcom/appsflyer/internal/AFe1oSDK$2;-><init>(Lcom/appsflyer/internal/AFe1oSDK;)V

    .line 277
    .line 278
    .line 279
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getMediationNetwork:Lcom/appsflyer/internal/AFe1oSDK;

    .line 283
    .line 284
    iget-object v1, v0, Lcom/appsflyer/internal/AFe1oSDK;->areAllFieldsValid:Ljava/util/NavigableSet;

    .line 285
    .line 286
    monitor-enter v1

    .line 287
    :try_start_1
    iget-object v2, v0, Lcom/appsflyer/internal/AFe1oSDK;->areAllFieldsValid:Ljava/util/NavigableSet;

    .line 288
    .line 289
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    iget-object v3, v0, Lcom/appsflyer/internal/AFe1oSDK;->component1:Ljava/util/NavigableSet;

    .line 294
    .line 295
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    add-int/2addr v2, v3

    .line 300
    add-int/lit8 v2, v2, -0x28

    .line 301
    .line 302
    :goto_4
    if-lez v2, :cond_c

    .line 303
    .line 304
    iget-object v3, v0, Lcom/appsflyer/internal/AFe1oSDK;->component1:Ljava/util/NavigableSet;

    .line 305
    .line 306
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    iget-object v4, v0, Lcom/appsflyer/internal/AFe1oSDK;->areAllFieldsValid:Ljava/util/NavigableSet;

    .line 311
    .line 312
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    if-nez v4, :cond_9

    .line 317
    .line 318
    if-nez v3, :cond_9

    .line 319
    .line 320
    iget-object v3, v0, Lcom/appsflyer/internal/AFe1oSDK;->areAllFieldsValid:Ljava/util/NavigableSet;

    .line 321
    .line 322
    invoke-interface {v3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    check-cast v3, Lcom/appsflyer/internal/AFe1mSDK;

    .line 327
    .line 328
    iget-object v4, v0, Lcom/appsflyer/internal/AFe1oSDK;->component1:Ljava/util/NavigableSet;

    .line 329
    .line 330
    invoke-interface {v4}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    check-cast v4, Lcom/appsflyer/internal/AFe1mSDK;

    .line 335
    .line 336
    invoke-virtual {v3, v4}, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue(Lcom/appsflyer/internal/AFe1mSDK;)I

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-lez v3, :cond_8

    .line 341
    .line 342
    iget-object v3, v0, Lcom/appsflyer/internal/AFe1oSDK;->areAllFieldsValid:Ljava/util/NavigableSet;

    .line 343
    .line 344
    invoke-virtual {v0, v3}, Lcom/appsflyer/internal/AFe1oSDK;->getMonetizationNetwork(Ljava/util/NavigableSet;)V

    .line 345
    .line 346
    .line 347
    goto :goto_5

    .line 348
    :catchall_1
    move-exception v0

    .line 349
    goto :goto_6

    .line 350
    :cond_8
    iget-object v3, v0, Lcom/appsflyer/internal/AFe1oSDK;->component1:Ljava/util/NavigableSet;

    .line 351
    .line 352
    invoke-virtual {v0, v3}, Lcom/appsflyer/internal/AFe1oSDK;->getMonetizationNetwork(Ljava/util/NavigableSet;)V

    .line 353
    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_9
    if-nez v4, :cond_a

    .line 357
    .line 358
    iget-object v3, v0, Lcom/appsflyer/internal/AFe1oSDK;->areAllFieldsValid:Ljava/util/NavigableSet;

    .line 359
    .line 360
    invoke-virtual {v0, v3}, Lcom/appsflyer/internal/AFe1oSDK;->getMonetizationNetwork(Ljava/util/NavigableSet;)V

    .line 361
    .line 362
    .line 363
    goto :goto_5

    .line 364
    :cond_a
    if-nez v3, :cond_b

    .line 365
    .line 366
    iget-object v3, v0, Lcom/appsflyer/internal/AFe1oSDK;->component1:Ljava/util/NavigableSet;

    .line 367
    .line 368
    invoke-virtual {v0, v3}, Lcom/appsflyer/internal/AFe1oSDK;->getMonetizationNetwork(Ljava/util/NavigableSet;)V

    .line 369
    .line 370
    .line 371
    :cond_b
    :goto_5
    add-int/lit8 v2, v2, -0x1

    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_c
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 375
    return-void

    .line 376
    :goto_6
    monitor-exit v1

    .line 377
    throw v0

    .line 378
    :cond_d
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 379
    .line 380
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->component3:Lcom/appsflyer/internal/AFg1cSDK;

    .line 381
    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    const-string v3, "QUEUE: tried to add already pending task: "

    .line 385
    .line 386
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    iget-object v3, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 390
    .line 391
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    return-void

    .line 402
    :cond_e
    :goto_7
    :try_start_2
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 403
    .line 404
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->component3:Lcom/appsflyer/internal/AFg1cSDK;

    .line 405
    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    const-string/jumbo v4, "tried to add already scheduled task: "

    .line 409
    .line 410
    .line 411
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget-object v4, p0, Lcom/appsflyer/internal/AFe1oSDK$1;->getRevenue:Lcom/appsflyer/internal/AFe1mSDK;

    .line 415
    .line 416
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    return-void

    .line 428
    :goto_8
    monitor-exit v0

    .line 429
    throw v1
.end method
