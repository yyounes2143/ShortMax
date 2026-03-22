.class public Lcom/amazonaws/services/s3/internal/RestUtils;
.super Ljava/lang/Object;
.source "RestUtils.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    const-string v28, "response-content-type"

    .line 2
    .line 3
    const-string v29, "response-expires"

    .line 4
    .line 5
    const-string v0, "acl"

    .line 6
    .line 7
    const-string/jumbo v1, "torrent"

    .line 8
    .line 9
    .line 10
    const-string v2, "logging"

    .line 11
    .line 12
    const-string v3, "location"

    .line 13
    .line 14
    const-string v4, "policy"

    .line 15
    .line 16
    const-string v5, "requestPayment"

    .line 17
    .line 18
    const-string/jumbo v6, "versioning"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v7, "versions"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v8, "versionId"

    .line 25
    .line 26
    .line 27
    const-string v9, "notification"

    .line 28
    .line 29
    const-string/jumbo v10, "uploadId"

    .line 30
    .line 31
    .line 32
    const-string/jumbo v11, "uploads"

    .line 33
    .line 34
    .line 35
    const-string v12, "partNumber"

    .line 36
    .line 37
    const-string/jumbo v13, "website"

    .line 38
    .line 39
    .line 40
    const-string v14, "delete"

    .line 41
    .line 42
    const-string v15, "lifecycle"

    .line 43
    .line 44
    const-string v16, "tagging"

    .line 45
    .line 46
    const-string v17, "cors"

    .line 47
    .line 48
    const-string v18, "restore"

    .line 49
    .line 50
    const-string v19, "replication"

    .line 51
    .line 52
    const-string v20, "accelerate"

    .line 53
    .line 54
    const-string v21, "inventory"

    .line 55
    .line 56
    const-string v22, "analytics"

    .line 57
    .line 58
    const-string v23, "metrics"

    .line 59
    .line 60
    const-string v24, "response-cache-control"

    .line 61
    .line 62
    const-string v25, "response-content-disposition"

    .line 63
    .line 64
    const-string v26, "response-content-encoding"

    .line 65
    .line 66
    const-string v27, "response-content-language"

    .line 67
    .line 68
    filled-new-array/range {v0 .. v29}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sput-object v0, Lcom/amazonaws/services/s3/internal/RestUtils;->a:Ljava/util/List;

    .line 77
    .line 78
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/Request<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, "\n"

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Lcom/amazonaws/Request;->a()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Ljava/util/TreeMap;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v3, "x-amz-"

    .line 36
    .line 37
    .line 38
    const-string v4, "date"

    .line 39
    .line 40
    const-string v5, "content-md5"

    .line 41
    .line 42
    const-string v6, "content-type"

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-lez v7, :cond_3

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_3

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Ljava/util/Map$Entry;

    .line 71
    .line 72
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    check-cast v7, Ljava/lang/String;

    .line 83
    .line 84
    if-nez v8, :cond_1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-nez v9, :cond_2

    .line 96
    .line 97
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-nez v9, :cond_2

    .line 102
    .line 103
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-nez v9, :cond_2

    .line 108
    .line 109
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-eqz v9, :cond_0

    .line 114
    .line 115
    :cond_2
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    const-string/jumbo v1, "x-amz-date"

    .line 120
    .line 121
    .line 122
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    const-string v7, ""

    .line 127
    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :cond_4
    if-eqz p3, :cond_5

    .line 134
    .line 135
    invoke-interface {v2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :cond_5
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p3

    .line 142
    if-nez p3, :cond_6

    .line 143
    .line 144
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    :cond_6
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p3

    .line 151
    if-nez p3, :cond_7

    .line 152
    .line 153
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    :cond_7
    invoke-interface {p2}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    :cond_8
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_9

    .line 173
    .line 174
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Ljava/util/Map$Entry;

    .line 179
    .line 180
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_8

    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_9
    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_c

    .line 217
    .line 218
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Ljava/util/Map$Entry;

    .line 223
    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Ljava/lang/String;

    .line 229
    .line 230
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    check-cast v1, Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_a

    .line 241
    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const/16 v2, 0x3a

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    if-eqz v1, :cond_b

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_a
    if-eqz v1, :cond_b

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    :cond_b
    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-interface {p2}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-interface {p2}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    new-array p1, p1, [Ljava/lang/String;

    .line 285
    .line 286
    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    check-cast p0, [Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    array-length p1, p0

    .line 296
    const/16 p3, 0x3f

    .line 297
    .line 298
    const/4 v1, 0x0

    .line 299
    :goto_4
    if-ge v1, p1, :cond_11

    .line 300
    .line 301
    aget-object v2, p0, v1

    .line 302
    .line 303
    sget-object v3, Lcom/amazonaws/services/s3/internal/RestUtils;->a:Ljava/util/List;

    .line 304
    .line 305
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-nez v3, :cond_d

    .line 310
    .line 311
    if-eqz p4, :cond_10

    .line 312
    .line 313
    invoke-interface {p4, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-nez v3, :cond_d

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-nez v3, :cond_e

    .line 325
    .line 326
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    :cond_e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-interface {p2}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    .line 333
    .line 334
    .line 335
    move-result-object p3

    .line 336
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object p3

    .line 340
    check-cast p3, Ljava/lang/String;

    .line 341
    .line 342
    if-eqz p3, :cond_f

    .line 343
    .line 344
    const-string v2, "="

    .line 345
    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    :cond_f
    const/16 p3, 0x26

    .line 353
    .line 354
    :cond_10
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 355
    .line 356
    goto :goto_4

    .line 357
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    return-object p0
.end method
