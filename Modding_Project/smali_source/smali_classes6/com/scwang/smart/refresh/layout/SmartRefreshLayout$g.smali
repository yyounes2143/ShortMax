.class Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->p(IZLjava/lang/Boolean;)Lsc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Boolean;

.field final synthetic d:Z

.field final synthetic e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;ILjava/lang/Boolean;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 2
    .line 3
    iput p2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->c:Ljava/lang/Boolean;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->d:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->a:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 8
    .line 9
    iget-object v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->A0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 10
    .line 11
    sget-object v5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    if-ne v4, v5, :cond_0

    .line 15
    .line 16
    iget-object v7, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 17
    .line 18
    sget-object v8, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 19
    .line 20
    if-ne v7, v8, :cond_0

    .line 21
    .line 22
    iput-object v5, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->B0:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v7, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    if-eqz v7, :cond_3

    .line 28
    .line 29
    iget-boolean v8, v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isHeader:Z

    .line 30
    .line 31
    if-eqz v8, :cond_3

    .line 32
    .line 33
    iget-boolean v8, v4, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    .line 34
    .line 35
    if-nez v8, :cond_1

    .line 36
    .line 37
    sget-object v8, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 38
    .line 39
    if-ne v4, v8, :cond_3

    .line 40
    .line 41
    :cond_1
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    invoke-virtual {v7, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 54
    .line 55
    iput-object v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->P0:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 58
    .line 59
    invoke-interface {v0, v2}, Lsc/e;->a(I)Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 66
    .line 67
    invoke-virtual {v0, v5}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 72
    .line 73
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 80
    .line 81
    if-ne v4, v1, :cond_4

    .line 82
    .line 83
    add-int/2addr v0, v6

    .line 84
    iput v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->a:I

    .line 85
    .line 86
    iget-object v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->y0:Landroid/os/Handler;

    .line 87
    .line 88
    iget v1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->b:I

    .line 89
    .line 90
    int-to-long v3, v1

    .line 91
    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 95
    .line 96
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->x(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->c:Ljava/lang/Boolean;

    .line 102
    .line 103
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 104
    .line 105
    if-ne v0, v1, :cond_4

    .line 106
    .line 107
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E(Z)Lsc/f;

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->c:Ljava/lang/Boolean;

    .line 113
    .line 114
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 115
    .line 116
    if-ne v0, v1, :cond_d

    .line 117
    .line 118
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 119
    .line 120
    invoke-virtual {v0, v6}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->E(Z)Lsc/f;

    .line 121
    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_5
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 126
    .line 127
    iget-object v3, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->u0:Lsc/a;

    .line 128
    .line 129
    if-eqz v3, :cond_6

    .line 130
    .line 131
    iget-boolean v4, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->d:Z

    .line 132
    .line 133
    invoke-interface {v3, v0, v4}, Lsc/a;->c(Lsc/f;Z)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_6
    move v0, v2

    .line 144
    :goto_1
    const v3, 0x7fffffff

    .line 145
    .line 146
    .line 147
    if-ge v0, v3, :cond_d

    .line 148
    .line 149
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 150
    .line 151
    iget-boolean v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 152
    .line 153
    if-nez v4, :cond_7

    .line 154
    .line 155
    iget-boolean v3, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f0:Z

    .line 156
    .line 157
    if-eqz v3, :cond_9

    .line 158
    .line 159
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 160
    .line 161
    .line 162
    move-result-wide v12

    .line 163
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 164
    .line 165
    iget-boolean v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 166
    .line 167
    if-eqz v4, :cond_8

    .line 168
    .line 169
    iget v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k:F

    .line 170
    .line 171
    iput v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->i:F

    .line 172
    .line 173
    iput v2, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d:I

    .line 174
    .line 175
    iput-boolean v2, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->n:Z

    .line 176
    .line 177
    iget v9, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 178
    .line 179
    iget v5, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 180
    .line 181
    int-to-float v5, v5

    .line 182
    add-float/2addr v4, v5

    .line 183
    iget v5, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->a:I

    .line 184
    .line 185
    mul-int/lit8 v5, v5, 0x2

    .line 186
    .line 187
    int-to-float v5, v5

    .line 188
    sub-float v10, v4, v5

    .line 189
    .line 190
    const/4 v11, 0x0

    .line 191
    const/4 v8, 0x0

    .line 192
    move-wide v4, v12

    .line 193
    move-wide v6, v12

    .line 194
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-static {v3, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 199
    .line 200
    .line 201
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 202
    .line 203
    iget v9, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 204
    .line 205
    iget v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k:F

    .line 206
    .line 207
    iget v5, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 208
    .line 209
    int-to-float v5, v5

    .line 210
    add-float v10, v4, v5

    .line 211
    .line 212
    const/4 v8, 0x2

    .line 213
    move-wide v4, v12

    .line 214
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-static {v3, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 219
    .line 220
    .line 221
    :cond_8
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 222
    .line 223
    iget-boolean v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f0:Z

    .line 224
    .line 225
    if-eqz v4, :cond_9

    .line 226
    .line 227
    iput v2, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->e0:I

    .line 228
    .line 229
    iget v9, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j:F

    .line 230
    .line 231
    iget v10, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->k:F

    .line 232
    .line 233
    const/4 v11, 0x0

    .line 234
    const/4 v8, 0x1

    .line 235
    move-wide v4, v12

    .line 236
    move-wide v6, v12

    .line 237
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-static {v3, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f(Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 242
    .line 243
    .line 244
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 245
    .line 246
    iput-boolean v2, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f0:Z

    .line 247
    .line 248
    iput v2, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->d:I

    .line 249
    .line 250
    :cond_9
    iget-object v3, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 251
    .line 252
    iget v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 253
    .line 254
    if-lez v4, :cond_b

    .line 255
    .line 256
    iget-object v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z:Landroid/view/animation/Interpolator;

    .line 257
    .line 258
    iget v5, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f:I

    .line 259
    .line 260
    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iget-object v2, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 265
    .line 266
    iget-boolean v3, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->O:Z

    .line 267
    .line 268
    if-eqz v3, :cond_a

    .line 269
    .line 270
    iget-object v1, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->w0:Lsc/b;

    .line 271
    .line 272
    iget v2, v2, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->b:I

    .line 273
    .line 274
    invoke-interface {v1, v2}, Lsc/b;->c(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    :cond_a
    if-eqz v0, :cond_d

    .line 279
    .line 280
    if-eqz v1, :cond_d

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_b
    if-gez v4, :cond_c

    .line 287
    .line 288
    iget-object v1, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z:Landroid/view/animation/Interpolator;

    .line 289
    .line 290
    iget v4, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->f:I

    .line 291
    .line 292
    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->j(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_c
    iget-object v0, v3, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 297
    .line 298
    invoke-interface {v0, v2, v2}, Lsc/e;->f(IZ)Lsc/e;

    .line 299
    .line 300
    .line 301
    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    .line 302
    .line 303
    iget-object v0, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->z0:Lsc/e;

    .line 304
    .line 305
    sget-object v1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 306
    .line 307
    invoke-interface {v0, v1}, Lsc/e;->g(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)Lsc/e;

    .line 308
    .line 309
    .line 310
    :cond_d
    :goto_2
    return-void
.end method
