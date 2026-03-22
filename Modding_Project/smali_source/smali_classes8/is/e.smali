.class public final Lis/e;
.super Ljava/lang/Object;
.source "UTF8.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUTF8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 3 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 4 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 5 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,379:1\n123#1,5:401\n128#1,2:411\n130#1,61:415\n193#1:478\n319#1,3:517\n322#1,4:522\n326#1,18:527\n309#1,7:545\n319#1,3:552\n322#1,4:557\n326#1,18:562\n372#2,5:380\n377#2,2:387\n372#2,5:406\n377#2,2:476\n372#2,5:506\n377#2,2:513\n84#3:385\n84#3:413\n84#3:511\n99#3:526\n99#3:561\n99#3:582\n99#3:585\n99#3:588\n99#3:591\n99#3:594\n99#3:597\n99#3:600\n99#3:603\n99#3:606\n26#4:386\n26#4:414\n26#4:512\n37#4,2:515\n37#4,2:520\n37#4,2:555\n37#4,2:580\n37#4,2:583\n37#4,2:586\n37#4,2:589\n37#4,2:592\n37#4,2:595\n37#4,2:598\n37#4,2:601\n37#4,2:604\n37#4,2:607\n852#5,8:389\n862#5,3:398\n866#5,11:479\n877#5,15:491\n69#6:397\n59#6:490\n*S KotlinDebug\n*F\n+ 1 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n*L\n42#1:401,5\n42#1:411,2\n42#1:415,61\n42#1:478\n255#1:517,3\n255#1:522,4\n255#1:527,18\n297#1:545,7\n301#1:552,3\n301#1:557,4\n301#1:562,18\n9#1:380,5\n9#1:387,2\n42#1:406,5\n42#1:476,2\n127#1:506,5\n127#1:513,2\n11#1:385\n42#1:413\n129#1:511\n255#1:526\n301#1:561\n325#1:582\n326#1:585\n330#1:588\n331#1:591\n332#1:594\n336#1:597\n337#1:600\n338#1:603\n339#1:606\n11#1:386\n42#1:414\n129#1:512\n211#1:515,2\n255#1:520,2\n301#1:555,2\n321#1:580,2\n325#1:583,2\n326#1:586,2\n330#1:589,2\n331#1:592,2\n332#1:595,2\n336#1:598,2\n337#1:601,2\n338#1:604,2\n339#1:607,2\n40#1:389,8\n40#1:398,3\n40#1:479,11\n40#1:491,15\n40#1:397\n40#1:490\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(CC)I
    .locals 1

    .line 1
    const v0, 0xd7c0

    .line 2
    .line 3
    .line 4
    sub-int/2addr p0, v0

    .line 5
    const v0, 0xdc00

    .line 6
    .line 7
    .line 8
    sub-int/2addr p1, v0

    .line 9
    shl-int/lit8 p0, p0, 0xa

    .line 10
    .line 11
    or-int/2addr p0, p1

    .line 12
    return p0
.end method

.method public static final b(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIII)I
    .locals 10
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$encodeUTF8"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "text"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0xffff

    .line 12
    .line 13
    .line 14
    add-int v1, p2, v0

    .line 15
    .line 16
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-static {p5, v0}, Lkotlin/ranges/e;->j(II)I

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    move v4, p2

    .line 25
    move v7, p4

    .line 26
    :goto_0
    if-ge v7, v8, :cond_2

    .line 27
    .line 28
    if-lt v4, v5, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 p3, v4, 0x1

    .line 32
    .line 33
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result p5

    .line 37
    and-int v1, p5, v0

    .line 38
    .line 39
    const v2, 0xff80

    .line 40
    .line 41
    .line 42
    and-int/2addr p5, v2

    .line 43
    if-nez p5, :cond_1

    .line 44
    .line 45
    add-int/lit8 p5, v7, 0x1

    .line 46
    .line 47
    int-to-byte v1, v1

    .line 48
    invoke-virtual {p0, v7, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    move v4, p3

    .line 52
    move v7, p5

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v2, p0

    .line 55
    move-object v3, p1

    .line 56
    move v6, p2

    .line 57
    move v9, p4

    .line 58
    invoke-static/range {v2 .. v9}, Lis/e;->c(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :cond_2
    :goto_1
    sub-int/2addr v4, p2

    .line 64
    int-to-short p0, v4

    .line 65
    invoke-static {p0}, Lms/s;->b(S)S

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    sub-int/2addr v7, p4

    .line 70
    int-to-short p1, v7

    .line 71
    invoke-static {p1}, Lms/s;->b(S)S

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-static {p0, p1}, Lis/c;->d(SS)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0
.end method

.method private static final c(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move v3, p3

    .line 4
    add-int/lit8 v2, p6, -0x3

    .line 5
    .line 6
    move v4, p2

    .line 7
    move/from16 v5, p5

    .line 8
    .line 9
    :goto_0
    sub-int v6, v2, v5

    .line 10
    .line 11
    if-lez v6, :cond_8

    .line 12
    .line 13
    if-lt v4, v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    add-int/lit8 v6, v4, 0x1

    .line 18
    .line 19
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    const/16 v9, 0x3f

    .line 28
    .line 29
    if-eqz v8, :cond_3

    .line 30
    .line 31
    if-eq v6, v3, :cond_2

    .line 32
    .line 33
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-nez v8, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    add-int/lit8 v4, v4, 0x2

    .line 45
    .line 46
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-static {v7, v6}, Lis/e;->a(CC)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    move v4, v6

    .line 56
    move v7, v9

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move v4, v6

    .line 59
    :goto_2
    const/16 v6, 0x80

    .line 60
    .line 61
    if-ltz v7, :cond_4

    .line 62
    .line 63
    if-ge v7, v6, :cond_4

    .line 64
    .line 65
    int-to-byte v6, v7

    .line 66
    invoke-virtual {p0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    const/4 v6, 0x1

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/16 v8, 0x800

    .line 72
    .line 73
    if-gt v6, v7, :cond_5

    .line 74
    .line 75
    if-ge v7, v8, :cond_5

    .line 76
    .line 77
    shr-int/lit8 v8, v7, 0x6

    .line 78
    .line 79
    and-int/lit8 v8, v8, 0x1f

    .line 80
    .line 81
    or-int/lit16 v8, v8, 0xc0

    .line 82
    .line 83
    int-to-byte v8, v8

    .line 84
    invoke-virtual {p0, v5, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    add-int/lit8 v8, v5, 0x1

    .line 88
    .line 89
    and-int/lit8 v7, v7, 0x3f

    .line 90
    .line 91
    or-int/2addr v6, v7

    .line 92
    int-to-byte v6, v6

    .line 93
    invoke-virtual {p0, v8, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    .line 96
    const/4 v6, 0x2

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    const/high16 v10, 0x10000

    .line 99
    .line 100
    if-gt v8, v7, :cond_6

    .line 101
    .line 102
    if-ge v7, v10, :cond_6

    .line 103
    .line 104
    shr-int/lit8 v8, v7, 0xc

    .line 105
    .line 106
    and-int/lit8 v8, v8, 0xf

    .line 107
    .line 108
    or-int/lit16 v8, v8, 0xe0

    .line 109
    .line 110
    int-to-byte v8, v8

    .line 111
    invoke-virtual {p0, v5, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    .line 114
    add-int/lit8 v8, v5, 0x1

    .line 115
    .line 116
    shr-int/lit8 v10, v7, 0x6

    .line 117
    .line 118
    and-int/2addr v9, v10

    .line 119
    or-int/2addr v9, v6

    .line 120
    int-to-byte v9, v9

    .line 121
    invoke-virtual {p0, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 122
    .line 123
    .line 124
    add-int/lit8 v8, v5, 0x2

    .line 125
    .line 126
    and-int/lit8 v7, v7, 0x3f

    .line 127
    .line 128
    or-int/2addr v6, v7

    .line 129
    int-to-byte v6, v6

    .line 130
    invoke-virtual {p0, v8, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    .line 133
    const/4 v6, 0x3

    .line 134
    goto :goto_3

    .line 135
    :cond_6
    if-gt v10, v7, :cond_7

    .line 136
    .line 137
    const/high16 v8, 0x110000

    .line 138
    .line 139
    if-ge v7, v8, :cond_7

    .line 140
    .line 141
    shr-int/lit8 v8, v7, 0x12

    .line 142
    .line 143
    and-int/lit8 v8, v8, 0x7

    .line 144
    .line 145
    or-int/lit16 v8, v8, 0xf0

    .line 146
    .line 147
    int-to-byte v8, v8

    .line 148
    invoke-virtual {p0, v5, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 149
    .line 150
    .line 151
    add-int/lit8 v8, v5, 0x1

    .line 152
    .line 153
    shr-int/lit8 v10, v7, 0xc

    .line 154
    .line 155
    and-int/2addr v10, v9

    .line 156
    or-int/2addr v10, v6

    .line 157
    int-to-byte v10, v10

    .line 158
    invoke-virtual {p0, v8, v10}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 159
    .line 160
    .line 161
    add-int/lit8 v8, v5, 0x2

    .line 162
    .line 163
    shr-int/lit8 v10, v7, 0x6

    .line 164
    .line 165
    and-int/2addr v9, v10

    .line 166
    or-int/2addr v9, v6

    .line 167
    int-to-byte v9, v9

    .line 168
    invoke-virtual {p0, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 169
    .line 170
    .line 171
    add-int/lit8 v8, v5, 0x3

    .line 172
    .line 173
    and-int/lit8 v7, v7, 0x3f

    .line 174
    .line 175
    or-int/2addr v6, v7

    .line 176
    int-to-byte v6, v6

    .line 177
    invoke-virtual {p0, v8, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 178
    .line 179
    .line 180
    const/4 v6, 0x4

    .line 181
    :goto_3
    add-int/2addr v5, v6

    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_7
    invoke-static {v7}, Lis/e;->j(I)Ljava/lang/Void;

    .line 185
    .line 186
    .line 187
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 188
    .line 189
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :cond_8
    :goto_4
    if-ne v5, v2, :cond_9

    .line 194
    .line 195
    move-object v0, p0

    .line 196
    move-object v1, p1

    .line 197
    move v2, v4

    .line 198
    move v3, p3

    .line 199
    move v4, p4

    .line 200
    move/from16 v6, p6

    .line 201
    .line 202
    move/from16 v7, p7

    .line 203
    .line 204
    invoke-static/range {v0 .. v7}, Lis/e;->d(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    return v0

    .line 209
    :cond_9
    sub-int/2addr v4, p4

    .line 210
    int-to-short v0, v4

    .line 211
    invoke-static {v0}, Lms/s;->b(S)S

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    sub-int v5, v5, p7

    .line 216
    .line 217
    int-to-short v1, v5

    .line 218
    invoke-static {v1}, Lms/s;->b(S)S

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-static {v0, v1}, Lis/c;->d(SS)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    return v0
.end method

.method private static final d(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIIIII)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p2

    .line 8
    .line 9
    move/from16 v4, p5

    .line 10
    .line 11
    :goto_0
    sub-int v5, p6, v4

    .line 12
    .line 13
    if-lez v5, :cond_d

    .line 14
    .line 15
    if-lt v3, v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v6, v3, 0x1

    .line 20
    .line 21
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/16 v9, 0x3f

    .line 30
    .line 31
    if-nez v8, :cond_1

    .line 32
    .line 33
    move v3, v6

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    if-eq v6, v2, :cond_3

    .line 36
    .line 37
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-nez v8, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    add-int/lit8 v3, v3, 0x2

    .line 49
    .line 50
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-static {v7, v6}, Lis/e;->a(CC)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    :goto_1
    move v3, v6

    .line 60
    move v7, v9

    .line 61
    :goto_2
    const/high16 v8, 0x110000

    .line 62
    .line 63
    const/4 v10, 0x3

    .line 64
    const/high16 v11, 0x10000

    .line 65
    .line 66
    const/16 v12, 0x800

    .line 67
    .line 68
    const/4 v13, 0x2

    .line 69
    const/4 v14, 0x1

    .line 70
    const/16 v15, 0x80

    .line 71
    .line 72
    if-gt v14, v7, :cond_4

    .line 73
    .line 74
    if-ge v7, v15, :cond_4

    .line 75
    .line 76
    move v6, v14

    .line 77
    goto :goto_3

    .line 78
    :cond_4
    if-gt v15, v7, :cond_5

    .line 79
    .line 80
    if-ge v7, v12, :cond_5

    .line 81
    .line 82
    move v6, v13

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    if-gt v12, v7, :cond_6

    .line 85
    .line 86
    if-ge v7, v11, :cond_6

    .line 87
    .line 88
    move v6, v10

    .line 89
    goto :goto_3

    .line 90
    :cond_6
    if-gt v11, v7, :cond_c

    .line 91
    .line 92
    if-ge v7, v8, :cond_c

    .line 93
    .line 94
    const/4 v6, 0x4

    .line 95
    :goto_3
    if-le v6, v5, :cond_7

    .line 96
    .line 97
    add-int/lit8 v3, v3, -0x1

    .line 98
    .line 99
    goto/16 :goto_5

    .line 100
    .line 101
    :cond_7
    if-ltz v7, :cond_8

    .line 102
    .line 103
    if-ge v7, v15, :cond_8

    .line 104
    .line 105
    int-to-byte v5, v7

    .line 106
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    .line 109
    move v6, v14

    .line 110
    goto :goto_4

    .line 111
    :cond_8
    if-gt v15, v7, :cond_9

    .line 112
    .line 113
    if-ge v7, v12, :cond_9

    .line 114
    .line 115
    shr-int/lit8 v5, v7, 0x6

    .line 116
    .line 117
    and-int/lit8 v5, v5, 0x1f

    .line 118
    .line 119
    or-int/lit16 v5, v5, 0xc0

    .line 120
    .line 121
    int-to-byte v5, v5

    .line 122
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    .line 125
    add-int/lit8 v5, v4, 0x1

    .line 126
    .line 127
    and-int/lit8 v6, v7, 0x3f

    .line 128
    .line 129
    or-int/2addr v6, v15

    .line 130
    int-to-byte v6, v6

    .line 131
    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 132
    .line 133
    .line 134
    move v6, v13

    .line 135
    goto :goto_4

    .line 136
    :cond_9
    if-gt v12, v7, :cond_a

    .line 137
    .line 138
    if-ge v7, v11, :cond_a

    .line 139
    .line 140
    shr-int/lit8 v5, v7, 0xc

    .line 141
    .line 142
    and-int/lit8 v5, v5, 0xf

    .line 143
    .line 144
    or-int/lit16 v5, v5, 0xe0

    .line 145
    .line 146
    int-to-byte v5, v5

    .line 147
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    .line 150
    add-int/lit8 v5, v4, 0x1

    .line 151
    .line 152
    shr-int/lit8 v6, v7, 0x6

    .line 153
    .line 154
    and-int/2addr v6, v9

    .line 155
    or-int/2addr v6, v15

    .line 156
    int-to-byte v6, v6

    .line 157
    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    .line 160
    add-int/lit8 v5, v4, 0x2

    .line 161
    .line 162
    and-int/lit8 v6, v7, 0x3f

    .line 163
    .line 164
    or-int/2addr v6, v15

    .line 165
    int-to-byte v6, v6

    .line 166
    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 167
    .line 168
    .line 169
    move v6, v10

    .line 170
    goto :goto_4

    .line 171
    :cond_a
    if-gt v11, v7, :cond_b

    .line 172
    .line 173
    if-ge v7, v8, :cond_b

    .line 174
    .line 175
    shr-int/lit8 v5, v7, 0x12

    .line 176
    .line 177
    and-int/lit8 v5, v5, 0x7

    .line 178
    .line 179
    or-int/lit16 v5, v5, 0xf0

    .line 180
    .line 181
    int-to-byte v5, v5

    .line 182
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 183
    .line 184
    .line 185
    add-int/lit8 v5, v4, 0x1

    .line 186
    .line 187
    shr-int/lit8 v6, v7, 0xc

    .line 188
    .line 189
    and-int/2addr v6, v9

    .line 190
    or-int/2addr v6, v15

    .line 191
    int-to-byte v6, v6

    .line 192
    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 193
    .line 194
    .line 195
    add-int/lit8 v5, v4, 0x2

    .line 196
    .line 197
    shr-int/lit8 v6, v7, 0x6

    .line 198
    .line 199
    and-int/2addr v6, v9

    .line 200
    or-int/2addr v6, v15

    .line 201
    int-to-byte v6, v6

    .line 202
    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 203
    .line 204
    .line 205
    add-int/lit8 v5, v4, 0x3

    .line 206
    .line 207
    and-int/lit8 v6, v7, 0x3f

    .line 208
    .line 209
    or-int/2addr v6, v15

    .line 210
    int-to-byte v6, v6

    .line 211
    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 212
    .line 213
    .line 214
    const/4 v6, 0x4

    .line 215
    :goto_4
    add-int/2addr v4, v6

    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_b
    invoke-static {v7}, Lis/e;->j(I)Ljava/lang/Void;

    .line 219
    .line 220
    .line 221
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 222
    .line 223
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :cond_c
    invoke-static {v7}, Lis/e;->j(I)Ljava/lang/Void;

    .line 228
    .line 229
    .line 230
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 231
    .line 232
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 233
    .line 234
    .line 235
    throw v0

    .line 236
    :cond_d
    :goto_5
    sub-int v3, v3, p4

    .line 237
    .line 238
    int-to-short v0, v3

    .line 239
    invoke-static {v0}, Lms/s;->b(S)S

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    sub-int v4, v4, p7

    .line 244
    .line 245
    int-to-short v1, v4

    .line 246
    invoke-static {v1}, Lms/s;->b(S)S

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    invoke-static {v0, v1}, Lis/c;->d(SS)I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    return v0
.end method

.method public static final e(I)I
    .locals 1

    .line 1
    ushr-int/lit8 p0, p0, 0xa

    .line 2
    .line 3
    const v0, 0xd7c0

    .line 4
    .line 5
    .line 6
    add-int/2addr p0, v0

    .line 7
    return p0
.end method

.method public static final f(I)Z
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0x10

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public static final g(I)Z
    .locals 1

    .line 1
    const v0, 0x10ffff

    .line 2
    .line 3
    .line 4
    if-gt p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public static final h(I)I
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0x3ff

    .line 2
    .line 3
    const v0, 0xdc00

    .line 4
    .line 5
    .line 6
    add-int/2addr p0, v0

    .line 7
    return p0
.end method

.method public static final i(I)Ljava/lang/Void;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Expected "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, " more character bytes"

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public static final j(I)Ljava/lang/Void;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Malformed code-point "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, " found"

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method
