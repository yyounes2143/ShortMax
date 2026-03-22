.class public final Lt9/j;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# direct methods
.method public static a(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ge p1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    :cond_0
    :goto_0
    invoke-static {v2}, Lt9/j;->f(C)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    if-ge p1, v0, :cond_1

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    if-ge p1, v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v1
.end method

.method public static b(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/a;Lcom/google/zxing/a;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Lt9/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lt9/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lt9/c;

    .line 7
    .line 8
    invoke-direct {v1}, Lt9/c;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lt9/l;

    .line 12
    .line 13
    invoke-direct {v2}, Lt9/l;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lt9/m;

    .line 17
    .line 18
    invoke-direct {v3}, Lt9/m;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lt9/f;

    .line 22
    .line 23
    invoke-direct {v4}, Lt9/f;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lt9/b;

    .line 27
    .line 28
    invoke-direct {v5}, Lt9/b;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x6

    .line 32
    new-array v6, v6, [Lt9/g;

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    aput-object v0, v6, v7

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    aput-object v1, v6, v0

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    aput-object v2, v6, v1

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    aput-object v3, v6, v2

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    aput-object v4, v6, v2

    .line 48
    .line 49
    const/4 v3, 0x5

    .line 50
    aput-object v5, v6, v3

    .line 51
    .line 52
    new-instance v4, Lt9/h;

    .line 53
    .line 54
    invoke-direct {v4, p0}, Lt9/h;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p1}, Lt9/h;->n(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, p2, p3}, Lt9/h;->l(Lcom/google/zxing/a;Lcom/google/zxing/a;)V

    .line 61
    .line 62
    .line 63
    const-string p1, "[)>\u001e05\u001d"

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    const-string p2, "\u001e\u0004"

    .line 70
    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    const/16 p0, 0xec

    .line 80
    .line 81
    invoke-virtual {v4, p0}, Lt9/h;->r(C)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v1}, Lt9/h;->m(I)V

    .line 85
    .line 86
    .line 87
    iget p0, v4, Lt9/h;->f:I

    .line 88
    .line 89
    add-int/lit8 p0, p0, 0x7

    .line 90
    .line 91
    iput p0, v4, Lt9/h;->f:I

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    const-string p1, "[)>\u001e06\u001d"

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_1

    .line 107
    .line 108
    const/16 p0, 0xed

    .line 109
    .line 110
    invoke-virtual {v4, p0}, Lt9/h;->r(C)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v1}, Lt9/h;->m(I)V

    .line 114
    .line 115
    .line 116
    iget p0, v4, Lt9/h;->f:I

    .line 117
    .line 118
    add-int/lit8 p0, p0, 0x7

    .line 119
    .line 120
    iput p0, v4, Lt9/h;->f:I

    .line 121
    .line 122
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lt9/h;->i()Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_2

    .line 127
    .line 128
    aget-object p0, v6, v7

    .line 129
    .line 130
    invoke-interface {p0, v4}, Lt9/g;->a(Lt9/h;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Lt9/h;->e()I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-ltz p0, :cond_1

    .line 138
    .line 139
    invoke-virtual {v4}, Lt9/h;->e()I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    invoke-virtual {v4}, Lt9/h;->j()V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v4}, Lt9/h;->a()I

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    invoke-virtual {v4}, Lt9/h;->p()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Lt9/h;->g()Lt9/k;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lt9/k;->a()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-ge p0, p1, :cond_3

    .line 163
    .line 164
    if-eqz v7, :cond_3

    .line 165
    .line 166
    if-eq v7, v3, :cond_3

    .line 167
    .line 168
    if-eq v7, v2, :cond_3

    .line 169
    .line 170
    const/16 p0, 0xfe

    .line 171
    .line 172
    invoke-virtual {v4, p0}, Lt9/h;->r(C)V

    .line 173
    .line 174
    .line 175
    :cond_3
    invoke-virtual {v4}, Lt9/h;->b()Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    const/16 p3, 0x81

    .line 184
    .line 185
    if-ge p2, p1, :cond_4

    .line 186
    .line 187
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    if-ge p2, p1, :cond_5

    .line 195
    .line 196
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    add-int/2addr p2, v0

    .line 201
    invoke-static {p3, p2}, Lt9/j;->o(CI)C

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_5
    invoke-virtual {v4}, Lt9/h;->b()Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    return-object p0
.end method

.method private static c([F[II[B)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 3
    .line 4
    .line 5
    move v1, v0

    .line 6
    :goto_0
    const/4 v2, 0x6

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    aget v2, p0, v1

    .line 10
    .line 11
    float-to-double v2, v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    double-to-int v2, v2

    .line 17
    aput v2, p1, v1

    .line 18
    .line 19
    if-le p2, v2, :cond_0

    .line 20
    .line 21
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 22
    .line 23
    .line 24
    move p2, v2

    .line 25
    :cond_0
    if-ne p2, v2, :cond_1

    .line 26
    .line 27
    aget-byte v2, p3, v1

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    int-to-byte v2, v2

    .line 32
    aput-byte v2, p3, v1

    .line 33
    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return p2
.end method

.method private static d([B)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x6

    .line 4
    if-ge v0, v2, :cond_0

    .line 5
    .line 6
    aget-byte v2, p0, v0

    .line 7
    .line 8
    add-int/2addr v1, v2

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return v1
.end method

.method static e(C)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    rsub-int/lit8 v2, v2, 0x4

    .line 15
    .line 16
    const-string v3, "0000"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Illegal character: "

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, " (0x"

    .line 46
    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 p0, 0x29

    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1
.end method

.method static f(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x39

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method static g(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0xff

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method private static h(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x30

    .line 6
    .line 7
    if-lt p0, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x39

    .line 10
    .line 11
    if-le p0, v0, :cond_2

    .line 12
    .line 13
    :cond_0
    const/16 v0, 0x41

    .line 14
    .line 15
    if-lt p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x5a

    .line 18
    .line 19
    if-gt p0, v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method private static i(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x5e

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method private static j(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x30

    .line 6
    .line 7
    if-lt p0, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x39

    .line 10
    .line 11
    if-le p0, v0, :cond_2

    .line 12
    .line 13
    :cond_0
    const/16 v0, 0x61

    .line 14
    .line 15
    if-lt p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x7a

    .line 18
    .line 19
    if-gt p0, v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method private static k(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lt9/j;->m(C)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const/16 v0, 0x20

    .line 8
    .line 9
    if-eq p0, v0, :cond_2

    .line 10
    .line 11
    const/16 v0, 0x30

    .line 12
    .line 13
    if-lt p0, v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x39

    .line 16
    .line 17
    if-le p0, v0, :cond_2

    .line 18
    .line 19
    :cond_0
    const/16 v0, 0x41

    .line 20
    .line 21
    if-lt p0, v0, :cond_1

    .line 22
    .line 23
    const/16 v0, 0x5a

    .line 24
    .line 25
    if-gt p0, v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method private static l(C)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method private static m(C)Z
    .locals 1

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x2a

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x3e

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method static n(Ljava/lang/CharSequence;II)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    return p2

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    const/high16 v3, 0x40000000    # 2.0f

    .line 14
    .line 15
    const/4 v4, 0x6

    .line 16
    const/high16 v5, 0x3f800000    # 1.0f

    .line 17
    .line 18
    const/4 v6, 0x5

    .line 19
    const/4 v7, 0x2

    .line 20
    const/4 v8, 0x4

    .line 21
    const/4 v9, 0x3

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v11, 0x1

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    new-array v12, v4, [F

    .line 27
    .line 28
    aput v2, v12, v10

    .line 29
    .line 30
    aput v5, v12, v11

    .line 31
    .line 32
    aput v5, v12, v7

    .line 33
    .line 34
    aput v5, v12, v9

    .line 35
    .line 36
    aput v5, v12, v8

    .line 37
    .line 38
    const/high16 v2, 0x3fa00000    # 1.25f

    .line 39
    .line 40
    aput v2, v12, v6

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-array v12, v4, [F

    .line 44
    .line 45
    aput v5, v12, v10

    .line 46
    .line 47
    aput v3, v12, v11

    .line 48
    .line 49
    aput v3, v12, v7

    .line 50
    .line 51
    aput v3, v12, v9

    .line 52
    .line 53
    aput v3, v12, v8

    .line 54
    .line 55
    const/high16 v13, 0x40100000    # 2.25f

    .line 56
    .line 57
    aput v13, v12, v6

    .line 58
    .line 59
    aput v2, v12, p2

    .line 60
    .line 61
    :goto_0
    move v2, v10

    .line 62
    :goto_1
    add-int v13, v1, v2

    .line 63
    .line 64
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result v14

    .line 68
    const v15, 0x7fffffff

    .line 69
    .line 70
    .line 71
    if-ne v13, v14, :cond_7

    .line 72
    .line 73
    new-array v0, v4, [B

    .line 74
    .line 75
    new-array v1, v4, [I

    .line 76
    .line 77
    invoke-static {v12, v1, v15, v0}, Lt9/j;->c([F[II[B)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-static {v0}, Lt9/j;->d([B)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    aget v1, v1, v10

    .line 86
    .line 87
    if-ne v1, v2, :cond_2

    .line 88
    .line 89
    return v10

    .line 90
    :cond_2
    if-ne v3, v11, :cond_3

    .line 91
    .line 92
    aget-byte v1, v0, v6

    .line 93
    .line 94
    if-lez v1, :cond_3

    .line 95
    .line 96
    return v6

    .line 97
    :cond_3
    if-ne v3, v11, :cond_4

    .line 98
    .line 99
    aget-byte v1, v0, v8

    .line 100
    .line 101
    if-lez v1, :cond_4

    .line 102
    .line 103
    return v8

    .line 104
    :cond_4
    if-ne v3, v11, :cond_5

    .line 105
    .line 106
    aget-byte v1, v0, v7

    .line 107
    .line 108
    if-lez v1, :cond_5

    .line 109
    .line 110
    return v7

    .line 111
    :cond_5
    if-ne v3, v11, :cond_6

    .line 112
    .line 113
    aget-byte v0, v0, v9

    .line 114
    .line 115
    if-lez v0, :cond_6

    .line 116
    .line 117
    return v9

    .line 118
    :cond_6
    return v11

    .line 119
    :cond_7
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    invoke-static {v13}, Lt9/j;->f(C)Z

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    if-eqz v14, :cond_8

    .line 130
    .line 131
    aget v14, v12, v10

    .line 132
    .line 133
    const/high16 v16, 0x3f000000    # 0.5f

    .line 134
    .line 135
    add-float v14, v14, v16

    .line 136
    .line 137
    aput v14, v12, v10

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_8
    invoke-static {v13}, Lt9/j;->g(C)Z

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    if-eqz v14, :cond_9

    .line 145
    .line 146
    aget v14, v12, v10

    .line 147
    .line 148
    float-to-double v8, v14

    .line 149
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 150
    .line 151
    .line 152
    move-result-wide v8

    .line 153
    double-to-float v8, v8

    .line 154
    aput v8, v12, v10

    .line 155
    .line 156
    add-float/2addr v8, v3

    .line 157
    aput v8, v12, v10

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_9
    aget v8, v12, v10

    .line 161
    .line 162
    float-to-double v8, v8

    .line 163
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 164
    .line 165
    .line 166
    move-result-wide v8

    .line 167
    double-to-float v8, v8

    .line 168
    aput v8, v12, v10

    .line 169
    .line 170
    add-float/2addr v8, v5

    .line 171
    aput v8, v12, v10

    .line 172
    .line 173
    :goto_2
    invoke-static {v13}, Lt9/j;->h(C)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    const v9, 0x3faaaaab

    .line 178
    .line 179
    .line 180
    const v14, 0x402aaaab

    .line 181
    .line 182
    .line 183
    const v18, 0x3f2aaaab

    .line 184
    .line 185
    .line 186
    if-eqz v8, :cond_a

    .line 187
    .line 188
    aget v8, v12, v11

    .line 189
    .line 190
    add-float v8, v8, v18

    .line 191
    .line 192
    aput v8, v12, v11

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_a
    invoke-static {v13}, Lt9/j;->g(C)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-eqz v8, :cond_b

    .line 200
    .line 201
    aget v8, v12, v11

    .line 202
    .line 203
    add-float/2addr v8, v14

    .line 204
    aput v8, v12, v11

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_b
    aget v8, v12, v11

    .line 208
    .line 209
    add-float/2addr v8, v9

    .line 210
    aput v8, v12, v11

    .line 211
    .line 212
    :goto_3
    invoke-static {v13}, Lt9/j;->j(C)Z

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-eqz v8, :cond_c

    .line 217
    .line 218
    aget v8, v12, v7

    .line 219
    .line 220
    add-float v8, v8, v18

    .line 221
    .line 222
    aput v8, v12, v7

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_c
    invoke-static {v13}, Lt9/j;->g(C)Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-eqz v8, :cond_d

    .line 230
    .line 231
    aget v8, v12, v7

    .line 232
    .line 233
    add-float/2addr v8, v14

    .line 234
    aput v8, v12, v7

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_d
    aget v8, v12, v7

    .line 238
    .line 239
    add-float/2addr v8, v9

    .line 240
    aput v8, v12, v7

    .line 241
    .line 242
    :goto_4
    invoke-static {v13}, Lt9/j;->k(C)Z

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    if-eqz v8, :cond_e

    .line 247
    .line 248
    const/4 v8, 0x3

    .line 249
    aget v9, v12, v8

    .line 250
    .line 251
    add-float v9, v9, v18

    .line 252
    .line 253
    aput v9, v12, v8

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_e
    const/4 v8, 0x3

    .line 257
    invoke-static {v13}, Lt9/j;->g(C)Z

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    if-eqz v9, :cond_f

    .line 262
    .line 263
    aget v9, v12, v8

    .line 264
    .line 265
    const v14, 0x408aaaab

    .line 266
    .line 267
    .line 268
    add-float/2addr v9, v14

    .line 269
    aput v9, v12, v8

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_f
    aget v9, v12, v8

    .line 273
    .line 274
    const v14, 0x40555555

    .line 275
    .line 276
    .line 277
    add-float/2addr v9, v14

    .line 278
    aput v9, v12, v8

    .line 279
    .line 280
    :goto_5
    invoke-static {v13}, Lt9/j;->i(C)Z

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    if-eqz v8, :cond_10

    .line 285
    .line 286
    const/4 v8, 0x4

    .line 287
    aget v9, v12, v8

    .line 288
    .line 289
    const/high16 v14, 0x3f400000    # 0.75f

    .line 290
    .line 291
    add-float/2addr v9, v14

    .line 292
    aput v9, v12, v8

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_10
    const/4 v8, 0x4

    .line 296
    invoke-static {v13}, Lt9/j;->g(C)Z

    .line 297
    .line 298
    .line 299
    move-result v9

    .line 300
    if-eqz v9, :cond_11

    .line 301
    .line 302
    aget v9, v12, v8

    .line 303
    .line 304
    const/high16 v14, 0x40880000    # 4.25f

    .line 305
    .line 306
    add-float/2addr v9, v14

    .line 307
    aput v9, v12, v8

    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_11
    aget v9, v12, v8

    .line 311
    .line 312
    const/high16 v14, 0x40500000    # 3.25f

    .line 313
    .line 314
    add-float/2addr v9, v14

    .line 315
    aput v9, v12, v8

    .line 316
    .line 317
    :goto_6
    invoke-static {v13}, Lt9/j;->l(C)Z

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    if-eqz v8, :cond_12

    .line 322
    .line 323
    aget v8, v12, v6

    .line 324
    .line 325
    const/high16 v9, 0x40800000    # 4.0f

    .line 326
    .line 327
    add-float/2addr v8, v9

    .line 328
    aput v8, v12, v6

    .line 329
    .line 330
    :goto_7
    const/4 v8, 0x4

    .line 331
    goto :goto_8

    .line 332
    :cond_12
    aget v8, v12, v6

    .line 333
    .line 334
    add-float/2addr v8, v5

    .line 335
    aput v8, v12, v6

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :goto_8
    if-lt v2, v8, :cond_1e

    .line 339
    .line 340
    new-array v8, v4, [I

    .line 341
    .line 342
    new-array v9, v4, [B

    .line 343
    .line 344
    invoke-static {v12, v8, v15, v9}, Lt9/j;->c([F[II[B)I

    .line 345
    .line 346
    .line 347
    invoke-static {v9}, Lt9/j;->d([B)I

    .line 348
    .line 349
    .line 350
    move-result v13

    .line 351
    aget v14, v8, v10

    .line 352
    .line 353
    aget v15, v8, v6

    .line 354
    .line 355
    if-ge v14, v15, :cond_13

    .line 356
    .line 357
    aget v3, v8, v11

    .line 358
    .line 359
    if-ge v14, v3, :cond_13

    .line 360
    .line 361
    aget v3, v8, v7

    .line 362
    .line 363
    if-ge v14, v3, :cond_13

    .line 364
    .line 365
    const/4 v3, 0x3

    .line 366
    aget v4, v8, v3

    .line 367
    .line 368
    if-ge v14, v4, :cond_13

    .line 369
    .line 370
    const/4 v3, 0x4

    .line 371
    aget v4, v8, v3

    .line 372
    .line 373
    if-ge v14, v4, :cond_13

    .line 374
    .line 375
    return v10

    .line 376
    :cond_13
    if-lt v15, v14, :cond_1d

    .line 377
    .line 378
    aget-byte v3, v9, v11

    .line 379
    .line 380
    aget-byte v4, v9, v7

    .line 381
    .line 382
    add-int/2addr v3, v4

    .line 383
    const/16 v16, 0x3

    .line 384
    .line 385
    aget-byte v19, v9, v16

    .line 386
    .line 387
    add-int v3, v3, v19

    .line 388
    .line 389
    const/16 v17, 0x4

    .line 390
    .line 391
    aget-byte v9, v9, v17

    .line 392
    .line 393
    add-int/2addr v3, v9

    .line 394
    if-nez v3, :cond_14

    .line 395
    .line 396
    goto :goto_b

    .line 397
    :cond_14
    if-ne v13, v11, :cond_15

    .line 398
    .line 399
    if-lez v9, :cond_15

    .line 400
    .line 401
    return v17

    .line 402
    :cond_15
    if-ne v13, v11, :cond_16

    .line 403
    .line 404
    if-lez v4, :cond_16

    .line 405
    .line 406
    return v7

    .line 407
    :cond_16
    if-ne v13, v11, :cond_17

    .line 408
    .line 409
    if-lez v19, :cond_17

    .line 410
    .line 411
    const/4 v3, 0x3

    .line 412
    return v3

    .line 413
    :cond_17
    aget v3, v8, v11

    .line 414
    .line 415
    add-int/lit8 v4, v3, 0x1

    .line 416
    .line 417
    if-ge v4, v14, :cond_1c

    .line 418
    .line 419
    add-int/lit8 v4, v3, 0x1

    .line 420
    .line 421
    if-ge v4, v15, :cond_1c

    .line 422
    .line 423
    add-int/lit8 v4, v3, 0x1

    .line 424
    .line 425
    const/4 v9, 0x4

    .line 426
    aget v13, v8, v9

    .line 427
    .line 428
    if-ge v4, v13, :cond_1b

    .line 429
    .line 430
    add-int/lit8 v4, v3, 0x1

    .line 431
    .line 432
    aget v13, v8, v7

    .line 433
    .line 434
    if-ge v4, v13, :cond_1b

    .line 435
    .line 436
    const/4 v4, 0x3

    .line 437
    aget v8, v8, v4

    .line 438
    .line 439
    if-ge v3, v8, :cond_18

    .line 440
    .line 441
    return v11

    .line 442
    :cond_18
    if-ne v3, v8, :cond_1b

    .line 443
    .line 444
    add-int/2addr v1, v2

    .line 445
    add-int/2addr v1, v11

    .line 446
    :goto_9
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-ge v1, v2, :cond_1a

    .line 451
    .line 452
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    invoke-static {v2}, Lt9/j;->m(C)Z

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    if-eqz v3, :cond_19

    .line 461
    .line 462
    const/4 v3, 0x3

    .line 463
    return v3

    .line 464
    :cond_19
    const/4 v3, 0x3

    .line 465
    invoke-static {v2}, Lt9/j;->k(C)Z

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    if-eqz v2, :cond_1a

    .line 470
    .line 471
    add-int/lit8 v1, v1, 0x1

    .line 472
    .line 473
    goto :goto_9

    .line 474
    :cond_1a
    return v11

    .line 475
    :cond_1b
    :goto_a
    const/4 v3, 0x3

    .line 476
    goto :goto_c

    .line 477
    :cond_1c
    const/4 v3, 0x3

    .line 478
    const/4 v9, 0x4

    .line 479
    goto :goto_c

    .line 480
    :cond_1d
    :goto_b
    return v6

    .line 481
    :cond_1e
    move v9, v8

    .line 482
    goto :goto_a

    .line 483
    :goto_c
    move v8, v9

    .line 484
    const/4 v4, 0x6

    .line 485
    move v9, v3

    .line 486
    const/high16 v3, 0x40000000    # 2.0f

    .line 487
    .line 488
    goto/16 :goto_1
.end method

.method private static o(CI)C
    .locals 0

    .line 1
    mul-int/lit16 p1, p1, 0x95

    .line 2
    .line 3
    rem-int/lit16 p1, p1, 0xfd

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    add-int/2addr p0, p1

    .line 8
    const/16 p1, 0xfe

    .line 9
    .line 10
    if-gt p0, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    add-int/lit16 p0, p0, -0xfe

    .line 14
    .line 15
    :goto_0
    int-to-char p0, p0

    .line 16
    return p0
.end method
