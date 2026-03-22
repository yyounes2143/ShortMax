.class public Lcom/ss/ttvideoengine/log/PortraitNetworkScore;
.super Ljava/lang/Object;
.source "PortraitNetworkScore.java"

# interfaces
.implements Lcom/ss/ttvideoengine/portrait/IPortrait;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;,
        Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;,
        Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;,
        Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;
    }
.end annotation


# static fields
.field public static final PORTRAIT_OPTION_NET_LEVEL_MAX_COUNT:I = 0x2

.field public static final PORTRAIT_OPTION_NET_MIN_DURATION:I = 0x4

.field public static final PORTRAIT_OPTION_NET_TIMER_TASK_INTERVAL:I = 0x3

.field public static final PORTRAIT_OPTION_VAR_STRING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PortraitNetworkScore"

.field private static mInstance:Lcom/ss/ttvideoengine/log/PortraitNetworkScore; = null

.field private static mLastTargetBitrate:D = -1.0


# instance fields
.field private final mPortraitData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

.field private mQualityAlg:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mQualityAlg:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 6
    .line 7
    new-instance v0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mPortraitData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/log/PortraitNetworkScore;)Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mPortraitData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100()D
    .locals 2

    .line 1
    sget-wide v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mLastTargetBitrate:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$102(D)D
    .locals 0

    .line 1
    sput-wide p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mLastTargetBitrate:D

    .line 2
    .line 3
    return-wide p0
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mInstance:Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mInstance:Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mInstance:Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public genNetworkQualityAlg()Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV2;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getLastPortraitResult()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mQualityAlg:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;->getLastNetworkScore()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getLastTargetBitrate()D
    .locals 2

    .line 1
    sget-wide v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mLastTargetBitrate:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNetworkRTTLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mPortraitData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getNetworkRTTLevel()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getNetworkRTTMS()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mPortraitData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getNetworkRTTMS()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPortraitData()Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mPortraitData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPortraitResult()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mQualityAlg:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;->getNetworkScore()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public setIntOption(II)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-gez p2, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mPortraitData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->setMinDataSize(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    if-lez p2, :cond_4

    .line 21
    .line 22
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mPortraitData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->setSampleInterval(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->start()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mPortraitData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->setMaxCount(I)V

    .line 34
    .line 35
    .line 36
    :cond_4
    :goto_0
    return-void
.end method

.method public setNetworkRTTLevelListener(Lcom/ss/ttvideoengine/info/networkRTTLevelListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mPortraitData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->setNetworkRTTLevelListener(Lcom/ss/ttvideoengine/info/networkRTTLevelListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStringOption(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mQualityAlg:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;->setStringOption(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mPortraitData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->start()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithmV1;-><init>(Lcom/ss/ttvideoengine/log/PortraitNetworkScore;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mQualityAlg:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 12
    .line 13
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->mPortraitData:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
