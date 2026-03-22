.class Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ex/tB$51;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

.field final synthetic oJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ex/tB$51;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->oJ:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ()Lorg/json/JSONObject;
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/HL;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->Pfn:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 16
    .line 17
    const-string v3, "ad_extra_data"

    .line 18
    .line 19
    const-string v4, "au_show"

    .line 20
    .line 21
    const-string v5, "video_skip_result"

    .line 22
    .line 23
    const-string v6, "real_interaction_method"

    .line 24
    .line 25
    const-string v7, "interaction_method"

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    :try_start_2
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NO()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 39
    .line 40
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->Pfn:Lorg/json/JSONObject;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->Pfn:Lorg/json/JSONObject;

    .line 54
    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 60
    .line 61
    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-interface {v2, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->BTZ(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->Pfn:Lorg/json/JSONObject;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->oJ:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 88
    .line 89
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 90
    .line 91
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->Pfn:Lorg/json/JSONObject;

    .line 92
    .line 93
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->Pfn:Lorg/json/JSONObject;

    .line 99
    .line 100
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 109
    .line 110
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 114
    .line 115
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NO()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 125
    .line 126
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 140
    .line 141
    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 142
    .line 143
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-interface {v2, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->BTZ(Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->oJ:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 164
    .line 165
    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 166
    .line 167
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->Pfn:Lorg/json/JSONObject;

    .line 168
    .line 169
    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    :goto_0
    const-string v1, "log_extra"

    .line 180
    .line 181
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 182
    .line 183
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 193
    .line 194
    .line 195
    move-result-wide v1

    .line 196
    const-wide/16 v3, 0x3e8

    .line 197
    .line 198
    div-long/2addr v1, v3

    .line 199
    long-to-double v1, v1

    .line 200
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 201
    .line 202
    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 203
    .line 204
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->fTJ()D

    .line 205
    .line 206
    .line 207
    move-result-wide v3

    .line 208
    sub-double/2addr v1, v3

    .line 209
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    const-string v2, "show_time"

    .line 218
    .line 219
    const/4 v3, 0x0

    .line 220
    cmpl-float v4, v1, v3

    .line 221
    .line 222
    if-lez v4, :cond_1

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_1
    move v1, v3

    .line 226
    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    .line 232
    .line 233
    const-string v1, "ua_policy"

    .line 234
    .line 235
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 236
    .line 237
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 238
    .line 239
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oG()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    .line 249
    .line 250
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 251
    .line 252
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 253
    .line 254
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->VJm()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 259
    .line 260
    .line 261
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 262
    const-string v3, "TTAD.AdEvent"

    .line 263
    .line 264
    const-string v4, "ttdsp_price"

    .line 265
    .line 266
    if-nez v2, :cond_2

    .line 267
    .line 268
    :try_start_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 269
    .line 270
    .line 271
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 272
    if-nez v2, :cond_2

    .line 273
    .line 274
    :try_start_4
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    const v2, 0x47c35000    # 100000.0f

    .line 279
    .line 280
    .line 281
    mul-float/2addr v1, v2

    .line 282
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    .line 288
    .line 289
    goto :goto_2

    .line 290
    :catchall_0
    move-exception v1

    .line 291
    const/4 v2, 0x0

    .line 292
    :try_start_5
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-static {v3, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 303
    .line 304
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 305
    .line 306
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zwf()Ljava/util/Map;

    .line 307
    .line 308
    .line 309
    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 310
    if-eqz v1, :cond_3

    .line 311
    .line 312
    :try_start_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 313
    .line 314
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 315
    .line 316
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zwf()Ljava/util/Map;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    const-string v2, "sdk_bidding_type"

    .line 321
    .line 322
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    if-eqz v1, :cond_3

    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    const/4 v2, 0x2

    .line 337
    if-ne v1, v2, :cond_3

    .line 338
    .line 339
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$51$1;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/tB$51;

    .line 340
    .line 341
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/ex/tB$51;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 342
    .line 343
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zwf()Ljava/util/Map;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    const-string v2, "price"

    .line 348
    .line 349
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    if-eqz v1, :cond_3

    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 360
    .line 361
    .line 362
    move-result-wide v1

    .line 363
    const-wide v5, 0x40f86a0000000000L    # 100000.0

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    mul-double/2addr v1, v5

    .line 369
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 370
    .line 371
    .line 372
    move-result-wide v1

    .line 373
    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 374
    .line 375
    .line 376
    goto :goto_3

    .line 377
    :catchall_1
    move-exception v1

    .line 378
    :try_start_7
    const-string v2, "client bidding price error: "

    .line 379
    .line 380
    invoke-static {v3, v2, v1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 381
    .line 382
    .line 383
    goto :goto_3

    .line 384
    :catch_0
    const/4 v0, 0x0

    .line 385
    :catch_1
    :cond_3
    :goto_3
    return-object v0
.end method
