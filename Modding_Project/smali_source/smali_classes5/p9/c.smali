.class public final Lp9/c;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lp9/c;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private static a(Lq9/a;II)[I
    .locals 7

    .line 1
    new-array p2, p2, [I

    .line 2
    .line 3
    invoke-virtual {p0}, Lq9/a;->i()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    div-int/2addr v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    move v3, v1

    .line 13
    move v4, v3

    .line 14
    :goto_1
    if-ge v3, p1, :cond_1

    .line 15
    .line 16
    mul-int v5, v2, p1

    .line 17
    .line 18
    add-int/2addr v5, v3

    .line 19
    invoke-virtual {p0, v5}, Lq9/a;->g(I)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    sub-int v5, p1, v3

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    sub-int/2addr v5, v6

    .line 29
    shl-int v5, v6, v5

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    move v5, v1

    .line 33
    :goto_2
    or-int/2addr v4, v5

    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    aput v4, p2, v2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-object p2
.end method

.method private static b(Lq9/b;II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3
    .line 4
    sub-int v1, p1, v0

    .line 5
    .line 6
    move v2, v1

    .line 7
    :goto_1
    add-int v3, p1, v0

    .line 8
    .line 9
    if-gt v2, v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v2, v1}, Lq9/b;->h(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2, v3}, Lq9/b;->h(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1, v2}, Lq9/b;->h(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v3, v2}, Lq9/b;->h(II)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sub-int v0, p1, p2

    .line 30
    .line 31
    invoke-virtual {p0, v0, v0}, Lq9/b;->h(II)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v0, 0x1

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Lq9/b;->h(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, v1}, Lq9/b;->h(II)V

    .line 40
    .line 41
    .line 42
    add-int/2addr p1, p2

    .line 43
    invoke-virtual {p0, p1, v0}, Lq9/b;->h(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Lq9/b;->h(II)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 p2, p1, -0x1

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lq9/b;->h(II)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private static c(Lq9/b;ZILq9/a;)V
    .locals 2

    .line 1
    div-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_5

    .line 5
    .line 6
    :goto_0
    const/4 p1, 0x7

    .line 7
    if-ge v0, p1, :cond_4

    .line 8
    .line 9
    add-int/lit8 p1, p2, -0x3

    .line 10
    .line 11
    add-int/2addr p1, v0

    .line 12
    invoke-virtual {p3, v0}, Lq9/a;->g(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    add-int/lit8 v1, p2, -0x5

    .line 19
    .line 20
    invoke-virtual {p0, p1, v1}, Lq9/b;->h(II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v1, v0, 0x7

    .line 24
    .line 25
    invoke-virtual {p3, v1}, Lq9/a;->g(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    add-int/lit8 v1, p2, 0x5

    .line 32
    .line 33
    invoke-virtual {p0, v1, p1}, Lq9/b;->h(II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    rsub-int/lit8 v1, v0, 0x14

    .line 37
    .line 38
    invoke-virtual {p3, v1}, Lq9/a;->g(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    add-int/lit8 v1, p2, 0x5

    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Lq9/b;->h(II)V

    .line 47
    .line 48
    .line 49
    :cond_2
    rsub-int/lit8 v1, v0, 0x1b

    .line 50
    .line 51
    invoke-virtual {p3, v1}, Lq9/a;->g(I)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    add-int/lit8 v1, p2, -0x5

    .line 58
    .line 59
    invoke-virtual {p0, v1, p1}, Lq9/b;->h(II)V

    .line 60
    .line 61
    .line 62
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    return-void

    .line 66
    :cond_5
    :goto_1
    const/16 p1, 0xa

    .line 67
    .line 68
    if-ge v0, p1, :cond_a

    .line 69
    .line 70
    add-int/lit8 p1, p2, -0x5

    .line 71
    .line 72
    add-int/2addr p1, v0

    .line 73
    div-int/lit8 v1, v0, 0x5

    .line 74
    .line 75
    add-int/2addr p1, v1

    .line 76
    invoke-virtual {p3, v0}, Lq9/a;->g(I)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_6

    .line 81
    .line 82
    add-int/lit8 v1, p2, -0x7

    .line 83
    .line 84
    invoke-virtual {p0, p1, v1}, Lq9/b;->h(II)V

    .line 85
    .line 86
    .line 87
    :cond_6
    add-int/lit8 v1, v0, 0xa

    .line 88
    .line 89
    invoke-virtual {p3, v1}, Lq9/a;->g(I)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_7

    .line 94
    .line 95
    add-int/lit8 v1, p2, 0x7

    .line 96
    .line 97
    invoke-virtual {p0, v1, p1}, Lq9/b;->h(II)V

    .line 98
    .line 99
    .line 100
    :cond_7
    rsub-int/lit8 v1, v0, 0x1d

    .line 101
    .line 102
    invoke-virtual {p3, v1}, Lq9/a;->g(I)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_8

    .line 107
    .line 108
    add-int/lit8 v1, p2, 0x7

    .line 109
    .line 110
    invoke-virtual {p0, p1, v1}, Lq9/b;->h(II)V

    .line 111
    .line 112
    .line 113
    :cond_8
    rsub-int/lit8 v1, v0, 0x27

    .line 114
    .line 115
    invoke-virtual {p3, v1}, Lq9/a;->g(I)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_9

    .line 120
    .line 121
    add-int/lit8 v1, p2, -0x7

    .line 122
    .line 123
    invoke-virtual {p0, v1, p1}, Lq9/b;->h(II)V

    .line 124
    .line 125
    .line 126
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_a
    return-void
.end method

.method public static d([BII)Lp9/a;
    .locals 19

    .line 1
    new-instance v0, Lp9/d;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lp9/d;-><init>([B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lp9/d;->a()Lq9/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lq9/a;->i()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    mul-int v1, v1, p1

    .line 17
    .line 18
    div-int/lit8 v1, v1, 0x64

    .line 19
    .line 20
    const/16 v2, 0xb

    .line 21
    .line 22
    add-int/2addr v1, v2

    .line 23
    invoke-virtual {v0}, Lq9/a;->i()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int/2addr v3, v1

    .line 28
    const/16 v4, 0x20

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    if-eqz p2, :cond_5

    .line 32
    .line 33
    if-gez p2, :cond_0

    .line 34
    .line 35
    move v3, v6

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v3, 0x0

    .line 38
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    :cond_1
    if-gt v7, v4, :cond_4

    .line 46
    .line 47
    invoke-static {v7, v3}, Lp9/c;->i(IZ)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    sget-object v8, Lp9/c;->a:[I

    .line 52
    .line 53
    aget v8, v8, v7

    .line 54
    .line 55
    rem-int v9, v4, v8

    .line 56
    .line 57
    sub-int v9, v4, v9

    .line 58
    .line 59
    invoke-static {v0, v8}, Lp9/c;->h(Lq9/a;I)Lq9/a;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lq9/a;->i()I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    add-int/2addr v10, v1

    .line 68
    const-string v1, "Data to large for user specified layer"

    .line 69
    .line 70
    if-gt v10, v9, :cond_3

    .line 71
    .line 72
    if-eqz v3, :cond_d

    .line 73
    .line 74
    invoke-virtual {v0}, Lq9/a;->i()I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    shl-int/lit8 v10, v8, 0x6

    .line 79
    .line 80
    if-gt v9, v10, :cond_2

    .line 81
    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v2, "Illegal value %s for layers"

    .line 107
    .line 108
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_5
    const/4 v7, 0x0

    .line 117
    const/4 v8, 0x0

    .line 118
    const/4 v9, 0x0

    .line 119
    :goto_1
    if-gt v8, v4, :cond_1d

    .line 120
    .line 121
    const/4 v10, 0x3

    .line 122
    if-gt v8, v10, :cond_6

    .line 123
    .line 124
    move v10, v6

    .line 125
    goto :goto_2

    .line 126
    :cond_6
    const/4 v10, 0x0

    .line 127
    :goto_2
    if-eqz v10, :cond_7

    .line 128
    .line 129
    add-int/lit8 v11, v8, 0x1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    move v11, v8

    .line 133
    :goto_3
    invoke-static {v11, v10}, Lp9/c;->i(IZ)I

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    if-gt v3, v12, :cond_b

    .line 138
    .line 139
    if-eqz v7, :cond_8

    .line 140
    .line 141
    sget-object v13, Lp9/c;->a:[I

    .line 142
    .line 143
    aget v13, v13, v11

    .line 144
    .line 145
    if-eq v9, v13, :cond_9

    .line 146
    .line 147
    :cond_8
    sget-object v7, Lp9/c;->a:[I

    .line 148
    .line 149
    aget v7, v7, v11

    .line 150
    .line 151
    invoke-static {v0, v7}, Lp9/c;->h(Lq9/a;I)Lq9/a;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    move-object/from16 v18, v9

    .line 156
    .line 157
    move v9, v7

    .line 158
    move-object/from16 v7, v18

    .line 159
    .line 160
    :cond_9
    rem-int v13, v12, v9

    .line 161
    .line 162
    sub-int v13, v12, v13

    .line 163
    .line 164
    if-eqz v10, :cond_a

    .line 165
    .line 166
    invoke-virtual {v7}, Lq9/a;->i()I

    .line 167
    .line 168
    .line 169
    move-result v14

    .line 170
    shl-int/lit8 v15, v9, 0x6

    .line 171
    .line 172
    if-gt v14, v15, :cond_b

    .line 173
    .line 174
    :cond_a
    invoke-virtual {v7}, Lq9/a;->i()I

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    add-int/2addr v14, v1

    .line 179
    if-le v14, v13, :cond_c

    .line 180
    .line 181
    :cond_b
    move v12, v6

    .line 182
    goto/16 :goto_10

    .line 183
    .line 184
    :cond_c
    move-object v0, v7

    .line 185
    move v8, v9

    .line 186
    move v3, v10

    .line 187
    move v7, v11

    .line 188
    move v4, v12

    .line 189
    :cond_d
    :goto_4
    invoke-static {v0, v4, v8}, Lp9/c;->e(Lq9/a;II)Lq9/a;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v0}, Lq9/a;->i()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    div-int/2addr v0, v8

    .line 198
    invoke-static {v3, v7, v0}, Lp9/c;->f(ZII)Lq9/a;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    if-eqz v3, :cond_e

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_e
    const/16 v2, 0xe

    .line 206
    .line 207
    :goto_5
    shl-int/lit8 v8, v7, 0x2

    .line 208
    .line 209
    add-int/2addr v2, v8

    .line 210
    new-array v8, v2, [I

    .line 211
    .line 212
    const/4 v9, 0x2

    .line 213
    if-eqz v3, :cond_10

    .line 214
    .line 215
    const/4 v10, 0x0

    .line 216
    :goto_6
    if-ge v10, v2, :cond_f

    .line 217
    .line 218
    aput v10, v8, v10

    .line 219
    .line 220
    add-int/lit8 v10, v10, 0x1

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_f
    move v10, v2

    .line 224
    goto :goto_8

    .line 225
    :cond_10
    add-int/lit8 v10, v2, 0x1

    .line 226
    .line 227
    div-int/lit8 v11, v2, 0x2

    .line 228
    .line 229
    add-int/lit8 v12, v11, -0x1

    .line 230
    .line 231
    div-int/lit8 v12, v12, 0xf

    .line 232
    .line 233
    mul-int/2addr v12, v9

    .line 234
    add-int/2addr v10, v12

    .line 235
    div-int/lit8 v12, v10, 0x2

    .line 236
    .line 237
    const/4 v13, 0x0

    .line 238
    :goto_7
    if-ge v13, v11, :cond_11

    .line 239
    .line 240
    div-int/lit8 v14, v13, 0xf

    .line 241
    .line 242
    add-int/2addr v14, v13

    .line 243
    sub-int v15, v11, v13

    .line 244
    .line 245
    sub-int/2addr v15, v6

    .line 246
    sub-int v16, v12, v14

    .line 247
    .line 248
    add-int/lit8 v16, v16, -0x1

    .line 249
    .line 250
    aput v16, v8, v15

    .line 251
    .line 252
    add-int v15, v11, v13

    .line 253
    .line 254
    add-int/2addr v14, v12

    .line 255
    add-int/2addr v14, v6

    .line 256
    aput v14, v8, v15

    .line 257
    .line 258
    add-int/lit8 v13, v13, 0x1

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_11
    :goto_8
    new-instance v11, Lq9/b;

    .line 262
    .line 263
    invoke-direct {v11, v10}, Lq9/b;-><init>(I)V

    .line 264
    .line 265
    .line 266
    const/4 v12, 0x0

    .line 267
    const/4 v13, 0x0

    .line 268
    :goto_9
    if-ge v12, v7, :cond_19

    .line 269
    .line 270
    sub-int v14, v7, v12

    .line 271
    .line 272
    shl-int/2addr v14, v9

    .line 273
    if-eqz v3, :cond_12

    .line 274
    .line 275
    const/16 v15, 0x9

    .line 276
    .line 277
    goto :goto_a

    .line 278
    :cond_12
    const/16 v15, 0xc

    .line 279
    .line 280
    :goto_a
    add-int/2addr v14, v15

    .line 281
    const/4 v15, 0x0

    .line 282
    :goto_b
    if-ge v15, v14, :cond_18

    .line 283
    .line 284
    shl-int/lit8 v16, v15, 0x1

    .line 285
    .line 286
    const/4 v5, 0x0

    .line 287
    :goto_c
    if-ge v5, v9, :cond_17

    .line 288
    .line 289
    add-int v17, v13, v16

    .line 290
    .line 291
    add-int v6, v17, v5

    .line 292
    .line 293
    invoke-virtual {v1, v6}, Lq9/a;->g(I)Z

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    if-eqz v6, :cond_13

    .line 298
    .line 299
    shl-int/lit8 v6, v12, 0x1

    .line 300
    .line 301
    add-int v17, v6, v5

    .line 302
    .line 303
    aget v9, v8, v17

    .line 304
    .line 305
    add-int/2addr v6, v15

    .line 306
    aget v6, v8, v6

    .line 307
    .line 308
    invoke-virtual {v11, v9, v6}, Lq9/b;->h(II)V

    .line 309
    .line 310
    .line 311
    :cond_13
    shl-int/lit8 v6, v14, 0x1

    .line 312
    .line 313
    add-int/2addr v6, v13

    .line 314
    add-int v6, v6, v16

    .line 315
    .line 316
    add-int/2addr v6, v5

    .line 317
    invoke-virtual {v1, v6}, Lq9/a;->g(I)Z

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    if-eqz v6, :cond_14

    .line 322
    .line 323
    shl-int/lit8 v6, v12, 0x1

    .line 324
    .line 325
    add-int v9, v6, v15

    .line 326
    .line 327
    aget v9, v8, v9

    .line 328
    .line 329
    add-int/lit8 v17, v2, -0x1

    .line 330
    .line 331
    sub-int v17, v17, v6

    .line 332
    .line 333
    sub-int v17, v17, v5

    .line 334
    .line 335
    aget v6, v8, v17

    .line 336
    .line 337
    invoke-virtual {v11, v9, v6}, Lq9/b;->h(II)V

    .line 338
    .line 339
    .line 340
    :cond_14
    shl-int/lit8 v6, v14, 0x2

    .line 341
    .line 342
    add-int/2addr v6, v13

    .line 343
    add-int v6, v6, v16

    .line 344
    .line 345
    add-int/2addr v6, v5

    .line 346
    invoke-virtual {v1, v6}, Lq9/a;->g(I)Z

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    if-eqz v6, :cond_15

    .line 351
    .line 352
    add-int/lit8 v6, v2, -0x1

    .line 353
    .line 354
    shl-int/lit8 v9, v12, 0x1

    .line 355
    .line 356
    sub-int/2addr v6, v9

    .line 357
    sub-int v9, v6, v5

    .line 358
    .line 359
    aget v9, v8, v9

    .line 360
    .line 361
    sub-int/2addr v6, v15

    .line 362
    aget v6, v8, v6

    .line 363
    .line 364
    invoke-virtual {v11, v9, v6}, Lq9/b;->h(II)V

    .line 365
    .line 366
    .line 367
    :cond_15
    mul-int/lit8 v6, v14, 0x6

    .line 368
    .line 369
    add-int/2addr v6, v13

    .line 370
    add-int v6, v6, v16

    .line 371
    .line 372
    add-int/2addr v6, v5

    .line 373
    invoke-virtual {v1, v6}, Lq9/a;->g(I)Z

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    if-eqz v6, :cond_16

    .line 378
    .line 379
    add-int/lit8 v6, v2, -0x1

    .line 380
    .line 381
    shl-int/lit8 v9, v12, 0x1

    .line 382
    .line 383
    sub-int/2addr v6, v9

    .line 384
    sub-int/2addr v6, v15

    .line 385
    aget v6, v8, v6

    .line 386
    .line 387
    add-int/2addr v9, v5

    .line 388
    aget v9, v8, v9

    .line 389
    .line 390
    invoke-virtual {v11, v6, v9}, Lq9/b;->h(II)V

    .line 391
    .line 392
    .line 393
    :cond_16
    add-int/lit8 v5, v5, 0x1

    .line 394
    .line 395
    const/4 v6, 0x1

    .line 396
    const/4 v9, 0x2

    .line 397
    goto :goto_c

    .line 398
    :cond_17
    add-int/lit8 v15, v15, 0x1

    .line 399
    .line 400
    const/4 v6, 0x1

    .line 401
    const/4 v9, 0x2

    .line 402
    goto :goto_b

    .line 403
    :cond_18
    shl-int/lit8 v5, v14, 0x3

    .line 404
    .line 405
    add-int/2addr v13, v5

    .line 406
    add-int/lit8 v12, v12, 0x1

    .line 407
    .line 408
    const/4 v6, 0x1

    .line 409
    const/4 v9, 0x2

    .line 410
    goto/16 :goto_9

    .line 411
    .line 412
    :cond_19
    invoke-static {v11, v3, v10, v4}, Lp9/c;->c(Lq9/b;ZILq9/a;)V

    .line 413
    .line 414
    .line 415
    if-eqz v3, :cond_1a

    .line 416
    .line 417
    div-int/lit8 v1, v10, 0x2

    .line 418
    .line 419
    const/4 v2, 0x5

    .line 420
    invoke-static {v11, v1, v2}, Lp9/c;->b(Lq9/b;II)V

    .line 421
    .line 422
    .line 423
    goto :goto_f

    .line 424
    :cond_1a
    div-int/lit8 v1, v10, 0x2

    .line 425
    .line 426
    const/4 v4, 0x7

    .line 427
    invoke-static {v11, v1, v4}, Lp9/c;->b(Lq9/b;II)V

    .line 428
    .line 429
    .line 430
    const/4 v4, 0x0

    .line 431
    const/4 v5, 0x0

    .line 432
    const/4 v6, 0x2

    .line 433
    :goto_d
    div-int/lit8 v8, v2, 0x2

    .line 434
    .line 435
    const/4 v12, 0x1

    .line 436
    sub-int/2addr v8, v12

    .line 437
    if-ge v5, v8, :cond_1c

    .line 438
    .line 439
    and-int/lit8 v8, v1, 0x1

    .line 440
    .line 441
    :goto_e
    if-ge v8, v10, :cond_1b

    .line 442
    .line 443
    sub-int v9, v1, v4

    .line 444
    .line 445
    invoke-virtual {v11, v9, v8}, Lq9/b;->h(II)V

    .line 446
    .line 447
    .line 448
    add-int v13, v1, v4

    .line 449
    .line 450
    invoke-virtual {v11, v13, v8}, Lq9/b;->h(II)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v11, v8, v9}, Lq9/b;->h(II)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v11, v8, v13}, Lq9/b;->h(II)V

    .line 457
    .line 458
    .line 459
    add-int/lit8 v8, v8, 0x2

    .line 460
    .line 461
    goto :goto_e

    .line 462
    :cond_1b
    add-int/lit8 v5, v5, 0xf

    .line 463
    .line 464
    add-int/lit8 v4, v4, 0x10

    .line 465
    .line 466
    goto :goto_d

    .line 467
    :cond_1c
    :goto_f
    new-instance v1, Lp9/a;

    .line 468
    .line 469
    invoke-direct {v1}, Lp9/a;-><init>()V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v3}, Lp9/a;->c(Z)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v10}, Lp9/a;->f(I)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1, v7}, Lp9/a;->d(I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v0}, Lp9/a;->b(I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1, v11}, Lp9/a;->e(Lq9/b;)V

    .line 485
    .line 486
    .line 487
    return-object v1

    .line 488
    :goto_10
    add-int/lit8 v8, v8, 0x1

    .line 489
    .line 490
    move v6, v12

    .line 491
    goto/16 :goto_1

    .line 492
    .line 493
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 494
    .line 495
    const-string v1, "Data too large for an Aztec code"

    .line 496
    .line 497
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw v0
.end method

.method private static e(Lq9/a;II)Lq9/a;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq9/a;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/2addr v0, p2

    .line 6
    new-instance v1, Lr9/c;

    .line 7
    .line 8
    invoke-static {p2}, Lp9/c;->g(I)Lr9/a;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Lr9/c;-><init>(Lr9/a;)V

    .line 13
    .line 14
    .line 15
    div-int v2, p1, p2

    .line 16
    .line 17
    invoke-static {p0, p2, v2}, Lp9/c;->a(Lq9/a;II)[I

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    invoke-virtual {v1, p0, v2}, Lr9/c;->b([II)V

    .line 23
    .line 24
    .line 25
    rem-int/2addr p1, p2

    .line 26
    new-instance v0, Lq9/a;

    .line 27
    .line 28
    invoke-direct {v0}, Lq9/a;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1, p1}, Lq9/a;->c(II)V

    .line 33
    .line 34
    .line 35
    array-length p1, p0

    .line 36
    :goto_0
    if-ge v1, p1, :cond_0

    .line 37
    .line 38
    aget v2, p0, v1

    .line 39
    .line 40
    invoke-virtual {v0, v2, p2}, Lq9/a;->c(II)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method

.method static f(ZII)Lq9/a;
    .locals 2

    .line 1
    new-instance v0, Lq9/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lq9/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    invoke-virtual {v0, p1, p0}, Lq9/a;->c(II)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 p2, p2, -0x1

    .line 16
    .line 17
    const/4 p0, 0x6

    .line 18
    invoke-virtual {v0, p2, p0}, Lq9/a;->c(II)V

    .line 19
    .line 20
    .line 21
    const/16 p0, 0x1c

    .line 22
    .line 23
    invoke-static {v0, p0, v1}, Lp9/c;->e(Lq9/a;II)Lq9/a;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 29
    .line 30
    const/4 p0, 0x5

    .line 31
    invoke-virtual {v0, p1, p0}, Lq9/a;->c(II)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p2, p2, -0x1

    .line 35
    .line 36
    const/16 p0, 0xb

    .line 37
    .line 38
    invoke-virtual {v0, p2, p0}, Lq9/a;->c(II)V

    .line 39
    .line 40
    .line 41
    const/16 p0, 0x28

    .line 42
    .line 43
    invoke-static {v0, p0, v1}, Lp9/c;->e(Lq9/a;II)Lq9/a;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    return-object p0
.end method

.method private static g(I)Lr9/a;
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    if-eq p0, v0, :cond_3

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-eq p0, v0, :cond_2

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0xc

    .line 16
    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    sget-object p0, Lr9/a;->h:Lr9/a;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v1, "Unsupported word size "

    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_1
    sget-object p0, Lr9/a;->i:Lr9/a;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_2
    sget-object p0, Lr9/a;->n:Lr9/a;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_3
    sget-object p0, Lr9/a;->j:Lr9/a;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_4
    sget-object p0, Lr9/a;->k:Lr9/a;

    .line 48
    .line 49
    return-object p0
.end method

.method static h(Lq9/a;I)Lq9/a;
    .locals 9

    .line 1
    new-instance v0, Lq9/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lq9/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lq9/a;->i()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    shl-int v3, v2, p1

    .line 12
    .line 13
    add-int/lit8 v3, v3, -0x2

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    if-ge v5, v1, :cond_5

    .line 18
    .line 19
    move v6, v4

    .line 20
    move v7, v6

    .line 21
    :goto_1
    if-ge v6, p1, :cond_2

    .line 22
    .line 23
    add-int v8, v5, v6

    .line 24
    .line 25
    if-ge v8, v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v8}, Lq9/a;->g(I)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_1

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v8, p1, -0x1

    .line 34
    .line 35
    sub-int/2addr v8, v6

    .line 36
    shl-int v8, v2, v8

    .line 37
    .line 38
    or-int/2addr v7, v8

    .line 39
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    and-int v6, v7, v3

    .line 43
    .line 44
    if-ne v6, v3, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, v6, p1}, Lq9/a;->c(II)V

    .line 47
    .line 48
    .line 49
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    if-nez v6, :cond_4

    .line 53
    .line 54
    or-int/lit8 v6, v7, 0x1

    .line 55
    .line 56
    invoke-virtual {v0, v6, p1}, Lq9/a;->c(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    invoke-virtual {v0, v7, p1}, Lq9/a;->c(II)V

    .line 61
    .line 62
    .line 63
    :goto_3
    add-int/2addr v5, p1

    .line 64
    goto :goto_0

    .line 65
    :cond_5
    return-object v0
.end method

.method private static i(IZ)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x58

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p1, 0x70

    .line 7
    .line 8
    :goto_0
    shl-int/lit8 v0, p0, 0x4

    .line 9
    .line 10
    add-int/2addr p1, v0

    .line 11
    mul-int/2addr p1, p0

    .line 12
    return p1
.end method
