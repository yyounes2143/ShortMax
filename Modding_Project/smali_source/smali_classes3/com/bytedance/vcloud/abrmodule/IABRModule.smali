.class public interface abstract Lcom/bytedance/vcloud/abrmodule/IABRModule;
.super Ljava/lang/Object;
.source "IABRModule.java"


# static fields
.field public static final SELECT_SCENE_PRELOAD:I = 0x0

.field public static final SELECT_SCENE_STARTUP:I = 0x1


# virtual methods
.method public abstract addBufferInfo(ILjava/lang/String;JJJ)V
.end method

.method public abstract getFloatOption(IF)F
.end method

.method public abstract getLongOption(IJ)J
.end method

.method public abstract getPredict()Lcom/bytedance/vcloud/abrmodule/ABRResult;
.end method

.method public abstract getPredictByJsonParams(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStringOption(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract init(Lcom/bytedance/vcloud/abrmodule/IPlayStateSupplier;)V
.end method

.method public abstract onceSelect(II)Lcom/bytedance/vcloud/abrmodule/ABRResult;
.end method

.method public abstract release()V
.end method

.method public abstract setDeviceInfo(Lcom/bytedance/vcloud/abrmodule/IDeviceInfo;)V
.end method

.method public abstract setDoubleOptionForKey(ID)V
.end method

.method public abstract setFloatOptionForKey(IF)V
.end method

.method public abstract setInfoListener(Lcom/bytedance/vcloud/abrmodule/IABRInfoListener;)V
.end method

.method public abstract setIntOptionForKey(II)V
.end method

.method public abstract setLongOptionForKey(IJ)V
.end method

.method public abstract setMediaInfo(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/abrmodule/IVideoStream;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/vcloud/abrmodule/IAudioStream;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSRBenchmark(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSRBenchmarkMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract setStringOptionForKey(ILjava/lang/String;)V
.end method

.method public abstract start(II)V
.end method

.method public abstract stop()V
.end method

.method public abstract toStratrgy()Lcom/ss/ttm/player/ABRStrategy;
.end method
