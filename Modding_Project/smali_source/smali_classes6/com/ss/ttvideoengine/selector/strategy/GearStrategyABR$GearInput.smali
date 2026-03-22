.class Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;
.super Ljava/lang/Object;
.source "GearStrategyABR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GearInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$HAR;,
        Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;,
        Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;,
        Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;,
        Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;
    }
.end annotation


# instance fields
.field public abrOnceType:I

.field public abrWithSR:I

.field public final displayInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;

.field public final downgradeResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

.field public har:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$HAR;

.field public final mobile4GMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

.field public netInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$NetInfo;

.field public quickGetFileCache:I

.field public final srInput:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;

.field public startupSpeedType:I

.field public subTag:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public final userExpectedResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

.field public final wifiDefaultResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

.field public final wifiMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->srInput:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;

    .line 3
    new-instance v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->displayInfo:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$DisplayInfo;

    .line 4
    new-instance v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->mobile4GMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 5
    new-instance v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiDefaultResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 6
    new-instance v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->userExpectedResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 7
    new-instance v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->downgradeResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    .line 8
    new-instance v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;->wifiMaxResolution:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$ResolutionInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;-><init>()V

    return-void
.end method
