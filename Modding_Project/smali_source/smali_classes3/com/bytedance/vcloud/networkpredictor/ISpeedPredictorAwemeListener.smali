.class public interface abstract Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemeListener;
.super Ljava/lang/Object;
.source "ISpeedPredictorAwemeListener.java"


# virtual methods
.method public abstract getCountry()Ljava/lang/String;
.end method

.method public abstract getDownFileState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getFilesCachePath()Ljava/lang/String;
.end method

.method public abstract getIOExecutor()Ljava/lang/Object;
.end method

.method public abstract getNetworkType()Ljava/lang/String;
.end method

.method public abstract getPhoneSignal()I
.end method
