.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketLifecycleConfigurationHandler"
.end annotation


# instance fields
.field private final c:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

.field private d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

.field private e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

.field private f:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

.field private g:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

.field private h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;-><init>(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string p1, "LifecycleConfiguration"

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
    const/4 v0, 0x0

    .line 12
    const-string v1, "Rule"

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1a

    .line 21
    .line 22
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->b()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 29
    .line 30
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_0
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    const-string v2, "AbortIncompleteMultipartUpload"

    .line 46
    .line 47
    const-string v3, "NoncurrentVersionTransition"

    .line 48
    .line 49
    const-string v4, "Transition"

    .line 50
    .line 51
    const-string v5, "Prefix"

    .line 52
    .line 53
    const-string v6, "Filter"

    .line 54
    .line 55
    if-eqz p3, :cond_7

    .line 56
    .line 57
    const-string p1, "ID"

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->j(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->n(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_2
    const-string p1, "Status"

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->q(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_3
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 119
    .line 120
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->d(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 136
    .line 137
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->b(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_5
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_6

    .line 151
    .line 152
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 153
    .line 154
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->e(Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;)V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_6
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_1a

    .line 168
    .line 169
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 170
    .line 171
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 172
    .line 173
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->i(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)V

    .line 174
    .line 175
    .line 176
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_7
    const-string p3, "Expiration"

    .line 181
    .line 182
    filled-new-array {p1, v1, p3}, [Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p3

    .line 186
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    const-string v7, "Days"

    .line 191
    .line 192
    const-string v8, "Date"

    .line 193
    .line 194
    if-eqz p3, :cond_a

    .line 195
    .line 196
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_8

    .line 201
    .line 202
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->f(Ljava/util/Date;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_8
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_9

    .line 222
    .line 223
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->g(I)V

    .line 234
    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_9
    const-string p1, "ExpiredObjectDeleteMarker"

    .line 239
    .line 240
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-eqz p1, :cond_1a

    .line 245
    .line 246
    const-string/jumbo p1, "true"

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-eqz p1, :cond_1a

    .line 258
    .line 259
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 260
    .line 261
    const/4 p2, 0x1

    .line 262
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->h(Z)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_a
    filled-new-array {p1, v1, v4}, [Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p3

    .line 271
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result p3

    .line 275
    const-string v4, "StorageClass"

    .line 276
    .line 277
    if-eqz p3, :cond_d

    .line 278
    .line 279
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    if-eqz p1, :cond_b

    .line 284
    .line 285
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->e(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_b
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-eqz p1, :cond_c

    .line 301
    .line 302
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 303
    .line 304
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->b(Ljava/util/Date;)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_0

    .line 316
    .line 317
    :cond_c
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    if-eqz p1, :cond_1a

    .line 322
    .line 323
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 324
    .line 325
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    move-result p2

    .line 333
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->d(I)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_d
    const-string p3, "NoncurrentVersionExpiration"

    .line 339
    .line 340
    filled-new-array {p1, v1, p3}, [Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p3

    .line 344
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result p3

    .line 348
    const-string v7, "NoncurrentDays"

    .line 349
    .line 350
    if-eqz p3, :cond_e

    .line 351
    .line 352
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-eqz p1, :cond_1a

    .line 357
    .line 358
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 359
    .line 360
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p2

    .line 364
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result p2

    .line 368
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->k(I)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_0

    .line 372
    .line 373
    :cond_e
    filled-new-array {p1, v1, v3}, [Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p3

    .line 377
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result p3

    .line 381
    if-eqz p3, :cond_10

    .line 382
    .line 383
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    if-eqz p1, :cond_f

    .line 388
    .line 389
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    .line 390
    .line 391
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p2

    .line 395
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->d(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :cond_f
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result p1

    .line 404
    if-eqz p1, :cond_1a

    .line 405
    .line 406
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    .line 407
    .line 408
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p2

    .line 412
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    move-result p2

    .line 416
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->b(I)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_0

    .line 420
    .line 421
    :cond_10
    filled-new-array {p1, v1, v2}, [Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p3

    .line 425
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 426
    .line 427
    .line 428
    move-result p3

    .line 429
    if-eqz p3, :cond_11

    .line 430
    .line 431
    const-string p1, "DaysAfterInitiation"

    .line 432
    .line 433
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    if-eqz p1, :cond_1a

    .line 438
    .line 439
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 440
    .line 441
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p2

    .line 445
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    move-result p2

    .line 449
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;->d(I)V

    .line 450
    .line 451
    .line 452
    goto/16 :goto_0

    .line 453
    .line 454
    :cond_11
    filled-new-array {p1, v1, v6}, [Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p3

    .line 458
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 459
    .line 460
    .line 461
    move-result p3

    .line 462
    const-string v2, "And"

    .line 463
    .line 464
    const-string v3, "Tag"

    .line 465
    .line 466
    if-eqz p3, :cond_14

    .line 467
    .line 468
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result p1

    .line 472
    if-eqz p1, :cond_12

    .line 473
    .line 474
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 475
    .line 476
    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;

    .line 477
    .line 478
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p3

    .line 482
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->b(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_0

    .line 489
    .line 490
    :cond_12
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result p1

    .line 494
    if-eqz p1, :cond_13

    .line 495
    .line 496
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 497
    .line 498
    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;

    .line 499
    .line 500
    new-instance p3, Lcom/amazonaws/services/s3/model/Tag;

    .line 501
    .line 502
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->j:Ljava/lang/String;

    .line 503
    .line 504
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->k:Ljava/lang/String;

    .line 505
    .line 506
    invoke-direct {p3, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->b(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V

    .line 513
    .line 514
    .line 515
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->j:Ljava/lang/String;

    .line 516
    .line 517
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->k:Ljava/lang/String;

    .line 518
    .line 519
    goto/16 :goto_0

    .line 520
    .line 521
    :cond_13
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result p1

    .line 525
    if-eqz p1, :cond_1a

    .line 526
    .line 527
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 528
    .line 529
    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleAndOperator;

    .line 530
    .line 531
    iget-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->i:Ljava/util/List;

    .line 532
    .line 533
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleAndOperator;-><init>(Ljava/util/List;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;->b(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;)V

    .line 537
    .line 538
    .line 539
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->i:Ljava/util/List;

    .line 540
    .line 541
    goto/16 :goto_0

    .line 542
    .line 543
    :cond_14
    filled-new-array {p1, v1, v6, v3}, [Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object p3

    .line 547
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 548
    .line 549
    .line 550
    move-result p3

    .line 551
    const-string v4, "Value"

    .line 552
    .line 553
    const-string v7, "Key"

    .line 554
    .line 555
    if-eqz p3, :cond_16

    .line 556
    .line 557
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result p1

    .line 561
    if-eqz p1, :cond_15

    .line 562
    .line 563
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->j:Ljava/lang/String;

    .line 568
    .line 569
    goto :goto_0

    .line 570
    :cond_15
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result p1

    .line 574
    if-eqz p1, :cond_1a

    .line 575
    .line 576
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->k:Ljava/lang/String;

    .line 581
    .line 582
    goto :goto_0

    .line 583
    :cond_16
    filled-new-array {p1, v1, v6, v2}, [Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object p3

    .line 587
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 588
    .line 589
    .line 590
    move-result p3

    .line 591
    if-eqz p3, :cond_18

    .line 592
    .line 593
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result p1

    .line 597
    if-eqz p1, :cond_17

    .line 598
    .line 599
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->i:Ljava/util/List;

    .line 600
    .line 601
    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;

    .line 602
    .line 603
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object p3

    .line 607
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/lifecycle/LifecyclePrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    goto :goto_0

    .line 614
    :cond_17
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result p1

    .line 618
    if-eqz p1, :cond_1a

    .line 619
    .line 620
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->i:Ljava/util/List;

    .line 621
    .line 622
    new-instance p2, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;

    .line 623
    .line 624
    new-instance p3, Lcom/amazonaws/services/s3/model/Tag;

    .line 625
    .line 626
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->j:Ljava/lang/String;

    .line 627
    .line 628
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->k:Ljava/lang/String;

    .line 629
    .line 630
    invoke-direct {p3, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    .line 634
    .line 635
    .line 636
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->j:Ljava/lang/String;

    .line 640
    .line 641
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->k:Ljava/lang/String;

    .line 642
    .line 643
    goto :goto_0

    .line 644
    :cond_18
    filled-new-array {p1, v1, v6, v2, v3}, [Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object p1

    .line 648
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 649
    .line 650
    .line 651
    move-result p1

    .line 652
    if-eqz p1, :cond_1a

    .line 653
    .line 654
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result p1

    .line 658
    if-eqz p1, :cond_19

    .line 659
    .line 660
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object p1

    .line 664
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->j:Ljava/lang/String;

    .line 665
    .line 666
    goto :goto_0

    .line 667
    :cond_19
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    move-result p1

    .line 671
    if-eqz p1, :cond_1a

    .line 672
    .line 673
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object p1

    .line 677
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->k:Ljava/lang/String;

    .line 678
    .line 679
    :cond_1a
    :goto_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 1
    const-string p1, "LifecycleConfiguration"

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
    const-string p4, "Rule"

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
    new-instance p1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

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
    const-string v0, "Filter"

    .line 38
    .line 39
    if-eqz p3, :cond_4

    .line 40
    .line 41
    const-string p1, "Transition"

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    new-instance p1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 50
    .line 51
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string p1, "NoncurrentVersionTransition"

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    new-instance p1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->f:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string p1, "AbortIncompleteMultipartUpload"

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    new-instance p1, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 82
    .line 83
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    new-instance p1, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 96
    .line 97
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

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
    const-string p1, "And"

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
    new-instance p1, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->i:Ljava/util/List;

    .line 127
    .line 128
    :cond_5
    :goto_0
    return-void
.end method
