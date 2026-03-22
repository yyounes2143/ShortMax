.class Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;
.super Ljava/lang/Object;
.source "GearStrategyABR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetInfo"
.end annotation


# instance fields
.field public avgDownloadSpeed:F

.field public avgStartupEndNetworkSpeed:F

.field public downloadSpeed:F

.field public networkSpeed:F

.field public networkSpeedConfidence:F

.field public networkState:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->downloadSpeed:F

    .line 3
    iput v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->networkSpeed:F

    .line 4
    iput v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->networkSpeedConfidence:F

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->avgDownloadSpeed:F

    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;->avgStartupEndNetworkSpeed:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;-><init>()V

    return-void
.end method
