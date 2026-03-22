.class public Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;
.super Ljava/lang/Object;
.source "PreloadSync.java"

# interfaces
.implements Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategy/preload/PreloadSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PreloadCallback"
.end annotation


# instance fields
.field private final mPreloadListener:Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;

.field private final mPreloaderVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

.field private final mResolution:Lcom/ss/ttvideoengine/Resolution;

.field private final mVideoID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;-><init>(Ljava/lang/String;Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;Lcom/ss/ttvideoengine/PreloaderVidItem;Lcom/ss/ttvideoengine/Resolution;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;Lcom/ss/ttvideoengine/PreloaderVidItem;Lcom/ss/ttvideoengine/Resolution;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mVideoID:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mPreloadListener:Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;

    .line 5
    iput-object p3, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mPreloaderVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 6
    iput-object p4, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    return-void
.end method


# virtual methods
.method public preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->getKey()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    const-string v2, "StrategyPreload"

    .line 10
    .line 11
    if-eq v0, v1, :cond_6

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_5

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const/4 p1, 0x5

    .line 20
    if-eq v0, p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "preload result canceled, videoID:"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mVideoID:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mPreloadListener:Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mVideoID:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v0, p1, v1}, Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;->onResult(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mPreloaderVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    iget-object p1, p1, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->fetchVideoModel:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 59
    .line 60
    if-nez p1, :cond_4

    .line 61
    .line 62
    return-void

    .line 63
    :cond_4
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 64
    .line 65
    invoke-static {p1, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->findDefaultResolution(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, v0, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v0, "preload result failed, videoID:"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mVideoID:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mPreloadListener:Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mVideoID:Ljava/lang/String;

    .line 97
    .line 98
    invoke-interface {p1, v1, v0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;->onResult(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v0, "preload result success\uff0cvideoID:"

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mVideoID:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mPreloadListener:Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadSync$PreloadCallback;->mVideoID:Ljava/lang/String;

    .line 127
    .line 128
    invoke-interface {p1, v1, v0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadListener;->onResult(ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_0
    return-void
.end method
