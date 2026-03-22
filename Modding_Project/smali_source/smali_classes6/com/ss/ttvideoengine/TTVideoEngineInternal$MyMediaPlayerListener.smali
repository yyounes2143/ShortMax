.class Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;
.super Ljava/lang/Object;
.source "TTVideoEngineInternal.java"

# interfaces
.implements Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;
.implements Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;
.implements Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;
.implements Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;
.implements Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;
.implements Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;
.implements Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;
.implements Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyMediaPlayerListener"
.end annotation


# instance fields
.field private final mVideoEngineInternalRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngineInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)V
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
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;->mVideoEngineInternalRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcom/ss/ttm/player/MediaPlayer;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;->mVideoEngineInternalRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->onMediaPlayerBufferingUpdate(Lcom/ss/ttm/player/MediaPlayer;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onCompletion(Lcom/ss/ttm/player/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;->mVideoEngineInternalRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->onMediaPlayerCompletion(Lcom/ss/ttm/player/MediaPlayer;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onError(Lcom/ss/ttm/player/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;->mVideoEngineInternalRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->onMediaPlayerError(Lcom/ss/ttm/player/MediaPlayer;II)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onInfo(Lcom/ss/ttm/player/MediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;->mVideoEngineInternalRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->onMediaPlayerInfo(Lcom/ss/ttm/player/MediaPlayer;II)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onPrepared(Lcom/ss/ttm/player/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;->mVideoEngineInternalRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->onMediaPlayerPrepared(Lcom/ss/ttm/player/MediaPlayer;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onSARChanged(Lcom/ss/ttm/player/MediaPlayer;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;->mVideoEngineInternalRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->onMediaPlayerSARChanged(Lcom/ss/ttm/player/MediaPlayer;II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onSeekComplete(Lcom/ss/ttm/player/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;->mVideoEngineInternalRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->onMediaPlayerSeekComplete(Lcom/ss/ttm/player/MediaPlayer;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onVideoSizeChanged(Lcom/ss/ttm/player/MediaPlayer;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineInternal$MyMediaPlayerListener;->mVideoEngineInternalRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->onMediaPlayerVideoSizeChanged(Lcom/ss/ttm/player/MediaPlayer;II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
