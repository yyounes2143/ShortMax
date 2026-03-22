.class public Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;
.super Ljava/util/TimerTask;
.source "PortraitNetworkScore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/PortraitNetworkScore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitrateCalculationTask"
.end annotation


# instance fields
.field private mAlgorithm:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

.field private mData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;->mData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;->mAlgorithm:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;->mData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getRttList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;->mData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getMdlSeepList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;->mAlgorithm:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v2, v0, v1}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;->calculateTargetBitrate(Ljava/util/List;Ljava/util/List;)D

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/16 v3, 0x79ed

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v2, v3, v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
