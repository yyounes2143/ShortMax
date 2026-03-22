.class public Lcom/ss/ttm/player/TTMediaPlayer;
.super Ljava/lang/Object;
.source "TTMediaPlayer.java"

# interfaces
.implements Lcom/ss/ttm/player/MediaPlayer;


# instance fields
.field protected mClient:Lcom/ss/ttm/player/MediaPlayerClient;

.field protected mPlayerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/ttm/player/TTVersion;->saveVersionInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mPlayerType:I

    .line 6
    .line 7
    return-void
.end method

.method public static final declared-synchronized create(Landroid/content/Context;)Lcom/ss/ttm/player/TTMediaPlayer;
    .locals 10

    .line 1
    const-class v0, Lcom/ss/ttm/player/TTMediaPlayer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/ss/ttm/player/TTMediaPlayer;

    .line 5
    .line 6
    invoke-direct {v1}, Lcom/ss/ttm/player/TTMediaPlayer;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerConfiger;->isPrintInfo()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    const/16 v4, 0xb

    .line 15
    .line 16
    const/4 v5, 0x7

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const-string/jumbo v2, "ttplayer"

    .line 21
    .line 22
    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v8, "ttplayer:"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {v3, v6}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v8, ",ipc:"

    .line 42
    .line 43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/4 v8, 0x2

    .line 47
    invoke-static {v8, v6}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v8, ",crashed:"

    .line 55
    .line 56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {v5, v6}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v8, ",cpu family"

    .line 67
    .line 68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/ss/ttm/utils/HardWareInfo;->getCpuFamily()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v8, ",debug:"

    .line 79
    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v8, ",timeout count:"

    .line 87
    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const/16 v8, 0xa

    .line 92
    .line 93
    invoke-static {v8, v6}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v8, ",forbid create os player:"

    .line 101
    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-static {v4, v6}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-static {v2, v7}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string/jumbo v2, "ttplayer"

    .line 120
    .line 121
    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string/jumbo v8, "version info:"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v8, "not find version info"

    .line 134
    .line 135
    const/16 v9, 0xf

    .line 136
    .line 137
    invoke-static {v9, v8}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-static {v2, v7}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :catchall_0
    move-exception p0

    .line 153
    goto :goto_4

    .line 154
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 155
    :try_start_1
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerConfiger;->isOnTTPlayer()Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-nez v7, :cond_1

    .line 160
    .line 161
    invoke-static {v4, v6}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_2

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catchall_1
    move-exception v7

    .line 169
    goto :goto_2

    .line 170
    :cond_1
    :goto_1
    invoke-static {v1, p0, v2}, Lcom/ss/ttm/player/TTPlayerClient;->create(Lcom/ss/ttm/player/MediaPlayer;Landroid/content/Context;Ljava/util/HashMap;)Lcom/ss/ttm/player/TTPlayerClient;

    .line 171
    .line 172
    .line 173
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    goto :goto_3

    .line 175
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    invoke-static {v5, v6}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-nez v7, :cond_2

    .line 183
    .line 184
    invoke-static {v5, v3}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 185
    .line 186
    .line 187
    :cond_2
    move-object v3, v2

    .line 188
    :goto_3
    if-nez v3, :cond_5

    .line 189
    .line 190
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerConfiger;->isPrintInfo()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_3

    .line 195
    .line 196
    const-string/jumbo v3, "ttplayer"

    .line 197
    .line 198
    .line 199
    const-string v5, "---------->ttplayer off<------------"

    .line 200
    .line 201
    invoke-static {v3, v5}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_3
    invoke-static {v4, v6}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    .line 205
    .line 206
    .line 207
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    if-eqz v3, :cond_4

    .line 209
    .line 210
    monitor-exit v0

    .line 211
    return-object v2

    .line 212
    :cond_4
    :try_start_3
    invoke-static {v1, p0}, Lcom/ss/ttm/player/OSPlayerClient;->create(Lcom/ss/ttm/player/MediaPlayer;Landroid/content/Context;)Lcom/ss/ttm/player/OSPlayerClient;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iput v6, v1, Lcom/ss/ttm/player/TTMediaPlayer;->mPlayerType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    .line 218
    :cond_5
    if-nez v3, :cond_6

    .line 219
    .line 220
    monitor-exit v0

    .line 221
    return-object v2

    .line 222
    :cond_6
    :try_start_4
    iput-object v3, v1, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    .line 224
    monitor-exit v0

    .line 225
    return-object v1

    .line 226
    :goto_4
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 227
    throw p0
.end method


# virtual methods
.method public deselectTrack(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x105

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttm/player/MediaPlayerClient;->setIntOption(II)I

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    shl-int/lit8 p1, p1, 0x8

    .line 17
    .line 18
    const/16 v1, 0x41

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setIntOption(II)I

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getCurrentPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getDataSource()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getDuration()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getFloatOption(IF)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->getFloatOption(IF)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    return p2
.end method

.method public getIntOption(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->getIntOption(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    return p2
.end method

.method public getLongOption(IJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/MediaPlayerClient;->getLongOption(IJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1

    .line 10
    :cond_0
    return-wide p2
.end method

.method public getPlayerType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getSelectedTrack(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->getSelectedTrack(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    return p1
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->getStringOption(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getVideoHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getVideoType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getVideoType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->isLooping()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->isMute()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isOSPlayer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public mouseEvent(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/MediaPlayerClient;->mouseEvent(III)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->prepare()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->prepareAsync()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public prevClose()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->prevClose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public releaseAsync()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->releaseAsync()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->reset()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public rotateCamera(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->rotateCamera(FF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->seekTo(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public selectTrack(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x105

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttm/player/MediaPlayerClient;->setIntOption(II)I

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setCacheFile(Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/MediaPlayerClient;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttm/player/MediaPlayerClient;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setDataSource(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setFloatOption(IF)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setFloatOption(IF)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    return p1
.end method

.method public setFloatOptionArray([I[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setFloatOptionArray([I[F)I

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setIntOption(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setIntOption(II)I

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setIntOptionArray([I[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setIntOptionArray([I[I)I

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setIsMute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setIsMute(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setLongOption(IJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/MediaPlayerClient;->setLongOption(IJ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-long p1, p1

    .line 10
    return-wide p1

    .line 11
    :cond_0
    const-wide/16 p1, -0x1

    .line 12
    .line 13
    return-wide p1
.end method

.method public setLongOptionArray([I[J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setLongOptionArray([I[J)I

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setLooping(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMediaTransport(Lcom/ss/ttm/player/MediaTransport;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setMediaTransport(Lcom/ss/ttm/player/MediaTransport;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnBufferingUpdateListener(Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnCompletionListener(Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnErrorListener(Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnExternInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnExternInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnLogListener(Lcom/ss/ttm/player/MediaPlayer$OnLogListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnLogListener(Lcom/ss/ttm/player/MediaPlayer$OnLogListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnPreparedListener(Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnSARChangedListener(Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnSARChangedListener(Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnSeekCompleteListener(Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnVideoSizeChangedListener(Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPanoVideoControlModel(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setPanoVideoControlModel(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setScreenOnWhilePlaying(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setStringOption(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setStringOption(ILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setStringOptionArray([I[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setStringOptionArray([I[Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setSurface(Landroid/view/Surface;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public setSurfaceTimeOut(Landroid/view/Surface;I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setSurfaceTimeOut(Landroid/view/Surface;I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public setUnSupportSampleRates([I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttm/player/TTMediaPlayer;->isOSPlayer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    array-length v0, p1

    .line 9
    if-gtz v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    sget-object v1, Lcom/ss/ttm/player/MediaPlayer;->MEDIA_PLAYER_SUPPORT_SAMPLERATES:[I

    .line 13
    .line 14
    array-length v1, v1

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v3, v0, :cond_4

    .line 19
    .line 20
    move v5, v2

    .line 21
    :goto_1
    if-ge v5, v1, :cond_3

    .line 22
    .line 23
    sget-object v6, Lcom/ss/ttm/player/MediaPlayer;->MEDIA_PLAYER_SUPPORT_SAMPLERATES:[I

    .line 24
    .line 25
    aget v6, v6, v5

    .line 26
    .line 27
    aget v7, p1, v3

    .line 28
    .line 29
    if-ne v6, v7, :cond_2

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    shl-int v5, v6, v5

    .line 33
    .line 34
    or-int/2addr v4, v5

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    iget-object p1, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 43
    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    const/16 v0, 0x6f

    .line 47
    .line 48
    invoke-virtual {p1, v0, v4}, Lcom/ss/ttm/player/MediaPlayerClient;->setIntOption(II)I

    .line 49
    .line 50
    .line 51
    :cond_5
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setVolume(FF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setWakeMode(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public switchStream(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->switchStream(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public takeScreenshot(Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTMediaPlayer;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->takeScreenshot(Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
