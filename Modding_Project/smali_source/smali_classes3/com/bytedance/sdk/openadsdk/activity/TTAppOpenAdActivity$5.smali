.class Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cY(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const-wide/16 v1, 0x0

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(J)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 46
    .line 47
    new-instance v1, Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jr(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    const/high16 v3, 0x3f800000    # 1.0f

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;->oJ(JF)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->jFA(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/wd;->Pfn()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->RZ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/ba/ZYk;->ZYk()V

    .line 94
    .line 95
    .line 96
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/tB;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/tB;->Pfn()V

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Xe(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 119
    .line 120
    const v1, 0x1020002

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-instance v2, Lorg/json/JSONObject;

    .line 128
    .line 129
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .line 131
    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    :try_start_0
    const-string v3, "width"

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    const-string v3, "height"

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    const-string v3, "alpha"

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    float-to-double v4, v0

    .line 159
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    goto/16 :goto_2

    .line 165
    .line 166
    :cond_4
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    .line 167
    .line 168
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v3, "root_view"

    .line 172
    .line 173
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    .line 179
    .line 180
    const-string v2, "ad_root"

    .line 181
    .line 182
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 183
    .line 184
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->tb(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    .line 190
    .line 191
    const-string v2, "openad_creative_type"

    .line 192
    .line 193
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 194
    .line 195
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->dLZ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_5

    .line 200
    .line 201
    const-string v3, "video_normal_ad"

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_5
    const-string v3, "image_normal_ad"

    .line 205
    .line 206
    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    .line 208
    .line 209
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/jFA/so;->tB()Landroid/graphics/drawable/Drawable;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    if-nez v2, :cond_6

    .line 214
    .line 215
    const-string v2, "appicon_acquirefail"

    .line 216
    .line 217
    const-string v3, "1"

    .line 218
    .line 219
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    .line 221
    .line 222
    :cond_6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 223
    .line 224
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->awB(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_7

    .line 229
    .line 230
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 231
    .line 232
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jA()Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_8

    .line 241
    .line 242
    :cond_7
    const-string v2, "dynamic_show_type"

    .line 243
    .line 244
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 245
    .line 246
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->HL(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 251
    .line 252
    .line 253
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 254
    .line 255
    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 256
    .line 257
    .line 258
    :cond_8
    const-string v2, "is_icon_only"

    .line 259
    .line 260
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 261
    .line 262
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Xe()Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    const/4 v4, 0x1

    .line 271
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 272
    .line 273
    .line 274
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 275
    .line 276
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    const-string v3, "open_ad"

    .line 281
    .line 282
    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 292
    .line 293
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    new-instance v2, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;

    .line 298
    .line 299
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 300
    .line 301
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->HL(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;-><init>(I)V

    .line 306
    .line 307
    .line 308
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)V

    .line 309
    .line 310
    .line 311
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 312
    .line 313
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->WcQ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 318
    .line 319
    .line 320
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 321
    .line 322
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->cY(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :goto_2
    const-string v1, "TTAppOpenAdActivity"

    .line 331
    .line 332
    const-string v2, "run: "

    .line 333
    .line 334
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    .line 336
    .line 337
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 338
    .line 339
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    .line 340
    .line 341
    .line 342
    return-void
.end method
