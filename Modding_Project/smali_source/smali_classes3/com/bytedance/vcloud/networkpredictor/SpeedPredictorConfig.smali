.class public Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorConfig;
.super Ljava/lang/Object;
.source "SpeedPredictorConfig.java"


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x1

.field public static final LOG_LEVEL_DEFAULT:I = 0x3

.field public static final LOG_LEVEL_ERROR:I = 0x4

.field public static final LOG_LEVEL_FATAL:I = 0x5

.field public static final LOG_LEVEL_INFO:I = 0x2

.field public static final LOG_LEVEL_VERBOSE:I = 0x0

.field public static final LOG_LEVEL_WARN:I = 0x3

.field private static sLogLevel:I = 0x3


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

.method public static getLogLevel()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorConfig;->sLogLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public static setLoglevel(I)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorConfig;->sLogLevel:I

    .line 2
    .line 3
    return-void
.end method
