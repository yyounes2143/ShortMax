.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBucketMetricsConfigurationsHandler"
.end annotation


# instance fields
.field private final c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

.field private d:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

.field private e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string p1, "ListMetricsConfigurationsResult"

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
    const-string v0, "MetricsConfiguration"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p3, :cond_4

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->b()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 31
    .line 32
    new-instance p2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->e(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->b()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    .line 47
    .line 48
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_1
    const-string p1, "IsTruncated"

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
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 64
    .line 65
    const-string/jumbo p2, "true"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->g(Z)V

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
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->d(Ljava/lang/String;)V

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
    if-eqz p1, :cond_f

    .line 107
    .line 108
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketMetricsConfigurationsResult;->f(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_0

    .line 118
    .line 119
    :cond_4
    filled-new-array {p1, v0}, [Ljava/lang/String;

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
    const-string v2, "Filter"

    .line 128
    .line 129
    if-eqz p3, :cond_6

    .line 130
    .line 131
    const-string p1, "Id"

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->d(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_5
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_f

    .line 155
    .line 156
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    .line 157
    .line 158
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 159
    .line 160
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;->b(Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;)V

    .line 161
    .line 162
    .line 163
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_6
    filled-new-array {p1, v0, v2}, [Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result p3

    .line 175
    const-string v3, "Prefix"

    .line 176
    .line 177
    const-string v4, "And"

    .line 178
    .line 179
    const-string v5, "Tag"

    .line 180
    .line 181
    if-eqz p3, :cond_9

    .line 182
    .line 183
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_7

    .line 188
    .line 189
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 190
    .line 191
    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->b(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_7
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_8

    .line 210
    .line 211
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 212
    .line 213
    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;

    .line 214
    .line 215
    new-instance p3, Lcom/amazonaws/services/s3/model/Tag;

    .line 216
    .line 217
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->g:Ljava/lang/String;

    .line 218
    .line 219
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->h:Ljava/lang/String;

    .line 220
    .line 221
    invoke-direct {p3, v0, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->b(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    .line 228
    .line 229
    .line 230
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->g:Ljava/lang/String;

    .line 231
    .line 232
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->h:Ljava/lang/String;

    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_8
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-eqz p1, :cond_f

    .line 241
    .line 242
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 243
    .line 244
    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsAndOperator;

    .line 245
    .line 246
    iget-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->f:Ljava/util/List;

    .line 247
    .line 248
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsAndOperator;-><init>(Ljava/util/List;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;->b(Lcom/amazonaws/services/s3/model/metrics/MetricsFilterPredicate;)V

    .line 252
    .line 253
    .line 254
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->f:Ljava/util/List;

    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :cond_9
    filled-new-array {p1, v0, v2, v5}, [Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p3

    .line 262
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result p3

    .line 266
    const-string v6, "Value"

    .line 267
    .line 268
    const-string v7, "Key"

    .line 269
    .line 270
    if-eqz p3, :cond_b

    .line 271
    .line 272
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    if-eqz p1, :cond_a

    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->g:Ljava/lang/String;

    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_a
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    if-eqz p1, :cond_f

    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->h:Ljava/lang/String;

    .line 296
    .line 297
    goto :goto_0

    .line 298
    :cond_b
    filled-new-array {p1, v0, v2, v4}, [Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p3

    .line 302
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result p3

    .line 306
    if-eqz p3, :cond_d

    .line 307
    .line 308
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_c

    .line 313
    .line 314
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->f:Ljava/util/List;

    .line 315
    .line 316
    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;

    .line 317
    .line 318
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p3

    .line 322
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsPrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    goto :goto_0

    .line 329
    :cond_c
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    if-eqz p1, :cond_f

    .line 334
    .line 335
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->f:Ljava/util/List;

    .line 336
    .line 337
    new-instance p2, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;

    .line 338
    .line 339
    new-instance p3, Lcom/amazonaws/services/s3/model/Tag;

    .line 340
    .line 341
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->g:Ljava/lang/String;

    .line 342
    .line 343
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->h:Ljava/lang/String;

    .line 344
    .line 345
    invoke-direct {p3, v0, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/metrics/MetricsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    .line 349
    .line 350
    .line 351
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->g:Ljava/lang/String;

    .line 355
    .line 356
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->h:Ljava/lang/String;

    .line 357
    .line 358
    goto :goto_0

    .line 359
    :cond_d
    filled-new-array {p1, v0, v2, v4, v5}, [Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    if-eqz p1, :cond_f

    .line 368
    .line 369
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    if-eqz p1, :cond_e

    .line 374
    .line 375
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->g:Ljava/lang/String;

    .line 380
    .line 381
    goto :goto_0

    .line 382
    :cond_e
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    if-eqz p1, :cond_f

    .line 387
    .line 388
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->h:Ljava/lang/String;

    .line 393
    .line 394
    :cond_f
    :goto_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 1
    const-string p1, "ListMetricsConfigurationsResult"

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
    const-string p4, "MetricsConfiguration"

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
    if-eqz p1, :cond_2

    .line 20
    .line 21
    new-instance p1, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->d:Lcom/amazonaws/services/s3/model/metrics/MetricsConfiguration;

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
    if-eqz p3, :cond_1

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    new-instance p1, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 48
    .line 49
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->e:Lcom/amazonaws/services/s3/model/metrics/MetricsFilter;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    filled-new-array {p1, p4, v0}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    const-string p1, "And"

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketMetricsConfigurationsHandler;->f:Ljava/util/List;

    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method
