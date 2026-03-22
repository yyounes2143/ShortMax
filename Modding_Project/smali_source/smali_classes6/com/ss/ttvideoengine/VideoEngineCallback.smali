.class public interface abstract Lcom/ss/ttvideoengine/VideoEngineCallback;
.super Ljava/lang/Object;
.source "VideoEngineCallback.java"


# static fields
.field public static final AFTER_FIRST_FRAME:I = 0x1

.field public static final BEFORE_FIRST_FRAME:I = 0x0

.field public static final BUFFERING_TYPE_DECODER:I = 0x1

.field public static final BUFFERING_TYPE_NET:I = 0x0

.field public static final BUFFER_START_ACTION_CHANG_RESOLUTION:I = 0x2

.field public static final BUFFER_START_ACTION_NONE:I = 0x0

.field public static final BUFFER_START_ACTION_SEEK:I = 0x1


# virtual methods
.method public getEncryptedLocalTime()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public onABRPredictBitrate(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAVBadInterlaced(Ljava/util/Map;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onBufferEnd(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onBufferStart(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onBufferingUpdate(Lcom/ss/ttvideoengine/TTVideoEngine;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCompletion(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCurrentPlaybackTimeUpdate(Lcom/ss/ttvideoengine/TTVideoEngine;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onFirstAVSyncFrame(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onFrameAboutToBeRendered(Lcom/ss/ttvideoengine/TTVideoEngine;IJJLjava/util/Map;)V
    .locals 0
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
    return-void
.end method

.method public onFrameDraw(ILjava/util/Map;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onInfoIdChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onLoadStateChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPrepare(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPrepared(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onReadyForDisplay(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRefreshSurface(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRenderStart(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSARChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSetSurface(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/texturerender/VideoSurface;Landroid/view/Surface;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public onStreamChanged(Lcom/ss/ttvideoengine/TTVideoEngine;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoSecondFrame(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoSizeChanged(Lcom/ss/ttvideoengine/TTVideoEngine;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoStatusException(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoStreamBitrateChanged(Lcom/ss/ttvideoengine/Resolution;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoURLRouteFailed(Lcom/ss/ttvideoengine/utils/Error;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
