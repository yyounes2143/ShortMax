.class public Lec/e;
.super Ljava/lang/Object;
.source "RefreshProcessor.java"

# interfaces
.implements Lec/c;


# instance fields
.field protected a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

.field private b:F

.field private c:F

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lec/e;->d:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lec/e;->e:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lec/e;->f:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lec/e;->g:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 19
    .line 20
    const-string v0, "The coprocessor can not be null."

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method private g()V
    .locals 9

    .line 1
    iget-object v0, p0, Lec/e;->h:Landroid/view/MotionEvent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    int-to-long v5, v5

    .line 19
    add-long/2addr v3, v5

    .line 20
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    const/4 v5, 0x3

    .line 33
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private h()V
    .locals 9

    .line 1
    iget-object v0, p0, Lec/e;->h:Landroid/view/MotionEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p2, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->I()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    int-to-float p2, p1

    .line 16
    cmpl-float p2, p4, p2

    .line 17
    .line 18
    if-ltz p2, :cond_0

    .line 19
    .line 20
    iget-object p2, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->C()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->m()Lec/a;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    float-to-int p3, p6

    .line 35
    invoke-virtual {p2, p3}, Lec/a;->A(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p2, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->B()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    neg-int p1, p1

    .line 47
    int-to-float p1, p1

    .line 48
    cmpg-float p1, p4, p1

    .line 49
    .line 50
    if-gtz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->m()Lec/a;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    float-to-int p2, p6

    .line 59
    invoke-virtual {p1, p2}, Lec/a;->x(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public d(Landroid/view/MotionEvent;Z)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Lec/e;->e:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->m()Lec/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lec/a;->G()V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-nez p2, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p0, Lec/e;->f:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->m()Lec/a;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lec/a;->H()V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lec/e;->e:Z

    .line 33
    .line 34
    iput-boolean p1, p0, Lec/e;->f:Z

    .line 35
    .line 36
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    if-eq v0, v2, :cond_c

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    if-eq v0, v3, :cond_c

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    iput-object p1, p0, Lec/e;->h:Landroid/view/MotionEvent;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget v1, p0, Lec/e;->b:F

    .line 26
    .line 27
    sub-float/2addr v0, v1

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget v4, p0, Lec/e;->c:F

    .line 33
    .line 34
    sub-float/2addr v1, v4

    .line 35
    iget-boolean v4, p0, Lec/e;->d:Z

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    cmpg-float v0, v0, v4

    .line 49
    .line 50
    if-gtz v0, :cond_2

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-object v4, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    int-to-float v4, v4

    .line 63
    cmpl-float v0, v0, v4

    .line 64
    .line 65
    if-lez v0, :cond_2

    .line 66
    .line 67
    cmpl-float v0, v1, v5

    .line 68
    .line 69
    if-lez v0, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v4, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-static {v0, v4}, Lfc/c;->h(Landroid/view/View;I)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->c()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f0()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lec/e;->b:F

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iput p1, p0, Lec/e;->c:F

    .line 113
    .line 114
    invoke-direct {p0}, Lec/e;->g()V

    .line 115
    .line 116
    .line 117
    iput-boolean v2, p0, Lec/e;->d:Z

    .line 118
    .line 119
    return v2

    .line 120
    :cond_1
    cmpg-float v0, v1, v5

    .line 121
    .line 122
    if-gez v0, :cond_2

    .line 123
    .line 124
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v4, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-static {v0, v4}, Lfc/c;->g(Landroid/view/View;I)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_2

    .line 141
    .line 142
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->d()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_2

    .line 149
    .line 150
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->e0()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iput v0, p0, Lec/e;->b:F

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    iput p1, p0, Lec/e;->c:F

    .line 166
    .line 167
    iput-boolean v2, p0, Lec/e;->d:Z

    .line 168
    .line 169
    invoke-direct {p0}, Lec/e;->g()V

    .line 170
    .line 171
    .line 172
    return v2

    .line 173
    :cond_2
    iget-boolean v0, p0, Lec/e;->d:Z

    .line 174
    .line 175
    if-eqz v0, :cond_f

    .line 176
    .line 177
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->I()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_b

    .line 184
    .line 185
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->B()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_3

    .line 192
    .line 193
    goto/16 :goto_1

    .line 194
    .line 195
    :cond_3
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->G()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_6

    .line 202
    .line 203
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->L()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_6

    .line 210
    .line 211
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    neg-int v0, v0

    .line 218
    int-to-float v0, v0

    .line 219
    cmpg-float v0, v1, v0

    .line 220
    .line 221
    if-ltz v0, :cond_4

    .line 222
    .line 223
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    iget-object v3, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 230
    .line 231
    invoke-virtual {v3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    invoke-static {v0, v3}, Lfc/c;->h(Landroid/view/View;I)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-nez v0, :cond_5

    .line 240
    .line 241
    :cond_4
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 242
    .line 243
    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    .line 244
    .line 245
    .line 246
    :cond_5
    iget-object p1, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 247
    .line 248
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->t()F

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    const/high16 v0, 0x40000000    # 2.0f

    .line 253
    .line 254
    mul-float/2addr p1, v0

    .line 255
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    iget-object p1, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->m()Lec/a;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p1, v1}, Lec/a;->L(F)V

    .line 270
    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_6
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->F()Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-nez v0, :cond_9

    .line 280
    .line 281
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->K()Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_9

    .line 288
    .line 289
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 290
    .line 291
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    int-to-float v0, v0

    .line 296
    cmpl-float v0, v1, v0

    .line 297
    .line 298
    if-gtz v0, :cond_7

    .line 299
    .line 300
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 301
    .line 302
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    iget-object v4, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 307
    .line 308
    invoke-virtual {v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    invoke-static {v0, v4}, Lfc/c;->g(Landroid/view/View;I)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-nez v0, :cond_8

    .line 317
    .line 318
    :cond_7
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 319
    .line 320
    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    .line 321
    .line 322
    .line 323
    :cond_8
    iget-object p1, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 324
    .line 325
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->s()I

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    neg-int p1, p1

    .line 330
    mul-int/2addr p1, v3

    .line 331
    int-to-float p1, p1

    .line 332
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    iget-object p1, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 341
    .line 342
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->m()Lec/a;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    invoke-virtual {p1, v0}, Lec/a;->K(F)V

    .line 351
    .line 352
    .line 353
    :cond_9
    :goto_0
    cmpl-float p1, v1, v5

    .line 354
    .line 355
    if-nez p1, :cond_a

    .line 356
    .line 357
    iget-boolean p1, p0, Lec/e;->g:Z

    .line 358
    .line 359
    if-nez p1, :cond_a

    .line 360
    .line 361
    iput-boolean v2, p0, Lec/e;->g:Z

    .line 362
    .line 363
    invoke-direct {p0}, Lec/e;->h()V

    .line 364
    .line 365
    .line 366
    :cond_a
    return v2

    .line 367
    :cond_b
    :goto_1
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 368
    .line 369
    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    return p1

    .line 374
    :cond_c
    iget-boolean v0, p0, Lec/e;->d:Z

    .line 375
    .line 376
    if-eqz v0, :cond_f

    .line 377
    .line 378
    iget-object p1, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 379
    .line 380
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->L()Z

    .line 381
    .line 382
    .line 383
    move-result p1

    .line 384
    if-eqz p1, :cond_d

    .line 385
    .line 386
    iput-boolean v2, p0, Lec/e;->e:Z

    .line 387
    .line 388
    goto :goto_2

    .line 389
    :cond_d
    iget-object p1, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->K()Z

    .line 392
    .line 393
    .line 394
    move-result p1

    .line 395
    if-eqz p1, :cond_e

    .line 396
    .line 397
    iput-boolean v2, p0, Lec/e;->f:Z

    .line 398
    .line 399
    :cond_e
    :goto_2
    iput-boolean v1, p0, Lec/e;->d:Z

    .line 400
    .line 401
    return v2

    .line 402
    :cond_f
    :goto_3
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 403
    .line 404
    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    return p1

    .line 409
    :cond_10
    iput-boolean v1, p0, Lec/e;->g:Z

    .line 410
    .line 411
    iput-boolean v1, p0, Lec/e;->d:Z

    .line 412
    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    iput v0, p0, Lec/e;->b:F

    .line 418
    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    iput v0, p0, Lec/e;->c:F

    .line 424
    .line 425
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 426
    .line 427
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->y()Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_12

    .line 432
    .line 433
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 434
    .line 435
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->J()Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-nez v0, :cond_11

    .line 440
    .line 441
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->b0(Z)V

    .line 444
    .line 445
    .line 446
    :cond_11
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->A()Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-nez v0, :cond_12

    .line 453
    .line 454
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 455
    .line 456
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->a0(Z)V

    .line 457
    .line 458
    .line 459
    :cond_12
    iget-object v0, p0, Lec/e;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 460
    .line 461
    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->f(Landroid/view/MotionEvent;)Z

    .line 462
    .line 463
    .line 464
    return v2
.end method

.method public e(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public f(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 1
    return-void
.end method
