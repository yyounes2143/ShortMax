.class public interface abstract Lcom/ss/ttvideoengine/NativeThreadInterface;
.super Ljava/lang/Object;
.source "NativeThreadInterface.java"


# virtual methods
.method public abstract carethreadList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public getPowerMode()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract getProcessCpuUsage()F
.end method

.method public getThermalStatus()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract getThreadCpuUsage(I)F
.end method

.method public onLowPowerModeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTempStatusChanged(I)V
    .locals 0

    .line 1
    return-void
.end method
