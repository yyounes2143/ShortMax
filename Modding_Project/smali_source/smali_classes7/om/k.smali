.class final Lom/k;
.super Lom/a;
.source "NativeAdObjectParams.java"


# instance fields
.field private final d:Lpm/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lpm/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lpm/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/adcom/Ad;)V
    .locals 5
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lom/a;-><init>(Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lpm/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lpm/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lom/k;->d:Lpm/b;

    .line 10
    .line 11
    new-instance v1, Lpm/a;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lpm/a;-><init>(Lpm/b;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lom/k;->e:Lpm/a;

    .line 17
    .line 18
    new-instance v0, Lpm/c;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lpm/c;-><init>(Lpm/a;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lom/k;->f:Lpm/c;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getLink()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eq v0, v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "clickUrl"

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->getUrl()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    :goto_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->getTrkrCount()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-ge v1, v2, :cond_0

    .line 64
    .line 65
    sget-object v2, Lio/bidmachine/TrackEventType;->Click:Lio/bidmachine/TrackEventType;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset;->getTrkr(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p0, v2, v3}, Llp/b;->a(Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getAssetList()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :catch_0
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_c

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getId()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const/4 v2, 0x4

    .line 102
    if-eq v1, v2, :cond_a

    .line 103
    .line 104
    const/4 v2, 0x7

    .line 105
    if-eq v1, v2, :cond_9

    .line 106
    .line 107
    const/16 v2, 0x8

    .line 108
    .line 109
    if-eq v1, v2, :cond_8

    .line 110
    .line 111
    const/16 v2, 0x65

    .line 112
    .line 113
    if-eq v1, v2, :cond_7

    .line 114
    .line 115
    const/16 v2, 0x66

    .line 116
    .line 117
    if-eq v1, v2, :cond_6

    .line 118
    .line 119
    const/16 v2, 0x7b

    .line 120
    .line 121
    if-eq v1, v2, :cond_5

    .line 122
    .line 123
    const/16 v2, 0x7c

    .line 124
    .line 125
    if-eq v1, v2, :cond_4

    .line 126
    .line 127
    const/16 v2, 0x7f

    .line 128
    .line 129
    if-eq v1, v2, :cond_3

    .line 130
    .line 131
    const/16 v2, 0x80

    .line 132
    .line 133
    if-eq v1, v2, :cond_2

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getImage()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;->getUrl()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const-string v2, "imageUrl"

    .line 149
    .line 150
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;->getValue()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const-string v2, "description"

    .line 167
    .line 168
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getImage()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset;->getUrl()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-string v2, "iconUrl"

    .line 185
    .line 186
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_5
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getTitle()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset;->getText()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v2, "title"

    .line 203
    .line 204
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_6
    iget-object v1, p0, Lom/k;->f:Lpm/c;

    .line 209
    .line 210
    invoke-virtual {v1, v0}, Lpm/c;->a(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;)Lio/bidmachine/PrivacySheetData;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    new-instance v1, Lom/j;

    .line 215
    .line 216
    invoke-direct {v1, p0}, Lom/j;-><init>(Lom/k;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v0, v1}, Lyq/r;->m(Ljava/lang/Object;Lyq/d;)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_7
    iget-object v1, p0, Lom/k;->e:Lpm/a;

    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getLabel()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$LabelAsset;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v1, v0}, Lpm/a;->a(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$LabelAsset;)Lio/bidmachine/LabelData;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    new-instance v1, Lom/i;

    .line 235
    .line 236
    invoke-direct {v1, p0}, Lom/i;-><init>(Lom/k;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v0, v1}, Lyq/r;->m(Ljava/lang/Object;Lyq/d;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :cond_8
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;->getValue()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const-string v2, "cta"

    .line 257
    .line 258
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    const-string v2, "rating"

    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getData()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset;->getValue()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .line 283
    .line 284
    goto/16 :goto_1

    .line 285
    .line 286
    :cond_a
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getCurl()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getCurl()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-nez v2, :cond_b

    .line 307
    .line 308
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getCurl()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    const-string v4, "videoUrl"

    .line 321
    .line 322
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getAdm()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getAdm()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-nez v1, :cond_1

    .line 342
    .line 343
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset;->getVideo()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset;->getAdm()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    const-string v2, "videoAdm"

    .line 356
    .line 357
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    goto/16 :goto_1

    .line 361
    .line 362
    :cond_c
    return-void
.end method

.method public static synthetic m(Lom/k;Lio/bidmachine/PrivacySheetData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lom/k;->p(Lio/bidmachine/PrivacySheetData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lom/k;Lio/bidmachine/LabelData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lom/k;->o(Lio/bidmachine/LabelData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic o(Lio/bidmachine/LabelData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "adLabel"

    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic p(Lio/bidmachine/PrivacySheetData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "privacySheet"

    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
