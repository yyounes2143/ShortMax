.class public interface abstract Lcom/bytedance/vcloud/abrmodule/IBitrateSelector;
.super Ljava/lang/Object;
.source "IBitrateSelector.java"


# virtual methods
.method public abstract predictBitrate(Lcom/bytedance/vcloud/abrmodule/IPlayStateSupplier;)Lcom/bytedance/vcloud/abrmodule/ABRResult;
.end method

.method public abstract predictStartupBitrate(Lcom/bytedance/vcloud/abrmodule/IPlayStateSupplier;)Lcom/bytedance/vcloud/abrmodule/ABRResult;
.end method

.method public abstract release()V
.end method

.method public abstract setMediaInfo(Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/vcloud/abrmodule/IVideoStream;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/vcloud/abrmodule/IAudioStream;",
            ">;)V"
        }
    .end annotation
.end method
