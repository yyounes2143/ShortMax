.class public interface abstract Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;
.super Ljava/lang/Object;
.source "PortraitNetworkScore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/PortraitNetworkScore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkQualityAlgorithm"
.end annotation


# virtual methods
.method public abstract calculateTargetBitrate(Ljava/util/List;Ljava/util/List;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)D"
        }
    .end annotation
.end method

.method public abstract getLastNetworkScore()I
.end method

.method public abstract getNetworkScore()I
.end method

.method public abstract init()V
.end method

.method public abstract setStringOption(ILjava/lang/String;)V
.end method
