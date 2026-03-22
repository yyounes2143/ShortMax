.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$MySubFetcherListener;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$FetcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MySubFetcherListener"
.end annotation


# instance fields
.field private final mVideoEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngineImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MySubFetcherListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MySubFetcherListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoListener:Lcom/ss/ttvideoengine/SubInfoListener;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->mSubInfoCallBack:Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-lez v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/SubInfoListener;->onSubPathInfo(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-lez v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v2, p1, p2}, Lcom/ss/ttvideoengine/SubInfoSimpleCallBack;->onSubPathInfo(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "mSubInfoListener is null"

    .line 45
    .line 46
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    if-eqz p1, :cond_5

    .line 50
    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    iget-object p2, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mMediaPlayer:Lcom/ss/ttm/player/MediaPlayer;

    .line 55
    .line 56
    if-eqz p2, :cond_4

    .line 57
    .line 58
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_4

    .line 63
    .line 64
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$4600(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void

    .line 68
    :cond_5
    :goto_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string/jumbo v2, "sub fetch info failed:"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/utils/Error;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {p1, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$1100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/log/IVideoEventLogger;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/utils/Error;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/log/IVideoEventLogger;->setSubtitleError(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_6
    return-void
.end method

.method public onLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MySubFetcherListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string/jumbo v0, "sub fetcher cancelled"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
