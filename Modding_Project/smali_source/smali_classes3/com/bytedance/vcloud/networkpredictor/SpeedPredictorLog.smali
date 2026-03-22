.class public Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorLog;
.super Ljava/lang/Object;
.source "SpeedPredictorLog.java"


# static fields
.field public static final FORMAT:Ljava/lang/String; = "<%s>%s"

.field public static final LOG_DEBUG:I = 0x1

.field public static final LOG_ERROR:I = 0x6

.field public static final LOG_INFO:I = 0x2

.field public static final LOG_KILL:I = 0x4

.field public static final LOG_TRACK:I = 0x3

.field public static final LOG_VERBOSE:I = 0x0

.field public static final LOG_WARN:I = 0x5

.field public static LogTurnOn:I = 0x70

.field private static final TAG:Ljava/lang/String; = "SpeedPredictorLog"


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

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorLog;->LogTurnOn:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    const-string v0, "<%s>%s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpeedPredictorLog"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Throwable;)V
    .locals 2

    .line 3
    sget v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorLog;->LogTurnOn:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorLog;->LogTurnOn:I

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x6

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "<%s>%s"

    .line 10
    .line 11
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "SpeedPredictorLog"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorLog;->LogTurnOn:I

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "<%s>%s"

    .line 10
    .line 11
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "SpeedPredictorLog"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static final k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorLog;->LogTurnOn:I

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "<%s>%s"

    .line 10
    .line 11
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "SpeedPredictorLog"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static final t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorLog;->LogTurnOn:I

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "<%s>%s"

    .line 10
    .line 11
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "SpeedPredictorLog"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static final turnOn(II)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-int v1, v0, p0

    .line 3
    .line 4
    not-int v1, v1

    .line 5
    sget v2, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorLog;->LogTurnOn:I

    .line 6
    .line 7
    and-int/2addr v1, v2

    .line 8
    shl-int v2, p1, p0

    .line 9
    .line 10
    or-int/2addr v1, v2

    .line 11
    sput v1, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorLog;->LogTurnOn:I

    .line 12
    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    and-int/lit8 p0, v1, -0x5

    .line 18
    .line 19
    shl-int/lit8 p1, p1, 0x2

    .line 20
    .line 21
    or-int/2addr p0, p1

    .line 22
    sput p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorLog;->LogTurnOn:I

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorLog;->LogTurnOn:I

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x5

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "<%s>%s"

    .line 10
    .line 11
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "SpeedPredictorLog"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
