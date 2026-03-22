.class Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->m(IZZ)Lsc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 2
    .line 3
    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->b:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->c:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->d:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->a:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->a:I

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    if-nez v1, :cond_5

    .line 10
    .line 11
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 12
    .line 13
    iget-object v7, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 14
    .line 15
    sget-object v8, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 16
    .line 17
    if-ne v7, v8, :cond_0

    .line 18
    .line 19
    iget-object v9, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 20
    .line 21
    sget-object v10, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 22
    .line 23
    if-ne v9, v10, :cond_0

    .line 24
    .line 25
    iput-object v8, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v9, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    if-eqz v9, :cond_3

    .line 31
    .line 32
    iget-boolean v10, v7, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    .line 33
    .line 34
    if-nez v10, :cond_1

    .line 35
    .line 36
    sget-object v10, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 37
    .line 38
    if-ne v7, v10, :cond_3

    .line 39
    .line 40
    :cond_1
    iget-boolean v10, v7, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isFooter:Z

    .line 41
    .line 42
    if-eqz v10, :cond_3

    .line 43
    .line 44
    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    iput-object v2, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 60
    .line 61
    invoke-interface {v1, v5}, Lsc/e;->a(I)Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 68
    .line 69
    invoke-virtual {v1, v8}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 74
    .line 75
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 82
    .line 83
    if-ne v7, v2, :cond_4

    .line 84
    .line 85
    iget-object v2, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    iget-object v2, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 90
    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    add-int/2addr v1, v4

    .line 94
    iput v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->a:I

    .line 95
    .line 96
    iget-object v1, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y0:Landroid/os/Handler;

    .line 97
    .line 98
    iget v2, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->b:I

    .line 99
    .line 100
    int-to-long v2, v2

    .line 101
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 105
    .line 106
    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->c:Z

    .line 113
    .line 114
    if-eqz v1, :cond_d

    .line 115
    .line 116
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 117
    .line 118
    invoke-virtual {v1, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E(Z)Lsc/f;

    .line 119
    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_5
    iget-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 124
    .line 125
    iget-object v6, v1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->v0:Lsc/a;

    .line 126
    .line 127
    iget-boolean v7, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->d:Z

    .line 128
    .line 129
    invoke-interface {v6, v1, v7}, Lsc/a;->c(Lsc/f;Z)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    const v6, 0x7fffffff

    .line 139
    .line 140
    .line 141
    if-ge v1, v6, :cond_d

    .line 142
    .line 143
    iget-boolean v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->c:Z

    .line 144
    .line 145
    if-eqz v6, :cond_6

    .line 146
    .line 147
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 148
    .line 149
    iget-boolean v7, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->H:Z

    .line 150
    .line 151
    if-eqz v7, :cond_6

    .line 152
    .line 153
    iget v7, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 154
    .line 155
    if-gez v7, :cond_6

    .line 156
    .line 157
    iget-object v6, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 158
    .line 159
    invoke-interface {v6}, Lsc/b;->e()Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_6

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_6
    move v4, v5

    .line 167
    :goto_1
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 168
    .line 169
    iget v7, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 170
    .line 171
    if-eqz v4, :cond_7

    .line 172
    .line 173
    iget v4, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->l0:I

    .line 174
    .line 175
    neg-int v4, v4

    .line 176
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    goto :goto_2

    .line 181
    :cond_7
    move v4, v5

    .line 182
    :goto_2
    sub-int/2addr v7, v4

    .line 183
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 184
    .line 185
    iget-boolean v6, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 186
    .line 187
    if-nez v6, :cond_8

    .line 188
    .line 189
    iget-boolean v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f0:Z

    .line 190
    .line 191
    if-eqz v4, :cond_b

    .line 192
    .line 193
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 194
    .line 195
    .line 196
    move-result-wide v16

    .line 197
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 198
    .line 199
    iget-boolean v6, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 200
    .line 201
    if-eqz v6, :cond_a

    .line 202
    .line 203
    iget v6, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k:F

    .line 204
    .line 205
    iput v6, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 206
    .line 207
    iget v8, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 208
    .line 209
    sub-int/2addr v8, v7

    .line 210
    iput v8, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d:I

    .line 211
    .line 212
    iput-boolean v5, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 213
    .line 214
    iget-boolean v8, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->G:Z

    .line 215
    .line 216
    if-eqz v8, :cond_9

    .line 217
    .line 218
    move v8, v7

    .line 219
    goto :goto_3

    .line 220
    :cond_9
    move v8, v5

    .line 221
    :goto_3
    iget v13, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 222
    .line 223
    int-to-float v15, v8

    .line 224
    add-float/2addr v6, v15

    .line 225
    iget v8, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a:I

    .line 226
    .line 227
    mul-int/lit8 v8, v8, 0x2

    .line 228
    .line 229
    int-to-float v8, v8

    .line 230
    add-float v14, v6, v8

    .line 231
    .line 232
    const/4 v6, 0x0

    .line 233
    const/4 v12, 0x0

    .line 234
    move-wide/from16 v8, v16

    .line 235
    .line 236
    move-wide/from16 v10, v16

    .line 237
    .line 238
    move/from16 v18, v15

    .line 239
    .line 240
    move v15, v6

    .line 241
    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-static {v4, v6}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->g(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 246
    .line 247
    .line 248
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 249
    .line 250
    iget v13, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 251
    .line 252
    iget v6, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k:F

    .line 253
    .line 254
    add-float v14, v6, v18

    .line 255
    .line 256
    const/4 v15, 0x0

    .line 257
    const/4 v12, 0x2

    .line 258
    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-static {v4, v6}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->h(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 263
    .line 264
    .line 265
    :cond_a
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 266
    .line 267
    iget-boolean v6, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f0:Z

    .line 268
    .line 269
    if-eqz v6, :cond_b

    .line 270
    .line 271
    iput v5, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 272
    .line 273
    iget v13, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 274
    .line 275
    iget v14, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k:F

    .line 276
    .line 277
    const/4 v15, 0x0

    .line 278
    const/4 v12, 0x1

    .line 279
    move-wide/from16 v8, v16

    .line 280
    .line 281
    move-wide/from16 v10, v16

    .line 282
    .line 283
    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    invoke-static {v4, v6}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 288
    .line 289
    .line 290
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 291
    .line 292
    iput-boolean v5, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f0:Z

    .line 293
    .line 294
    iput v5, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d:I

    .line 295
    .line 296
    :cond_b
    iget-object v4, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 297
    .line 298
    iget-object v4, v4, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y0:Landroid/os/Handler;

    .line 299
    .line 300
    new-instance v5, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h$a;

    .line 301
    .line 302
    invoke-direct {v5, v0, v7}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h$a;-><init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;I)V

    .line 303
    .line 304
    .line 305
    iget-object v6, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$h;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 306
    .line 307
    iget v6, v6, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 308
    .line 309
    if-gez v6, :cond_c

    .line 310
    .line 311
    int-to-long v2, v1

    .line 312
    :cond_c
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    .line 314
    .line 315
    :cond_d
    :goto_4
    return-void
.end method
