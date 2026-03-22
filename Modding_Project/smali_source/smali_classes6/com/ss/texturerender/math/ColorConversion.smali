.class public Lcom/ss/texturerender/math/ColorConversion;
.super Ljava/lang/Object;
.source "ColorConversion.java"


# static fields
.field public static matrix_BT2020_10bit_yuv_to_rgb_full:[F

.field public static matrix_BT2020_10bit_yuv_to_rgb_limite:[F

.field public static matrix_BT2020_8bit_yuv_to_rgb_full:[F

.field public static matrix_BT2020_8bit_yuv_to_rgb_limite:[F

.field public static matrix_Rec601_yuv_to_rgb_full:[F

.field public static matrix_Rec601_yuv_to_rgb_limit:[F

.field public static matrix_Rec709_yuv_to_rgb_full:[F

.field public static matrix_Rec709_yuv_to_rgb_limit:[F

.field public static offset_full:[F

.field public static offset_limite_10bit:[F

.field public static offset_limite_8bit:[F


# instance fields
.field public matrix:[F

.field public offset:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/ss/texturerender/math/ColorConversion;->matrix_Rec601_yuv_to_rgb_full:[F

    .line 9
    .line 10
    new-array v1, v0, [F

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/ss/texturerender/math/ColorConversion;->matrix_Rec601_yuv_to_rgb_limit:[F

    .line 16
    .line 17
    new-array v1, v0, [F

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/ss/texturerender/math/ColorConversion;->matrix_Rec709_yuv_to_rgb_full:[F

    .line 23
    .line 24
    new-array v1, v0, [F

    .line 25
    .line 26
    fill-array-data v1, :array_3

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/ss/texturerender/math/ColorConversion;->matrix_Rec709_yuv_to_rgb_limit:[F

    .line 30
    .line 31
    new-array v1, v0, [F

    .line 32
    .line 33
    fill-array-data v1, :array_4

    .line 34
    .line 35
    .line 36
    sput-object v1, Lcom/ss/texturerender/math/ColorConversion;->matrix_BT2020_8bit_yuv_to_rgb_full:[F

    .line 37
    .line 38
    new-array v1, v0, [F

    .line 39
    .line 40
    fill-array-data v1, :array_5

    .line 41
    .line 42
    .line 43
    sput-object v1, Lcom/ss/texturerender/math/ColorConversion;->matrix_BT2020_8bit_yuv_to_rgb_limite:[F

    .line 44
    .line 45
    new-array v1, v0, [F

    .line 46
    .line 47
    fill-array-data v1, :array_6

    .line 48
    .line 49
    .line 50
    sput-object v1, Lcom/ss/texturerender/math/ColorConversion;->matrix_BT2020_10bit_yuv_to_rgb_full:[F

    .line 51
    .line 52
    new-array v0, v0, [F

    .line 53
    .line 54
    fill-array-data v0, :array_7

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/ss/texturerender/math/ColorConversion;->matrix_BT2020_10bit_yuv_to_rgb_limite:[F

    .line 58
    .line 59
    const/4 v0, 0x3

    .line 60
    new-array v1, v0, [F

    .line 61
    .line 62
    fill-array-data v1, :array_8

    .line 63
    .line 64
    .line 65
    sput-object v1, Lcom/ss/texturerender/math/ColorConversion;->offset_limite_8bit:[F

    .line 66
    .line 67
    new-array v1, v0, [F

    .line 68
    .line 69
    fill-array-data v1, :array_9

    .line 70
    .line 71
    .line 72
    sput-object v1, Lcom/ss/texturerender/math/ColorConversion;->offset_limite_10bit:[F

    .line 73
    .line 74
    new-array v0, v0, [F

    .line 75
    .line 76
    fill-array-data v0, :array_a

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/ss/texturerender/math/ColorConversion;->offset_full:[F

    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x80000000
        0x3fb374bc    # 1.402f
        0x3f800000    # 1.0f
        -0x414fcd68    # -0.344136f
        -0x40c92e62
        0x3f800000    # 1.0f
        0x3fe2d0e5    # 1.772f
        0x0
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_1
    .array-data 4
        0x3f950a89
        -0x80000000
        0x3fcc4a9d
        0x3f950a89
        -0x41376af9
        -0x40afe154
        0x3f950a89
        0x40011a54
        0x0
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        -0x80000000
        0x3fc9930c    # 1.5748f
        0x3f800000    # 1.0f
        -0x41c02e23
        -0x4110520d
        0x3f800000    # 1.0f
        0x3fed844d    # 1.8556f
        -0x80000000
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_3
    .array-data 4
        0x3f950a89
        -0x80000000
        0x3fe57889
        0x3f950a89
        -0x41a5a20e
        -0x40f79347
        0x3f950a89
        0x40073198
        -0x80000000
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        -0x80000000
        0x3fbcbfb1    # 1.4746f
        0x3f800000    # 1.0f
        -0x41d77f6b
        -0x40edbbcf
        0x3f800000    # 1.0f
        0x3ff0d1b7    # 1.8814f
        -0x80000000
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :array_5
    .array-data 4
        0x3f950a89
        -0x80000000
        0x3fd6deca
        0x3f950a89
        -0x41c02d9d    # -0.187326f
        -0x40d97dd0
        0x3f950a89
        0x400912cb
        -0x80000000
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        -0x80000000
        0x3fbcbfb1    # 1.4746f
        0x3f800000    # 1.0f
        -0x41d77f6b
        -0x40edbbcf
        0x3f800000    # 1.0f
        0x3ff0d1b7    # 1.8814f
        -0x80000000
    .end array-data

    :array_7
    .array-data 4
        0x3f957abc
        -0x80000000
        0x3fd78091
        0x3f957abc
        -0x41bf9d2c    # -0.187877f
        -0x40d90071
        0x3f957abc
        0x40097a03
        -0x80000000
    .end array-data

    :array_8
    .array-data 4
        -0x427f7f8d
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
    .end array-data

    :array_9
    .array-data 4
        -0x427fdff9
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
    .end array-data

    :array_a
    .array-data 4
        0x0
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
    .end array-data
.end method

.method public constructor <init>([F[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/texturerender/math/ColorConversion;->matrix:[F

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/texturerender/math/ColorConversion;->offset:[F

    .line 7
    .line 8
    return-void
.end method

.method public static getFromDataspace(II)Lcom/ss/texturerender/math/ColorConversion;
    .locals 5

    .line 1
    and-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    shr-int/2addr p0, v1

    .line 5
    and-int/lit8 p0, p0, 0x3f

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_c

    .line 9
    .line 10
    if-eq p0, v1, :cond_c

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_8

    .line 15
    :cond_0
    new-instance v3, Lcom/ss/texturerender/math/ColorConversion;

    .line 16
    .line 17
    invoke-direct {v3, v2, v2}, Lcom/ss/texturerender/math/ColorConversion;-><init>([F[F)V

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    sget-object v4, Lcom/ss/texturerender/math/ColorConversion;->offset_full:[F

    .line 25
    .line 26
    iput-object v4, v3, Lcom/ss/texturerender/math/ColorConversion;->offset:[F

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    if-ne p1, v2, :cond_2

    .line 30
    .line 31
    sget-object v4, Lcom/ss/texturerender/math/ColorConversion;->offset_limite_8bit:[F

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-object v4, Lcom/ss/texturerender/math/ColorConversion;->offset_limite_10bit:[F

    .line 35
    .line 36
    :goto_0
    iput-object v4, v3, Lcom/ss/texturerender/math/ColorConversion;->offset:[F

    .line 37
    .line 38
    :goto_1
    const/4 v4, 0x5

    .line 39
    if-eq p0, v4, :cond_a

    .line 40
    .line 41
    const/4 v4, 0x6

    .line 42
    if-ne p0, v4, :cond_3

    .line 43
    .line 44
    goto :goto_5

    .line 45
    :cond_3
    const/16 v4, 0x9

    .line 46
    .line 47
    if-eq p0, v4, :cond_6

    .line 48
    .line 49
    const/16 v4, 0xa

    .line 50
    .line 51
    if-ne p0, v4, :cond_4

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    if-ne v0, v1, :cond_5

    .line 55
    .line 56
    sget-object p0, Lcom/ss/texturerender/math/ColorConversion;->matrix_Rec709_yuv_to_rgb_full:[F

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    sget-object p0, Lcom/ss/texturerender/math/ColorConversion;->matrix_Rec709_yuv_to_rgb_limit:[F

    .line 60
    .line 61
    :goto_2
    iput-object p0, v3, Lcom/ss/texturerender/math/ColorConversion;->matrix:[F

    .line 62
    .line 63
    goto :goto_7

    .line 64
    :cond_6
    :goto_3
    if-ne v0, v1, :cond_8

    .line 65
    .line 66
    if-ne p1, v2, :cond_7

    .line 67
    .line 68
    sget-object p0, Lcom/ss/texturerender/math/ColorConversion;->matrix_BT2020_8bit_yuv_to_rgb_full:[F

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_7
    sget-object p0, Lcom/ss/texturerender/math/ColorConversion;->matrix_BT2020_10bit_yuv_to_rgb_full:[F

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_8
    if-ne p1, v2, :cond_9

    .line 75
    .line 76
    sget-object p0, Lcom/ss/texturerender/math/ColorConversion;->matrix_BT2020_8bit_yuv_to_rgb_limite:[F

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_9
    sget-object p0, Lcom/ss/texturerender/math/ColorConversion;->matrix_BT2020_10bit_yuv_to_rgb_limite:[F

    .line 80
    .line 81
    :goto_4
    iput-object p0, v3, Lcom/ss/texturerender/math/ColorConversion;->matrix:[F

    .line 82
    .line 83
    goto :goto_7

    .line 84
    :cond_a
    :goto_5
    if-ne v0, v1, :cond_b

    .line 85
    .line 86
    sget-object p0, Lcom/ss/texturerender/math/ColorConversion;->matrix_Rec601_yuv_to_rgb_full:[F

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_b
    sget-object p0, Lcom/ss/texturerender/math/ColorConversion;->matrix_Rec601_yuv_to_rgb_limit:[F

    .line 90
    .line 91
    :goto_6
    iput-object p0, v3, Lcom/ss/texturerender/math/ColorConversion;->matrix:[F

    .line 92
    .line 93
    :goto_7
    return-object v3

    .line 94
    :cond_c
    :goto_8
    return-object v2
.end method
