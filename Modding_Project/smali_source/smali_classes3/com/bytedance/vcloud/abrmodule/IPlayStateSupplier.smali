.class public interface abstract Lcom/bytedance/vcloud/abrmodule/IPlayStateSupplier;
.super Ljava/lang/Object;
.source "IPlayStateSupplier.java"


# virtual methods
.method public abstract getAudioBufferInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/vcloud/abrmodule/IBufferInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAverageDownloadSpeed(IIZ)F
.end method

.method public abstract getCurrentDownloadAudioBitrate()I
.end method

.method public abstract getCurrentDownloadAudioSegmentIndex()I
.end method

.method public abstract getCurrentDownloadVideoBitrate()I
.end method

.method public abstract getCurrentDownloadVideoSegmentIndex()I
.end method

.method public abstract getCurrentPlaybackTime()I
.end method

.method public abstract getDownloadSpeed()F
.end method

.method public abstract getLoaderType()I
.end method

.method public abstract getMaxCacheAudioTime()I
.end method

.method public abstract getMaxCacheVideoTime()I
.end method

.method public abstract getNetworkSpeed()F
.end method

.method public abstract getNetworkState()I
.end method

.method public abstract getPlaySpeed()F
.end method

.method public abstract getPlayerAudioCacheTime()I
.end method

.method public abstract getPlayerVideoCacheTime()I
.end method

.method public abstract getSegmentInfoList(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/vcloud/abrmodule/ISegmentInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpeedConfidence()F
.end method

.method public abstract getTimelineNetworkSpeed()Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/bytedance/vcloud/abrmodule/IABRModuleSpeedRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoBufferInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/vcloud/abrmodule/IBufferInfo;",
            ">;"
        }
    .end annotation
.end method
