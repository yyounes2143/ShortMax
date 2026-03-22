.class public final Lio/bidmachine/media3/exoplayer/video/n;
.super Ljava/lang/Object;
.source "VideoFrameReleaseControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/n$b;,
        Lio/bidmachine/media3/exoplayer/video/n$a;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/media3/exoplayer/video/n$b;

.field private final b:Lyn/g;

.field private final c:J

.field private d:Z

.field private e:I

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:Z

.field private k:F

.field private l:Lcn/h;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/video/n$b;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/n;->a:Lio/bidmachine/media3/exoplayer/video/n$b;

    .line 5
    .line 6
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/video/n;->c:J

    .line 7
    .line 8
    new-instance p2, Lyn/g;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lyn/g;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/n;->b:Lyn/g;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->e:I

    .line 17
    .line 18
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->f:J

    .line 24
    .line 25
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->h:J

    .line 26
    .line 27
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->i:J

    .line 28
    .line 29
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->k:F

    .line 32
    .line 33
    sget-object p1, Lcn/h;->a:Lcn/h;

    .line 34
    .line 35
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->l:Lcn/h;

    .line 36
    .line 37
    return-void
.end method

.method private b(JJJ)J
    .locals 0

    .line 1
    sub-long/2addr p5, p1

    .line 2
    long-to-double p1, p5

    .line 3
    iget p5, p0, Lio/bidmachine/media3/exoplayer/video/n;->k:F

    .line 4
    .line 5
    float-to-double p5, p5

    .line 6
    div-double/2addr p1, p5

    .line 7
    double-to-long p1, p1

    .line 8
    iget-boolean p5, p0, Lio/bidmachine/media3/exoplayer/video/n;->d:Z

    .line 9
    .line 10
    if-eqz p5, :cond_0

    .line 11
    .line 12
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/n;->l:Lcn/h;

    .line 13
    .line 14
    invoke-interface {p5}, Lcn/h;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide p5

    .line 18
    invoke-static {p5, p6}, Lcn/m0;->S0(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide p5

    .line 22
    sub-long/2addr p5, p3

    .line 23
    sub-long/2addr p1, p5

    .line 24
    :cond_0
    return-wide p1
.end method

.method private f(I)V
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->e:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->e:I

    .line 8
    .line 9
    return-void
.end method

.method private s(JJJ)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->i:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->j:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->e:I

    .line 19
    .line 20
    if-eqz v0, :cond_6

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v0, v2, :cond_5

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    if-eq v0, v3, :cond_3

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    if-ne v0, p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->l:Lcn/h;

    .line 32
    .line 33
    invoke-interface {p1}, Lcn/h;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    invoke-static {p1, p2}, Lcn/m0;->S0(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    iget-wide p5, p0, Lio/bidmachine/media3/exoplayer/video/n;->g:J

    .line 42
    .line 43
    sub-long/2addr p1, p5

    .line 44
    iget-boolean p5, p0, Lio/bidmachine/media3/exoplayer/video/n;->d:Z

    .line 45
    .line 46
    if-eqz p5, :cond_1

    .line 47
    .line 48
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/n;->a:Lio/bidmachine/media3/exoplayer/video/n$b;

    .line 49
    .line 50
    invoke-interface {p5, p3, p4, p1, p2}, Lio/bidmachine/media3/exoplayer/video/n$b;->p(JJ)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    move v1, v2

    .line 57
    :cond_1
    return v1

    .line 58
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_3
    cmp-long p1, p1, p5

    .line 65
    .line 66
    if-ltz p1, :cond_4

    .line 67
    .line 68
    move v1, v2

    .line 69
    :cond_4
    return v1

    .line 70
    :cond_5
    return v2

    .line 71
    :cond_6
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->d:Z

    .line 72
    .line 73
    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->e:I

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public c(JJJJZZLio/bidmachine/media3/exoplayer/video/n$a;)I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-wide/from16 v5, p1

    .line 4
    .line 5
    move-wide/from16 v11, p3

    .line 6
    .line 7
    move-object/from16 v15, p11

    .line 8
    .line 9
    invoke-static/range {p11 .. p11}, Lio/bidmachine/media3/exoplayer/video/n$a;->a(Lio/bidmachine/media3/exoplayer/video/n$a;)V

    .line 10
    .line 11
    .line 12
    iget-wide v0, v7, Lio/bidmachine/media3/exoplayer/video/n;->f:J

    .line 13
    .line 14
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v0, v0, v8

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iput-wide v11, v7, Lio/bidmachine/media3/exoplayer/video/n;->f:J

    .line 24
    .line 25
    :cond_0
    iget-wide v0, v7, Lio/bidmachine/media3/exoplayer/video/n;->h:J

    .line 26
    .line 27
    cmp-long v0, v0, v5

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/video/n;->b:Lyn/g;

    .line 32
    .line 33
    invoke-virtual {v0, v5, v6}, Lyn/g;->h(J)V

    .line 34
    .line 35
    .line 36
    iput-wide v5, v7, Lio/bidmachine/media3/exoplayer/video/n;->h:J

    .line 37
    .line 38
    :cond_1
    move-object/from16 v0, p0

    .line 39
    .line 40
    move-wide/from16 v1, p3

    .line 41
    .line 42
    move-wide/from16 v3, p5

    .line 43
    .line 44
    move-wide/from16 v5, p1

    .line 45
    .line 46
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/video/n;->b(JJJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-static {v15, v0, v1}, Lio/bidmachine/media3/exoplayer/video/n$a;->c(Lio/bidmachine/media3/exoplayer/video/n$a;J)J

    .line 51
    .line 52
    .line 53
    const/16 v17, 0x3

    .line 54
    .line 55
    if-eqz p9, :cond_2

    .line 56
    .line 57
    if-nez p10, :cond_2

    .line 58
    .line 59
    return v17

    .line 60
    :cond_2
    iget-boolean v0, v7, Lio/bidmachine/media3/exoplayer/video/n;->m:Z

    .line 61
    .line 62
    const/16 v18, 0x4

    .line 63
    .line 64
    const/16 v19, 0x5

    .line 65
    .line 66
    const/4 v13, 0x1

    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    iput-boolean v13, v7, Lio/bidmachine/media3/exoplayer/video/n;->n:Z

    .line 70
    .line 71
    iget-object v8, v7, Lio/bidmachine/media3/exoplayer/video/n;->a:Lio/bidmachine/media3/exoplayer/video/n$b;

    .line 72
    .line 73
    invoke-static/range {p11 .. p11}, Lio/bidmachine/media3/exoplayer/video/n$a;->b(Lio/bidmachine/media3/exoplayer/video/n$a;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v9

    .line 77
    const/16 v16, 0x1

    .line 78
    .line 79
    move-wide/from16 v11, p3

    .line 80
    .line 81
    move-wide/from16 v13, p5

    .line 82
    .line 83
    move/from16 v15, p10

    .line 84
    .line 85
    invoke-interface/range {v8 .. v16}, Lio/bidmachine/media3/exoplayer/video/n$b;->y(JJJZZ)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    return v18

    .line 92
    :cond_3
    iget-boolean v0, v7, Lio/bidmachine/media3/exoplayer/video/n;->d:Z

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-static/range {p11 .. p11}, Lio/bidmachine/media3/exoplayer/video/n$a;->b(Lio/bidmachine/media3/exoplayer/video/n$a;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    const-wide/16 v2, 0x7530

    .line 101
    .line 102
    cmp-long v0, v0, v2

    .line 103
    .line 104
    if-gez v0, :cond_4

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    move/from16 v17, v19

    .line 108
    .line 109
    :goto_0
    return v17

    .line 110
    :cond_5
    invoke-static/range {p11 .. p11}, Lio/bidmachine/media3/exoplayer/video/n$a;->b(Lio/bidmachine/media3/exoplayer/video/n$a;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v3

    .line 114
    move-object/from16 v0, p0

    .line 115
    .line 116
    move-wide/from16 v1, p3

    .line 117
    .line 118
    move-object/from16 v15, p11

    .line 119
    .line 120
    move-wide/from16 v5, p7

    .line 121
    .line 122
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/video/n;->s(JJJ)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    const/4 v1, 0x0

    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    return v1

    .line 130
    :cond_6
    iget-boolean v0, v7, Lio/bidmachine/media3/exoplayer/video/n;->d:Z

    .line 131
    .line 132
    if-eqz v0, :cond_d

    .line 133
    .line 134
    iget-wide v2, v7, Lio/bidmachine/media3/exoplayer/video/n;->f:J

    .line 135
    .line 136
    cmp-long v0, v11, v2

    .line 137
    .line 138
    if-nez v0, :cond_7

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/video/n;->l:Lcn/h;

    .line 142
    .line 143
    invoke-interface {v0}, Lcn/h;->nanoTime()J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/video/n;->b:Lyn/g;

    .line 148
    .line 149
    invoke-static/range {p11 .. p11}, Lio/bidmachine/media3/exoplayer/video/n$a;->b(Lio/bidmachine/media3/exoplayer/video/n$a;)J

    .line 150
    .line 151
    .line 152
    move-result-wide v4

    .line 153
    const-wide/16 v20, 0x3e8

    .line 154
    .line 155
    mul-long v4, v4, v20

    .line 156
    .line 157
    add-long/2addr v4, v2

    .line 158
    invoke-virtual {v0, v4, v5}, Lyn/g;->b(J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    invoke-static {v15, v4, v5}, Lio/bidmachine/media3/exoplayer/video/n$a;->e(Lio/bidmachine/media3/exoplayer/video/n$a;J)J

    .line 163
    .line 164
    .line 165
    invoke-static/range {p11 .. p11}, Lio/bidmachine/media3/exoplayer/video/n$a;->d(Lio/bidmachine/media3/exoplayer/video/n$a;)J

    .line 166
    .line 167
    .line 168
    move-result-wide v4

    .line 169
    sub-long/2addr v4, v2

    .line 170
    div-long v4, v4, v20

    .line 171
    .line 172
    invoke-static {v15, v4, v5}, Lio/bidmachine/media3/exoplayer/video/n$a;->c(Lio/bidmachine/media3/exoplayer/video/n$a;J)J

    .line 173
    .line 174
    .line 175
    iget-wide v2, v7, Lio/bidmachine/media3/exoplayer/video/n;->i:J

    .line 176
    .line 177
    cmp-long v0, v2, v8

    .line 178
    .line 179
    if-eqz v0, :cond_8

    .line 180
    .line 181
    iget-boolean v0, v7, Lio/bidmachine/media3/exoplayer/video/n;->j:Z

    .line 182
    .line 183
    if-nez v0, :cond_8

    .line 184
    .line 185
    move v1, v13

    .line 186
    :cond_8
    iget-object v8, v7, Lio/bidmachine/media3/exoplayer/video/n;->a:Lio/bidmachine/media3/exoplayer/video/n$b;

    .line 187
    .line 188
    invoke-static/range {p11 .. p11}, Lio/bidmachine/media3/exoplayer/video/n$a;->b(Lio/bidmachine/media3/exoplayer/video/n$a;)J

    .line 189
    .line 190
    .line 191
    move-result-wide v9

    .line 192
    move-wide/from16 v11, p3

    .line 193
    .line 194
    move v0, v13

    .line 195
    move-wide/from16 v13, p5

    .line 196
    .line 197
    move/from16 v15, p10

    .line 198
    .line 199
    move/from16 v16, v1

    .line 200
    .line 201
    invoke-interface/range {v8 .. v16}, Lio/bidmachine/media3/exoplayer/video/n$b;->y(JJJZZ)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_9

    .line 206
    .line 207
    return v18

    .line 208
    :cond_9
    iget-object v8, v7, Lio/bidmachine/media3/exoplayer/video/n;->a:Lio/bidmachine/media3/exoplayer/video/n$b;

    .line 209
    .line 210
    invoke-static/range {p11 .. p11}, Lio/bidmachine/media3/exoplayer/video/n$a;->b(Lio/bidmachine/media3/exoplayer/video/n$a;)J

    .line 211
    .line 212
    .line 213
    move-result-wide v9

    .line 214
    move-wide/from16 v11, p5

    .line 215
    .line 216
    move/from16 v13, p10

    .line 217
    .line 218
    invoke-interface/range {v8 .. v13}, Lio/bidmachine/media3/exoplayer/video/n$b;->s(JJZ)Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eqz v2, :cond_b

    .line 223
    .line 224
    if-eqz v1, :cond_a

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_a
    const/16 v17, 0x2

    .line 228
    .line 229
    :goto_1
    return v17

    .line 230
    :cond_b
    invoke-static/range {p11 .. p11}, Lio/bidmachine/media3/exoplayer/video/n$a;->b(Lio/bidmachine/media3/exoplayer/video/n$a;)J

    .line 231
    .line 232
    .line 233
    move-result-wide v1

    .line 234
    const-wide/32 v3, 0xc350

    .line 235
    .line 236
    .line 237
    cmp-long v1, v1, v3

    .line 238
    .line 239
    if-lez v1, :cond_c

    .line 240
    .line 241
    return v19

    .line 242
    :cond_c
    return v0

    .line 243
    :cond_d
    :goto_2
    return v19
.end method

.method public d(Z)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->e:I

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq p1, v3, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->m:Z

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->n:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    :cond_0
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/n;->i:J

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/video/n;->i:J

    .line 26
    .line 27
    cmp-long p1, v3, v1

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    return v3

    .line 33
    :cond_2
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->l:Lcn/h;

    .line 34
    .line 35
    invoke-interface {p1}, Lcn/h;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/video/n;->i:J

    .line 40
    .line 41
    cmp-long p1, v4, v6

    .line 42
    .line 43
    if-gez p1, :cond_3

    .line 44
    .line 45
    return v0

    .line 46
    :cond_3
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/n;->i:J

    .line 47
    .line 48
    return v3
.end method

.method public e(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->j:Z

    .line 2
    .line 3
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->c:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p1, v0, v2

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->l:Lcn/h;

    .line 12
    .line 13
    invoke-interface {p1}, Lcn/h;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/n;->c:J

    .line 18
    .line 19
    add-long/2addr v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    :goto_0
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->i:J

    .line 27
    .line 28
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/video/n;->f(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public i()Z
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->e:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iput v1, p0, Lio/bidmachine/media3/exoplayer/video/n;->e:I

    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/n;->l:Lcn/h;

    .line 12
    .line 13
    invoke-interface {v1}, Lcn/h;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-static {v1, v2}, Lcn/m0;->S0(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/n;->g:J

    .line 22
    .line 23
    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/video/n;->f(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->d:Z

    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->l:Lcn/h;

    .line 5
    .line 6
    invoke-interface {v0}, Lcn/h;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Lcn/m0;->S0(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->g:J

    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->b:Lyn/g;

    .line 17
    .line 18
    invoke-virtual {v0}, Lyn/g;->k()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->d:Z

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->i:J

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->b:Lyn/g;

    .line 12
    .line 13
    invoke-virtual {v0}, Lyn/g;->l()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->b:Lyn/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyn/g;->j()V

    .line 4
    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->h:J

    .line 12
    .line 13
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->f:J

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {p0, v2}, Lio/bidmachine/media3/exoplayer/video/n;->f(I)V

    .line 17
    .line 18
    .line 19
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->i:J

    .line 20
    .line 21
    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->b:Lyn/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lyn/g;->o(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public o(Lcn/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->l:Lcn/h;

    .line 2
    .line 3
    return-void
.end method

.method public p(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->b:Lyn/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lyn/g;->g(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(Landroid/view/Surface;)V
    .locals 3
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/video/n;->m:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->n:Z

    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->b:Lyn/g;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lyn/g;->m(Landroid/view/Surface;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lio/bidmachine/media3/exoplayer/video/n;->f(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public r(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Lcn/a;->a(Z)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->k:F

    .line 13
    .line 14
    cmpl-float v0, p1, v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/n;->k:F

    .line 20
    .line 21
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/n;->b:Lyn/g;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lyn/g;->i(F)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
