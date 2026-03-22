.class public interface abstract Lcom/ss/ttm/player/FrameMetadataListener;
.super Ljava/lang/Object;
.source "FrameMetadataListener.java"


# virtual methods
.method public didReceivePacket(IJJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public abstract frameDTSNotify(IJJ)V
.end method

.method public onAbrDecisionInfo(JLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onFrameAboutToBeRendered(IJJLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public receiveBinarySei(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract updateFrameTerminatedDTS(IJJ)V
.end method
