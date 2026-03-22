.class public Lcom/ss/ttvideoengine/preRender/PlayBuffer;
.super Ljava/lang/Object;
.source "PlayBuffer.java"

# interfaces
.implements Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreRender_PlayBuffer"


# instance fields
.field private mEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/ttvideoengine/preRender/PlayBufferListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimer:Lcom/ss/ttvideoengine/preRender/Timer;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/preRender/Timer;)V
    .locals 1
    .param p1    # Lcom/ss/ttvideoengine/preRender/Timer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mTimer:Lcom/ss/ttvideoengine/preRender/Timer;

    .line 12
    .line 13
    return-void
.end method

.method private checkBuffer()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->isReleased()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getMediaPlayer()Lcom/ss/ttm/player/MediaPlayer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    const/16 v2, 0x49

    .line 30
    .line 31
    const-wide/16 v3, -0x1

    .line 32
    .line 33
    invoke-interface {v1, v2, v3, v4}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    const/16 v2, 0x48

    .line 38
    .line 39
    invoke-interface {v1, v2, v3, v4}, Lcom/ss/ttm/player/MediaPlayer;->getLongOption(IJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    const/16 v4, 0x3e

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    invoke-interface {v1, v4, v7}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/16 v8, 0x3d

    .line 51
    .line 52
    invoke-interface {v1, v8, v7}, Lcom/ss/ttm/player/MediaPlayer;->getIntOption(II)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const-wide/16 v7, 0x0

    .line 57
    .line 58
    const/4 v9, 0x1

    .line 59
    if-ne v4, v9, :cond_3

    .line 60
    .line 61
    if-ne v1, v9, :cond_3

    .line 62
    .line 63
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    if-ne v1, v9, :cond_4

    .line 73
    .line 74
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    if-ne v4, v9, :cond_a

    .line 80
    .line 81
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    :goto_0
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->isMdlCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_8

    .line 90
    .line 91
    invoke-direct {p0, v0, v1, v2}, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->isPlayCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;J)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    iget-object v3, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_7

    .line 109
    .line 110
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lcom/ss/ttvideoengine/preRender/PlayBufferListener;

    .line 115
    .line 116
    if-eqz v4, :cond_6

    .line 117
    .line 118
    invoke-interface {v4, v0, v1, v2}, Lcom/ss/ttvideoengine/preRender/PlayBufferListener;->onCacheSize(Lcom/ss/ttvideoengine/TTVideoEngine;J)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    return-void

    .line 123
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_a

    .line 134
    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lcom/ss/ttvideoengine/preRender/PlayBufferListener;

    .line 140
    .line 141
    if-eqz v2, :cond_9

    .line 142
    .line 143
    invoke-interface {v2, v0}, Lcom/ss/ttvideoengine/preRender/PlayBufferListener;->onCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_a
    return-void

    .line 148
    :cond_b
    :goto_4
    const-string v0, "PreRender_PlayBuffer"

    .line 149
    .line 150
    const-string/jumbo v1, "stop engine null"

    .line 151
    .line 152
    .line 153
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->stop()V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method private isMdlCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheKeys()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_5

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-gtz v1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    iget-wide v3, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mMediaSize:J

    .line 42
    .line 43
    iget-wide v5, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    .line 44
    .line 45
    cmp-long v2, v3, v5

    .line 46
    .line 47
    if-lez v2, :cond_2

    .line 48
    .line 49
    :cond_3
    move v1, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    return v1

    .line 52
    :cond_5
    :goto_1
    return v0
.end method

.method private isPlayCacheEnd(Lcom/ss/ttvideoengine/TTVideoEngine;J)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getDuration()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCurrentPlaybackTime()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    int-to-long v1, p1

    .line 12
    add-long/2addr p2, v1

    .line 13
    const-wide/16 v1, 0x3e8

    .line 14
    .line 15
    add-long/2addr p2, v1

    .line 16
    int-to-long v0, v0

    .line 17
    cmp-long p1, p2, v0

    .line 18
    .line 19
    if-ltz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method


# virtual methods
.method public addPlayBufferListener(Lcom/ss/ttvideoengine/preRender/PlayBufferListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public removePlayBufferListener(Lcom/ss/ttvideoengine/preRender/PlayBufferListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEngine(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mTimer:Lcom/ss/ttvideoengine/preRender/Timer;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lcom/ss/ttvideoengine/preRender/Timer;->addTimerListener(Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mTimer:Lcom/ss/ttvideoengine/preRender/Timer;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/ss/ttvideoengine/preRender/Timer;->start()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const-string v0, "PreRender_PlayBuffer"

    .line 2
    .line 3
    const-string/jumbo v1, "stop"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mTimer:Lcom/ss/ttvideoengine/preRender/Timer;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Lcom/ss/ttvideoengine/preRender/Timer;->removeTimerListener(Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mTimer:Lcom/ss/ttvideoengine/preRender/Timer;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/ss/ttvideoengine/preRender/Timer;->stop()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 21
    .line 22
    return-void
.end method

.method public trigger()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preRender/PlayBuffer;->checkBuffer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
