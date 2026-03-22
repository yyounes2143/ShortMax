.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetBucketInventoryConfigurationHandler"
.end annotation


# instance fields
.field private final c:Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

.field private final d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

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
    new-instance v0, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/GetBucketInventoryConfigurationResult;

    .line 10
    .line 11
    new-instance v0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string p1, "InventoryConfiguration"

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
    const-string v0, "OptionalFields"

    .line 12
    .line 13
    const-string v1, "Schedule"

    .line 14
    .line 15
    const-string v2, "Filter"

    .line 16
    .line 17
    const-string v3, "Destination"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz p3, :cond_6

    .line 21
    .line 22
    const-string p1, "Id"

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->e(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->b(Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;)V

    .line 52
    .line 53
    .line 54
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_1
    const-string p1, "IsEnabled"

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
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 67
    .line 68
    const-string/jumbo p2, "true"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->d(Ljava/lang/Boolean;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 95
    .line 96
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->g(Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;)V

    .line 99
    .line 100
    .line 101
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :cond_3
    const-string p1, "IncludedObjectVersions"

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->f(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :cond_4
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_5

    .line 129
    .line 130
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 131
    .line 132
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->i(Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;)V

    .line 135
    .line 136
    .line 137
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_e

    .line 146
    .line 147
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;

    .line 148
    .line 149
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->e:Ljava/util/List;

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->h(Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->e:Ljava/util/List;

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_6
    filled-new-array {p1, v3}, [Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result p3

    .line 166
    const-string v5, "S3BucketDestination"

    .line 167
    .line 168
    if-eqz p3, :cond_7

    .line 169
    .line 170
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_e

    .line 175
    .line 176
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 177
    .line 178
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;->b(Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;)V

    .line 181
    .line 182
    .line 183
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_7
    filled-new-array {p1, v3, v5}, [Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result p3

    .line 195
    const-string v3, "Prefix"

    .line 196
    .line 197
    if-eqz p3, :cond_b

    .line 198
    .line 199
    const-string p1, "AccountId"

    .line 200
    .line 201
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_8

    .line 206
    .line 207
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->b(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_8
    const-string p1, "Bucket"

    .line 219
    .line 220
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_9

    .line 225
    .line 226
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->d(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_9
    const-string p1, "Format"

    .line 238
    .line 239
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-eqz p1, :cond_a

    .line 244
    .line 245
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->e(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_a
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_e

    .line 260
    .line 261
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;->f(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_b
    filled-new-array {p1, v2}, [Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p3

    .line 275
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result p3

    .line 279
    if-eqz p3, :cond_c

    .line 280
    .line 281
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_e

    .line 286
    .line 287
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 288
    .line 289
    new-instance p2, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;

    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p3

    .line 295
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;->b(Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;)V

    .line 299
    .line 300
    .line 301
    goto :goto_0

    .line 302
    :cond_c
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p3

    .line 306
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    move-result p3

    .line 310
    if-eqz p3, :cond_d

    .line 311
    .line 312
    const-string p1, "Frequency"

    .line 313
    .line 314
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_e

    .line 319
    .line 320
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 321
    .line 322
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;->b(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    goto :goto_0

    .line 330
    :cond_d
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    if-eqz p1, :cond_e

    .line 339
    .line 340
    const-string p1, "Field"

    .line 341
    .line 342
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    if-eqz p1, :cond_e

    .line 347
    .line 348
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->e:Ljava/util/List;

    .line 349
    .line 350
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    :cond_e
    :goto_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    const-string p1, "InventoryConfiguration"

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
    const-string p4, "Destination"

    .line 12
    .line 13
    if-eqz p3, :cond_3

    .line 14
    .line 15
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p1, "Filter"

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 38
    .line 39
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p1, "Schedule"

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const-string p1, "OptionalFields"

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    new-instance p1, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->e:Ljava/util/List;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    filled-new-array {p1, p4}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    const-string p1, "S3BucketDestination"

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    new-instance p1, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 96
    .line 97
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$GetBucketInventoryConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 101
    .line 102
    :cond_4
    :goto_0
    return-void
.end method
