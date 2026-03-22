.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBucketAnalyticsConfigurationHandler"
.end annotation


# instance fields
.field private final c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

.field private d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

.field private e:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

.field private h:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

.field private i:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

.field private j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string p1, "ListBucketAnalyticsConfigurationsResult"

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
    const-string v1, "AnalyticsConfiguration"

    .line 13
    .line 14
    if-eqz p3, :cond_4

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->b()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 31
    .line 32
    new-instance p2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->d(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->b()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 47
    .line 48
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

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
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

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
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->g(Z)V

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
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->e(Ljava/lang/String;)V

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
    if-eqz p1, :cond_18

    .line 107
    .line 108
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->c:Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ListBucketAnalyticsConfigurationsResult;->f(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_0

    .line 118
    .line 119
    :cond_4
    filled-new-array {p1, v1}, [Ljava/lang/String;

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
    const-string v2, "StorageClassAnalysis"

    .line 128
    .line 129
    const-string v3, "Filter"

    .line 130
    .line 131
    if-eqz p3, :cond_7

    .line 132
    .line 133
    const-string p1, "Id"

    .line 134
    .line 135
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->d(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_5
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_6

    .line 157
    .line 158
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 159
    .line 160
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->b(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_6
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_18

    .line 172
    .line 173
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 174
    .line 175
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    .line 176
    .line 177
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;->e(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_7
    filled-new-array {p1, v1, v3}, [Ljava/lang/String;

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
    const-string v4, "And"

    .line 191
    .line 192
    const-string v5, "Prefix"

    .line 193
    .line 194
    const-string v6, "Tag"

    .line 195
    .line 196
    if-eqz p3, :cond_a

    .line 197
    .line 198
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_8

    .line 203
    .line 204
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    .line 205
    .line 206
    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;

    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->b(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_8
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_9

    .line 225
    .line 226
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    .line 227
    .line 228
    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;

    .line 229
    .line 230
    new-instance p3, Lcom/amazonaws/services/s3/model/Tag;

    .line 231
    .line 232
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->k:Ljava/lang/String;

    .line 233
    .line 234
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->l:Ljava/lang/String;

    .line 235
    .line 236
    invoke-direct {p3, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->b(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V

    .line 243
    .line 244
    .line 245
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->k:Ljava/lang/String;

    .line 246
    .line 247
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->l:Ljava/lang/String;

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_9
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-eqz p1, :cond_18

    .line 256
    .line 257
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    .line 258
    .line 259
    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsAndOperator;

    .line 260
    .line 261
    iget-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->f:Ljava/util/List;

    .line 262
    .line 263
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsAndOperator;-><init>(Ljava/util/List;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;->b(Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilterPredicate;)V

    .line 267
    .line 268
    .line 269
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->f:Ljava/util/List;

    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_a
    filled-new-array {p1, v1, v3, v6}, [Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p3

    .line 277
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result p3

    .line 281
    const-string v7, "Value"

    .line 282
    .line 283
    const-string v8, "Key"

    .line 284
    .line 285
    if-eqz p3, :cond_c

    .line 286
    .line 287
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-eqz p1, :cond_b

    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->k:Ljava/lang/String;

    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_b
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    if-eqz p1, :cond_18

    .line 306
    .line 307
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->l:Ljava/lang/String;

    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_c
    filled-new-array {p1, v1, v3, v4}, [Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p3

    .line 319
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result p3

    .line 323
    if-eqz p3, :cond_e

    .line 324
    .line 325
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-eqz p1, :cond_d

    .line 330
    .line 331
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->f:Ljava/util/List;

    .line 332
    .line 333
    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;

    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p3

    .line 339
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsPrefixPredicate;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    goto/16 :goto_0

    .line 346
    .line 347
    :cond_d
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    if-eqz p1, :cond_18

    .line 352
    .line 353
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->f:Ljava/util/List;

    .line 354
    .line 355
    new-instance p2, Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;

    .line 356
    .line 357
    new-instance p3, Lcom/amazonaws/services/s3/model/Tag;

    .line 358
    .line 359
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->k:Ljava/lang/String;

    .line 360
    .line 361
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->l:Ljava/lang/String;

    .line 362
    .line 363
    invoke-direct {p3, v1, v2}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsTagPredicate;-><init>(Lcom/amazonaws/services/s3/model/Tag;)V

    .line 367
    .line 368
    .line 369
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->k:Ljava/lang/String;

    .line 373
    .line 374
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->l:Ljava/lang/String;

    .line 375
    .line 376
    goto/16 :goto_0

    .line 377
    .line 378
    :cond_e
    filled-new-array {p1, v1, v3, v4, v6}, [Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p3

    .line 382
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result p3

    .line 386
    if-eqz p3, :cond_10

    .line 387
    .line 388
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    if-eqz p1, :cond_f

    .line 393
    .line 394
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->k:Ljava/lang/String;

    .line 399
    .line 400
    goto/16 :goto_0

    .line 401
    .line 402
    :cond_f
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    if-eqz p1, :cond_18

    .line 407
    .line 408
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->l:Ljava/lang/String;

    .line 413
    .line 414
    goto/16 :goto_0

    .line 415
    .line 416
    :cond_10
    filled-new-array {p1, v1, v2}, [Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p3

    .line 420
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 421
    .line 422
    .line 423
    move-result p3

    .line 424
    const-string v0, "DataExport"

    .line 425
    .line 426
    if-eqz p3, :cond_11

    .line 427
    .line 428
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    if-eqz p1, :cond_18

    .line 433
    .line 434
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    .line 435
    .line 436
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    .line 437
    .line 438
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;->b(Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_11
    filled-new-array {p1, v1, v2, v0}, [Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object p3

    .line 447
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 448
    .line 449
    .line 450
    move-result p3

    .line 451
    const-string v3, "Destination"

    .line 452
    .line 453
    if-eqz p3, :cond_13

    .line 454
    .line 455
    const-string p1, "OutputSchemaVersion"

    .line 456
    .line 457
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    if-eqz p1, :cond_12

    .line 462
    .line 463
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    .line 464
    .line 465
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object p2

    .line 469
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->d(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_0

    .line 473
    .line 474
    :cond_12
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result p1

    .line 478
    if-eqz p1, :cond_18

    .line 479
    .line 480
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    .line 481
    .line 482
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    .line 483
    .line 484
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;->b(Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;)V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :cond_13
    filled-new-array {p1, v1, v2, v0, v3}, [Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 494
    .line 495
    .line 496
    move-result p1

    .line 497
    if-eqz p1, :cond_14

    .line 498
    .line 499
    const-string p1, "S3BucketDestination"

    .line 500
    .line 501
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result p1

    .line 505
    if-eqz p1, :cond_18

    .line 506
    .line 507
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    .line 508
    .line 509
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 510
    .line 511
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;->b(Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;)V

    .line 512
    .line 513
    .line 514
    goto :goto_0

    .line 515
    :cond_14
    const-string v10, "Destination"

    .line 516
    .line 517
    const-string v11, "S3BucketDestination"

    .line 518
    .line 519
    const-string v6, "ListBucketAnalyticsConfigurationsResult"

    .line 520
    .line 521
    const-string v7, "AnalyticsConfiguration"

    .line 522
    .line 523
    const-string v8, "StorageClassAnalysis"

    .line 524
    .line 525
    const-string v9, "DataExport"

    .line 526
    .line 527
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 532
    .line 533
    .line 534
    move-result p1

    .line 535
    if-eqz p1, :cond_18

    .line 536
    .line 537
    const-string p1, "Format"

    .line 538
    .line 539
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result p1

    .line 543
    if-eqz p1, :cond_15

    .line 544
    .line 545
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 546
    .line 547
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p2

    .line 551
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->e(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    goto :goto_0

    .line 555
    :cond_15
    const-string p1, "BucketAccountId"

    .line 556
    .line 557
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result p1

    .line 561
    if-eqz p1, :cond_16

    .line 562
    .line 563
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 564
    .line 565
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object p2

    .line 569
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->b(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    goto :goto_0

    .line 573
    :cond_16
    const-string p1, "Bucket"

    .line 574
    .line 575
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result p1

    .line 579
    if-eqz p1, :cond_17

    .line 580
    .line 581
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 582
    .line 583
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object p2

    .line 587
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->d(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    goto :goto_0

    .line 591
    :cond_17
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result p1

    .line 595
    if-eqz p1, :cond_18

    .line 596
    .line 597
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 598
    .line 599
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object p2

    .line 603
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;->f(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    :cond_18
    :goto_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    const-string p1, "ListBucketAnalyticsConfigurationsResult"

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
    const-string p4, "AnalyticsConfiguration"

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
    if-eqz p1, :cond_6

    .line 20
    .line 21
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->d:Lcom/amazonaws/services/s3/model/analytics/AnalyticsConfiguration;

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    filled-new-array {p1, p4}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const-string v0, "Filter"

    .line 39
    .line 40
    const-string v1, "StorageClassAnalysis"

    .line 41
    .line 42
    if-eqz p3, :cond_2

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    .line 51
    .line 52
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->e:Lcom/amazonaws/services/s3/model/analytics/AnalyticsFilter;

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->g:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysis;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    filled-new-array {p1, p4, v0}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    if-eqz p3, :cond_3

    .line 82
    .line 83
    const-string p1, "And"

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    new-instance p1, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->f:Ljava/util/List;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    filled-new-array {p1, p4, v1}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    const-string v0, "DataExport"

    .line 108
    .line 109
    if-eqz p3, :cond_4

    .line 110
    .line 111
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    .line 118
    .line 119
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->h:Lcom/amazonaws/services/s3/model/analytics/StorageClassAnalysisDataExport;

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    filled-new-array {p1, p4, v1, v0}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    const-string v2, "Destination"

    .line 134
    .line 135
    if-eqz p3, :cond_5

    .line 136
    .line 137
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    .line 144
    .line 145
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->i:Lcom/amazonaws/services/s3/model/analytics/AnalyticsExportDestination;

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_5
    filled-new-array {p1, p4, v1, v0, v2}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_6

    .line 160
    .line 161
    const-string p1, "S3BucketDestination"

    .line 162
    .line 163
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_6

    .line 168
    .line 169
    new-instance p1, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 170
    .line 171
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketAnalyticsConfigurationHandler;->j:Lcom/amazonaws/services/s3/model/analytics/AnalyticsS3BucketDestination;

    .line 175
    .line 176
    :cond_6
    :goto_0
    return-void
.end method
