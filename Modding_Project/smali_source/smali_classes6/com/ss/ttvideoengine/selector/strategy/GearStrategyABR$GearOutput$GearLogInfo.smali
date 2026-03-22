.class Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;
.super Ljava/lang/Object;
.source "GearStrategyABR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GearLogInfo"
.end annotation


# instance fields
.field public abrSrInfo:Ljava/lang/String;

.field public abrStartupInfo:Ljava/lang/String;

.field public abrVersion:Ljava/lang/String;

.field public bitrateBeforeFitScreen:J

.field public maxCacheBitrate:J

.field public startupAverageSpeed:F

.field public startupPredictSpeed:F

.field public startupSpeed:F

.field public userEnterFullScreen:I

.field public userQualitySensitivity:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public recordABRModuleLog(Lcom/bytedance/vcloud/abrmodule/IABRModule;)V
    .locals 5

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->getLongOption(IJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    iput-wide v3, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->maxCacheBitrate:J

    .line 10
    .line 11
    const/16 v0, 0x2c

    .line 12
    .line 13
    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->getLongOption(IJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->bitrateBeforeFitScreen:J

    .line 18
    .line 19
    const/16 v0, 0x10

    .line 20
    .line 21
    const/high16 v1, -0x40800000    # -1.0f

    .line 22
    .line 23
    invoke-interface {p1, v0, v1}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->getFloatOption(IF)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->startupSpeed:F

    .line 28
    .line 29
    const/16 v0, 0x11

    .line 30
    .line 31
    invoke-interface {p1, v0, v1}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->getFloatOption(IF)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->startupPredictSpeed:F

    .line 36
    .line 37
    const/16 v0, 0x12

    .line 38
    .line 39
    invoke-interface {p1, v0, v1}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->getFloatOption(IF)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->startupAverageSpeed:F

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->getVersion()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->abrVersion:Ljava/lang/String;

    .line 50
    .line 51
    const/16 v0, 0x4a

    .line 52
    .line 53
    const-string v1, ""

    .line 54
    .line 55
    invoke-interface {p1, v0, v1}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->getStringOption(ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->abrSrInfo:Ljava/lang/String;

    .line 60
    .line 61
    const/16 v0, 0x4d

    .line 62
    .line 63
    invoke-interface {p1, v0, v1}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->getStringOption(ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->abrStartupInfo:Ljava/lang/String;

    .line 68
    .line 69
    return-void
.end method

.method public recordABRSettingsLog(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string/jumbo v0, "user_quality_sensitivity"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    double-to-float v0, v0

    .line 12
    iput v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->userQualitySensitivity:F

    .line 13
    .line 14
    const-string/jumbo v0, "user_enter_full_screen"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearOutput$GearLogInfo;->userEnterFullScreen:I

    .line 22
    .line 23
    return-void
.end method
