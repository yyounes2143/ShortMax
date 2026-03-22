.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ex;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private final tB:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ZYk()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->tB:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->oJ(Landroid/view/MotionEvent;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ry(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ry(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/common/ex;->oJ(Landroid/view/MotionEvent;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-wide/16 v4, -0x1

    .line 37
    .line 38
    const-wide/16 v6, 0x0

    .line 39
    .line 40
    const/4 v8, 0x2

    .line 41
    const/4 v9, 0x1

    .line 42
    if-eqz v3, :cond_b

    .line 43
    .line 44
    const/4 v10, 0x3

    .line 45
    if-eq v3, v9, :cond_2

    .line 46
    .line 47
    if-eq v3, v8, :cond_4

    .line 48
    .line 49
    if-eq v3, v10, :cond_3

    .line 50
    .line 51
    const/4 v10, -0x1

    .line 52
    :cond_2
    :goto_0
    move v12, v10

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_3
    const/4 v10, 0x4

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 66
    .line 67
    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->QSm(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    sub-float/2addr v3, v11

    .line 72
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->tB:I

    .line 77
    .line 78
    int-to-float v11, v11

    .line 79
    cmpl-float v3, v3, v11

    .line 80
    .line 81
    if-gez v3, :cond_5

    .line 82
    .line 83
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 84
    .line 85
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oq(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    sub-float v3, v10, v3

    .line 90
    .line 91
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    iget v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->tB:I

    .line 96
    .line 97
    int-to-float v11, v11

    .line 98
    cmpl-float v3, v3, v11

    .line 99
    .line 100
    if-ltz v3, :cond_6

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto/16 :goto_a

    .line 105
    .line 106
    :cond_5
    :goto_1
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 107
    .line 108
    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cFZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Z)Z

    .line 109
    .line 110
    .line 111
    :cond_6
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 112
    .line 113
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Id(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 122
    .line 123
    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->QSm(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    sub-float/2addr v12, v13

    .line 128
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    add-float/2addr v11, v12

    .line 133
    invoke-static {v3, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;F)F

    .line 134
    .line 135
    .line 136
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 137
    .line 138
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cY(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 147
    .line 148
    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oq(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F

    .line 149
    .line 150
    .line 151
    move-result v13

    .line 152
    sub-float/2addr v12, v13

    .line 153
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    add-float/2addr v11, v12

    .line 158
    invoke-static {v3, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;F)F

    .line 159
    .line 160
    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 162
    .line 163
    .line 164
    move-result-wide v11

    .line 165
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 166
    .line 167
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->RZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)J

    .line 168
    .line 169
    .line 170
    move-result-wide v13

    .line 171
    sub-long/2addr v11, v13

    .line 172
    const-wide/16 v13, 0xc8

    .line 173
    .line 174
    cmp-long v3, v11, v13

    .line 175
    .line 176
    const/high16 v11, 0x41000000    # 8.0f

    .line 177
    .line 178
    if-lez v3, :cond_8

    .line 179
    .line 180
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 181
    .line 182
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Id(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    cmpl-float v3, v3, v11

    .line 187
    .line 188
    if-gtz v3, :cond_7

    .line 189
    .line 190
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 191
    .line 192
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cY(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    cmpl-float v3, v3, v11

    .line 197
    .line 198
    if-lez v3, :cond_8

    .line 199
    .line 200
    :cond_7
    move v3, v9

    .line 201
    goto :goto_2

    .line 202
    :cond_8
    move v3, v8

    .line 203
    :goto_2
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 204
    .line 205
    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jr(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    if-eqz v12, :cond_a

    .line 210
    .line 211
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 212
    .line 213
    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oq(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    sub-float v12, v10, v12

    .line 218
    .line 219
    cmpl-float v11, v12, v11

    .line 220
    .line 221
    if-lez v11, :cond_9

    .line 222
    .line 223
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 224
    .line 225
    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Xe(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/common/PiB;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/common/PiB;->oJ()V

    .line 230
    .line 231
    .line 232
    :cond_9
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 233
    .line 234
    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oq(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    sub-float/2addr v10, v11

    .line 239
    const/high16 v11, -0x3f000000    # -8.0f

    .line 240
    .line 241
    cmpg-float v10, v10, v11

    .line 242
    .line 243
    if-gez v10, :cond_a

    .line 244
    .line 245
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 246
    .line 247
    invoke-static {v10}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Xe(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/common/PiB;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/common/PiB;->ZYk()V

    .line 252
    .line 253
    .line 254
    :cond_a
    move v12, v3

    .line 255
    goto :goto_3

    .line 256
    :cond_b
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 257
    .line 258
    invoke-static {v3, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cFZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Z)Z

    .line 259
    .line 260
    .line 261
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 262
    .line 263
    new-instance v10, Landroid/util/SparseArray;

    .line 264
    .line 265
    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 269
    .line 270
    .line 271
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 272
    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;F)F

    .line 278
    .line 279
    .line 280
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 281
    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 283
    .line 284
    .line 285
    move-result v10

    .line 286
    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;F)F

    .line 287
    .line 288
    .line 289
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 290
    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 292
    .line 293
    .line 294
    move-result-wide v10

    .line 295
    invoke-static {v3, v10, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .line 297
    .line 298
    :try_start_1
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 299
    .line 300
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/component/jFA/ba;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/jFA/ba;->getLandingPageClickBegin()J

    .line 305
    .line 306
    .line 307
    move-result-wide v10

    .line 308
    cmp-long v3, v10, v6

    .line 309
    .line 310
    if-lez v3, :cond_c

    .line 311
    .line 312
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 313
    .line 314
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->RZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)J

    .line 315
    .line 316
    .line 317
    move-result-wide v12

    .line 318
    cmp-long v3, v10, v12

    .line 319
    .line 320
    if-gez v3, :cond_c

    .line 321
    .line 322
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 323
    .line 324
    invoke-static {v3, v10, v11}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;J)J

    .line 325
    .line 326
    .line 327
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 328
    .line 329
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/component/jFA/ba;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/jFA/ba;->setLandingPageClickBegin(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .line 335
    .line 336
    :catch_0
    :cond_c
    :try_start_2
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 337
    .line 338
    const/high16 v10, -0x40800000    # -1.0f

    .line 339
    .line 340
    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;F)F

    .line 341
    .line 342
    .line 343
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 344
    .line 345
    invoke-static {v3, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;F)F

    .line 346
    .line 347
    .line 348
    move v12, v2

    .line 349
    :goto_3
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 350
    .line 351
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tb(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Landroid/util/SparseArray;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 356
    .line 357
    .line 358
    move-result v10

    .line 359
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;

    .line 360
    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSize()F

    .line 362
    .line 363
    .line 364
    move-result v11

    .line 365
    float-to-double v13, v11

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPressure()F

    .line 367
    .line 368
    .line 369
    move-result v11

    .line 370
    float-to-double v4, v11

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 372
    .line 373
    .line 374
    move-result-wide v17

    .line 375
    move-object v11, v15

    .line 376
    move-object v2, v15

    .line 377
    move-wide v15, v4

    .line 378
    invoke-direct/range {v11 .. v18}, Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;-><init>(IDDJ)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-ne v2, v9, :cond_18

    .line 389
    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-nez v2, :cond_18

    .line 395
    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    if-ne v2, v9, :cond_18

    .line 409
    .line 410
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 411
    .line 412
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->HL(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    if-eqz v2, :cond_d

    .line 417
    .line 418
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 419
    .line 420
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-eqz v2, :cond_18

    .line 425
    .line 426
    :cond_d
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 427
    .line 428
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->IUZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-eqz v2, :cond_18

    .line 433
    .line 434
    new-instance v2, Lorg/json/JSONObject;

    .line 435
    .line 436
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 437
    .line 438
    .line 439
    const-string v3, "down_x"

    .line 440
    .line 441
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 442
    .line 443
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->QSm(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    float-to-double v4, v4

    .line 448
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 449
    .line 450
    .line 451
    const-string v3, "down_y"

    .line 452
    .line 453
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 454
    .line 455
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oq(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)F

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    float-to-double v4, v4

    .line 460
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 461
    .line 462
    .line 463
    const-string v3, "down_time"

    .line 464
    .line 465
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 466
    .line 467
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->RZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)J

    .line 468
    .line 469
    .line 470
    move-result-wide v4

    .line 471
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 472
    .line 473
    .line 474
    const-string v3, "up_x"

    .line 475
    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    float-to-double v4, v4

    .line 481
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 482
    .line 483
    .line 484
    const-string v3, "up_y"

    .line 485
    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    float-to-double v4, v4

    .line 491
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 492
    .line 493
    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 495
    .line 496
    .line 497
    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 498
    :try_start_3
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 499
    .line 500
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/component/jFA/ba;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    invoke-virtual {v5}, Lcom/bytedance/sdk/component/jFA/ba;->getLandingPageClickEnd()J

    .line 505
    .line 506
    .line 507
    move-result-wide v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 508
    cmp-long v5, v10, v6

    .line 509
    .line 510
    if-lez v5, :cond_e

    .line 511
    .line 512
    cmp-long v5, v10, v3

    .line 513
    .line 514
    if-gez v5, :cond_e

    .line 515
    .line 516
    :try_start_4
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 517
    .line 518
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/component/jFA/ba;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    const-wide/16 v4, -0x1

    .line 523
    .line 524
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/jFA/ba;->setLandingPageClickEnd(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 525
    .line 526
    .line 527
    :catch_1
    move-wide v3, v10

    .line 528
    :catch_2
    :cond_e
    :try_start_5
    const-string v5, "up_time"

    .line 529
    .line 530
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 531
    .line 532
    .line 533
    new-array v3, v8, [I

    .line 534
    .line 535
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 536
    .line 537
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jr(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z

    .line 538
    .line 539
    .line 540
    move-result v4

    .line 541
    if-eqz v4, :cond_f

    .line 542
    .line 543
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 544
    .line 545
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 550
    .line 551
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/eZI;->jXJ:I

    .line 552
    .line 553
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Landroid/view/View;)Landroid/view/View;

    .line 558
    .line 559
    .line 560
    goto :goto_4

    .line 561
    :cond_f
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 562
    .line 563
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 564
    .line 565
    .line 566
    move-result-object v5

    .line 567
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 568
    .line 569
    const v6, 0x1f000011

    .line 570
    .line 571
    .line 572
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 573
    .line 574
    .line 575
    move-result-object v5

    .line 576
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Landroid/view/View;)Landroid/view/View;

    .line 577
    .line 578
    .line 579
    :goto_4
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 580
    .line 581
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ln(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Landroid/view/View;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    if-eqz v4, :cond_10

    .line 586
    .line 587
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 588
    .line 589
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ln(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Landroid/view/View;

    .line 590
    .line 591
    .line 592
    move-result-object v4

    .line 593
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 594
    .line 595
    .line 596
    const-string v4, "button_x"

    .line 597
    .line 598
    const/4 v5, 0x0

    .line 599
    aget v6, v3, v5

    .line 600
    .line 601
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 602
    .line 603
    .line 604
    const-string v4, "button_y"

    .line 605
    .line 606
    aget v3, v3, v9

    .line 607
    .line 608
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 609
    .line 610
    .line 611
    const-string v3, "button_width"

    .line 612
    .line 613
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 614
    .line 615
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ln(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Landroid/view/View;

    .line 616
    .line 617
    .line 618
    move-result-object v4

    .line 619
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 620
    .line 621
    .line 622
    move-result v4

    .line 623
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 624
    .line 625
    .line 626
    const-string v3, "button_height"

    .line 627
    .line 628
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 629
    .line 630
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ln(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Landroid/view/View;

    .line 631
    .line 632
    .line 633
    move-result-object v4

    .line 634
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 635
    .line 636
    .line 637
    move-result v4

    .line 638
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 639
    .line 640
    .line 641
    :cond_10
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 642
    .line 643
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->LpP(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Landroid/view/View;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    if-eqz v3, :cond_11

    .line 648
    .line 649
    new-array v3, v8, [I

    .line 650
    .line 651
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 652
    .line 653
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->LpP(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Landroid/view/View;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 658
    .line 659
    .line 660
    const-string v4, "ad_x"

    .line 661
    .line 662
    const/4 v5, 0x0

    .line 663
    aget v6, v3, v5

    .line 664
    .line 665
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 666
    .line 667
    .line 668
    const-string v4, "ad_y"

    .line 669
    .line 670
    aget v3, v3, v9

    .line 671
    .line 672
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 673
    .line 674
    .line 675
    const-string v3, "width"

    .line 676
    .line 677
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 678
    .line 679
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->LpP(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Landroid/view/View;

    .line 680
    .line 681
    .line 682
    move-result-object v4

    .line 683
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 684
    .line 685
    .line 686
    move-result v4

    .line 687
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 688
    .line 689
    .line 690
    const-string v3, "height"

    .line 691
    .line 692
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 693
    .line 694
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->LpP(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Landroid/view/View;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 699
    .line 700
    .line 701
    move-result v4

    .line 702
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 703
    .line 704
    .line 705
    :cond_11
    const-string v3, "toolType"

    .line 706
    .line 707
    const/4 v4, 0x0

    .line 708
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 709
    .line 710
    .line 711
    move-result v5

    .line 712
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 713
    .line 714
    .line 715
    const-string v3, "deviceId"

    .line 716
    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 718
    .line 719
    .line 720
    move-result v4

    .line 721
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 722
    .line 723
    .line 724
    const-string v3, "source"

    .line 725
    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    .line 727
    .line 728
    .line 729
    move-result v0

    .line 730
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 731
    .line 732
    .line 733
    const-string v0, "ft"

    .line 734
    .line 735
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 736
    .line 737
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tb(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Landroid/util/SparseArray;

    .line 738
    .line 739
    .line 740
    move-result-object v3

    .line 741
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    .line 742
    .line 743
    .line 744
    move-result-object v4

    .line 745
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/jFA;->oJ()Z

    .line 746
    .line 747
    .line 748
    move-result v4

    .line 749
    if-eqz v4, :cond_12

    .line 750
    .line 751
    move v4, v9

    .line 752
    goto :goto_5

    .line 753
    :cond_12
    move v4, v8

    .line 754
    :goto_5
    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ;->oJ(Landroid/util/SparseArray;I)Lorg/json/JSONObject;

    .line 755
    .line 756
    .line 757
    move-result-object v3

    .line 758
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 759
    .line 760
    .line 761
    const-string v0, "user_behavior_type"

    .line 762
    .line 763
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 764
    .line 765
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->IUZ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z

    .line 766
    .line 767
    .line 768
    move-result v3

    .line 769
    if-eqz v3, :cond_13

    .line 770
    .line 771
    move v3, v9

    .line 772
    goto :goto_6

    .line 773
    :cond_13
    move v3, v8

    .line 774
    :goto_6
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 775
    .line 776
    .line 777
    const-string v0, "click_scence"

    .line 778
    .line 779
    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 780
    .line 781
    .line 782
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 783
    .line 784
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ba(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    if-eqz v0, :cond_14

    .line 789
    .line 790
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 791
    .line 792
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ba(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->oJ(Lorg/json/JSONObject;)V

    .line 797
    .line 798
    .line 799
    :cond_14
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 800
    .line 801
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->HL(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z

    .line 802
    .line 803
    .line 804
    move-result v0

    .line 805
    if-nez v0, :cond_15

    .line 806
    .line 807
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 808
    .line 809
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    if-eqz v0, :cond_16

    .line 814
    .line 815
    :cond_15
    const/4 v2, 0x0

    .line 816
    goto :goto_8

    .line 817
    :cond_16
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 818
    .line 819
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->nke(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z

    .line 820
    .line 821
    .line 822
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 823
    const-string v3, "click"

    .line 824
    .line 825
    if-eqz v0, :cond_17

    .line 826
    .line 827
    :try_start_6
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 828
    .line 829
    const-string v4, "rewarded_video"

    .line 830
    .line 831
    invoke-static {v0, v4, v3, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 832
    .line 833
    .line 834
    goto :goto_7

    .line 835
    :cond_17
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 836
    .line 837
    const-string v4, "fullscreen_interstitial_ad"

    .line 838
    .line 839
    invoke-static {v0, v4, v3, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 840
    .line 841
    .line 842
    :goto_7
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$10;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 843
    .line 844
    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 845
    .line 846
    .line 847
    goto :goto_9

    .line 848
    :goto_8
    return v2

    .line 849
    :cond_18
    :goto_9
    const/4 v2, 0x0

    .line 850
    goto :goto_b

    .line 851
    :goto_a
    const-string v2, "TTAD.RFWVM"

    .line 852
    .line 853
    const-string v3, "TouchRecordTool onTouch error"

    .line 854
    .line 855
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 856
    .line 857
    .line 858
    goto :goto_9

    .line 859
    :goto_b
    return v2
.end method
