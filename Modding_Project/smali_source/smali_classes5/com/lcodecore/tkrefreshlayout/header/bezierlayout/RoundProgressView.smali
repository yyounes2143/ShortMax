.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;
.super Landroid/view/View;
.source "RoundProgressView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field i:Landroid/animation/ValueAnimator;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 4
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    const/4 p1, 0x7

    .line 5
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->d:I

    const/16 p1, 0x10e

    .line 6
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->e:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->f:I

    const/16 p1, 0xf

    .line 8
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->g:I

    .line 9
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->f:I

    .line 2
    .line 3
    return p1
.end method

.method private b()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    .line 31
    .line 32
    const/16 v2, 0x72

    .line 33
    .line 34
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    const/16 v2, 0x168

    .line 43
    .line 44
    filled-new-array {v0, v2}, [I

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    const-wide/16 v2, 0x2d0

    .line 55
    .line 56
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    new-instance v2, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView$a;

    .line 62
    .line 63
    invoke-direct {v2, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView$a;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 77
    .line 78
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->d:I

    .line 9
    .line 10
    div-int/2addr v0, v1

    .line 11
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    .line 12
    .line 13
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    div-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    int-to-float v0, v0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    div-int/lit8 v2, v2, 0x2

    .line 30
    .line 31
    int-to-float v2, v2

    .line 32
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    .line 33
    .line 34
    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    .line 43
    .line 44
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    .line 50
    .line 51
    const/high16 v3, 0x40c00000    # 6.0f

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    div-int/lit8 v0, v0, 0x2

    .line 61
    .line 62
    int-to-float v0, v0

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    div-int/lit8 v4, v4, 0x2

    .line 68
    .line 69
    int-to-float v4, v4

    .line 70
    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    .line 71
    .line 72
    const/high16 v6, 0x41700000    # 15.0f

    .line 73
    .line 74
    add-float/2addr v5, v6

    .line 75
    iget-object v6, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->j:Landroid/graphics/RectF;

    .line 89
    .line 90
    if-nez v0, :cond_0

    .line 91
    .line 92
    new-instance v0, Landroid/graphics/RectF;

    .line 93
    .line 94
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->j:Landroid/graphics/RectF;

    .line 98
    .line 99
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->j:Landroid/graphics/RectF;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    div-int/lit8 v1, v1, 0x2

    .line 106
    .line 107
    int-to-float v1, v1

    .line 108
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    .line 109
    .line 110
    sub-float/2addr v1, v4

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    div-int/lit8 v4, v4, 0x2

    .line 116
    .line 117
    int-to-float v4, v4

    .line 118
    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    .line 119
    .line 120
    sub-float/2addr v4, v5

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    div-int/lit8 v5, v5, 0x2

    .line 126
    .line 127
    int-to-float v5, v5

    .line 128
    iget v6, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    .line 129
    .line 130
    add-float/2addr v5, v6

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    div-int/lit8 v6, v6, 0x2

    .line 136
    .line 137
    int-to-float v6, v6

    .line 138
    iget v7, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    .line 139
    .line 140
    add-float/2addr v6, v7

    .line 141
    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 142
    .line 143
    .line 144
    iget-object v8, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->j:Landroid/graphics/RectF;

    .line 145
    .line 146
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->e:I

    .line 147
    .line 148
    int-to-float v9, v0

    .line 149
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->f:I

    .line 150
    .line 151
    int-to-float v10, v0

    .line 152
    const/4 v11, 0x1

    .line 153
    iget-object v12, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    .line 154
    .line 155
    move-object v7, p1

    .line 156
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    .line 163
    .line 164
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    .line 168
    .line 169
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->k:Landroid/graphics/RectF;

    .line 173
    .line 174
    if-nez v0, :cond_1

    .line 175
    .line 176
    new-instance v0, Landroid/graphics/RectF;

    .line 177
    .line 178
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->k:Landroid/graphics/RectF;

    .line 182
    .line 183
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->k:Landroid/graphics/RectF;

    .line 184
    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    div-int/lit8 v1, v1, 0x2

    .line 190
    .line 191
    int-to-float v1, v1

    .line 192
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    .line 193
    .line 194
    sub-float/2addr v1, v2

    .line 195
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->g:I

    .line 196
    .line 197
    int-to-float v2, v2

    .line 198
    sub-float/2addr v1, v2

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    div-int/lit8 v2, v2, 0x2

    .line 204
    .line 205
    int-to-float v2, v2

    .line 206
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    .line 207
    .line 208
    sub-float/2addr v2, v3

    .line 209
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->g:I

    .line 210
    .line 211
    int-to-float v3, v3

    .line 212
    sub-float/2addr v2, v3

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    div-int/lit8 v3, v3, 0x2

    .line 218
    .line 219
    int-to-float v3, v3

    .line 220
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    .line 221
    .line 222
    add-float/2addr v3, v4

    .line 223
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->g:I

    .line 224
    .line 225
    int-to-float v4, v4

    .line 226
    add-float/2addr v3, v4

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    div-int/lit8 v4, v4, 0x2

    .line 232
    .line 233
    int-to-float v4, v4

    .line 234
    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    .line 235
    .line 236
    add-float/2addr v4, v5

    .line 237
    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->g:I

    .line 238
    .line 239
    int-to-float v5, v5

    .line 240
    add-float/2addr v4, v5

    .line 241
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 242
    .line 243
    .line 244
    iget-object v6, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->k:Landroid/graphics/RectF;

    .line 245
    .line 246
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->e:I

    .line 247
    .line 248
    int-to-float v7, v0

    .line 249
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->f:I

    .line 250
    .line 251
    int-to-float v8, v0

    .line 252
    const/4 v9, 0x0

    .line 253
    iget-object v10, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    .line 254
    .line 255
    move-object v5, p1

    .line 256
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 260
    .line 261
    .line 262
    return-void
.end method

.method public setCir_x(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->h:I

    .line 2
    .line 3
    return-void
.end method
