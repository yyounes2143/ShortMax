.class final Lcom/ss/ttvideoengine/ListenerCompact;
.super Ljava/lang/Object;
.source "ListenerCompact.java"

# interfaces
.implements Lcom/ss/ttvideoengine/VideoEngineCallback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mABRListener:Lcom/ss/ttvideoengine/ABRListener;

.field private mBufferDetailListener:Lcom/ss/ttvideoengine/VideoBufferDetailListener;

.field private mBufferListener:Lcom/ss/ttvideoengine/VideoBufferListener;

.field private mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

.field private final mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/ttvideoengine/VideoEngineCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

.field private mSARChangeListener:Lcom/ss/ttvideoengine/SARChangeListener;

.field private mStreamInfoListener:Lcom/ss/ttvideoengine/StreamInfoListener;

.field private mURLRouteListener:Lcom/ss/ttvideoengine/VideoURLRouteListener;


# direct methods
.method constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getEncryptedLocalTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ss/ttvideoengine/VideoEngineCallback;->getEncryptedLocalTime()Ljava/lang/String;

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

.method public onABRPredictBitrate(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mABRListener:Lcom/ss/ttvideoengine/ABRListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/ABRListener;->onPredictBitrate(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onABRPredictBitrate(II)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onABRPredictBitrate(II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onAVBadInterlaced(Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onAVBadInterlaced(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 25
    .line 26
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onAVBadInterlaced(Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public onBufferEnd(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mBufferListener:Lcom/ss/ttvideoengine/VideoBufferListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoBufferListener;->onBufferEnd(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mBufferDetailListener:Lcom/ss/ttvideoengine/VideoBufferDetailListener;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoBufferDetailListener;->onBufferEnd(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onBufferEnd(I)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 39
    .line 40
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onBufferEnd(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    return-void
.end method

.method public onBufferStart(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mBufferListener:Lcom/ss/ttvideoengine/VideoBufferListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoBufferListener;->onBufferStart(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mBufferDetailListener:Lcom/ss/ttvideoengine/VideoBufferDetailListener;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/VideoBufferDetailListener;->onBufferStart(III)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onBufferStart(III)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 39
    .line 40
    invoke-interface {v1, p1, p2, p3}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onBufferStart(III)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    return-void
.end method

.method public onBufferingUpdate(Lcom/ss/ttvideoengine/TTVideoEngine;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineListener;->onBufferingUpdate(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onBufferingUpdate(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onBufferingUpdate(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onCompletion(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineListener;->onCompletion(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onCompletion(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onCompletion(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onCurrentPlaybackTimeUpdate(Lcom/ss/ttvideoengine/TTVideoEngine;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onCurrentPlaybackTimeUpdate(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 25
    .line 26
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onCurrentPlaybackTimeUpdate(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public onError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineListener;->onError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onFirstAVSyncFrame(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineListener;->onFirstAVSyncFrame(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onFirstAVSyncFrame(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onFirstAVSyncFrame(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onFrameAboutToBeRendered(Lcom/ss/ttvideoengine/TTVideoEngine;IJJLjava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            "IJJ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    move-object v2, p1

    .line 7
    move v3, p2

    .line 8
    move-wide v4, p3

    .line 9
    move-wide/from16 v6, p5

    .line 10
    .line 11
    move-object/from16 v8, p7

    .line 12
    .line 13
    invoke-interface/range {v1 .. v8}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onFrameAboutToBeRendered(Lcom/ss/ttvideoengine/TTVideoEngine;IJJLjava/util/Map;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, v0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move-object v3, v2

    .line 33
    check-cast v3, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 34
    .line 35
    move-object v4, p1

    .line 36
    move v5, p2

    .line 37
    move-wide v6, p3

    .line 38
    move-wide/from16 v8, p5

    .line 39
    .line 40
    move-object/from16 v10, p7

    .line 41
    .line 42
    invoke-interface/range {v3 .. v10}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onFrameAboutToBeRendered(Lcom/ss/ttvideoengine/TTVideoEngine;IJJLjava/util/Map;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public onFrameDraw(ILjava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onFrameDraw(ILjava/util/Map;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 25
    .line 26
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onFrameDraw(ILjava/util/Map;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public onInfoIdChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onInfoIdChanged(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 25
    .line 26
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onInfoIdChanged(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public onLoadStateChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineListener;->onLoadStateChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onLoadStateChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onLoadStateChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineListener;->onPlaybackStateChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onPlaybackStateChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onPlaybackStateChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onPrepare(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineListener;->onPrepare(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onPrepare(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onPrepare(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onPrepared(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineListener;->onPrepared(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onPrepared(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onPrepared(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onReadyForDisplay(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onReadyForDisplay(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 25
    .line 26
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onReadyForDisplay(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public onRefreshSurface(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineListener;->onRefreshSurface(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onRefreshSurface(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onRefreshSurface(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onRenderStart(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineListener;->onRenderStart(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onRenderStart(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onRenderStart(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onSARChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mSARChangeListener:Lcom/ss/ttvideoengine/SARChangeListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/SARChangeListener;->onSARChanged(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onSARChanged(II)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onSARChanged(II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onSetSurface(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/texturerender/VideoSurface;Landroid/view/Surface;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/VideoEngineListener;->onSetSurface(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/texturerender/VideoSurface;Landroid/view/Surface;)I

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onSetSurface(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/texturerender/VideoSurface;Landroid/view/Surface;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public onStreamChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineListener;->onStreamChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onStreamChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onStreamChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onVideoSecondFrame(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineListener;->onVideoSecondFrame(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onVideoSecondFrame(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onVideoSecondFrame(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onVideoSizeChanged(Lcom/ss/ttvideoengine/TTVideoEngine;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/VideoEngineListener;->onVideoSizeChanged(Lcom/ss/ttvideoengine/TTVideoEngine;II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onVideoSizeChanged(Lcom/ss/ttvideoengine/TTVideoEngine;II)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1, p2, p3}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onVideoSizeChanged(Lcom/ss/ttvideoengine/TTVideoEngine;II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onVideoStatusException(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineListener;->onVideoStatusException(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onVideoStatusException(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onVideoStatusException(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onVideoStreamBitrateChanged(Lcom/ss/ttvideoengine/Resolution;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mStreamInfoListener:Lcom/ss/ttvideoengine/StreamInfoListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/StreamInfoListener;->onVideoStreamBitrateChanged(Lcom/ss/ttvideoengine/Resolution;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onVideoStreamBitrateChanged(Lcom/ss/ttvideoengine/Resolution;I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onVideoStreamBitrateChanged(Lcom/ss/ttvideoengine/Resolution;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public onVideoURLRouteFailed(Lcom/ss/ttvideoengine/utils/Error;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mURLRouteListener:Lcom/ss/ttvideoengine/VideoURLRouteListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoURLRouteListener;->onFailed(Lcom/ss/ttvideoengine/utils/Error;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onVideoURLRouteFailed(Lcom/ss/ttvideoengine/utils/Error;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 32
    .line 33
    invoke-interface {v1, p1, p2}, Lcom/ss/ttvideoengine/VideoEngineCallback;->onVideoURLRouteFailed(Lcom/ss/ttvideoengine/utils/Error;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method

.method public removeVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setABRListener(Lcom/ss/ttvideoengine/ABRListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mABRListener:Lcom/ss/ttvideoengine/ABRListener;

    .line 2
    .line 3
    return-void
.end method

.method public setSARChangeListener(Lcom/ss/ttvideoengine/SARChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mSARChangeListener:Lcom/ss/ttvideoengine/SARChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setStreamInfoListener(Lcom/ss/ttvideoengine/StreamInfoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mStreamInfoListener:Lcom/ss/ttvideoengine/StreamInfoListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoBufferDetailListener(Lcom/ss/ttvideoengine/VideoBufferDetailListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mBufferDetailListener:Lcom/ss/ttvideoengine/VideoBufferDetailListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoBufferListener(Lcom/ss/ttvideoengine/VideoBufferListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mBufferListener:Lcom/ss/ttvideoengine/VideoBufferListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineCallback:Lcom/ss/ttvideoengine/VideoEngineCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoEngineListener(Lcom/ss/ttvideoengine/VideoEngineListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mEngineListener:Lcom/ss/ttvideoengine/VideoEngineListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoURLRouteListener(Lcom/ss/ttvideoengine/VideoURLRouteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/ListenerCompact;->mURLRouteListener:Lcom/ss/ttvideoengine/VideoURLRouteListener;

    .line 2
    .line 3
    return-void
.end method
