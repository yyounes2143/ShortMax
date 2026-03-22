.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;
.super Landroid/view/View;
.source "RoundDotView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 4
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->b:F

    const/4 p1, 0x7

    .line 5
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->c:I

    .line 6
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/16 v1, 0x72

    .line 15
    .line 16
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

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
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->c:I

    .line 9
    .line 10
    div-int/2addr v0, v1

    .line 11
    add-int/lit8 v0, v0, -0xa

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->c:I

    .line 15
    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    const/16 v2, 0x91

    .line 19
    .line 20
    const/16 v3, 0x69

    .line 21
    .line 22
    const/16 v4, 0x23

    .line 23
    .line 24
    packed-switch v1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :pswitch_0
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    div-int/lit8 v2, v2, 0x2

    .line 39
    .line 40
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->d:I

    .line 41
    .line 42
    mul-int/lit8 v3, v3, 0x3

    .line 43
    .line 44
    add-int/2addr v2, v3

    .line 45
    mul-int/lit8 v3, v0, 0x3

    .line 46
    .line 47
    div-int/lit8 v3, v3, 0x3

    .line 48
    .line 49
    mul-int/lit8 v3, v3, 0x2

    .line 50
    .line 51
    add-int/2addr v2, v3

    .line 52
    int-to-float v2, v2

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    div-int/lit8 v3, v3, 0x2

    .line 58
    .line 59
    int-to-float v3, v3

    .line 60
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->b:F

    .line 61
    .line 62
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :pswitch_1
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    div-int/lit8 v2, v2, 0x2

    .line 79
    .line 80
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->d:I

    .line 81
    .line 82
    mul-int/lit8 v3, v3, 0x2

    .line 83
    .line 84
    add-int/2addr v2, v3

    .line 85
    mul-int/lit8 v3, v0, 0x2

    .line 86
    .line 87
    div-int/lit8 v3, v3, 0x3

    .line 88
    .line 89
    mul-int/lit8 v3, v3, 0x2

    .line 90
    .line 91
    add-int/2addr v2, v3

    .line 92
    int-to-float v2, v2

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    div-int/lit8 v3, v3, 0x2

    .line 98
    .line 99
    int-to-float v3, v3

    .line 100
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->b:F

    .line 101
    .line 102
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 103
    .line 104
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :pswitch_2
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    div-int/lit8 v2, v2, 0x2

    .line 119
    .line 120
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->d:I

    .line 121
    .line 122
    add-int/2addr v2, v3

    .line 123
    div-int/lit8 v3, v0, 0x3

    .line 124
    .line 125
    mul-int/lit8 v3, v3, 0x2

    .line 126
    .line 127
    add-int/2addr v2, v3

    .line 128
    int-to-float v2, v2

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    div-int/lit8 v3, v3, 0x2

    .line 134
    .line 135
    int-to-float v3, v3

    .line 136
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->b:F

    .line 137
    .line 138
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 139
    .line 140
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_1

    .line 144
    .line 145
    :pswitch_3
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 146
    .line 147
    const/16 v3, 0xff

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    div-int/lit8 v2, v2, 0x2

    .line 157
    .line 158
    int-to-float v2, v2

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    div-int/lit8 v3, v3, 0x2

    .line 164
    .line 165
    int-to-float v3, v3

    .line 166
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->b:F

    .line 167
    .line 168
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 169
    .line 170
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :pswitch_4
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 175
    .line 176
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    div-int/lit8 v2, v2, 0x2

    .line 184
    .line 185
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->d:I

    .line 186
    .line 187
    sub-int/2addr v2, v3

    .line 188
    div-int/lit8 v3, v0, 0x3

    .line 189
    .line 190
    mul-int/lit8 v3, v3, 0x2

    .line 191
    .line 192
    sub-int/2addr v2, v3

    .line 193
    int-to-float v2, v2

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    div-int/lit8 v3, v3, 0x2

    .line 199
    .line 200
    int-to-float v3, v3

    .line 201
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->b:F

    .line 202
    .line 203
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 204
    .line 205
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :pswitch_5
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 210
    .line 211
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    div-int/lit8 v2, v2, 0x2

    .line 219
    .line 220
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->d:I

    .line 221
    .line 222
    mul-int/lit8 v3, v3, 0x2

    .line 223
    .line 224
    sub-int/2addr v2, v3

    .line 225
    mul-int/lit8 v3, v0, 0x2

    .line 226
    .line 227
    div-int/lit8 v3, v3, 0x3

    .line 228
    .line 229
    mul-int/lit8 v3, v3, 0x2

    .line 230
    .line 231
    sub-int/2addr v2, v3

    .line 232
    int-to-float v2, v2

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    div-int/lit8 v3, v3, 0x2

    .line 238
    .line 239
    int-to-float v3, v3

    .line 240
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->b:F

    .line 241
    .line 242
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 243
    .line 244
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :pswitch_6
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 249
    .line 250
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    div-int/lit8 v2, v2, 0x2

    .line 258
    .line 259
    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->d:I

    .line 260
    .line 261
    mul-int/lit8 v3, v3, 0x3

    .line 262
    .line 263
    sub-int/2addr v2, v3

    .line 264
    mul-int/lit8 v3, v0, 0x3

    .line 265
    .line 266
    div-int/lit8 v3, v3, 0x3

    .line 267
    .line 268
    mul-int/lit8 v3, v3, 0x2

    .line 269
    .line 270
    sub-int/2addr v2, v3

    .line 271
    int-to-float v2, v2

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    div-int/lit8 v3, v3, 0x2

    .line 277
    .line 278
    int-to-float v3, v3

    .line 279
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->b:F

    .line 280
    .line 281
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->a:Landroid/graphics/Paint;

    .line 282
    .line 283
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 284
    .line 285
    .line 286
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_0
    return-void

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCir_x(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->d:I

    .line 2
    .line 3
    return-void
.end method
