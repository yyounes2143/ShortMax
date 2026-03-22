.class public interface abstract Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;
.super Ljava/lang/Object;
.source "ISpeedPredictor.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getAverageDownloadSpeed(IIZ)F
.end method

.method public abstract getDownloadSpeed(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastPredictConfidence()F
.end method

.method public abstract getMultidimensionalDownloadSpeeds()Ljava/lang/String;
.end method

.method public abstract getMultidimensionalDownloadSpeedsObj()Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;
.end method

.method public abstract getMultidimensionalPredictSpeeds()Ljava/lang/String;
.end method

.method public abstract getMultidimensionalPredictSpeedsObj()Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;
.end method

.method public abstract getPredictSpeed()F
.end method

.method public abstract getPredictSpeed(I)F
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

.method public abstract setConfigInfo(Ljava/util/Map;)V
.end method

.method public abstract setSpeedQueueSize(I)V
.end method

.method public abstract start()V
.end method

.method public abstract update(JJJ)V
.end method

.method public abstract update(Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
