.class public interface abstract Lcom/ss/ttvideoengine/PreloaderVidItemListener;
.super Ljava/lang/Object;
.source "PreloaderVidItemListener.java"


# virtual methods
.method public abstract apiString(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract authString(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract onUsingUrlInfos(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/VideoInfo;",
            ">;)V"
        }
    .end annotation
.end method
