.class public abstract Lcom/ss/ttm/player/ITTPlayerRef;
.super Ljava/lang/Object;
.source "ITTPlayerRef.java"


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

.method public static declared-synchronized create(Landroid/content/Context;Lcom/ss/ttm/player/TTPlayerClient;Ljava/util/HashMap;)Lcom/ss/ttm/player/ITTPlayerRef;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ss/ttm/player/TTPlayerClient;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/ss/ttm/player/ITTPlayerRef;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/ss/ttm/player/ITTPlayerRef;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const/16 v4, 0x21

    .line 13
    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_0
    move v4, v3

    .line 43
    :goto_0
    if-eqz p2, :cond_1

    .line 44
    .line 45
    const/16 v5, 0x2b

    .line 46
    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v5, v1

    .line 73
    :goto_1
    invoke-static {p1, p0, v4, v5}, Lcom/ss/ttm/player/TTPlayerRef;->create(Lcom/ss/ttm/player/TTPlayerClient;Landroid/content/Context;II)Lcom/ss/ttm/player/TTPlayerRef;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerConfiger;->isPrintInfo()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    const-string/jumbo p1, "ttplayer"

    .line 86
    .line 87
    .line 88
    const-string v4, "---------->ttplayer on<------------"

    .line 89
    .line 90
    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_2
    if-nez p0, :cond_5

    .line 94
    .line 95
    const-string/jumbo p1, "ttplayer"

    .line 96
    .line 97
    .line 98
    const-string v4, "not find start service info."

    .line 99
    .line 100
    const/16 v5, 0x10

    .line 101
    .line 102
    invoke-static {v5, v4}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    const/16 p1, 0x64

    .line 112
    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    move-object v2, p1

    .line 122
    check-cast v2, Ljava/lang/Integer;

    .line 123
    .line 124
    :cond_3
    const/4 p1, 0x3

    .line 125
    const/16 v4, 0xa

    .line 126
    .line 127
    const/4 v5, 0x7

    .line 128
    if-eqz p2, :cond_4

    .line 129
    .line 130
    if-eqz v2, :cond_4

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-ne v2, v3, :cond_4

    .line 137
    .line 138
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Ljava/lang/Integer;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_5

    .line 153
    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-ge v1, p1, :cond_5

    .line 169
    .line 170
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_4
    invoke-static {v5, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    if-nez p2, :cond_5

    .line 187
    .line 188
    invoke-static {v4, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    if-ge p2, p1, :cond_5

    .line 193
    .line 194
    invoke-static {v5, v3}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .line 196
    .line 197
    :cond_5
    :goto_2
    monitor-exit v0

    .line 198
    return-object p0

    .line 199
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    throw p0
.end method

.method public static setGlobalIntOptionForKey(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttm/player/TTPlayerRef;->setGlobalIntOptionForKey(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected abstract close()V
.end method

.method protected abstract getContext()Landroid/content/Context;
.end method

.method protected abstract getDoubleOption(ID)D
.end method

.method protected abstract getFloatOption(IF)F
.end method

.method protected abstract getIntOption(II)I
.end method

.method protected abstract getLifeId()I
.end method

.method protected abstract getLongOption(IJ)J
.end method

.method protected abstract getObjectOption(I)Ljava/lang/Object;
.end method

.method protected abstract getStringOption(I)Ljava/lang/String;
.end method

.method protected abstract getSubtitleContent(I)Ljava/lang/String;
.end method

.method protected abstract getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;
.end method

.method protected abstract getType()I
.end method

.method protected invalid()V
    .locals 0

    .line 1
    return-void
.end method

.method protected abstract isValid()Z
.end method

.method protected abstract mouseEvent(III)V
.end method

.method protected abstract pause()V
.end method

.method protected abstract prepare()V
.end method

.method protected abstract prevClose()V
.end method

.method protected abstract release()V
.end method

.method protected abstract reset()V
.end method

.method protected abstract rotateCamera(FF)V
.end method

.method protected abstract seekTo(I)V
.end method

.method protected abstract seekTo(II)V
.end method

.method protected abstract setABRStrategy(Lcom/ss/ttm/player/ABRStrategy;)V
.end method

.method protected abstract setAIBarrageInfo(Lcom/ss/ttm/player/MaskInfo;)V
.end method

.method protected abstract setAudioProcessor(Lcom/ss/ttm/player/AudioProcessor;)V
.end method

.method protected abstract setCacheFile(Ljava/lang/String;I)V
.end method

.method protected abstract setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V
.end method

.method protected abstract setDataSource(Ljava/lang/String;)V
.end method

.method protected abstract setDataSourceFd(I)V
.end method

.method protected abstract setDoubleOption(ID)I
.end method

.method protected abstract setFloatOption(IF)I
.end method

.method public setFloatOptionArray([I[F)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    return p1
.end method

.method protected abstract setFrameMetadataListener(Lcom/ss/ttm/player/FrameMetadataListener;)V
.end method

.method protected abstract setIntOption(II)I
.end method

.method public setIntOptionArray([I[I)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    return p1
.end method

.method protected abstract setLoadControl(Lcom/ss/ttm/player/LoadControl;)V
.end method

.method protected abstract setLongOption(IJ)I
.end method

.method public setLongOptionArray([I[J)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    return p1
.end method

.method protected abstract setLooping(I)V
.end method

.method protected abstract setMaskInfo(Lcom/ss/ttm/player/MaskInfo;)V
.end method

.method protected abstract setMediaTransport(Lcom/ss/ttm/player/MediaTransport;)V
.end method

.method protected abstract setNotifyState(J)V
.end method

.method protected abstract setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
.end method

.method protected abstract setOnScreenshotListener(Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;)V
.end method

.method protected abstract setStrategyParamsTransport(Lcom/ss/ttm/player/StrategyParamsTransport;)V
.end method

.method protected abstract setStringOption(ILjava/lang/String;)I
.end method

.method public setStringOptionArray([I[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    return p1
.end method

.method protected abstract setSubInfo(Lcom/ss/ttm/player/SubInfo;)V
.end method

.method protected abstract setSurface(Landroid/view/Surface;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract setSurfaceTimeOut(Landroid/view/Surface;I)V
.end method

.method protected abstract setTraitObject(ILcom/ss/ttm/player/TraitObject;)V
.end method

.method protected abstract setVolume(FF)V
.end method

.method protected abstract setupMediaCodec()V
.end method

.method protected abstract start()V
.end method

.method protected abstract stop()V
.end method

.method protected abstract switchStream(II)V
.end method

.method protected abstract takeScreenshot()V
.end method
