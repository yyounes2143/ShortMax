.class public Lcom/ss/texturerender/fov/TileInfo;
.super Ljava/lang/Object;
.source "TileInfo.java"


# instance fields
.field backgroundTileHeightCount:I

.field backgroundTileWidthCount:I

.field dstTileHeightCount:I

.field dstTileWidthCount:I

.field mappedBackgroundIndexPairs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mappedOverlayIndexPairs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field normalizedBackgroundTileHeight:F

.field normalizedBackgroundTileWidth:F

.field normalizedDstTileHeight:F

.field normalizedDstTileWidth:F

.field normalizedSrcTileHeight:F

.field normalizedSrcTileWidth:F

.field public paddingY:I

.field srcTileHeightCount:I

.field srcTileWidthCount:I

.field streamIndex:I

.field tileHeight:I

.field tileWidth:I

.field visibleArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/ss/texturerender/fov/TileInfo;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Lcom/ss/texturerender/fov/TileInfo;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/ss/texturerender/fov/TileInfo;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v2, "stream_index"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, p0, Lcom/ss/texturerender/fov/TileInfo;->streamIndex:I

    .line 30
    .line 31
    const-string/jumbo v2, "tile_width"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iput v2, p0, Lcom/ss/texturerender/fov/TileInfo;->tileWidth:I

    .line 39
    .line 40
    const-string/jumbo v2, "tile_height"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iput v2, p0, Lcom/ss/texturerender/fov/TileInfo;->tileHeight:I

    .line 48
    .line 49
    const-string/jumbo v2, "tile_width_count"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iput v2, p0, Lcom/ss/texturerender/fov/TileInfo;->srcTileWidthCount:I

    .line 57
    .line 58
    const-string/jumbo v2, "tile_height_count"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput v2, p0, Lcom/ss/texturerender/fov/TileInfo;->srcTileHeightCount:I

    .line 66
    .line 67
    iget v3, p0, Lcom/ss/texturerender/fov/TileInfo;->srcTileWidthCount:I

    .line 68
    .line 69
    int-to-float v3, v3

    .line 70
    const/high16 v4, 0x3f800000    # 1.0f

    .line 71
    .line 72
    div-float v3, v4, v3

    .line 73
    .line 74
    iput v3, p0, Lcom/ss/texturerender/fov/TileInfo;->normalizedSrcTileWidth:F

    .line 75
    .line 76
    int-to-float v2, v2

    .line 77
    div-float v2, v4, v2

    .line 78
    .line 79
    iput v2, p0, Lcom/ss/texturerender/fov/TileInfo;->normalizedSrcTileHeight:F

    .line 80
    .line 81
    const-string/jumbo v2, "source_tile_width_count"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput v2, p0, Lcom/ss/texturerender/fov/TileInfo;->dstTileWidthCount:I

    .line 89
    .line 90
    const-string/jumbo v2, "source_tile_height_count"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput v2, p0, Lcom/ss/texturerender/fov/TileInfo;->dstTileHeightCount:I

    .line 98
    .line 99
    iget v3, p0, Lcom/ss/texturerender/fov/TileInfo;->dstTileWidthCount:I

    .line 100
    .line 101
    int-to-float v3, v3

    .line 102
    div-float v3, v4, v3

    .line 103
    .line 104
    iput v3, p0, Lcom/ss/texturerender/fov/TileInfo;->normalizedDstTileWidth:F

    .line 105
    .line 106
    int-to-float v2, v2

    .line 107
    div-float v2, v4, v2

    .line 108
    .line 109
    iput v2, p0, Lcom/ss/texturerender/fov/TileInfo;->normalizedDstTileHeight:F

    .line 110
    .line 111
    const-string/jumbo v2, "tile_visible"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iput-object v2, p0, Lcom/ss/texturerender/fov/TileInfo;->visibleArray:Lorg/json/JSONArray;

    .line 119
    .line 120
    const-string v2, "bg_tile_width_count"

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    iput v2, p0, Lcom/ss/texturerender/fov/TileInfo;->backgroundTileWidthCount:I

    .line 127
    .line 128
    const-string v2, "bg_tile_height_count"

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    iput v1, p0, Lcom/ss/texturerender/fov/TileInfo;->backgroundTileHeightCount:I

    .line 135
    .line 136
    iget v2, p0, Lcom/ss/texturerender/fov/TileInfo;->backgroundTileWidthCount:I

    .line 137
    .line 138
    int-to-float v2, v2

    .line 139
    div-float v2, v4, v2

    .line 140
    .line 141
    iput v2, p0, Lcom/ss/texturerender/fov/TileInfo;->normalizedBackgroundTileWidth:F

    .line 142
    .line 143
    int-to-float v1, v1

    .line 144
    div-float/2addr v4, v1

    .line 145
    iput v4, p0, Lcom/ss/texturerender/fov/TileInfo;->normalizedBackgroundTileHeight:F

    .line 146
    .line 147
    iget v1, p0, Lcom/ss/texturerender/fov/TileInfo;->tileHeight:I

    .line 148
    .line 149
    iget v2, p0, Lcom/ss/texturerender/fov/TileInfo;->tileWidth:I

    .line 150
    .line 151
    rem-int/2addr v1, v2

    .line 152
    iput v1, p0, Lcom/ss/texturerender/fov/TileInfo;->paddingY:I

    .line 153
    .line 154
    new-instance v1, Ljava/util/LinkedList;

    .line 155
    .line 156
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 157
    .line 158
    .line 159
    new-instance v2, Ljava/util/LinkedList;

    .line 160
    .line 161
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 162
    .line 163
    .line 164
    iget v3, p0, Lcom/ss/texturerender/fov/TileInfo;->backgroundTileWidthCount:I

    .line 165
    .line 166
    iget v4, p0, Lcom/ss/texturerender/fov/TileInfo;->backgroundTileHeightCount:I

    .line 167
    .line 168
    mul-int/2addr v3, v4

    .line 169
    const/4 v4, 0x0

    .line 170
    :goto_0
    iget-object v5, p0, Lcom/ss/texturerender/fov/TileInfo;->visibleArray:Lorg/json/JSONArray;

    .line 171
    .line 172
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-ge v4, v5, :cond_3

    .line 177
    .line 178
    iget-object v5, p0, Lcom/ss/texturerender/fov/TileInfo;->visibleArray:Lorg/json/JSONArray;

    .line 179
    .line 180
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getInt(I)I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-gez v5, :cond_1

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_1
    if-ge v4, v3, :cond_2

    .line 188
    .line 189
    new-instance v6, Landroid/util/Pair;

    .line 190
    .line 191
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :catch_0
    move-exception p0

    .line 207
    goto :goto_2

    .line 208
    :cond_2
    new-instance v6, Landroid/util/Pair;

    .line 209
    .line 210
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    sub-int/2addr v5, v3

    .line 215
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_3
    iput-object v1, p0, Lcom/ss/texturerender/fov/TileInfo;->mappedBackgroundIndexPairs:Ljava/util/LinkedList;

    .line 229
    .line 230
    iput-object v2, p0, Lcom/ss/texturerender/fov/TileInfo;->mappedOverlayIndexPairs:Ljava/util/LinkedList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .line 232
    return-object p0

    .line 233
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 234
    .line 235
    .line 236
    :cond_4
    :goto_3
    return-object v0
.end method


# virtual methods
.method public getBackgroundTexHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/fov/TileInfo;->tileHeight:I

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/texturerender/fov/TileInfo;->backgroundTileHeightCount:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public getBackgroundTexWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/fov/TileInfo;->tileWidth:I

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/texturerender/fov/TileInfo;->backgroundTileWidthCount:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public getDecodedFrameHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/fov/TileInfo;->tileHeight:I

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/texturerender/fov/TileInfo;->srcTileHeightCount:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public getDecodedFrameWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/fov/TileInfo;->tileWidth:I

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/texturerender/fov/TileInfo;->srcTileWidthCount:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public is3DInput()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/fov/TileInfo;->tileHeight:I

    .line 2
    .line 3
    iget v1, p0, Lcom/ss/texturerender/fov/TileInfo;->tileWidth:I

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
