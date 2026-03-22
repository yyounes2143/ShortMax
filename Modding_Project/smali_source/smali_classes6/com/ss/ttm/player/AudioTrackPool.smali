.class public final Lcom/ss/ttm/player/AudioTrackPool;
.super Ljava/lang/Object;
.source "AudioTrackPool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioTrackPool"

.field private static volatile instance:Lcom/ss/ttm/player/AudioTrackPool;


# instance fields
.field private trackPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/ss/ttm/player/AudioTrackBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private trackPoolSizeLimit:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttm/player/AudioTrackPool;->trackPoolSizeLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/ttm/player/AudioTrackPool;->trackPool:Ljava/util/Queue;

    .line 18
    .line 19
    const/16 v0, 0x2f

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/ss/ttm/player/AudioTrackPool;->setAudioTrackPoolSize(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static getInstance()Lcom/ss/ttm/player/AudioTrackPool;
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/ttm/player/AudioTrackPool;->instance:Lcom/ss/ttm/player/AudioTrackPool;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/ss/ttm/player/AudioTrackPool;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/ttm/player/AudioTrackPool;->instance:Lcom/ss/ttm/player/AudioTrackPool;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/ss/ttm/player/AudioTrackPool;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/ss/ttm/player/AudioTrackPool;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/ss/ttm/player/AudioTrackPool;->instance:Lcom/ss/ttm/player/AudioTrackPool;

    .line 18
    .line 19
    const-string v1, "AudioTrackPool"

    .line 20
    .line 21
    const-string v2, "AudioTrackPool log: Construct AudioTrackPool!"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1

    .line 33
    :cond_1
    :goto_2
    sget-object v0, Lcom/ss/ttm/player/AudioTrackPool;->instance:Lcom/ss/ttm/player/AudioTrackPool;

    .line 34
    .line 35
    return-object v0
.end method


# virtual methods
.method public getReuseAudioTrack(IIIIIII)Landroid/media/AudioTrack;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/AudioTrackPool;->trackPool:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p1, "AudioTrackPool"

    .line 11
    .line 12
    const-string p2, "AudioTrackPool log: trackPool is empty!"

    .line 13
    .line 14
    invoke-static {p1, p0, p2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/AudioTrackPool;->trackPool:Ljava/util/Queue;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/ss/ttm/player/AudioTrackBuffer;

    .line 36
    .line 37
    iget v3, v2, Lcom/ss/ttm/player/AudioTrackBuffer;->streamType:I

    .line 38
    .line 39
    if-ne v3, p1, :cond_1

    .line 40
    .line 41
    iget v3, v2, Lcom/ss/ttm/player/AudioTrackBuffer;->sampleRate:I

    .line 42
    .line 43
    if-ne v3, p2, :cond_1

    .line 44
    .line 45
    iget v3, v2, Lcom/ss/ttm/player/AudioTrackBuffer;->channelsLayout:I

    .line 46
    .line 47
    if-ne v3, p3, :cond_1

    .line 48
    .line 49
    iget v3, v2, Lcom/ss/ttm/player/AudioTrackBuffer;->audioFormat:I

    .line 50
    .line 51
    if-ne v3, p4, :cond_1

    .line 52
    .line 53
    iget v3, v2, Lcom/ss/ttm/player/AudioTrackBuffer;->trackBufferSize:I

    .line 54
    .line 55
    if-ne v3, p5, :cond_1

    .line 56
    .line 57
    iget v3, v2, Lcom/ss/ttm/player/AudioTrackBuffer;->sessionId:I

    .line 58
    .line 59
    if-ne v3, p6, :cond_1

    .line 60
    .line 61
    iget v3, v2, Lcom/ss/ttm/player/AudioTrackBuffer;->contentType:I

    .line 62
    .line 63
    if-ne v3, p7, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_2
    move-object v2, v1

    .line 70
    :goto_0
    if-eqz v2, :cond_4

    .line 71
    .line 72
    iget-object p6, p0, Lcom/ss/ttm/player/AudioTrackPool;->trackPool:Ljava/util/Queue;

    .line 73
    .line 74
    invoke-interface {p6, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    iget-object p6, v2, Lcom/ss/ttm/player/AudioTrackBuffer;->AudioTrack:Landroid/media/AudioTrack;

    .line 78
    .line 79
    invoke-virtual {p6}, Landroid/media/AudioTrack;->getPlayState()I

    .line 80
    .line 81
    .line 82
    move-result p6

    .line 83
    const/4 v0, 0x1

    .line 84
    if-ne p6, v0, :cond_3

    .line 85
    .line 86
    const-string p6, "AudioTrackPool"

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v1, "AudioTrackPool log: find best-matched AudioTrack: "

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, v2, Lcom/ss/ttm/player/AudioTrackBuffer;->AudioTrack:Landroid/media/AudioTrack;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, " ,mContentType:"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p7, " ,mStreamType:"

    .line 112
    .line 113
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p1, " ,mSampleRate:"

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p1, " ,mChannelsLayout:"

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p1, " ,mAudioFormat:"

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, " ,mTrackBufferSize:"

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p6, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, v2, Lcom/ss/ttm/player/AudioTrackBuffer;->AudioTrack:Landroid/media/AudioTrack;

    .line 159
    .line 160
    monitor-exit p0

    .line 161
    return-object p1

    .line 162
    :cond_3
    iget-object p6, v2, Lcom/ss/ttm/player/AudioTrackBuffer;->AudioTrack:Landroid/media/AudioTrack;

    .line 163
    .line 164
    invoke-virtual {p0, p6}, Lcom/ss/ttm/player/AudioTrackPool;->releaseAudioTrack(Landroid/media/AudioTrack;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    const-string p6, "AudioTrackPool"

    .line 169
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v2, "AudioTrackPool log: find best-matched AudioTrack fail,mContentType:"

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string p7, " ,mStreamType:"

    .line 184
    .line 185
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string p1, " ,mSampleRate:"

    .line 192
    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string p1, " ,mChannelsLayout:"

    .line 200
    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string p1, " ,mAudioFormat:"

    .line 208
    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string p1, " ,mTrackBufferSize:"

    .line 216
    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {p6, p0, p1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return-object v1

    .line 231
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    throw p1
.end method

.method public pushAudioTrackBack(Landroid/media/AudioTrack;ZIIIIIII)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v11, p3

    .line 6
    .line 7
    move/from16 v12, p4

    .line 8
    .line 9
    move/from16 v13, p5

    .line 10
    .line 11
    move/from16 v14, p6

    .line 12
    .line 13
    move/from16 v15, p7

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "AudioTrackPool"

    .line 18
    .line 19
    const-string v2, "AudioTrackPool log: audioTrack is null!"

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    const-string v2, "AudioTrackPool"

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "AudioTrackPool log: force release AudioTrack:"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v2, v1, v3}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p0 .. p1}, Lcom/ss/ttm/player/AudioTrackPool;->releaseAudioTrack(Landroid/media/AudioTrack;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    monitor-enter p0

    .line 54
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioTrack;->getPlayState()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x1

    .line 59
    if-eq v2, v3, :cond_2

    .line 60
    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioTrack;->stop()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_2
    :goto_0
    new-instance v10, Lcom/ss/ttm/player/AudioTrackBuffer;

    .line 69
    .line 70
    move-object v2, v10

    .line 71
    move-object/from16 v3, p1

    .line 72
    .line 73
    move/from16 v4, p3

    .line 74
    .line 75
    move/from16 v5, p4

    .line 76
    .line 77
    move/from16 v6, p5

    .line 78
    .line 79
    move/from16 v7, p6

    .line 80
    .line 81
    move/from16 v8, p7

    .line 82
    .line 83
    move/from16 v9, p8

    .line 84
    .line 85
    move/from16 v15, p9

    .line 86
    .line 87
    move-object v14, v10

    .line 88
    move/from16 v10, p9

    .line 89
    .line 90
    invoke-direct/range {v2 .. v10}, Lcom/ss/ttm/player/AudioTrackBuffer;-><init>(Landroid/media/AudioTrack;IIIIIII)V

    .line 91
    .line 92
    .line 93
    iget-object v2, v1, Lcom/ss/ttm/player/AudioTrackPool;->trackPool:Ljava/util/Queue;

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    iget-object v3, v1, Lcom/ss/ttm/player/AudioTrackPool;->trackPoolSizeLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-ge v2, v3, :cond_3

    .line 106
    .line 107
    iget-object v2, v1, Lcom/ss/ttm/player/AudioTrackPool;->trackPool:Ljava/util/Queue;

    .line 108
    .line 109
    invoke-interface {v2, v14}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    const-string v2, "AudioTrackPool"

    .line 116
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v4, "AudioTrackPool log: pushback AudioTrack success! AudioTrack: "

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v0, ", poolSize: "

    .line 131
    .line 132
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v0, v1, Lcom/ss/ttm/player/AudioTrackPool;->trackPool:Ljava/util/Queue;

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v0, ", mContentType:"

    .line 145
    .line 146
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v0, ", mStreamType:"

    .line 153
    .line 154
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v0, ", mSampleRate:"

    .line 161
    .line 162
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v0, ", mChannelsLayout:"

    .line 169
    .line 170
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, ", mAudioFormat:"

    .line 177
    .line 178
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    move/from16 v4, p6

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v0, ", mTrackBufferSize:"

    .line 187
    .line 188
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    move/from16 v5, p7

    .line 192
    .line 193
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v2, v1, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :cond_3
    move/from16 v4, p6

    .line 206
    .line 207
    move/from16 v5, p7

    .line 208
    .line 209
    move-object v3, v14

    .line 210
    move v2, v15

    .line 211
    iget-object v6, v1, Lcom/ss/ttm/player/AudioTrackPool;->trackPool:Ljava/util/Queue;

    .line 212
    .line 213
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    check-cast v6, Lcom/ss/ttm/player/AudioTrackBuffer;

    .line 218
    .line 219
    iget-object v6, v6, Lcom/ss/ttm/player/AudioTrackBuffer;->AudioTrack:Landroid/media/AudioTrack;

    .line 220
    .line 221
    if-eqz v6, :cond_4

    .line 222
    .line 223
    const-string v7, "AudioTrackPool"

    .line 224
    .line 225
    new-instance v8, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v9, "AudioTrackPool log: start release AudioTrack! AudioTrack: "

    .line 231
    .line 232
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-static {v7, v1, v8}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v6}, Lcom/ss/ttm/player/AudioTrackPool;->releaseAudioTrack(Landroid/media/AudioTrack;)V

    .line 246
    .line 247
    .line 248
    iget-object v6, v1, Lcom/ss/ttm/player/AudioTrackPool;->trackPool:Ljava/util/Queue;

    .line 249
    .line 250
    invoke-interface {v6, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_4

    .line 255
    .line 256
    const-string v3, "AudioTrackPool"

    .line 257
    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v7, "AudioTrackPool log: pushback AudioTrack success! AudioTrack: "

    .line 264
    .line 265
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v0, ", poolSize: "

    .line 272
    .line 273
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    iget-object v0, v1, Lcom/ss/ttm/player/AudioTrackPool;->trackPool:Ljava/util/Queue;

    .line 277
    .line 278
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v0, ", mContentType:"

    .line 286
    .line 287
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v0, ", mStreamType:"

    .line 294
    .line 295
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v0, ", mSampleRate:"

    .line 302
    .line 303
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v0, ", mChannelsLayout:"

    .line 310
    .line 311
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v0, ", mAudioFormat:"

    .line 318
    .line 319
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v0, ", mTrackBufferSize:"

    .line 326
    .line 327
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-static {v3, v1, v0}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    :cond_4
    :goto_1
    monitor-exit p0

    .line 341
    return-void

    .line 342
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    throw v0
.end method

.method public releaseAudioTrack(Landroid/media/AudioTrack;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Lcom/ss/ttm/player/AudioTrackPool$1;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/ss/ttm/player/AudioTrackPool$1;-><init>(Lcom/ss/ttm/player/AudioTrackPool;Landroid/media/AudioTrack;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/ss/ttm/player/AVThreadPool;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "AudioTrackPool log: create close thread fail: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "AudioTrackPool"

    .line 31
    .line 32
    invoke-static {v1, p0, v0}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/media/AudioTrack;->flush()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    return-void
.end method

.method public setAudioTrackPoolSize(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AudioTrackPool log: set audioTrack pool size:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "AudioTrackPool"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/ttm/player/AudioTrackPool;->trackPoolSizeLimit:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
