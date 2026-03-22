.class Lcom/ss/ttm/player/AJMediaCodec$1;
.super Landroid/media/MediaCodec$Callback;
.source "AJMediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttm/player/AJMediaCodec;->setCallback(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttm/player/AJMediaCodec;


# direct methods
.method constructor <init>(Lcom/ss/ttm/player/AJMediaCodec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaCodec$CodecException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "JAJMediaCodec"

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "ttmn: "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p1, p0, p2}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/ss/ttm/player/AJMediaCodec;->access$100()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    monitor-enter p1

    .line 29
    :try_start_0
    iget-object p2, p0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 30
    .line 31
    invoke-static {p2}, Lcom/ss/ttm/player/AJMediaCodec;->access$200(Lcom/ss/ttm/player/AJMediaCodec;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    monitor-exit p1

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p2, p0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 42
    .line 43
    invoke-static {p2}, Lcom/ss/ttm/player/AJMediaCodec;->access$300(Lcom/ss/ttm/player/AJMediaCodec;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-static {v0, v1}, Lcom/ss/ttm/player/AJMediaCodec;->access$600(J)V

    .line 48
    .line 49
    .line 50
    monitor-exit p1

    .line 51
    return-void

    .line 52
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p2
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 2
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttm/player/AJMediaCodec;->access$000(Lcom/ss/ttm/player/AJMediaCodec;)Landroid/media/MediaCodec;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/ss/ttm/player/AJMediaCodec;->access$100()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/ss/ttm/player/AJMediaCodec;->access$200(Lcom/ss/ttm/player/AJMediaCodec;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    monitor-exit p1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/ss/ttm/player/AJMediaCodec;->access$300(Lcom/ss/ttm/player/AJMediaCodec;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-static {v0, v1, p2}, Lcom/ss/ttm/player/AJMediaCodec;->access$400(JI)V

    .line 33
    .line 34
    .line 35
    monitor-exit p1

    .line 36
    goto :goto_1

    .line 37
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p2

    .line 39
    :cond_1
    :goto_1
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 9
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttm/player/AJMediaCodec;->access$000(Lcom/ss/ttm/player/AJMediaCodec;)Landroid/media/MediaCodec;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/ss/ttm/player/AJMediaCodec;->access$100()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/ss/ttm/player/AJMediaCodec;->access$200(Lcom/ss/ttm/player/AJMediaCodec;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    monitor-exit p1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/ss/ttm/player/AJMediaCodec;->access$300(Lcom/ss/ttm/player/AJMediaCodec;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 33
    .line 34
    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 35
    .line 36
    iget-wide v6, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 37
    .line 38
    iget v8, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 39
    .line 40
    move v3, p2

    .line 41
    invoke-static/range {v1 .. v8}, Lcom/ss/ttm/player/AJMediaCodec;->access$500(JIIIJI)V

    .line 42
    .line 43
    .line 44
    monitor-exit p1

    .line 45
    goto :goto_1

    .line 46
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p2

    .line 48
    :cond_1
    :goto_1
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 24
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "channel-count"

    .line 6
    .line 7
    const-string v3, "sample-rate"

    .line 8
    .line 9
    const-string/jumbo v4, "stride"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v5, "slice-height"

    .line 13
    .line 14
    .line 15
    const-string v6, "color-transfer"

    .line 16
    .line 17
    const-string v7, "color-format"

    .line 18
    .line 19
    const-string v8, "crop-right"

    .line 20
    .line 21
    iget-object v9, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 22
    .line 23
    invoke-static {v9, v1}, Lcom/ss/ttm/player/AJMediaCodec;->access$702(Lcom/ss/ttm/player/AJMediaCodec;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    .line 24
    .line 25
    .line 26
    if-eqz v1, :cond_d

    .line 27
    .line 28
    :try_start_0
    const-string v10, "mime"

    .line 29
    .line 30
    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    const-string/jumbo v11, "video"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    if-eqz v11, :cond_a

    .line 42
    .line 43
    invoke-virtual {v1, v8}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const-string v12, "crop-top"

    .line 48
    .line 49
    const-string v13, "crop-bottom"

    .line 50
    .line 51
    const-string v14, "crop-left"

    .line 52
    .line 53
    const/4 v15, 0x1

    .line 54
    if-eqz v11, :cond_0

    .line 55
    .line 56
    :try_start_1
    invoke-virtual {v1, v14}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-eqz v11, :cond_0

    .line 61
    .line 62
    invoke-virtual {v1, v13}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    if-eqz v11, :cond_0

    .line 67
    .line 68
    invoke-virtual {v1, v12}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    if-eqz v11, :cond_0

    .line 73
    .line 74
    move v11, v15

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/4 v11, 0x0

    .line 77
    :goto_0
    iget-object v9, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 78
    .line 79
    invoke-static {v9}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    if-eqz v11, :cond_1

    .line 84
    .line 85
    invoke-virtual {v1, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    invoke-virtual {v1, v14}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    sub-int/2addr v8, v14

    .line 94
    add-int/2addr v8, v15

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    const-string/jumbo v8, "width"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v8}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    :goto_1
    iput v8, v9, Lcom/ss/ttm/player/AJMediaFormat;->width:I

    .line 104
    .line 105
    iget-object v8, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 106
    .line 107
    invoke-static {v8}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    if-eqz v11, :cond_2

    .line 112
    .line 113
    invoke-virtual {v1, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    invoke-virtual {v1, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    sub-int/2addr v9, v11

    .line 122
    add-int/2addr v9, v15

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    const-string v9, "height"

    .line 125
    .line 126
    invoke-virtual {v1, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    :goto_2
    iput v9, v8, Lcom/ss/ttm/player/AJMediaFormat;->height:I

    .line 131
    .line 132
    invoke-virtual {v1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-eqz v8, :cond_3

    .line 137
    .line 138
    invoke-virtual {v1, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    goto :goto_3

    .line 143
    :cond_3
    const/4 v7, 0x0

    .line 144
    :goto_3
    const/16 v8, 0x15

    .line 145
    .line 146
    if-eq v7, v8, :cond_4

    .line 147
    .line 148
    const v8, 0x7f000100

    .line 149
    .line 150
    .line 151
    if-eq v7, v8, :cond_4

    .line 152
    .line 153
    const v8, 0x7fa30c00

    .line 154
    .line 155
    .line 156
    if-eq v7, v8, :cond_4

    .line 157
    .line 158
    iget-object v7, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 159
    .line 160
    invoke-static {v7}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    const/4 v8, 0x0

    .line 165
    iput v8, v7, Lcom/ss/ttm/player/AJMediaFormat;->colorFormat:I

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_4
    iget-object v7, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 169
    .line 170
    invoke-static {v7}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    const/4 v8, 0x3

    .line 175
    iput v8, v7, Lcom/ss/ttm/player/AJMediaFormat;->colorFormat:I

    .line 176
    .line 177
    :goto_4
    invoke-virtual {v1, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    if-eqz v7, :cond_5

    .line 182
    .line 183
    invoke-virtual {v1, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    goto :goto_5

    .line 188
    :cond_5
    const/4 v8, 0x0

    .line 189
    :goto_5
    const/4 v6, 0x6

    .line 190
    if-eq v8, v6, :cond_7

    .line 191
    .line 192
    const/4 v6, 0x7

    .line 193
    if-eq v8, v6, :cond_6

    .line 194
    .line 195
    iget-object v6, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 196
    .line 197
    invoke-static {v6}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    const/4 v8, 0x0

    .line 202
    iput v8, v6, Lcom/ss/ttm/player/AJMediaFormat;->colorTrans:I

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_6
    const/4 v8, 0x0

    .line 206
    iget-object v6, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 207
    .line 208
    invoke-static {v6}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    const/16 v7, 0x12

    .line 213
    .line 214
    iput v7, v6, Lcom/ss/ttm/player/AJMediaFormat;->colorTrans:I

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_7
    const/4 v8, 0x0

    .line 218
    iget-object v6, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 219
    .line 220
    invoke-static {v6}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    const/16 v7, 0x10

    .line 225
    .line 226
    iput v7, v6, Lcom/ss/ttm/player/AJMediaFormat;->colorTrans:I

    .line 227
    .line 228
    :goto_6
    iget-object v6, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 229
    .line 230
    invoke-static {v6}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    if-eqz v7, :cond_8

    .line 239
    .line 240
    invoke-virtual {v1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    goto :goto_7

    .line 245
    :cond_8
    move v5, v8

    .line 246
    :goto_7
    iput v5, v6, Lcom/ss/ttm/player/AJMediaFormat;->sliceHeight:I

    .line 247
    .line 248
    iget-object v5, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 249
    .line 250
    invoke-static {v5}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    if-eqz v6, :cond_9

    .line 259
    .line 260
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    goto :goto_8

    .line 265
    :cond_9
    move v4, v8

    .line 266
    :goto_8
    iput v4, v5, Lcom/ss/ttm/player/AJMediaFormat;->stride:I

    .line 267
    .line 268
    goto :goto_9

    .line 269
    :cond_a
    const/4 v8, 0x0

    .line 270
    :goto_9
    const-string v4, "audio"

    .line 271
    .line 272
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-eqz v4, :cond_e

    .line 277
    .line 278
    iget-object v4, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 279
    .line 280
    invoke-static {v4}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-eqz v5, :cond_b

    .line 289
    .line 290
    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    goto :goto_a

    .line 295
    :cond_b
    move v3, v8

    .line 296
    :goto_a
    iput v3, v4, Lcom/ss/ttm/player/AJMediaFormat;->sampleRate:I

    .line 297
    .line 298
    iget-object v3, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 299
    .line 300
    invoke-static {v3}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-eqz v4, :cond_c

    .line 309
    .line 310
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    goto :goto_b

    .line 315
    :cond_c
    move v1, v8

    .line 316
    :goto_b
    iput v1, v3, Lcom/ss/ttm/player/AJMediaFormat;->channelCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    .line 318
    goto :goto_c

    .line 319
    :catch_0
    iget-object v1, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 320
    .line 321
    invoke-static {v1}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v1}, Lcom/ss/ttm/player/AJMediaFormat;->reset()V

    .line 326
    .line 327
    .line 328
    iget-object v1, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 329
    .line 330
    invoke-static {v1}, Lcom/ss/ttm/player/AJMediaCodec;->access$300(Lcom/ss/ttm/player/AJMediaCodec;)J

    .line 331
    .line 332
    .line 333
    move-result-wide v2

    .line 334
    const/4 v11, 0x0

    .line 335
    const/4 v12, 0x0

    .line 336
    const/4 v1, -0x1

    .line 337
    const/4 v5, 0x0

    .line 338
    const/4 v6, 0x0

    .line 339
    const/4 v7, 0x0

    .line 340
    const/4 v8, 0x0

    .line 341
    const/4 v9, 0x0

    .line 342
    const/4 v10, 0x0

    .line 343
    move v4, v1

    .line 344
    invoke-static/range {v2 .. v12}, Lcom/ss/ttm/player/AJMediaCodec;->access$900(JIIIIIIIII)V

    .line 345
    .line 346
    .line 347
    move v15, v1

    .line 348
    goto :goto_d

    .line 349
    :cond_d
    const/4 v8, 0x0

    .line 350
    :cond_e
    :goto_c
    move v15, v8

    .line 351
    :goto_d
    iget-object v1, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 352
    .line 353
    invoke-static {v1}, Lcom/ss/ttm/player/AJMediaCodec;->access$300(Lcom/ss/ttm/player/AJMediaCodec;)J

    .line 354
    .line 355
    .line 356
    move-result-wide v13

    .line 357
    iget-object v1, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 358
    .line 359
    invoke-static {v1}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    iget v1, v1, Lcom/ss/ttm/player/AJMediaFormat;->width:I

    .line 364
    .line 365
    iget-object v2, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 366
    .line 367
    invoke-static {v2}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    iget v2, v2, Lcom/ss/ttm/player/AJMediaFormat;->height:I

    .line 372
    .line 373
    iget-object v3, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 374
    .line 375
    invoke-static {v3}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    iget v3, v3, Lcom/ss/ttm/player/AJMediaFormat;->sampleRate:I

    .line 380
    .line 381
    iget-object v4, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 382
    .line 383
    invoke-static {v4}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    iget v4, v4, Lcom/ss/ttm/player/AJMediaFormat;->channelCount:I

    .line 388
    .line 389
    iget-object v5, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 390
    .line 391
    invoke-static {v5}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    iget v5, v5, Lcom/ss/ttm/player/AJMediaFormat;->colorFormat:I

    .line 396
    .line 397
    iget-object v6, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 398
    .line 399
    invoke-static {v6}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    iget v6, v6, Lcom/ss/ttm/player/AJMediaFormat;->colorTrans:I

    .line 404
    .line 405
    iget-object v7, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 406
    .line 407
    invoke-static {v7}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    iget v7, v7, Lcom/ss/ttm/player/AJMediaFormat;->sliceHeight:I

    .line 412
    .line 413
    iget-object v8, v0, Lcom/ss/ttm/player/AJMediaCodec$1;->this$0:Lcom/ss/ttm/player/AJMediaCodec;

    .line 414
    .line 415
    invoke-static {v8}, Lcom/ss/ttm/player/AJMediaCodec;->access$800(Lcom/ss/ttm/player/AJMediaCodec;)Lcom/ss/ttm/player/AJMediaFormat;

    .line 416
    .line 417
    .line 418
    move-result-object v8

    .line 419
    iget v8, v8, Lcom/ss/ttm/player/AJMediaFormat;->stride:I

    .line 420
    .line 421
    move/from16 v16, v1

    .line 422
    .line 423
    move/from16 v17, v2

    .line 424
    .line 425
    move/from16 v18, v3

    .line 426
    .line 427
    move/from16 v19, v4

    .line 428
    .line 429
    move/from16 v20, v5

    .line 430
    .line 431
    move/from16 v21, v6

    .line 432
    .line 433
    move/from16 v22, v7

    .line 434
    .line 435
    move/from16 v23, v8

    .line 436
    .line 437
    invoke-static/range {v13 .. v23}, Lcom/ss/ttm/player/AJMediaCodec;->access$900(JIIIIIIIII)V

    .line 438
    .line 439
    .line 440
    return-void
.end method
