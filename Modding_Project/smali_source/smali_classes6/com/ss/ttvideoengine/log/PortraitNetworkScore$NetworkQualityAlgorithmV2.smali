.class Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;
.super Ljava/lang/Object;
.source "PortraitNetworkScore.java"

# interfaces
.implements Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/PortraitNetworkScore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkQualityAlgorithmV2"
.end annotation


# instance fields
.field private mLinkFuncOffset:D

.field private mParameters:[D

.field private mVarsToParse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v0, v0, [D

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mParameters:[D

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mVarsToParse:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "net_quality"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    move-wide v3, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v3, "link_function_offset"

    .line 33
    .line 34
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    :goto_0
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mLinkFuncOffset:D

    .line 39
    .line 40
    const-wide/16 v5, 0x0

    .line 41
    .line 42
    cmpg-double v0, v3, v5

    .line 43
    .line 44
    if-gez v0, :cond_1

    .line 45
    .line 46
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mLinkFuncOffset:D

    .line 47
    .line 48
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "link function offset: "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mLinkFuncOffset:D

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "PortraitNetworkScore"

    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :array_0
    .array-data 8
        0x3fe174d660f53851L    # 0.54551238
        -0x405ff9c6d5e7d38eL    # -0.03129748
        0x3fc93e6d78ff4545L    # 0.19721764
        0x3fcf0bdb6af54160L    # 0.24254935
        0x3f8c60f99501da4bL    # 0.01385684
        -0x4006e4e03432b78dL    # -1.56912212
        -0x4026661629b80a48L    # -0.40001913
        -0x401d8cbc7bf1bdf3L    # -0.57657028
        -0x401ba3a388b0be23L    # -0.63627456
        -0x403edc7638159b1dL    # -0.13389704
        0x3fb0199e36b74c32L    # 0.0628909
        -0x403f196063c2f304L    # -0.13203807
        -0x404b2900297091b8L    # -0.08140563
        -0x40469491c7e90d4aL    # -0.09929551
        0x3fb9a9adb8e05bcbL    # 0.10024534
        0x3fd42dfb05446286L    # 0.31530643
    .end array-data
.end method

.method private parseVariable(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    aget-object v3, p1, v1

    .line 13
    .line 14
    iget-object v4, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mParameters:[D

    .line 15
    .line 16
    add-int/lit8 v5, v2, 0x1

    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    aput-wide v6, v4, v2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mParameters:[D

    .line 29
    .line 30
    array-length v2, v2

    .line 31
    if-ne v5, v2, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    move v2, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public calculateTargetBitrate(Ljava/util/List;Ljava/util/List;)D
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)D"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "calculateTargetBitrate rttList:"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v4, ", speedList:"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "PortraitNetworkScore"

    .line 33
    .line 34
    invoke-static {v4, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    :cond_0
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    :cond_1
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 54
    .line 55
    goto/16 :goto_f

    .line 56
    .line 57
    :cond_2
    iget-object v3, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mVarsToParse:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_3

    .line 66
    .line 67
    iget-object v3, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mVarsToParse:Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v0, v3}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->parseVariable(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    iput-object v3, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mVarsToParse:Ljava/lang/String;

    .line 74
    .line 75
    :cond_3
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 76
    .line 77
    const-wide/16 v13, 0x0

    .line 78
    .line 79
    if-eqz v2, :cond_c

    .line 80
    .line 81
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v15

    .line 85
    :cond_4
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v16

    .line 89
    if-eqz v16, :cond_5

    .line 90
    .line 91
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v16

    .line 95
    check-cast v16, Ljava/lang/Float;

    .line 96
    .line 97
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    .line 98
    .line 99
    .line 100
    move-result v16

    .line 101
    const/16 v17, 0x0

    .line 102
    .line 103
    cmpg-float v16, v16, v17

    .line 104
    .line 105
    if-gtz v16, :cond_4

    .line 106
    .line 107
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    if-eqz v15, :cond_6

    .line 116
    .line 117
    move-wide v5, v13

    .line 118
    move-wide/from16 v18, v5

    .line 119
    .line 120
    move-wide/from16 v20, v18

    .line 121
    .line 122
    move-wide/from16 v22, v20

    .line 123
    .line 124
    goto/16 :goto_4

    .line 125
    .line 126
    :cond_6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v15

    .line 130
    move-wide/from16 v16, v13

    .line 131
    .line 132
    move-wide/from16 v18, v16

    .line 133
    .line 134
    const-wide v20, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    const-wide/16 v22, 0x1

    .line 140
    .line 141
    :cond_7
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v24

    .line 145
    if-eqz v24, :cond_9

    .line 146
    .line 147
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v24

    .line 151
    check-cast v24, Ljava/lang/Float;

    .line 152
    .line 153
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    float-to-double v9, v9

    .line 158
    add-double v18, v18, v9

    .line 159
    .line 160
    add-double v16, v16, v7

    .line 161
    .line 162
    cmpg-double v24, v9, v20

    .line 163
    .line 164
    if-gez v24, :cond_8

    .line 165
    .line 166
    move-wide/from16 v20, v9

    .line 167
    .line 168
    :cond_8
    cmpl-double v24, v9, v22

    .line 169
    .line 170
    if-lez v24, :cond_7

    .line 171
    .line 172
    move-wide/from16 v22, v9

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_9
    cmpl-double v9, v16, v13

    .line 176
    .line 177
    if-lez v9, :cond_a

    .line 178
    .line 179
    div-double v18, v18, v16

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_a
    move-wide/from16 v18, v13

    .line 183
    .line 184
    :goto_2
    const-wide/high16 v9, 0x4130000000000000L    # 1048576.0

    .line 185
    .line 186
    div-double v20, v20, v9

    .line 187
    .line 188
    div-double v22, v22, v9

    .line 189
    .line 190
    move-wide/from16 v16, v13

    .line 191
    .line 192
    const/4 v15, 0x0

    .line 193
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    if-ge v15, v11, :cond_b

    .line 198
    .line 199
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    check-cast v11, Ljava/lang/Float;

    .line 204
    .line 205
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    float-to-double v11, v11

    .line 210
    sub-double v11, v11, v18

    .line 211
    .line 212
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 213
    .line 214
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 215
    .line 216
    .line 217
    move-result-wide v5

    .line 218
    add-double v16, v16, v5

    .line 219
    .line 220
    add-int/lit8 v15, v15, 0x1

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    int-to-double v5, v2

    .line 228
    div-double v16, v16, v5

    .line 229
    .line 230
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    .line 231
    .line 232
    .line 233
    move-result-wide v5

    .line 234
    div-double/2addr v5, v9

    .line 235
    div-double v18, v18, v9

    .line 236
    .line 237
    :goto_4
    move-wide/from16 v9, v18

    .line 238
    .line 239
    move-wide/from16 v11, v20

    .line 240
    .line 241
    move-wide/from16 v13, v22

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_c
    move-wide v5, v13

    .line 245
    move-wide v9, v5

    .line 246
    move-wide v11, v9

    .line 247
    :goto_5
    if-eqz v1, :cond_12

    .line 248
    .line 249
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    :cond_d
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v17

    .line 257
    if-eqz v17, :cond_e

    .line 258
    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v17

    .line 263
    check-cast v17, Ljava/lang/Integer;

    .line 264
    .line 265
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    .line 266
    .line 267
    .line 268
    move-result v17

    .line 269
    if-gtz v17, :cond_d

    .line 270
    .line 271
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-lez v2, :cond_12

    .line 280
    .line 281
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    const-wide/16 v17, 0x0

    .line 286
    .line 287
    const-wide/16 v19, 0x0

    .line 288
    .line 289
    const-wide/16 v25, 0x1

    .line 290
    .line 291
    const-wide v27, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_11

    .line 301
    .line 302
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    check-cast v2, Ljava/lang/Integer;

    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    add-double v19, v19, v7

    .line 313
    .line 314
    int-to-double v7, v2

    .line 315
    add-double v17, v17, v7

    .line 316
    .line 317
    cmpl-double v2, v7, v25

    .line 318
    .line 319
    if-lez v2, :cond_f

    .line 320
    .line 321
    move-wide/from16 v25, v7

    .line 322
    .line 323
    :cond_f
    cmpg-double v2, v7, v27

    .line 324
    .line 325
    if-gez v2, :cond_10

    .line 326
    .line 327
    move-wide/from16 v27, v7

    .line 328
    .line 329
    :cond_10
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 330
    .line 331
    goto :goto_7

    .line 332
    :cond_11
    div-double v17, v17, v19

    .line 333
    .line 334
    const-wide v1, 0x408f400000000000L    # 1000.0

    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    div-double v17, v17, v1

    .line 340
    .line 341
    sub-double v25, v25, v27

    .line 342
    .line 343
    div-double v25, v25, v1

    .line 344
    .line 345
    move-wide/from16 v1, v17

    .line 346
    .line 347
    move-wide/from16 v7, v25

    .line 348
    .line 349
    goto :goto_8

    .line 350
    :cond_12
    const-wide/16 v1, 0x0

    .line 351
    .line 352
    const-wide/16 v7, 0x0

    .line 353
    .line 354
    :goto_8
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 355
    .line 356
    .line 357
    move-result-object v17

    .line 358
    invoke-virtual/range {v17 .. v17}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getCurrentAccessType()I

    .line 359
    .line 360
    .line 361
    move-result v15

    .line 362
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 363
    .line 364
    .line 365
    move-result-object v16

    .line 366
    invoke-virtual/range {v16 .. v16}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getCurrentAccessStrength()I

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    move-object/from16 v16, v4

    .line 371
    .line 372
    const/4 v4, 0x1

    .line 373
    if-eqz v15, :cond_17

    .line 374
    .line 375
    if-eq v15, v4, :cond_16

    .line 376
    .line 377
    const/4 v4, 0x2

    .line 378
    if-eq v15, v4, :cond_15

    .line 379
    .line 380
    const/4 v4, 0x3

    .line 381
    if-eq v15, v4, :cond_14

    .line 382
    .line 383
    const/4 v4, 0x4

    .line 384
    if-eq v15, v4, :cond_13

    .line 385
    .line 386
    const/4 v4, 0x1

    .line 387
    const-wide/16 v29, 0x0

    .line 388
    .line 389
    goto :goto_a

    .line 390
    :cond_13
    iget-object v4, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mParameters:[D

    .line 391
    .line 392
    const/16 v15, 0xa

    .line 393
    .line 394
    aget-wide v22, v4, v15

    .line 395
    .line 396
    :goto_9
    move-wide/from16 v29, v22

    .line 397
    .line 398
    const/4 v4, 0x1

    .line 399
    goto :goto_a

    .line 400
    :cond_14
    iget-object v4, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mParameters:[D

    .line 401
    .line 402
    const/16 v15, 0x8

    .line 403
    .line 404
    aget-wide v22, v4, v15

    .line 405
    .line 406
    goto :goto_9

    .line 407
    :cond_15
    iget-object v4, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mParameters:[D

    .line 408
    .line 409
    const/4 v15, 0x7

    .line 410
    aget-wide v22, v4, v15

    .line 411
    .line 412
    goto :goto_9

    .line 413
    :cond_16
    iget-object v4, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mParameters:[D

    .line 414
    .line 415
    const/16 v15, 0x9

    .line 416
    .line 417
    aget-wide v22, v4, v15

    .line 418
    .line 419
    goto :goto_9

    .line 420
    :cond_17
    iget-object v4, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mParameters:[D

    .line 421
    .line 422
    const/16 v15, 0xb

    .line 423
    .line 424
    aget-wide v22, v4, v15

    .line 425
    .line 426
    goto :goto_9

    .line 427
    :goto_a
    if-eq v3, v4, :cond_1b

    .line 428
    .line 429
    const/4 v4, 0x2

    .line 430
    if-eq v3, v4, :cond_1a

    .line 431
    .line 432
    const/4 v4, 0x3

    .line 433
    if-eq v3, v4, :cond_19

    .line 434
    .line 435
    const/4 v4, 0x4

    .line 436
    if-eq v3, v4, :cond_18

    .line 437
    .line 438
    const-wide/16 v3, 0x0

    .line 439
    .line 440
    goto :goto_c

    .line 441
    :cond_18
    iget-object v3, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mParameters:[D

    .line 442
    .line 443
    const/16 v4, 0xf

    .line 444
    .line 445
    aget-wide v22, v3, v4

    .line 446
    .line 447
    :goto_b
    move-wide/from16 v3, v22

    .line 448
    .line 449
    goto :goto_c

    .line 450
    :cond_19
    iget-object v3, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mParameters:[D

    .line 451
    .line 452
    const/16 v4, 0xe

    .line 453
    .line 454
    aget-wide v22, v3, v4

    .line 455
    .line 456
    goto :goto_b

    .line 457
    :cond_1a
    iget-object v3, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mParameters:[D

    .line 458
    .line 459
    const/16 v4, 0xd

    .line 460
    .line 461
    aget-wide v22, v3, v4

    .line 462
    .line 463
    goto :goto_b

    .line 464
    :cond_1b
    iget-object v3, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mParameters:[D

    .line 465
    .line 466
    const/16 v4, 0xc

    .line 467
    .line 468
    aget-wide v22, v3, v4

    .line 469
    .line 470
    goto :goto_b

    .line 471
    :goto_c
    new-instance v15, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    const-string v0, "calculateTargetBitrate speedMean:"

    .line 477
    .line 478
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    const-string v0, ", speedStd:"

    .line 485
    .line 486
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const-string v0, ", speedMin:"

    .line 493
    .line 494
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string v0, ", speedMax:"

    .line 501
    .line 502
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    const-string v0, ", rttMean:"

    .line 509
    .line 510
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v0, ", rttVar:"

    .line 517
    .line 518
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    const-string v0, ", netTypeVar:"

    .line 525
    .line 526
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    move-wide/from16 v22, v7

    .line 530
    .line 531
    move-wide/from16 v7, v29

    .line 532
    .line 533
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    const-string v0, ", sigStrengthVar:"

    .line 537
    .line 538
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    move-object/from16 v15, v16

    .line 549
    .line 550
    invoke-static {v15, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    move-object/from16 v0, p0

    .line 554
    .line 555
    iget-object v15, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mParameters:[D

    .line 556
    .line 557
    const/16 v17, 0x0

    .line 558
    .line 559
    aget-wide v24, v15, v17

    .line 560
    .line 561
    const/16 v17, 0x1

    .line 562
    .line 563
    aget-wide v26, v15, v17

    .line 564
    .line 565
    mul-double v26, v26, v9

    .line 566
    .line 567
    add-double v24, v24, v26

    .line 568
    .line 569
    const/4 v9, 0x2

    .line 570
    aget-wide v9, v15, v9

    .line 571
    .line 572
    mul-double/2addr v9, v5

    .line 573
    add-double v24, v24, v9

    .line 574
    .line 575
    const/4 v5, 0x3

    .line 576
    aget-wide v5, v15, v5

    .line 577
    .line 578
    mul-double/2addr v5, v11

    .line 579
    add-double v24, v24, v5

    .line 580
    .line 581
    const/4 v5, 0x4

    .line 582
    aget-wide v5, v15, v5

    .line 583
    .line 584
    mul-double/2addr v5, v13

    .line 585
    add-double v24, v24, v5

    .line 586
    .line 587
    const/4 v5, 0x5

    .line 588
    aget-wide v5, v15, v5

    .line 589
    .line 590
    mul-double/2addr v5, v1

    .line 591
    add-double v24, v24, v5

    .line 592
    .line 593
    const/4 v1, 0x6

    .line 594
    aget-wide v1, v15, v1

    .line 595
    .line 596
    mul-double v1, v1, v22

    .line 597
    .line 598
    add-double v24, v24, v1

    .line 599
    .line 600
    add-double v24, v24, v7

    .line 601
    .line 602
    add-double v1, v24, v3

    .line 603
    .line 604
    iget-wide v3, v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mLinkFuncOffset:D

    .line 605
    .line 606
    cmpg-double v5, v1, v3

    .line 607
    .line 608
    if-gtz v5, :cond_1c

    .line 609
    .line 610
    const-wide v5, 0x4005bf0a8b145769L    # Math.E

    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    sub-double v7, v1, v3

    .line 616
    .line 617
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 618
    .line 619
    .line 620
    move-result-wide v5

    .line 621
    mul-double/2addr v3, v5

    .line 622
    goto :goto_d

    .line 623
    :cond_1c
    move-wide v3, v1

    .line 624
    :goto_d
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 625
    .line 626
    .line 627
    move-result v5

    .line 628
    if-eqz v5, :cond_1d

    .line 629
    .line 630
    const-wide/16 v3, 0x0

    .line 631
    .line 632
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 633
    .line 634
    goto :goto_e

    .line 635
    :cond_1d
    move-wide v5, v3

    .line 636
    const-wide/16 v3, 0x0

    .line 637
    .line 638
    :goto_e
    cmpl-double v3, v5, v3

    .line 639
    .line 640
    if-lez v3, :cond_1e

    .line 641
    .line 642
    invoke-static {v5, v6}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->access$102(D)D

    .line 643
    .line 644
    .line 645
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    .line 649
    .line 650
    const-string v4, "calculateTargetBitrate pred:"

    .line 651
    .line 652
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    const-string v1, ", qualityBitrate:"

    .line 659
    .line 660
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    const-string v1, ", mLastTargetBitrate:"

    .line 667
    .line 668
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->access$100()D

    .line 672
    .line 673
    .line 674
    move-result-wide v1

    .line 675
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    move-object/from16 v2, v16

    .line 683
    .line 684
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    return-wide v5

    .line 688
    :goto_f
    return-wide v1
.end method

.method public getLastNetworkScore()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public getNetworkScore()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public init()V
    .locals 0

    .line 1
    return-void
.end method

.method public setStringOption(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;->mVarsToParse:Ljava/lang/String;

    .line 6
    .line 7
    :goto_0
    return-void
.end method
