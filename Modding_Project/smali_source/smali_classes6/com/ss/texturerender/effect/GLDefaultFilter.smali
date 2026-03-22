.class public Lcom/ss/texturerender/effect/GLDefaultFilter;
.super Lcom/ss/texturerender/effect/AbsEffect;
.source "GLDefaultFilter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_GLDefaultFilter"

.field public static final OPTION_FILTER_CALL_GLFINISH:I = 0x4e26

.field public static final OPTION_FILTER_INT_GL_ERROR:I = 0x4e25

.field public static final OPTION_FILTER_INT_PORT_HEIGHT:I = 0x4e22

.field public static final OPTION_FILTER_INT_PORT_WIDTH:I = 0x4e21

.field public static final OPTION_FILTER_INT_PORT_X:I = 0x4e23

.field public static final OPTION_FILTER_INT_PORT_Y:I = 0x4e24

.field public static mTextureVerticesData:[F

.field public static mTriangleVerticesData:[F


# instance fields
.field FLOAT_SIZE_BYTES:I

.field protected TEXTURE_VERTICES_DATA_STRIDE_BYTES:I

.field protected TRIANGLE_VERTICES_DATA_POS_OFFSET:I

.field protected TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I

.field protected TRIANGLE_VERTICES_DATA_UV_OFFSET:I

.field private final fragmentDefaultShader:Ljava/lang/String;

.field protected isMirrorHorizontal:Z

.field protected isMirrorVertical:Z

.field protected mCropHeightNormalize:F

.field protected mCropTextureCoord:[F

.field protected mCropWidthNormalize:F

.field protected mCropXNormalize:F

.field protected mCropYNormalize:F

.field protected mGLError:I

.field protected mIndexBuffers:Ljava/nio/ShortBuffer;

.field protected mInputTextureHandle:I

.field protected mIsCallGLfinish:I

.field protected mLayoutAspectRatio:F

.field protected mLayoutMode:I

.field protected mNeedClear:Z

.field protected mOutTexHeight:I

.field protected mOutTexWidth:I

.field protected mProgram:I

.field protected mRotation:I

.field protected mTextureMagFilter:I

.field protected mTextureMinFilter:I

.field protected mTextureVertices:Ljava/nio/FloatBuffer;

.field protected mTriangleVertices:Ljava/nio/FloatBuffer;

.field protected mViewPortHeight:I

.field protected mViewPortWidth:I

.field protected mViewPortX:I

.field protected mViewPortY:I

.field protected maPositionHandle:I

.field protected maTextureHandle:I

.field private final vertexDefaultShader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVerticesData:[F

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    new-array v0, v0, [F

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVerticesData:[F

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ss/texturerender/effect/AbsEffect;-><init>(II)V

    .line 3
    const-string p1, "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position =  aPosition;\n  vTextureCoord = aTextureCoord.xy;\n}\n"

    iput-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->vertexDefaultShader:Ljava/lang/String;

    .line 4
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    iput-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->fragmentDefaultShader:Ljava/lang/String;

    const/16 p1, 0xc

    .line 5
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I

    const/16 p1, 0x8

    .line 6
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TEXTURE_VERTICES_DATA_STRIDE_BYTES:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_POS_OFFSET:I

    .line 8
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_UV_OFFSET:I

    const/4 p2, 0x4

    .line 9
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->FLOAT_SIZE_BYTES:I

    const/4 p2, -0x1

    .line 10
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 11
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 12
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 13
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mNeedClear:Z

    .line 15
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutMode:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 16
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropXNormalize:F

    .line 18
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropYNormalize:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropWidthNormalize:F

    .line 20
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropHeightNormalize:F

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropTextureCoord:[F

    const/16 v0, 0x2601

    .line 22
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureMinFilter:I

    .line 23
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureMagFilter:I

    .line 24
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mRotation:I

    .line 25
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorHorizontal:Z

    .line 26
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorVertical:Z

    .line 27
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    .line 28
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mIsCallGLfinish:I

    const/16 p2, 0xde1

    .line 29
    iput p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 30
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    return-void
.end method

.method private mirror(ILjava/nio/FloatBuffer;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVerticesData:[F

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    iget v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->FLOAT_SIZE_BYTES:I

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object p2, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVerticesData:[F

    .line 44
    .line 45
    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 46
    .line 47
    .line 48
    :goto_0
    const/16 p2, 0x1e

    .line 49
    .line 50
    const/4 v1, 0x7

    .line 51
    const/4 v2, 0x5

    .line 52
    const/4 v3, 0x6

    .line 53
    const/4 v4, 0x4

    .line 54
    const/4 v5, 0x3

    .line 55
    const/4 v6, 0x1

    .line 56
    const/4 v7, 0x2

    .line 57
    const/4 v8, 0x0

    .line 58
    if-ne p1, p2, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 61
    .line 62
    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->get(I)F

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-virtual {p1, v8, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 70
    .line 71
    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-virtual {p1, v6, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 79
    .line 80
    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-virtual {p1, v7, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 88
    .line 89
    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->get(I)F

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    invoke-virtual {p1, v5, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-virtual {p1, v4, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    invoke-virtual {p1, v2, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 115
    .line 116
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {p1, v3, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    invoke-virtual {p1, v1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    const/16 p2, 0x1f

    .line 134
    .line 135
    if-ne p1, p2, :cond_3

    .line 136
    .line 137
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 138
    .line 139
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    invoke-virtual {p1, v8, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    invoke-virtual {p1, v6, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    invoke-virtual {p1, v7, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    invoke-virtual {p1, v5, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 174
    .line 175
    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    invoke-virtual {p1, v4, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 183
    .line 184
    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->get(I)F

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    invoke-virtual {p1, v2, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 192
    .line 193
    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->get(I)F

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    invoke-virtual {p1, v3, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 201
    .line 202
    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    invoke-virtual {p1, v1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_3
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_UV_OFFSET:I

    .line 217
    .line 218
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 219
    .line 220
    .line 221
    :goto_1
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method private reTransformIfNeeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    const/16 v1, 0x92

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mRotation:I

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 18
    .line 19
    invoke-direct {p0, v2, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->rotate(Ljava/nio/FloatBuffer;I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorHorizontal:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x1e

    .line 27
    .line 28
    iget-object v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 29
    .line 30
    invoke-direct {p0, v0, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->mirror(ILjava/nio/FloatBuffer;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorVertical:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x1f

    .line 38
    .line 39
    iget-object v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 40
    .line 41
    invoke-direct {p0, v0, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->mirror(ILjava/nio/FloatBuffer;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x1

    .line 53
    if-ne v0, v1, :cond_3

    .line 54
    .line 55
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mRotation:I

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 60
    .line 61
    invoke-direct {p0, v1, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->rotate(Ljava/nio/FloatBuffer;I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method

.method private rotate(Ljava/nio/FloatBuffer;I)V
    .locals 9

    .line 1
    sget-object v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVerticesData:[F

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->FLOAT_SIZE_BYTES:I

    .line 5
    .line 6
    mul-int/2addr v0, v1

    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object p1, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVerticesData:[F

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 41
    .line 42
    .line 43
    :goto_0
    if-gez p2, :cond_1

    .line 44
    .line 45
    add-int/lit16 p2, p2, 0x168

    .line 46
    .line 47
    :cond_1
    const/16 p1, 0x5a

    .line 48
    .line 49
    const/4 v1, 0x5

    .line 50
    const/4 v2, 0x4

    .line 51
    const/4 v3, 0x7

    .line 52
    const/4 v4, 0x6

    .line 53
    const/4 v5, 0x3

    .line 54
    const/4 v6, 0x1

    .line 55
    const/4 v7, 0x2

    .line 56
    const/4 v8, 0x0

    .line 57
    if-ne p2, p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 60
    .line 61
    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->get(I)F

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-virtual {p1, v8, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 69
    .line 70
    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    invoke-virtual {p1, v6, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    invoke-virtual {p1, v7, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    invoke-virtual {p1, v5, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 96
    .line 97
    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    invoke-virtual {p1, v2, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 105
    .line 106
    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->get(I)F

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-virtual {p1, v1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    invoke-virtual {p1, v4, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-virtual {p1, v3, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 129
    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :cond_2
    const/16 p1, 0xb4

    .line 134
    .line 135
    if-ne p2, p1, :cond_3

    .line 136
    .line 137
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 138
    .line 139
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    invoke-virtual {p1, v8, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    invoke-virtual {p1, v6, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    invoke-virtual {p1, v7, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    invoke-virtual {p1, v5, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 174
    .line 175
    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->get(I)F

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    invoke-virtual {p1, v2, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 183
    .line 184
    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    invoke-virtual {p1, v1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 192
    .line 193
    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    invoke-virtual {p1, v4, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 201
    .line 202
    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->get(I)F

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    invoke-virtual {p1, v3, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_3
    const/16 p1, 0x10e

    .line 211
    .line 212
    if-ne p2, p1, :cond_4

    .line 213
    .line 214
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->get(I)F

    .line 217
    .line 218
    .line 219
    move-result p2

    .line 220
    invoke-virtual {p1, v8, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    .line 226
    .line 227
    .line 228
    move-result p2

    .line 229
    invoke-virtual {p1, v6, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 233
    .line 234
    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->get(I)F

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    invoke-virtual {p1, v7, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 242
    .line 243
    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->get(I)F

    .line 244
    .line 245
    .line 246
    move-result p2

    .line 247
    invoke-virtual {p1, v5, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 251
    .line 252
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    invoke-virtual {p1, v2, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 260
    .line 261
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->get(I)F

    .line 262
    .line 263
    .line 264
    move-result p2

    .line 265
    invoke-virtual {p1, v1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 269
    .line 270
    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->get(I)F

    .line 271
    .line 272
    .line 273
    move-result p2

    .line 274
    invoke-virtual {p1, v4, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 278
    .line 279
    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->get(I)F

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    invoke-virtual {p1, v3, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 284
    .line 285
    .line 286
    goto :goto_1

    .line 287
    :cond_4
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 288
    .line 289
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_UV_OFFSET:I

    .line 294
    .line 295
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 296
    .line 297
    .line 298
    :goto_1
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 299
    .line 300
    .line 301
    return-void
.end method


# virtual methods
.method protected genTexture()Lcom/ss/texturerender/effect/EffectTexture;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mParentRender:Lcom/ss/texturerender/TextureRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/texturerender/TextureRenderer;->getEffectTextureManager()Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mParentRender:Lcom/ss/texturerender/TextureRenderer;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/ss/texturerender/TextureRenderer;->getEffectTextureManager()Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 23
    .line 24
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 25
    .line 26
    iget-object v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 27
    .line 28
    const/16 v4, 0x82

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/texturerender/effect/EffectTextureManager;->genTexture(III)Lcom/ss/texturerender/effect/EffectTexture;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mParentRender:Lcom/ss/texturerender/TextureRenderer;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/ss/texturerender/TextureRenderer;->getEffectTextureManager()Lcom/ss/texturerender/effect/EffectTextureManager;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 46
    .line 47
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/ss/texturerender/effect/EffectTextureManager;->genTexture(II)Lcom/ss/texturerender/effect/EffectTexture;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 55
    return-object v0
.end method

.method public getIntOption(I)I
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/AbsEffect;->getIntOption(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1

    .line 9
    :pswitch_0
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    .line 10
    .line 11
    return p1

    .line 12
    :pswitch_1
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 13
    .line 14
    return p1

    .line 15
    :pswitch_2
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 16
    .line 17
    return p1

    .line 18
    :pswitch_3
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 19
    .line 20
    return p1

    .line 21
    :pswitch_4
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 22
    .line 23
    return p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x2af8

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x2af9

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/AbsEffect;->getStringOption(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    const-string p1, "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position =  aPosition;\n  vTextureCoord = aTextureCoord.xy;\n}\n"

    .line 18
    .line 19
    return-object p1
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, -0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 8
    .line 9
    const/16 v3, 0x7e

    .line 10
    .line 11
    invoke-virtual {p1, v3, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 18
    .line 19
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 20
    .line 21
    invoke-virtual {p1, v3, v2, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(III)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/16 p1, 0x2af8

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getStringOption(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const v2, 0x8b31

    .line 31
    .line 32
    .line 33
    invoke-static {v2, p1}, Lcom/ss/texturerender/ShaderHelper;->compileShader(ILjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/16 v2, 0x2af9

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getStringOption(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const v3, 0x8b30

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v2}, Lcom/ss/texturerender/ShaderHelper;->compileShader(ILjava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v3, 0x0

    .line 56
    invoke-static {p1, v2, v3}, Lcom/ss/texturerender/ShaderHelper;->createAndLinkProgram(II[Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 61
    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v2, "create program error,filter:"

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v2, "TR_GLDefaultFilter"

    .line 86
    .line 87
    invoke-static {p1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iput v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    .line 91
    .line 92
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 97
    .line 98
    const-string v2, "create program error"

    .line 99
    .line 100
    const/16 v3, 0x9

    .line 101
    .line 102
    invoke-virtual {p1, v3, v0, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    return v1

    .line 106
    :cond_3
    const-string v1, "sTexture"

    .line 107
    .line 108
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mInputTextureHandle:I

    .line 113
    .line 114
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 115
    .line 116
    const-string v1, "aPosition"

    .line 117
    .line 118
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 123
    .line 124
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 125
    .line 126
    const-string v1, "aTextureCoord"

    .line 127
    .line 128
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->initParam()V

    .line 135
    .line 136
    .line 137
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    .line 138
    .line 139
    return v0

    .line 140
    :cond_4
    :goto_0
    iput v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    .line 141
    .line 142
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 143
    .line 144
    if-eqz p1, :cond_5

    .line 145
    .line 146
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 147
    .line 148
    const-string v2, "compile shader error"

    .line 149
    .line 150
    const/16 v3, 0x8

    .line 151
    .line 152
    invoke-virtual {p1, v3, v0, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_5
    return v1
.end method

.method protected initParam()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVerticesData:[F

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->FLOAT_SIZE_BYTES:I

    .line 5
    .line 6
    mul-int/2addr v0, v1

    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 24
    .line 25
    sget-object v1, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVerticesData:[F

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVerticesData:[F

    .line 36
    .line 37
    array-length v0, v0

    .line 38
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->FLOAT_SIZE_BYTES:I

    .line 39
    .line 40
    mul-int/2addr v0, v2

    .line 41
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 58
    .line 59
    sget-object v2, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVerticesData:[F

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onDrawFrameAfter()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onDrawFrameBefore()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;Ljava/lang/Boolean;)Lcom/ss/texturerender/effect/EffectTexture;

    move-result-object p1

    return-object p1
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;Ljava/lang/Boolean;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 3
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    const/16 v4, 0x7e

    invoke-virtual {v0, v4, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    invoke-virtual {v0, v4, v3, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(III)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    move-result v0

    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    if-eq v0, v3, :cond_2

    .line 6
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error, texture miss match, accept:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",in:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz p2, :cond_1

    .line 8
    iget p3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p2, v1, p3, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    :cond_1
    return-object p1

    .line 9
    :cond_2
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    const-string v3, "TR_GLDefaultFilter"

    if-nez v0, :cond_4

    .line 10
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "program error,don\'t process,filter:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v3, p3}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz p2, :cond_3

    .line 12
    iget p3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p2, v1, p3, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    :cond_3
    return-object p1

    .line 13
    :cond_4
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filter process start,type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    .line 15
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz p2, :cond_5

    .line 16
    iget p3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    const-string v1, ""

    invoke-virtual {p2, v0, p3, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    :cond_5
    return-object p1

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz v0, :cond_7

    .line 18
    iget v4, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    invoke-virtual {v0, v4}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessBegin(I)V

    .line 19
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->updateRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->updateDefaultRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I

    :cond_8
    if-eqz p2, :cond_c

    .line 21
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    if-nez v0, :cond_a

    .line 22
    :cond_9
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error width or height, w:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " h:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz v0, :cond_a

    .line 24
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v0, v5, v3, v4}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 25
    :cond_a
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->genTexture()Lcom/ss/texturerender/effect/EffectTexture;

    move-result-object v0

    if-nez v0, :cond_b

    return-object p1

    .line 26
    :cond_b
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/ss/texturerender/effect/FrameBuffer;->bindTexture2D(I)I

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    .line 27
    :goto_0
    iget v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 28
    iget-boolean v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mNeedClear:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    .line 29
    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v3, 0x4000

    .line 30
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 31
    :cond_d
    iget v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    iget v4, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    iget v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 32
    iget-object v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_POS_OFFSET:I

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    iget v9, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I

    iget-object v10, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v6, 0x3

    const/16 v7, 0x1406

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 34
    iget v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 35
    iget-object v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_UV_OFFSET:I

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    iget v9, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TEXTURE_VERTICES_DATA_STRIDE_BYTES:I

    iget-object v10, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 37
    iget v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v3, 0x84c0

    .line 38
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 39
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    move-result v4

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 40
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    const/16 v4, 0x2801

    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureMinFilter:I

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 41
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    const/16 v4, 0x2800

    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureMagFilter:I

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 42
    iget v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mInputTextureHandle:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 43
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->onDrawFrameBefore()I

    .line 44
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filter glDrawArrays before,type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x5

    const/4 v4, 0x4

    .line 45
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 46
    iput v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    goto :goto_1

    .line 47
    :cond_e
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    .line 48
    iget-object v4, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz v4, :cond_f

    .line 49
    iget v6, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v6, v5}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 50
    :cond_f
    :goto_1
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->onDrawFrameAfter()I

    .line 51
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 52
    iget v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 53
    iget v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 54
    iget v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mIsCallGLfinish:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    .line 55
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    :cond_10
    if-eqz p2, :cond_11

    .line 56
    invoke-virtual {p2}, Lcom/ss/texturerender/effect/FrameBuffer;->unbindTexture2D()V

    .line 57
    :cond_11
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz p2, :cond_12

    .line 58
    iget v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    invoke-virtual {p2, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessEnd(I)V

    .line 59
    :cond_12
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filter glDrawArrays after,type:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/ss/texturerender/TexGLUtils;->checkGLError(ILjava/lang/String;)I

    move-result p2

    .line 60
    iget v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    if-nez v1, :cond_15

    if-nez p2, :cond_15

    .line 61
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz p2, :cond_13

    const/16 v1, 0x13

    .line 62
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    invoke-virtual {p2, v1, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(III)V

    .line 63
    :cond_13
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 64
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    :cond_14
    return-object v0

    .line 65
    :cond_15
    iget-object p3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz p3, :cond_16

    .line 66
    iget v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, p2, v1, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    :cond_16
    if-eqz v0, :cond_17

    .line 67
    invoke-virtual {v0}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 68
    :cond_17
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mGLError:I

    return-object p1
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public resetCropParams()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "action"

    .line 7
    .line 8
    const/16 v2, 0x15

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v1, "effect_type"

    .line 14
    .line 15
    const/16 v2, 0xb

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "width"

    .line 21
    .line 22
    .line 23
    const/high16 v2, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 26
    .line 27
    .line 28
    const-string v1, "height"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v1, "x"

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v1, "y"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public resetRotationMirrorParams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 10
    .line 11
    sget-object v2, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVerticesData:[F

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setOption(IF)V
    .locals 1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    :goto_0
    return-void
.end method

.method public setOption(II)V
    .locals 5

    const/16 v0, 0x1a

    const/4 v1, 0x0

    if-eq p1, v0, :cond_17

    const/16 v0, 0x4e26

    if-eq p1, v0, :cond_16

    const/16 v0, 0x9e

    if-eq p1, v0, :cond_15

    const/16 v0, 0x9f

    if-eq p1, v0, :cond_14

    const/4 v0, 0x0

    const/16 v2, 0x90

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(II)V

    goto/16 :goto_5

    :pswitch_0
    if-ne p2, v3, :cond_0

    move v1, v3

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mNeedClear:Z

    goto/16 :goto_5

    .line 3
    :pswitch_1
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    goto/16 :goto_5

    .line 4
    :pswitch_2
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    goto/16 :goto_5

    .line 5
    :pswitch_3
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    goto/16 :goto_5

    .line 6
    :pswitch_4
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    goto/16 :goto_5

    .line 7
    :pswitch_5
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    const/16 v4, 0x1f

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 8
    iget-boolean p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorVertical:Z

    if-lez p2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-ne p1, v2, :cond_2

    if-eqz p1, :cond_19

    :cond_2
    if-lez p2, :cond_3

    move v1, v3

    .line 9
    :cond_3
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorVertical:Z

    if-eqz v1, :cond_4

    .line 10
    invoke-direct {p0, v4, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->mirror(ILjava/nio/FloatBuffer;)V

    goto/16 :goto_5

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->resetRotationMirrorParams()V

    goto/16 :goto_5

    .line 12
    :cond_5
    iget-boolean p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorVertical:Z

    if-lez p2, :cond_6

    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    if-eq p1, v0, :cond_19

    if-lez p2, :cond_7

    move v1, v3

    .line 13
    :cond_7
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorVertical:Z

    .line 14
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v4, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->mirror(ILjava/nio/FloatBuffer;)V

    goto/16 :goto_5

    .line 15
    :pswitch_6
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    const/16 v4, 0x1e

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    move-result p1

    if-ne p1, v3, :cond_c

    .line 16
    iget-boolean p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorHorizontal:Z

    if-lez p2, :cond_8

    move v2, v3

    goto :goto_2

    :cond_8
    move v2, v1

    :goto_2
    if-ne p1, v2, :cond_9

    if-eqz p1, :cond_19

    :cond_9
    if-lez p2, :cond_a

    move v1, v3

    .line 17
    :cond_a
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorHorizontal:Z

    if-eqz v1, :cond_b

    .line 18
    invoke-direct {p0, v4, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->mirror(ILjava/nio/FloatBuffer;)V

    goto/16 :goto_5

    .line 19
    :cond_b
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->resetRotationMirrorParams()V

    goto/16 :goto_5

    .line 20
    :cond_c
    iget-boolean p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorHorizontal:Z

    if-lez p2, :cond_d

    move v0, v3

    goto :goto_3

    :cond_d
    move v0, v1

    :goto_3
    if-eq p1, v0, :cond_19

    if-lez p2, :cond_e

    move v1, v3

    .line 21
    :cond_e
    iput-boolean v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorHorizontal:Z

    .line 22
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v4, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->mirror(ILjava/nio/FloatBuffer;)V

    goto/16 :goto_5

    .line 23
    :pswitch_7
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    if-eqz p1, :cond_13

    invoke-virtual {p1, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getIntOption(I)I

    move-result p1

    if-ne p1, v3, :cond_13

    .line 24
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mRotation:I

    if-ne p1, p2, :cond_f

    if-eqz p2, :cond_19

    .line 25
    :cond_f
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mRotation:I

    if-eqz p2, :cond_12

    .line 26
    iget-boolean p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorVertical:Z

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->isMirrorHorizontal:Z

    if-eqz p1, :cond_10

    goto :goto_4

    .line 27
    :cond_10
    invoke-direct {p0, v0, p2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->rotate(Ljava/nio/FloatBuffer;I)V

    goto :goto_5

    .line 28
    :cond_11
    :goto_4
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    invoke-direct {p0, p1, p2}, Lcom/ss/texturerender/effect/GLDefaultFilter;->rotate(Ljava/nio/FloatBuffer;I)V

    goto :goto_5

    .line 29
    :cond_12
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->resetRotationMirrorParams()V

    goto :goto_5

    .line 30
    :cond_13
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mRotation:I

    if-eq p1, p2, :cond_19

    .line 31
    iget-object v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    sub-int p1, p2, p1

    invoke-direct {p0, v0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->rotate(Ljava/nio/FloatBuffer;I)V

    .line 32
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mRotation:I

    goto :goto_5

    .line 33
    :cond_14
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureMagFilter:I

    goto :goto_5

    .line 34
    :cond_15
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureMinFilter:I

    goto :goto_5

    .line 35
    :cond_16
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mIsCallGLfinish:I

    goto :goto_5

    .line 36
    :cond_17
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutMode:I

    if-eq p1, p2, :cond_19

    .line 37
    sget-object p1, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVerticesData:[F

    array-length p1, p1

    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->FLOAT_SIZE_BYTES:I

    mul-int/2addr p1, v0

    .line 38
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 39
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_18

    .line 40
    sget-object v0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVerticesData:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    :cond_18
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutMode:I

    .line 42
    invoke-direct {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->reTransformIfNeeded()V

    :cond_19
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2716
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOption(I[F)V
    .locals 1

    const/16 v0, 0x32c8

    if-eq p1, v0, :cond_0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/ss/texturerender/effect/AbsEffect;->setOption(I[F)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 45
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_UV_OFFSET:I

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method public setOption(Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    const-string v0, "action"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 48
    const-string v2, "effect_type"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_7

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-ne v0, v1, :cond_7

    .line 49
    :cond_1
    const-string/jumbo v0, "width"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 50
    const-string v2, "height"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 51
    const-string/jumbo v3, "x"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 52
    const-string/jumbo v5, "y"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    cmpl-float v6, v3, v1

    if-gtz v6, :cond_7

    cmpg-float v6, v3, v4

    if-ltz v6, :cond_7

    cmpl-float v6, v5, v1

    if-gtz v6, :cond_7

    cmpg-float v6, v5, v4

    if-ltz v6, :cond_7

    cmpg-float v6, v0, v4

    if-lez v6, :cond_7

    cmpg-float v6, v2, v4

    if-lez v6, :cond_7

    .line 53
    iget v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropYNormalize:F

    cmpl-float v6, v5, v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropXNormalize:F

    cmpl-float v6, v3, v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropWidthNormalize:F

    cmpl-float v6, v0, v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropHeightNormalize:F

    cmpl-float v6, v2, v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 54
    :cond_2
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropWidthNormalize:F

    .line 55
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropHeightNormalize:F

    .line 56
    iput v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropXNormalize:F

    .line 57
    iput v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropYNormalize:F

    cmpg-float v6, v3, v4

    if-gez v6, :cond_3

    move v3, v4

    .line 58
    :cond_3
    iput v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropXNormalize:F

    cmpg-float v6, v5, v4

    if-gez v6, :cond_4

    goto :goto_0

    :cond_4
    move v4, v5

    .line 59
    :goto_0
    iput v4, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropYNormalize:F

    add-float v5, v3, v0

    cmpl-float v5, v5, v1

    if-lez v5, :cond_5

    sub-float v0, v1, v3

    .line 60
    :cond_5
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropWidthNormalize:F

    add-float v5, v4, v2

    cmpl-float v5, v5, v1

    if-lez v5, :cond_6

    sub-float v2, v1, v4

    .line 61
    :cond_6
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropHeightNormalize:F

    add-float v1, v3, v0

    add-float v5, v4, v2

    add-float/2addr v0, v3

    add-float/2addr v2, v4

    const/16 v6, 0x8

    .line 62
    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    const/4 v7, 0x2

    aput v1, v6, v7

    const/4 v1, 0x3

    aput v4, v6, v1

    const/4 v1, 0x4

    aput v3, v6, v1

    const/4 v1, 0x5

    aput v5, v6, v1

    const/4 v1, 0x6

    aput v0, v6, v1

    const/4 v0, 0x7

    aput v2, v6, v0

    iput-object v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropTextureCoord:[F

    .line 63
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param set success, bundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TR_GLDefaultFilter"

    invoke-static {v0, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    nop

    :cond_7
    :goto_1
    return-void
.end method

.method public updateDefaultRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    iget v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropWidthNormalize:F

    .line 7
    .line 8
    mul-float/2addr v0, v1

    .line 9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    int-to-float p1, p1

    .line 18
    iget v1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropHeightNormalize:F

    .line 19
    .line 20
    mul-float/2addr p1, v1

    .line 21
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/16 v1, 0x32c8

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 31
    .line 32
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 33
    .line 34
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 35
    .line 36
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 37
    .line 38
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 39
    .line 40
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 41
    .line 42
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropTextureCoord:[F

    .line 43
    .line 44
    invoke-virtual {p0, v1, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(I[F)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_0
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 50
    .line 51
    iget v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 52
    .line 53
    int-to-float p1, p1

    .line 54
    const/high16 v4, 0x3f800000    # 1.0f

    .line 55
    .line 56
    mul-float v5, p1, v4

    .line 57
    .line 58
    int-to-float v0, v0

    .line 59
    div-float/2addr v5, v0

    .line 60
    int-to-float v6, v3

    .line 61
    mul-float/2addr v6, v4

    .line 62
    int-to-float v7, p2

    .line 63
    div-float v8, v6, v7

    .line 64
    .line 65
    iget v9, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutMode:I

    .line 66
    .line 67
    const/16 v10, 0x10e

    .line 68
    .line 69
    const/16 v11, 0x5a

    .line 70
    .line 71
    if-nez v9, :cond_6

    .line 72
    .line 73
    cmpl-float p1, v8, v5

    .line 74
    .line 75
    if-lez p1, :cond_3

    .line 76
    .line 77
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mRotation:I

    .line 78
    .line 79
    if-eq p1, v11, :cond_2

    .line 80
    .line 81
    if-ne p1, v10, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 85
    .line 86
    mul-float/2addr v7, v4

    .line 87
    mul-float/2addr v7, v5

    .line 88
    float-to-int p1, v7

    .line 89
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 90
    .line 91
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 92
    .line 93
    sub-int/2addr v3, p1

    .line 94
    int-to-float p1, v3

    .line 95
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 96
    .line 97
    mul-float/2addr p1, p2

    .line 98
    float-to-int p1, p1

    .line 99
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    :goto_0
    mul-float/2addr v6, v5

    .line 103
    float-to-int p1, v6

    .line 104
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 109
    .line 110
    int-to-float v0, p1

    .line 111
    mul-float/2addr v0, v4

    .line 112
    div-float/2addr v0, v5

    .line 113
    float-to-int v0, v0

    .line 114
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 115
    .line 116
    sub-int/2addr p2, p1

    .line 117
    int-to-float p1, p2

    .line 118
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 119
    .line 120
    mul-float/2addr p1, p2

    .line 121
    float-to-int p1, p1

    .line 122
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 123
    .line 124
    sub-int/2addr v3, v0

    .line 125
    int-to-float p1, v3

    .line 126
    mul-float/2addr p1, p2

    .line 127
    float-to-int p1, p1

    .line 128
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mRotation:I

    .line 132
    .line 133
    if-eq p1, v11, :cond_5

    .line 134
    .line 135
    if-ne p1, v10, :cond_4

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    div-float/2addr v6, v5

    .line 139
    float-to-int p1, v6

    .line 140
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 141
    .line 142
    iput v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 143
    .line 144
    sub-int/2addr p2, p1

    .line 145
    int-to-float p1, p2

    .line 146
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 147
    .line 148
    mul-float/2addr p1, p2

    .line 149
    float-to-int p1, p1

    .line 150
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 151
    .line 152
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_5
    :goto_1
    mul-float/2addr v7, v4

    .line 156
    div-float/2addr v7, v5

    .line 157
    float-to-int p1, v7

    .line 158
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 163
    .line 164
    int-to-float v0, p1

    .line 165
    mul-float/2addr v0, v4

    .line 166
    mul-float/2addr v0, v5

    .line 167
    float-to-int v0, v0

    .line 168
    iput v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 169
    .line 170
    sub-int/2addr p2, v0

    .line 171
    int-to-float p2, p2

    .line 172
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 173
    .line 174
    mul-float/2addr p2, v0

    .line 175
    float-to-int p2, p2

    .line 176
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 177
    .line 178
    sub-int/2addr v3, p1

    .line 179
    int-to-float p1, v3

    .line 180
    mul-float/2addr p1, v0

    .line 181
    float-to-int p1, p1

    .line 182
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 183
    .line 184
    :goto_2
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropTextureCoord:[F

    .line 185
    .line 186
    invoke-virtual {p0, v1, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(I[F)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_5

    .line 190
    .line 191
    :cond_6
    const/4 v6, 0x2

    .line 192
    if-ne v9, v6, :cond_b

    .line 193
    .line 194
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 195
    .line 196
    iput v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 197
    .line 198
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 199
    .line 200
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 201
    .line 202
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mRotation:I

    .line 203
    .line 204
    const/4 v1, 0x5

    .line 205
    const/4 v3, 0x1

    .line 206
    if-eq p2, v11, :cond_9

    .line 207
    .line 208
    if-ne p2, v10, :cond_7

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_7
    cmpl-float p1, v8, v5

    .line 212
    .line 213
    if-lez p1, :cond_8

    .line 214
    .line 215
    div-float/2addr v5, v8

    .line 216
    sub-float p1, v4, v5

    .line 217
    .line 218
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 219
    .line 220
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropXNormalize:F

    .line 221
    .line 222
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropWidthNormalize:F

    .line 223
    .line 224
    mul-float/2addr v5, p1

    .line 225
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 226
    .line 227
    mul-float/2addr v5, v7

    .line 228
    add-float/2addr v0, v5

    .line 229
    invoke-virtual {p2, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 230
    .line 231
    .line 232
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 233
    .line 234
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropYNormalize:F

    .line 235
    .line 236
    invoke-virtual {p2, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 237
    .line 238
    .line 239
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 240
    .line 241
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropXNormalize:F

    .line 242
    .line 243
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropWidthNormalize:F

    .line 244
    .line 245
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 246
    .line 247
    sub-float v7, v4, v7

    .line 248
    .line 249
    mul-float/2addr p1, v7

    .line 250
    sub-float/2addr v4, p1

    .line 251
    mul-float/2addr v5, v4

    .line 252
    add-float/2addr v0, v5

    .line 253
    invoke-virtual {p2, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 257
    .line 258
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropYNormalize:F

    .line 259
    .line 260
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropHeightNormalize:F

    .line 261
    .line 262
    add-float/2addr p2, v0

    .line 263
    invoke-virtual {p1, v1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 264
    .line 265
    .line 266
    goto/16 :goto_4

    .line 267
    .line 268
    :cond_8
    div-float/2addr v8, v5

    .line 269
    sub-float p1, v4, v8

    .line 270
    .line 271
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 272
    .line 273
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropXNormalize:F

    .line 274
    .line 275
    invoke-virtual {p2, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 276
    .line 277
    .line 278
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 279
    .line 280
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropYNormalize:F

    .line 281
    .line 282
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropHeightNormalize:F

    .line 283
    .line 284
    mul-float/2addr v5, p1

    .line 285
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 286
    .line 287
    mul-float/2addr v5, v7

    .line 288
    add-float/2addr v0, v5

    .line 289
    invoke-virtual {p2, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 290
    .line 291
    .line 292
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 293
    .line 294
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropXNormalize:F

    .line 295
    .line 296
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropWidthNormalize:F

    .line 297
    .line 298
    add-float/2addr v0, v5

    .line 299
    invoke-virtual {p2, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 300
    .line 301
    .line 302
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 303
    .line 304
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropYNormalize:F

    .line 305
    .line 306
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropHeightNormalize:F

    .line 307
    .line 308
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 309
    .line 310
    sub-float v7, v4, v7

    .line 311
    .line 312
    mul-float/2addr p1, v7

    .line 313
    sub-float/2addr v4, p1

    .line 314
    mul-float/2addr v5, v4

    .line 315
    add-float/2addr v0, v5

    .line 316
    invoke-virtual {p2, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_9
    :goto_3
    mul-float/2addr v0, v4

    .line 321
    div-float/2addr v0, p1

    .line 322
    cmpl-float p1, v8, v0

    .line 323
    .line 324
    if-lez p1, :cond_a

    .line 325
    .line 326
    div-float/2addr v0, v8

    .line 327
    sub-float p1, v4, v0

    .line 328
    .line 329
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 330
    .line 331
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropXNormalize:F

    .line 332
    .line 333
    invoke-virtual {p2, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 334
    .line 335
    .line 336
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 337
    .line 338
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropYNormalize:F

    .line 339
    .line 340
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropHeightNormalize:F

    .line 341
    .line 342
    mul-float/2addr v5, p1

    .line 343
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 344
    .line 345
    mul-float/2addr v5, v7

    .line 346
    add-float/2addr v0, v5

    .line 347
    invoke-virtual {p2, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 348
    .line 349
    .line 350
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 351
    .line 352
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropXNormalize:F

    .line 353
    .line 354
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropWidthNormalize:F

    .line 355
    .line 356
    add-float/2addr v0, v5

    .line 357
    invoke-virtual {p2, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 358
    .line 359
    .line 360
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 361
    .line 362
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropYNormalize:F

    .line 363
    .line 364
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropHeightNormalize:F

    .line 365
    .line 366
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 367
    .line 368
    sub-float v7, v4, v7

    .line 369
    .line 370
    mul-float/2addr p1, v7

    .line 371
    sub-float/2addr v4, p1

    .line 372
    mul-float/2addr v5, v4

    .line 373
    add-float/2addr v0, v5

    .line 374
    invoke-virtual {p2, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 375
    .line 376
    .line 377
    goto :goto_4

    .line 378
    :cond_a
    div-float/2addr v8, v0

    .line 379
    sub-float p1, v4, v8

    .line 380
    .line 381
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 382
    .line 383
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropXNormalize:F

    .line 384
    .line 385
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropWidthNormalize:F

    .line 386
    .line 387
    mul-float/2addr v5, p1

    .line 388
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 389
    .line 390
    mul-float/2addr v5, v7

    .line 391
    add-float/2addr v0, v5

    .line 392
    invoke-virtual {p2, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 393
    .line 394
    .line 395
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 396
    .line 397
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropYNormalize:F

    .line 398
    .line 399
    invoke-virtual {p2, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 400
    .line 401
    .line 402
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 403
    .line 404
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropXNormalize:F

    .line 405
    .line 406
    iget v5, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropWidthNormalize:F

    .line 407
    .line 408
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutAspectRatio:F

    .line 409
    .line 410
    mul-float/2addr p1, v7

    .line 411
    sub-float/2addr v4, p1

    .line 412
    mul-float/2addr v5, v4

    .line 413
    add-float/2addr v0, v5

    .line 414
    invoke-virtual {p2, v6, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 415
    .line 416
    .line 417
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 418
    .line 419
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropYNormalize:F

    .line 420
    .line 421
    iget v0, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropHeightNormalize:F

    .line 422
    .line 423
    add-float/2addr p2, v0

    .line 424
    invoke-virtual {p1, v1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 425
    .line 426
    .line 427
    :goto_4
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 428
    .line 429
    const/4 p2, 0x3

    .line 430
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->get(I)F

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    invoke-virtual {p1, p2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 435
    .line 436
    .line 437
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 438
    .line 439
    const/4 p2, 0x4

    .line 440
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    invoke-virtual {p1, p2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 445
    .line 446
    .line 447
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 448
    .line 449
    const/4 p2, 0x6

    .line 450
    invoke-virtual {p1, v6}, Ljava/nio/FloatBuffer;->get(I)F

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    invoke-virtual {p1, p2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 455
    .line 456
    .line 457
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 458
    .line 459
    const/4 p2, 0x7

    .line 460
    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->get(I)F

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    invoke-virtual {p1, p2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 465
    .line 466
    .line 467
    invoke-direct {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->reTransformIfNeeded()V

    .line 468
    .line 469
    .line 470
    goto :goto_5

    .line 471
    :cond_b
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 472
    .line 473
    iput v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 474
    .line 475
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 476
    .line 477
    iput v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 478
    .line 479
    iget-object p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mCropTextureCoord:[F

    .line 480
    .line 481
    invoke-virtual {p0, v1, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->setOption(I[F)V

    .line 482
    .line 483
    .line 484
    :goto_5
    return v2
.end method

.method public updateRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    return p1
.end method
