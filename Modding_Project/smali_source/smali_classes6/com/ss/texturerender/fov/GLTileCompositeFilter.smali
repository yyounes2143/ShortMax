.class public Lcom/ss/texturerender/fov/GLTileCompositeFilter;
.super Lcom/ss/texturerender/effect/GLDefaultFilter;
.source "GLTileCompositeFilter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GLTileCompositeFilter"


# instance fields
.field private final fragmentShader:Ljava/lang/String;

.field private mAntiColorHandle:I

.field private mBackgroundTileInfos:Lcom/ss/texturerender/fov/TileInfo;

.field private mCurrTileInfos:[Lcom/ss/texturerender/fov/TileInfo;

.field private mDecodedBackgroundTexHeight:I

.field private mDecodedBackgroundTexWidth:I

.field private mDepthZHandle:I

.field private mGlobalClampHandle:I

.field private mScaleOffsetHandle:I

.field private mVertexScaleOffsetHandle:I

.field private final vertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;-><init>(II)V

    .line 4
    .line 5
    .line 6
    const-string p1, "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nuniform float DepthZ;\nuniform vec2 globalClamp;\nuniform vec4 vertexScaleOffset;\nvoid main() {\n  vec2 positionXY = (vec2(aPosition.x, aPosition.y) / 2.0 + 0.5) * vertexScaleOffset.xy + vertexScaleOffset.zw;\n  positionXY = (positionXY - 0.5) * 2.0;\n  gl_Position = vec4(positionXY.x, positionXY.y, DepthZ, 1.0);\n  vTextureCoord = clamp(aTextureCoord.xy, vec2(globalClamp.x), vec2(globalClamp.y));\n}\n"

    .line 7
    .line 8
    iput-object p1, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->vertexShader:Ljava/lang/String;

    .line 9
    .line 10
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec4 scaleOffset;\nuniform int antiColor;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord * scaleOffset.xy + scaleOffset.zw);\n  if (antiColor == 1) {\n      gl_FragColor.rgba = gl_FragColor.bgra;\n  }\n}\n"

    .line 11
    .line 12
    iput-object p1, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->fragmentShader:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mBackgroundTileInfos:Lcom/ss/texturerender/fov/TileInfo;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mCurrTileInfos:[Lcom/ss/texturerender/fov/TileInfo;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mDecodedBackgroundTexWidth:I

    .line 21
    .line 22
    iput p1, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mDecodedBackgroundTexHeight:I

    .line 23
    .line 24
    const/16 p1, 0x63

    .line 25
    .line 26
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mOrder:I

    .line 27
    .line 28
    return-void
.end method

.method private drawBackground(Lcom/ss/texturerender/fov/TileInfo;)V
    .locals 25

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    iget v0, v12, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mDepthZHandle:I

    .line 6
    .line 7
    const v1, 0x3f666666    # 0.9f

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    .line 12
    .line 13
    iget v0, v12, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mGlobalClampHandle:I

    .line 14
    .line 15
    iget v1, v12, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mDecodedBackgroundTexWidth:I

    .line 16
    .line 17
    int-to-float v1, v1

    .line 18
    const/high16 v2, 0x40400000    # 3.0f

    .line 19
    .line 20
    div-float v1, v2, v1

    .line 21
    .line 22
    iget v3, v12, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mDecodedBackgroundTexHeight:I

    .line 23
    .line 24
    int-to-float v3, v3

    .line 25
    div-float/2addr v2, v3

    .line 26
    const/high16 v3, 0x3f800000    # 1.0f

    .line 27
    .line 28
    sub-float/2addr v3, v2

    .line 29
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 30
    .line 31
    .line 32
    iget v0, v12, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mAntiColorHandle:I

    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 36
    .line 37
    .line 38
    move v0, v10

    .line 39
    move v1, v0

    .line 40
    move v2, v1

    .line 41
    move v9, v2

    .line 42
    :goto_0
    iget v3, v11, Lcom/ss/texturerender/fov/TileInfo;->backgroundTileHeightCount:I

    .line 43
    .line 44
    if-ge v9, v3, :cond_3

    .line 45
    .line 46
    move/from16 v19, v0

    .line 47
    .line 48
    move v5, v1

    .line 49
    move v8, v2

    .line 50
    move v7, v10

    .line 51
    move/from16 v20, v7

    .line 52
    .line 53
    :goto_1
    iget v3, v11, Lcom/ss/texturerender/fov/TileInfo;->backgroundTileWidthCount:I

    .line 54
    .line 55
    if-ge v7, v3, :cond_2

    .line 56
    .line 57
    add-int/lit8 v0, v3, -0x1

    .line 58
    .line 59
    if-ne v8, v0, :cond_0

    .line 60
    .line 61
    iget v4, v11, Lcom/ss/texturerender/fov/TileInfo;->backgroundTileHeightCount:I

    .line 62
    .line 63
    move v2, v4

    .line 64
    iget v13, v11, Lcom/ss/texturerender/fov/TileInfo;->tileWidth:I

    .line 65
    .line 66
    iget v14, v11, Lcom/ss/texturerender/fov/TileInfo;->tileHeight:I

    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/fov/TileInfo;->getDecodedFrameWidth()I

    .line 69
    .line 70
    .line 71
    move-result v15

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/fov/TileInfo;->getDecodedFrameHeight()I

    .line 73
    .line 74
    .line 75
    move-result v16

    .line 76
    iget v0, v11, Lcom/ss/texturerender/fov/TileInfo;->paddingY:I

    .line 77
    .line 78
    move/from16 v17, v0

    .line 79
    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/fov/TileInfo;->is3DInput()Z

    .line 81
    .line 82
    .line 83
    move-result v18

    .line 84
    move-object/from16 v0, p0

    .line 85
    .line 86
    move v1, v3

    .line 87
    move v6, v8

    .line 88
    move v8, v7

    .line 89
    move/from16 v7, v19

    .line 90
    .line 91
    move/from16 v21, v8

    .line 92
    .line 93
    move/from16 v8, v19

    .line 94
    .line 95
    move/from16 v22, v9

    .line 96
    .line 97
    move/from16 v9, v20

    .line 98
    .line 99
    move/from16 v23, v10

    .line 100
    .line 101
    move/from16 v10, v21

    .line 102
    .line 103
    move/from16 v11, v22

    .line 104
    .line 105
    move/from16 v12, v22

    .line 106
    .line 107
    invoke-direct/range {v0 .. v18}, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->drawTile(IIIIIIIIIIIIIIIIIZ)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v19, v19, 0x1

    .line 111
    .line 112
    add-int/lit8 v20, v21, 0x1

    .line 113
    .line 114
    move/from16 v24, v21

    .line 115
    .line 116
    move/from16 v5, v23

    .line 117
    .line 118
    :goto_2
    move v8, v5

    .line 119
    goto :goto_3

    .line 120
    :cond_0
    move/from16 v21, v7

    .line 121
    .line 122
    move/from16 v22, v9

    .line 123
    .line 124
    move/from16 v23, v10

    .line 125
    .line 126
    add-int/lit8 v0, v3, -0x1

    .line 127
    .line 128
    move/from16 v12, v21

    .line 129
    .line 130
    if-ne v12, v0, :cond_1

    .line 131
    .line 132
    move-object/from16 v11, p1

    .line 133
    .line 134
    iget v4, v11, Lcom/ss/texturerender/fov/TileInfo;->backgroundTileHeightCount:I

    .line 135
    .line 136
    move v2, v4

    .line 137
    iget v13, v11, Lcom/ss/texturerender/fov/TileInfo;->tileWidth:I

    .line 138
    .line 139
    iget v14, v11, Lcom/ss/texturerender/fov/TileInfo;->tileHeight:I

    .line 140
    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/fov/TileInfo;->getDecodedFrameWidth()I

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/fov/TileInfo;->getDecodedFrameHeight()I

    .line 146
    .line 147
    .line 148
    move-result v16

    .line 149
    iget v0, v11, Lcom/ss/texturerender/fov/TileInfo;->paddingY:I

    .line 150
    .line 151
    move/from16 v17, v0

    .line 152
    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/fov/TileInfo;->is3DInput()Z

    .line 154
    .line 155
    .line 156
    move-result v18

    .line 157
    move-object/from16 v0, p0

    .line 158
    .line 159
    move v1, v3

    .line 160
    move v6, v8

    .line 161
    move/from16 v7, v19

    .line 162
    .line 163
    move/from16 v21, v8

    .line 164
    .line 165
    move/from16 v8, v19

    .line 166
    .line 167
    move/from16 v9, v20

    .line 168
    .line 169
    move v10, v12

    .line 170
    move/from16 v11, v22

    .line 171
    .line 172
    move/from16 v24, v12

    .line 173
    .line 174
    move/from16 v12, v22

    .line 175
    .line 176
    invoke-direct/range {v0 .. v18}, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->drawTile(IIIIIIIIIIIIIIIIIZ)V

    .line 177
    .line 178
    .line 179
    add-int/lit8 v10, v21, 0x1

    .line 180
    .line 181
    move v5, v10

    .line 182
    goto :goto_2

    .line 183
    :cond_1
    move/from16 v21, v8

    .line 184
    .line 185
    move/from16 v24, v12

    .line 186
    .line 187
    add-int/lit8 v10, v21, 0x1

    .line 188
    .line 189
    move v8, v10

    .line 190
    :goto_3
    add-int/lit8 v7, v24, 0x1

    .line 191
    .line 192
    move-object/from16 v12, p0

    .line 193
    .line 194
    move-object/from16 v11, p1

    .line 195
    .line 196
    move/from16 v9, v22

    .line 197
    .line 198
    move/from16 v10, v23

    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :cond_2
    move/from16 v21, v8

    .line 203
    .line 204
    move/from16 v22, v9

    .line 205
    .line 206
    move/from16 v23, v10

    .line 207
    .line 208
    add-int/lit8 v9, v22, 0x1

    .line 209
    .line 210
    move-object/from16 v12, p0

    .line 211
    .line 212
    move-object/from16 v11, p1

    .line 213
    .line 214
    move v1, v5

    .line 215
    move/from16 v0, v19

    .line 216
    .line 217
    move/from16 v2, v21

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_3
    return-void
.end method

.method private drawOverlay(Lcom/ss/texturerender/fov/TileInfo;)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    iget v0, v1, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mDepthZHandle:I

    .line 6
    .line 7
    const v2, 0x3dcccccd    # 0.1f

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 11
    .line 12
    .line 13
    iget v0, v1, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mGlobalClampHandle:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 19
    .line 20
    .line 21
    iget v0, v1, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mAntiColorHandle:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v15, Lcom/ss/texturerender/fov/TileInfo;->visibleArray:Lorg/json/JSONArray;

    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 30
    .line 31
    .line 32
    move-result v14

    .line 33
    new-array v5, v14, [I

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    move v3, v2

    .line 37
    :goto_0
    iget-object v0, v15, Lcom/ss/texturerender/fov/TileInfo;->visibleArray:Lorg/json/JSONArray;

    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v11, -0x1

    .line 44
    if-ge v3, v0, :cond_0

    .line 45
    .line 46
    :try_start_0
    iget-object v0, v15, Lcom/ss/texturerender/fov/TileInfo;->visibleArray:Lorg/json/JSONArray;

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    aput v0, v5, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    aput v11, v5, v3

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move v0, v2

    .line 65
    :goto_2
    if-ge v0, v14, :cond_2

    .line 66
    .line 67
    aget v3, v5, v0

    .line 68
    .line 69
    if-ne v3, v11, :cond_1

    .line 70
    .line 71
    move-object/from16 v21, v5

    .line 72
    .line 73
    move/from16 v20, v11

    .line 74
    .line 75
    move/from16 v22, v14

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_1
    iget v4, v15, Lcom/ss/texturerender/fov/TileInfo;->srcTileWidthCount:I

    .line 79
    .line 80
    move v2, v4

    .line 81
    div-int v8, v0, v4

    .line 82
    .line 83
    move v9, v8

    .line 84
    rem-int v7, v0, v4

    .line 85
    .line 86
    move v6, v7

    .line 87
    iget v10, v15, Lcom/ss/texturerender/fov/TileInfo;->dstTileWidthCount:I

    .line 88
    .line 89
    move v4, v10

    .line 90
    div-int v13, v3, v10

    .line 91
    .line 92
    move v12, v13

    .line 93
    rem-int/2addr v3, v10

    .line 94
    move v10, v3

    .line 95
    move/from16 v20, v11

    .line 96
    .line 97
    move v11, v3

    .line 98
    iget v3, v15, Lcom/ss/texturerender/fov/TileInfo;->srcTileHeightCount:I

    .line 99
    .line 100
    iget v1, v15, Lcom/ss/texturerender/fov/TileInfo;->dstTileHeightCount:I

    .line 101
    .line 102
    move-object/from16 v21, v5

    .line 103
    .line 104
    move v5, v1

    .line 105
    iget v1, v15, Lcom/ss/texturerender/fov/TileInfo;->tileWidth:I

    .line 106
    .line 107
    move/from16 v22, v14

    .line 108
    .line 109
    move v14, v1

    .line 110
    iget v1, v15, Lcom/ss/texturerender/fov/TileInfo;->tileHeight:I

    .line 111
    .line 112
    move/from16 v23, v2

    .line 113
    .line 114
    move-object v2, v15

    .line 115
    move v15, v1

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/fov/TileInfo;->getDecodedFrameWidth()I

    .line 117
    .line 118
    .line 119
    move-result v16

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/fov/TileInfo;->getDecodedFrameHeight()I

    .line 121
    .line 122
    .line 123
    move-result v17

    .line 124
    iget v1, v2, Lcom/ss/texturerender/fov/TileInfo;->paddingY:I

    .line 125
    .line 126
    move/from16 v18, v1

    .line 127
    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/fov/TileInfo;->is3DInput()Z

    .line 129
    .line 130
    .line 131
    move-result v19

    .line 132
    move-object/from16 v1, p0

    .line 133
    .line 134
    move/from16 v2, v23

    .line 135
    .line 136
    invoke-direct/range {v1 .. v19}, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->drawTile(IIIIIIIIIIIIIIIIIZ)V

    .line 137
    .line 138
    .line 139
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 140
    .line 141
    move-object/from16 v1, p0

    .line 142
    .line 143
    move-object/from16 v15, p1

    .line 144
    .line 145
    move/from16 v11, v20

    .line 146
    .line 147
    move-object/from16 v5, v21

    .line 148
    .line 149
    move/from16 v14, v22

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_2
    return-void
.end method

.method private drawTile(IIIIIIIIIIIIIIIIIZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    move/from16 v3, p7

    .line 8
    .line 9
    move/from16 v4, p9

    .line 10
    .line 11
    move/from16 v5, p14

    .line 12
    .line 13
    move/from16 v6, p16

    .line 14
    .line 15
    move/from16 v7, p17

    .line 16
    .line 17
    sub-int v8, p6, v2

    .line 18
    .line 19
    add-int/lit8 v8, v8, 0x1

    .line 20
    .line 21
    int-to-float v8, v8

    .line 22
    move/from16 v9, p1

    .line 23
    .line 24
    int-to-float v9, v9

    .line 25
    div-float/2addr v8, v9

    .line 26
    sub-int v10, p8, v3

    .line 27
    .line 28
    add-int/lit8 v10, v10, 0x1

    .line 29
    .line 30
    int-to-float v10, v10

    .line 31
    move/from16 v11, p2

    .line 32
    .line 33
    int-to-float v11, v11

    .line 34
    div-float/2addr v10, v11

    .line 35
    int-to-float v2, v2

    .line 36
    div-float/2addr v2, v9

    .line 37
    int-to-float v3, v3

    .line 38
    div-float/2addr v3, v11

    .line 39
    sub-int v9, p10, v4

    .line 40
    .line 41
    add-int/lit8 v9, v9, 0x1

    .line 42
    .line 43
    int-to-float v9, v9

    .line 44
    move/from16 v11, p3

    .line 45
    .line 46
    int-to-float v11, v11

    .line 47
    div-float/2addr v9, v11

    .line 48
    sub-int v12, p12, p11

    .line 49
    .line 50
    add-int/lit8 v12, v12, 0x1

    .line 51
    .line 52
    int-to-float v12, v12

    .line 53
    int-to-float v13, v1

    .line 54
    div-float/2addr v12, v13

    .line 55
    int-to-float v4, v4

    .line 56
    div-float/2addr v4, v11

    .line 57
    sub-int v1, v1, p11

    .line 58
    .line 59
    add-int/lit8 v1, v1, -0x1

    .line 60
    .line 61
    int-to-float v1, v1

    .line 62
    div-float/2addr v1, v13

    .line 63
    const/high16 v11, 0x3f800000    # 1.0f

    .line 64
    .line 65
    const/4 v13, 0x4

    .line 66
    const/4 v14, 0x0

    .line 67
    const/4 v15, 0x5

    .line 68
    const/high16 v16, 0x40000000    # 2.0f

    .line 69
    .line 70
    if-eqz p18, :cond_0

    .line 71
    .line 72
    int-to-float v7, v7

    .line 73
    int-to-float v5, v5

    .line 74
    div-float v5, v7, v5

    .line 75
    .line 76
    sub-float/2addr v11, v5

    .line 77
    mul-float/2addr v10, v11

    .line 78
    iget v5, v0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mScaleOffsetHandle:I

    .line 79
    .line 80
    div-float v10, v10, v16

    .line 81
    .line 82
    const/high16 v11, 0x40800000    # 4.0f

    .line 83
    .line 84
    div-float/2addr v7, v11

    .line 85
    int-to-float v6, v6

    .line 86
    div-float v11, v7, v6

    .line 87
    .line 88
    add-float/2addr v11, v3

    .line 89
    invoke-static {v5, v8, v10, v2, v11}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 90
    .line 91
    .line 92
    iget v5, v0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mVertexScaleOffsetHandle:I

    .line 93
    .line 94
    neg-float v11, v12

    .line 95
    div-float v11, v11, v16

    .line 96
    .line 97
    div-float v1, v1, v16

    .line 98
    .line 99
    const/high16 v17, 0x3f000000    # 0.5f

    .line 100
    .line 101
    add-float v17, v1, v17

    .line 102
    .line 103
    div-float v12, v12, v16

    .line 104
    .line 105
    move/from16 p1, v1

    .line 106
    .line 107
    add-float v1, v17, v12

    .line 108
    .line 109
    invoke-static {v5, v9, v11, v4, v1}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 110
    .line 111
    .line 112
    invoke-static {v15, v14, v13}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 113
    .line 114
    .line 115
    iget v1, v0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mScaleOffsetHandle:I

    .line 116
    .line 117
    add-float/2addr v3, v10

    .line 118
    const/high16 v5, 0x40400000    # 3.0f

    .line 119
    .line 120
    mul-float/2addr v7, v5

    .line 121
    div-float/2addr v7, v6

    .line 122
    add-float/2addr v3, v7

    .line 123
    invoke-static {v1, v8, v10, v2, v3}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 124
    .line 125
    .line 126
    iget v1, v0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mVertexScaleOffsetHandle:I

    .line 127
    .line 128
    move/from16 v2, p1

    .line 129
    .line 130
    invoke-static {v1, v9, v12, v4, v2}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 131
    .line 132
    .line 133
    invoke-static {v15, v14, v13}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_0
    int-to-float v7, v7

    .line 138
    int-to-float v5, v5

    .line 139
    div-float v5, v7, v5

    .line 140
    .line 141
    sub-float/2addr v11, v5

    .line 142
    mul-float/2addr v10, v11

    .line 143
    iget v5, v0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mScaleOffsetHandle:I

    .line 144
    .line 145
    div-float v7, v7, v16

    .line 146
    .line 147
    int-to-float v6, v6

    .line 148
    div-float/2addr v7, v6

    .line 149
    add-float/2addr v3, v7

    .line 150
    invoke-static {v5, v8, v10, v2, v3}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 151
    .line 152
    .line 153
    iget v2, v0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mVertexScaleOffsetHandle:I

    .line 154
    .line 155
    neg-float v3, v12

    .line 156
    add-float/2addr v1, v12

    .line 157
    invoke-static {v2, v9, v3, v4, v1}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 158
    .line 159
    .line 160
    invoke-static {v15, v14, v13}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 161
    .line 162
    .line 163
    :goto_0
    return-void
.end method

.method private updateMappingInfo(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTimestamp()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getFrameMetaData(JJ)Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "GLTileCompositeFilter"

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ge v0, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;->getStringifiedTileInfo()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {p0, v1}, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->updateTileInfo(Ljava/lang/String;)Lcom/ss/texturerender/fov/TileInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget v3, v2, Lcom/ss/texturerender/fov/TileInfo;->streamIndex:I

    .line 37
    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    iput-object v2, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mBackgroundTileInfos:Lcom/ss/texturerender/fov/TileInfo;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object v4, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mCurrTileInfos:[Lcom/ss/texturerender/fov/TileInfo;

    .line 44
    .line 45
    add-int/lit8 v3, v3, -0x1

    .line 46
    .line 47
    aput-object v2, v4, v3

    .line 48
    .line 49
    :goto_1
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v4, "debug -> tile info "

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v2, p2, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 p1, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->updateTileInfo(Ljava/lang/String;)Lcom/ss/texturerender/fov/TileInfo;

    .line 76
    .line 77
    .line 78
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v1, "debug -> frameMetaData not found, ts "

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTimestamp()J

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {p1, p2, v0}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    return-void
.end method

.method private updateTileInfo(Ljava/lang/String;)Lcom/ss/texturerender/fov/TileInfo;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/ss/texturerender/fov/TileInfo;->create(Ljava/lang/String;)Lcom/ss/texturerender/fov/TileInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method


# virtual methods
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
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->getStringOption(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform vec4 scaleOffset;\nuniform int antiColor;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord * scaleOffset.xy + scaleOffset.zw);\n  if (antiColor == 1) {\n      gl_FragColor.rgba = gl_FragColor.bgra;\n  }\n}\n"

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    const-string p1, "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nuniform float DepthZ;\nuniform vec2 globalClamp;\nuniform vec4 vertexScaleOffset;\nvoid main() {\n  vec2 positionXY = (vec2(aPosition.x, aPosition.y) / 2.0 + 0.5) * vertexScaleOffset.xy + vertexScaleOffset.zw;\n  positionXY = (positionXY - 0.5) * 2.0;\n  gl_Position = vec4(positionXY.x, positionXY.y, DepthZ, 1.0);\n  vTextureCoord = clamp(aTextureCoord.xy, vec2(globalClamp.x), vec2(globalClamp.y));\n}\n"

    .line 18
    .line 19
    return-object p1
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ss/texturerender/effect/GLDefaultFilter;->init(Landroid/os/Bundle;)I

    .line 2
    .line 3
    .line 4
    const p1, 0x8d65

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 8
    .line 9
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 10
    .line 11
    const-string/jumbo v0, "vertexScaleOffset"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mVertexScaleOffsetHandle:I

    .line 19
    .line 20
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 21
    .line 22
    const-string v0, "DepthZ"

    .line 23
    .line 24
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mDepthZHandle:I

    .line 29
    .line 30
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 31
    .line 32
    const-string v0, "scaleOffset"

    .line 33
    .line 34
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mScaleOffsetHandle:I

    .line 39
    .line 40
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 41
    .line 42
    const-string v0, "globalClamp"

    .line 43
    .line 44
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mGlobalClampHandle:I

    .line 49
    .line 50
    iget p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 51
    .line 52
    const-string v0, "antiColor"

    .line 53
    .line 54
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mAntiColorHandle:I

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mLayoutMode:I

    .line 62
    .line 63
    return p1
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getExtraEffectTexture()[Lcom/ss/texturerender/effect/EffectTexture;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    array-length p2, p2

    .line 6
    iget-object v0, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mCurrTileInfos:[Lcom/ss/texturerender/fov/TileInfo;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    array-length v0, v0

    .line 11
    if-eq v0, p2, :cond_1

    .line 12
    .line 13
    :cond_0
    new-array v0, p2, [Lcom/ss/texturerender/fov/TileInfo;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mCurrTileInfos:[Lcom/ss/texturerender/fov/TileInfo;

    .line 16
    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mBackgroundTileInfos:Lcom/ss/texturerender/fov/TileInfo;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mCurrTileInfos:[Lcom/ss/texturerender/fov/TileInfo;

    .line 21
    .line 22
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    add-int/2addr p2, v1

    .line 27
    int-to-long v2, p2

    .line 28
    invoke-direct {p0, v2, v3}, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->updateMappingInfo(J)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mBackgroundTileInfos:Lcom/ss/texturerender/fov/TileInfo;

    .line 32
    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    iget v2, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mDecodedBackgroundTexWidth:I

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/ss/texturerender/fov/TileInfo;->getBackgroundTexWidth()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-ne v2, p2, :cond_2

    .line 42
    .line 43
    iget p2, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mDecodedBackgroundTexHeight:I

    .line 44
    .line 45
    iget-object v2, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mBackgroundTileInfos:Lcom/ss/texturerender/fov/TileInfo;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/ss/texturerender/fov/TileInfo;->getBackgroundTexHeight()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eq p2, v2, :cond_3

    .line 52
    .line 53
    :cond_2
    iget-object p2, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mBackgroundTileInfos:Lcom/ss/texturerender/fov/TileInfo;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/ss/texturerender/fov/TileInfo;->getBackgroundTexWidth()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    iput p2, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mDecodedBackgroundTexWidth:I

    .line 60
    .line 61
    iget-object p2, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mBackgroundTileInfos:Lcom/ss/texturerender/fov/TileInfo;

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/ss/texturerender/fov/TileInfo;->getBackgroundTexHeight()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iput p2, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mDecodedBackgroundTexHeight:I

    .line 68
    .line 69
    :cond_3
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTexWidth()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexWidth:I

    .line 76
    .line 77
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTexHeight()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    iput p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mOutTexHeight:I

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 90
    .line 91
    if-eq p2, v2, :cond_4

    .line 92
    .line 93
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "error, texture miss match, accept:"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, ",in:"

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {p2, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-object p1

    .line 138
    :cond_4
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 139
    .line 140
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 141
    .line 142
    invoke-virtual {p2, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessBegin(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->updateRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    const/4 v2, -0x1

    .line 150
    if-ne p2, v2, :cond_5

    .line 151
    .line 152
    invoke-virtual {p0, p1, v0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->updateDefaultRenderParam(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)I

    .line 153
    .line 154
    .line 155
    :cond_5
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mProgram:I

    .line 156
    .line 157
    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 158
    .line 159
    .line 160
    iget-boolean p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mNeedClear:Z

    .line 161
    .line 162
    if-eqz p2, :cond_6

    .line 163
    .line 164
    const/4 p2, 0x0

    .line 165
    invoke-static {p2, p2, p2, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 166
    .line 167
    .line 168
    const/16 p2, 0x4000

    .line 169
    .line 170
    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 171
    .line 172
    .line 173
    :cond_6
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 174
    .line 175
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_POS_OFFSET:I

    .line 176
    .line 177
    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 178
    .line 179
    .line 180
    iget v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 181
    .line 182
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I

    .line 183
    .line 184
    iget-object v8, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 185
    .line 186
    const/4 v4, 0x3

    .line 187
    const/16 v5, 0x1406

    .line 188
    .line 189
    const/4 v6, 0x0

    .line 190
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 191
    .line 192
    .line 193
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 194
    .line 195
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 196
    .line 197
    .line 198
    iget-object p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 199
    .line 200
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TRIANGLE_VERTICES_DATA_UV_OFFSET:I

    .line 201
    .line 202
    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    .line 204
    .line 205
    iget v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 206
    .line 207
    iget v7, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->TEXTURE_VERTICES_DATA_STRIDE_BYTES:I

    .line 208
    .line 209
    iget-object v8, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mTextureVertices:Ljava/nio/FloatBuffer;

    .line 210
    .line 211
    const/4 v4, 0x2

    .line 212
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 213
    .line 214
    .line 215
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 216
    .line 217
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->onDrawFrameBefore()I

    .line 221
    .line 222
    .line 223
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortX:I

    .line 224
    .line 225
    iget v2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortY:I

    .line 226
    .line 227
    iget v3, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortWidth:I

    .line 228
    .line 229
    iget v4, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mViewPortHeight:I

    .line 230
    .line 231
    invoke-static {p2, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 232
    .line 233
    .line 234
    iget-object p2, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mBackgroundTileInfos:Lcom/ss/texturerender/fov/TileInfo;

    .line 235
    .line 236
    const/16 v2, 0x2800

    .line 237
    .line 238
    const/16 v3, 0x2801

    .line 239
    .line 240
    const v4, 0x84c0

    .line 241
    .line 242
    .line 243
    const/4 v5, 0x0

    .line 244
    if-eqz p2, :cond_7

    .line 245
    .line 246
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 247
    .line 248
    .line 249
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    invoke-static {p2, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 256
    .line 257
    .line 258
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mInputTextureHandle:I

    .line 259
    .line 260
    invoke-static {p2, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 261
    .line 262
    .line 263
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 264
    .line 265
    const/16 v6, 0x2601

    .line 266
    .line 267
    invoke-static {p2, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 268
    .line 269
    .line 270
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 271
    .line 272
    invoke-static {p2, v2, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 273
    .line 274
    .line 275
    iget-object p2, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mBackgroundTileInfos:Lcom/ss/texturerender/fov/TileInfo;

    .line 276
    .line 277
    invoke-direct {p0, p2}, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->drawBackground(Lcom/ss/texturerender/fov/TileInfo;)V

    .line 278
    .line 279
    .line 280
    :cond_7
    move p2, v5

    .line 281
    :goto_0
    iget-object v6, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mCurrTileInfos:[Lcom/ss/texturerender/fov/TileInfo;

    .line 282
    .line 283
    array-length v7, v6

    .line 284
    if-ge p2, v7, :cond_9

    .line 285
    .line 286
    aget-object v6, v6, p2

    .line 287
    .line 288
    if-eqz v6, :cond_8

    .line 289
    .line 290
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 291
    .line 292
    .line 293
    iget v6, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 294
    .line 295
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->getExtraEffectTexture()[Lcom/ss/texturerender/effect/EffectTexture;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    aget-object v7, v7, p2

    .line 300
    .line 301
    invoke-virtual {v7}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 306
    .line 307
    .line 308
    iget v6, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->mInputTextureHandle:I

    .line 309
    .line 310
    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 311
    .line 312
    .line 313
    iget v6, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 314
    .line 315
    const/16 v7, 0x2600

    .line 316
    .line 317
    invoke-static {v6, v3, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 318
    .line 319
    .line 320
    iget v6, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 321
    .line 322
    invoke-static {v6, v2, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 323
    .line 324
    .line 325
    iget-object v6, p0, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->mCurrTileInfos:[Lcom/ss/texturerender/fov/TileInfo;

    .line 326
    .line 327
    aget-object v6, v6, p2

    .line 328
    .line 329
    invoke-direct {p0, v6}, Lcom/ss/texturerender/fov/GLTileCompositeFilter;->drawOverlay(Lcom/ss/texturerender/fov/TileInfo;)V

    .line 330
    .line 331
    .line 332
    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 333
    .line 334
    goto :goto_0

    .line 335
    :cond_9
    invoke-virtual {p0}, Lcom/ss/texturerender/effect/GLDefaultFilter;->onDrawFrameAfter()I

    .line 336
    .line 337
    .line 338
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mInTextureTarget:I

    .line 339
    .line 340
    invoke-static {p2, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 341
    .line 342
    .line 343
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maPositionHandle:I

    .line 344
    .line 345
    invoke-static {p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 346
    .line 347
    .line 348
    iget p2, p0, Lcom/ss/texturerender/effect/GLDefaultFilter;->maTextureHandle:I

    .line 349
    .line 350
    invoke-static {p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 351
    .line 352
    .line 353
    iget-object p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 354
    .line 355
    const/16 v2, 0x13

    .line 356
    .line 357
    iget v3, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 358
    .line 359
    invoke-virtual {p2, v2, v3, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(III)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1}, Lcom/ss/texturerender/effect/EffectTexture;->giveBack()V

    .line 363
    .line 364
    .line 365
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 366
    .line 367
    .line 368
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 369
    .line 370
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 371
    .line 372
    invoke-virtual {p1, p2}, Lcom/ss/texturerender/VideoSurfaceTexture;->currentEffectProcessEnd(I)V

    .line 373
    .line 374
    .line 375
    return-object v0
.end method
