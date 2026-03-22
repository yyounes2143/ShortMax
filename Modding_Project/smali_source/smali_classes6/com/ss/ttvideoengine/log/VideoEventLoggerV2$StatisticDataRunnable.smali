.class Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$StatisticDataRunnable;
.super Ljava/lang/Object;
.source "VideoEventLoggerV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatisticDataRunnable"
.end annotation


# instance fields
.field private final rEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/log/VideoEventOnePlay;",
            ">;"
        }
    .end annotation
.end field

.field private final rEventBase:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/log/VideoEventBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventOnePlay;Lcom/ss/ttvideoengine/log/VideoEventBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$StatisticDataRunnable;->rEvent:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$StatisticDataRunnable;->rEventBase:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$StatisticDataRunnable;->rEvent:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$StatisticDataRunnable;->rEventBase:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCurrentCPUInfo()Lcom/ss/ttvideoengine/log/DeviceMonitorUtils$CPUInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils$CPUInfo;->cpuAppRate:D

    .line 28
    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    cmpl-double v6, v2, v4

    .line 32
    .line 33
    const-wide/high16 v7, 0x36a0000000000000L    # 1.401298464324817E-45

    .line 34
    .line 35
    if-lez v6, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-wide v2, v7

    .line 39
    :goto_0
    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuRateBegin:D

    .line 40
    .line 41
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils$CPUInfo;->cpuAppSpeed:D

    .line 42
    .line 43
    cmpl-double v3, v1, v4

    .line 44
    .line 45
    if-lez v3, :cond_1

    .line 46
    .line 47
    move-wide v7, v1

    .line 48
    :cond_1
    iput-wide v7, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuSpeedBegin:D

    .line 49
    .line 50
    :cond_2
    return-void
.end method
