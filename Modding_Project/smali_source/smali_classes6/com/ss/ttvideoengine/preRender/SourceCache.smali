.class public Lcom/ss/ttvideoengine/preRender/SourceCache;
.super Ljava/lang/Object;
.source "SourceCache.java"

# interfaces
.implements Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreRender_SourceCache"


# instance fields
.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/ttvideoengine/preRender/SourceCacheListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:Lcom/ss/ttvideoengine/source/Source;

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mTimer:Lcom/ss/ttvideoengine/preRender/Timer;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public addSourceCacheListener(Lcom/ss/ttvideoengine/preRender/SourceCacheListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public removeSourceCacheListener(Lcom/ss/ttvideoengine/preRender/SourceCacheListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSource(Lcom/ss/ttvideoengine/source/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mSource:Lcom/ss/ttvideoengine/source/Source;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mTimer:Lcom/ss/ttvideoengine/preRender/Timer;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lcom/ss/ttvideoengine/preRender/Timer;->addTimerListener(Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mTimer:Lcom/ss/ttvideoengine/preRender/Timer;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/ss/ttvideoengine/preRender/Timer;->start()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mTimer:Lcom/ss/ttvideoengine/preRender/Timer;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lcom/ss/ttvideoengine/preRender/Timer;->removeTimerListener(Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mTimer:Lcom/ss/ttvideoengine/preRender/Timer;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/ss/ttvideoengine/preRender/Timer;->stop()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mSource:Lcom/ss/ttvideoengine/source/Source;

    .line 18
    .line 19
    return-void
.end method

.method public trigger()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mSource:Lcom/ss/ttvideoengine/source/Source;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preRender/SourceCache;->stop()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    instance-of v1, v0, Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/source/DirectUrlSource;->firstItem()Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getCacheKey()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    instance-of v1, v0, Lcom/ss/ttvideoengine/source/VideoModelSource;

    .line 30
    .line 31
    const/16 v3, 0xf

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    move-object v1, v0

    .line 36
    check-cast v1, Lcom/ss/ttvideoengine/source/VideoModelSource;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/source/VideoModelSource;->videoModel()Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/source/VideoModelSource;->resolution()Lcom/ss/ttvideoengine/Resolution;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v4, v1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    instance-of v1, v0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    move-object v1, v0

    .line 64
    check-cast v1, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;

    .line 65
    .line 66
    new-instance v4, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->playAuthToken()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->encodeType()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-direct {v4, v5, v6}, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/ss/ttvideoengine/VideoModelCache;->getInstance()Lcom/ss/ttvideoengine/VideoModelCache;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->vid()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->getAPIString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v5, v6, v4}, Lcom/ss/ttvideoengine/VideoModelCache;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    iget-object v4, v4, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->model:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 98
    .line 99
    if-eqz v4, :cond_3

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->resolution()Lcom/ss/ttvideoengine/Resolution;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v4, v1}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    invoke-virtual {v1, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    :cond_3
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_4

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preRender/SourceCache;->stop()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_4
    invoke-static {v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/ss/ttvideoengine/preRender/SourceCache;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_5

    .line 140
    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Lcom/ss/ttvideoengine/preRender/SourceCacheListener;

    .line 146
    .line 147
    iget-wide v4, v1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mMediaSize:J

    .line 148
    .line 149
    invoke-interface {v3, v0, v4, v5}, Lcom/ss/ttvideoengine/preRender/SourceCacheListener;->onCacheSize(Lcom/ss/ttvideoengine/source/Source;J)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    return-void
.end method
