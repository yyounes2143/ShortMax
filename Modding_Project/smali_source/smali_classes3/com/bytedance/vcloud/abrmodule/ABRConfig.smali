.class public Lcom/bytedance/vcloud/abrmodule/ABRConfig;
.super Ljava/lang/Object;
.source "ABRConfig.java"


# static fields
.field public static final ABR_4G_MAX_BITRATE_KEY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_BANDWIDTH_PARAMETER_KEY:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_DEFAULT_WIFI_BITRATE:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_FIXED_LEVEL:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_FIXED_LEVEL_DEFAULT:I = 0x2

.field public static final ABR_FIXED_LEVEL_HIGH:I = 0x3

.field public static final ABR_FIXED_LEVEL_HIGHER:I = 0x4

.field public static final ABR_FIXED_LEVEL_LOW:I = 0x1

.field public static final ABR_FIXED_LEVEL_LOWER:I = 0x0

.field public static final ABR_FIXED_LEVEL_NORMAL:I = 0x2

.field public static final ABR_LOG_LEVEL_KEY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_ONCE_TYPE_B2BMODEL:I = 0x0

.field public static final ABR_ONCE_TYPE_BABBONCE:I = 0x1

.field public static final ABR_ONCE_TYPE_BWONCE:I = 0x2

.field public static final ABR_ONCE_TYPE_CSONCE:I = 0x3

.field public static final ABR_ONCE_TYPE_DEFAULT:I = 0x0

.field public static final ABR_PLAYER_DISPLAY_HEIGHT_KEY:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_PLAYER_DISPLAY_WIDTH_KEY:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_SELECT_SCENE:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_STALL_PENALTY_PARAMETER_KEY:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_STARTUP_BANDWIDTH_PARAMETER_KEY:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_STARTUP_MAX_BITRATE:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_STARTUP_MODEL_AVGNET:I = 0x6

.field public static final ABR_STARTUP_MODEL_AVGSENET:I = 0x7

.field public static final ABR_STARTUP_MODEL_CACHE:I = 0x5

.field public static final ABR_STARTUP_MODEL_COMPATIBLE:I = 0x4

.field public static final ABR_STARTUP_MODEL_DEFAULT:I = 0x0

.field public static final ABR_STARTUP_MODEL_DYNAMIC:I = 0x3

.field public static final ABR_STARTUP_MODEL_HIGH:I = 0x1

.field public static final ABR_STARTUP_MODEL_HIGHER:I = 0x2

.field public static final ABR_STARTUP_MODEL_KEY:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_STARTUP_MODEL_NORMAL:I = 0x0

.field public static final ABR_SWITCH_MODEL_DEFAULT:I = 0x1

.field public static final ABR_SWITCH_MODEL_DYNAMIC:I = 0x5

.field public static final ABR_SWITCH_MODEL_FIXED:I = 0x0

.field public static final ABR_SWITCH_MODEL_KEY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_SWITCH_MODEL_NORMAL:I = 0x1

.field public static final ABR_SWITCH_MODEL_SLOW:I = 0x2

.field public static final ABR_SWITCH_MODEL_SLOWER:I = 0x3

.field public static final ABR_SWITCH_MODEL_VERYSLOW:I = 0x4

.field public static final ABR_SWITCH_PENALTY_PARAMETER_KEY:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_SWITCH_SENSITIVITY_DEFAULT:I = 0x0

.field public static final ABR_SWITCH_SENSITIVITY_HIGH:I = 0x1

.field public static final ABR_SWITCH_SENSITIVITY_HIGHER:I = 0x2

.field public static final ABR_SWITCH_SENSITIVITY_KEY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABR_SWITCH_SENSITIVITY_NORMAL:I = 0x0

.field public static final AVERAGE_DOWNLOAD_SPEED:I = 0x1

.field public static final AVERAGE_EMA_DOWNLOAD_SPEED:I = 0x2

.field public static final AVERAGE_EMA_STARTUP_DOWNLOAD_SPEED:I = 0x3

.field public static final AVERAGE_EMA_STARTUP_END_DOWNLOAD_SPEED:I = 0x4

.field public static final AVERAGE_WINDOW_DOWNLOAD_SPEED:I = 0x0

.field public static final LOG_LEVEL_DEBUG:I = 0x1

.field public static final LOG_LEVEL_DEFAULT:I = 0x3

.field public static final LOG_LEVEL_ERROR:I = 0x4

.field public static final LOG_LEVEL_FATAL:I = 0x5

.field public static final LOG_LEVEL_INFO:I = 0x2

.field public static final LOG_LEVEL_VERBOSE:I = 0x0

.field public static final LOG_LEVEL_WARN:I = 0x3

.field private static sAbrFlowJson:Ljava/lang/String; = null

.field private static sAbrPreloadJson:Ljava/lang/String; = null

.field private static sAbrStartupJson:Ljava/lang/String; = null

.field private static sBandwidthParameter:F = 1.0f

.field private static sFixedLevel:I = 0x2

.field private static sLogLevel:I = 0x3

.field private static sNarrowScreenUseWidth:I = 0x0

.field private static sStallPenaltyParameter:F = 9.0f

.field private static sStartupBandwidthParameter:F = 0.9f

.field private static sStartupModel:I = 0x0

.field private static sStartupModelFirstParam:D = 0.0

.field private static sStartupModelFourthParam:D = 69.0106422

.field private static sStartupModelSecondParam:D = 2.67952228E-5

.field private static sStartupModelThirdParam:D = 0.151840652

.field private static sStartupUseCache:I = 0x0

.field private static sSwitchModel:I = 0x1

.field private static sSwitchPenaltyParameter:F = 2.0f

.field private static sSwitchSensitivity:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAbrFlowJson()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sAbrFlowJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getAbrPreloadJson()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sAbrPreloadJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getAbrStartupJson()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sAbrStartupJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getBandwidthParameter()F
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sBandwidthParameter:F

    .line 2
    .line 3
    return v0
.end method

.method public static getFixedLevel()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sFixedLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public static getLogLevel()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sLogLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public static getNarrowScreenUseWidth()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sNarrowScreenUseWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public static getStallPenaltyParameter()F
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStallPenaltyParameter:F

    .line 2
    .line 3
    return v0
.end method

.method public static getStartupBandwidthParameter()F
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupBandwidthParameter:F

    .line 2
    .line 3
    return v0
.end method

.method public static getStartupModel()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupModel:I

    .line 2
    .line 3
    return v0
.end method

.method public static getStartupModelFirstParam()D
    .locals 2

    .line 1
    sget-wide v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupModelFirstParam:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static getStartupModelFourthParam()D
    .locals 2

    .line 1
    sget-wide v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupModelFourthParam:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static getStartupModelSecondParam()D
    .locals 2

    .line 1
    sget-wide v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupModelSecondParam:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static getStartupModelThirdParam()D
    .locals 2

    .line 1
    sget-wide v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupModelThirdParam:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static getStartupUseCache()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupUseCache:I

    .line 2
    .line 3
    return v0
.end method

.method public static getSwitchModel()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sSwitchModel:I

    .line 2
    .line 3
    return v0
.end method

.method public static getSwitchPenaltyParameter()F
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sSwitchPenaltyParameter:F

    .line 2
    .line 3
    return v0
.end method

.method public static getSwitchSensitivity()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sSwitchSensitivity:I

    .line 2
    .line 3
    return v0
.end method

.method public static setAbrFlowJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sAbrFlowJson:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setAbrPreloadJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sAbrPreloadJson:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setAbrStartupJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sAbrStartupJson:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static setBandwidthParameter(F)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sBandwidthParameter:F

    .line 2
    .line 3
    return-void
.end method

.method public static setFixedLevel(I)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sFixedLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public static setLoglevel(I)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sLogLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public static setNarrowScreenUseWidth(I)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sNarrowScreenUseWidth:I

    .line 2
    .line 3
    return-void
.end method

.method public static setStallPenaltyParameter(F)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStallPenaltyParameter:F

    .line 2
    .line 3
    return-void
.end method

.method public static setStartupBandwidthParameter(F)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupBandwidthParameter:F

    .line 2
    .line 3
    return-void
.end method

.method public static setStartupModel(I)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupModel:I

    .line 2
    .line 3
    return-void
.end method

.method public static setStartupModelFirstParam(D)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupModelFirstParam:D

    .line 2
    .line 3
    return-void
.end method

.method public static setStartupModelFourthParam(D)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupModelFourthParam:D

    .line 2
    .line 3
    return-void
.end method

.method public static setStartupModelSecondParam(D)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupModelSecondParam:D

    .line 2
    .line 3
    return-void
.end method

.method public static setStartupModelThirdParam(D)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupModelThirdParam:D

    .line 2
    .line 3
    return-void
.end method

.method public static setStartupUseCache(I)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sStartupUseCache:I

    .line 2
    .line 3
    return-void
.end method

.method public static setSwitchModel(I)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sSwitchModel:I

    .line 2
    .line 3
    return-void
.end method

.method public static setSwitchPenaltyParameter(F)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sSwitchPenaltyParameter:F

    .line 2
    .line 3
    return-void
.end method

.method public static setSwitchSensitivity(I)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/vcloud/abrmodule/ABRConfig;->sSwitchSensitivity:I

    .line 2
    .line 3
    return-void
.end method
