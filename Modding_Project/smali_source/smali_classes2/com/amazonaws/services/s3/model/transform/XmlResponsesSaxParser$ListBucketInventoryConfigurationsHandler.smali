.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBucketInventoryConfigurationsHandler"
.end annotation


# instance fields
.field private final c:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

.field private d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

.field private g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

.field private h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

.field private i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string p1, "ListInventoryConfigurationsResult"

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const-string/jumbo v0, "true"

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const-string v2, "InventoryConfiguration"

    .line 16
    .line 17
    if-eqz p3, :cond_4

    .line 18
    .line 19
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->b()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    .line 34
    .line 35
    new-instance p2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->e(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->b()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 50
    .line 51
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_1
    const-string p1, "IsTruncated"

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->g(Z)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_2
    const-string p1, "ContinuationToken"

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->d(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_3
    const-string p1, "NextContinuationToken"

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_13

    .line 107
    .line 108
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->f(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_0

    .line 118
    .line 119
    :cond_4
    filled-new-array {p1, v2}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    const-string v3, "OptionalFields"

    .line 128
    .line 129
    const-string v4, "Schedule"

    .line 130
    .line 131
    const-string v5, "Filter"

    .line 132
    .line 133
    const-string v6, "Destination"

    .line 134
    .line 135
    if-eqz p3, :cond_b

    .line 136
    .line 137
    const-string p1, "Id"

    .line 138
    .line 139
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_5

    .line 144
    .line 145
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->e(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_5
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_6

    .line 161
    .line 162
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 163
    .line 164
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 165
    .line 166
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->b(Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;)V

    .line 167
    .line 168
    .line 169
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_6
    const-string p1, "IsEnabled"

    .line 174
    .line 175
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_7

    .line 180
    .line 181
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->d(Ljava/lang/Boolean;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_7
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_8

    .line 205
    .line 206
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 207
    .line 208
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 209
    .line 210
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->g(Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;)V

    .line 211
    .line 212
    .line 213
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_8
    const-string p1, "IncludedObjectVersions"

    .line 218
    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_9

    .line 224
    .line 225
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->f(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_9
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-eqz p1, :cond_a

    .line 241
    .line 242
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 243
    .line 244
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 245
    .line 246
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->i(Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;)V

    .line 247
    .line 248
    .line 249
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_a
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-eqz p1, :cond_13

    .line 258
    .line 259
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 260
    .line 261
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->e:Ljava/util/List;

    .line 262
    .line 263
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->h(Ljava/util/List;)V

    .line 264
    .line 265
    .line 266
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->e:Ljava/util/List;

    .line 267
    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_b
    filled-new-array {p1, v2, v6}, [Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p3

    .line 274
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result p3

    .line 278
    const-string v0, "S3BucketDestination"

    .line 279
    .line 280
    if-eqz p3, :cond_c

    .line 281
    .line 282
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_13

    .line 287
    .line 288
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 289
    .line 290
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 291
    .line 292
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;->b(Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;)V

    .line 293
    .line 294
    .line 295
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_c
    filled-new-array {p1, v2, v6, v0}, [Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p3

    .line 303
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result p3

    .line 307
    const-string v0, "Prefix"

    .line 308
    .line 309
    if-eqz p3, :cond_10

    .line 310
    .line 311
    const-string p1, "AccountId"

    .line 312
    .line 313
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-eqz p1, :cond_d

    .line 318
    .line 319
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->b(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_0

    .line 329
    .line 330
    :cond_d
    const-string p1, "Bucket"

    .line 331
    .line 332
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-eqz p1, :cond_e

    .line 337
    .line 338
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 339
    .line 340
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p2

    .line 344
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->d(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :cond_e
    const-string p1, "Format"

    .line 350
    .line 351
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    if-eqz p1, :cond_f

    .line 356
    .line 357
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 358
    .line 359
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->e(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    goto :goto_0

    .line 367
    :cond_f
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-eqz p1, :cond_13

    .line 372
    .line 373
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 374
    .line 375
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->f(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    goto :goto_0

    .line 383
    :cond_10
    filled-new-array {p1, v2, v5}, [Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object p3

    .line 387
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 388
    .line 389
    .line 390
    move-result p3

    .line 391
    if-eqz p3, :cond_11

    .line 392
    .line 393
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result p1

    .line 397
    if-eqz p1, :cond_13

    .line 398
    .line 399
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 400
    .line 401
    new-instance p2, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;

    .line 402
    .line 403
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p3

    .line 407
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;->b(Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;)V

    .line 411
    .line 412
    .line 413
    goto :goto_0

    .line 414
    :cond_11
    filled-new-array {p1, v2, v4}, [Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p3

    .line 418
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 419
    .line 420
    .line 421
    move-result p3

    .line 422
    if-eqz p3, :cond_12

    .line 423
    .line 424
    const-string p1, "Frequency"

    .line 425
    .line 426
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    if-eqz p1, :cond_13

    .line 431
    .line 432
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 433
    .line 434
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p2

    .line 438
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;->b(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    goto :goto_0

    .line 442
    :cond_12
    filled-new-array {p1, v2, v3}, [Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 447
    .line 448
    .line 449
    move-result p1

    .line 450
    if-eqz p1, :cond_13

    .line 451
    .line 452
    const-string p1, "Field"

    .line 453
    .line 454
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result p1

    .line 458
    if-eqz p1, :cond_13

    .line 459
    .line 460
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->e:Ljava/util/List;

    .line 461
    .line 462
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p2

    .line 466
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    :cond_13
    :goto_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 1
    const-string p1, "ListInventoryConfigurationsResult"

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const-string p4, "InventoryConfiguration"

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_5

    .line 20
    .line 21
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    filled-new-array {p1, p4}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    const-string v0, "Destination"

    .line 38
    .line 39
    if-eqz p3, :cond_4

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 48
    .line 49
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string p1, "Filter"

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 64
    .line 65
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string p1, "Schedule"

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 80
    .line 81
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const-string p1, "OptionalFields"

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    new-instance p1, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->e:Ljava/util/List;

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    filled-new-array {p1, p4, v0}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    const-string p1, "S3BucketDestination"

    .line 114
    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 122
    .line 123
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketInventoryConfigurationsHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 127
    .line 128
    :cond_5
    :goto_0
    return-void
.end method
