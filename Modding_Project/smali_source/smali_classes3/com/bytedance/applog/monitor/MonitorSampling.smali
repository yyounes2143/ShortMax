.class public final Lcom/bytedance/applog/monitor/MonitorSampling;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/applog/monitor/MonitorSampling;

.field public static a:I = 0x5

.field public static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/applog/monitor/MonitorSampling;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/applog/monitor/MonitorSampling;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/applog/monitor/MonitorSampling;->INSTANCE:Lcom/bytedance/applog/monitor/MonitorSampling;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "UUID.randomUUID().toString()"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/bytedance/applog/monitor/MonitorSampling;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bytedance/applog/monitor/MonitorSampling;->a()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sput-boolean v0, Lcom/bytedance/applog/monitor/MonitorSampling;->c:Z

    .line 28
    .line 29
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

.method public static final getSamplingPercent()I
    .locals 1

    .line 1
    sget v0, Lcom/bytedance/applog/monitor/MonitorSampling;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic samplingPercent$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final setSamplingPercent(I)V
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x64

    .line 4
    .line 5
    if-le p0, v0, :cond_1

    .line 6
    .line 7
    :cond_0
    const/4 p0, 0x5

    .line 8
    :cond_1
    sput p0, Lcom/bytedance/applog/monitor/MonitorSampling;->a:I

    .line 9
    .line 10
    sget-object p0, Lcom/bytedance/applog/monitor/MonitorSampling;->INSTANCE:Lcom/bytedance/applog/monitor/MonitorSampling;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/bytedance/applog/monitor/MonitorSampling;->a()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    sput-boolean p0, Lcom/bytedance/applog/monitor/MonitorSampling;->c:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/bytedance/applog/monitor/MonitorSampling;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    rem-int/lit8 v0, v0, 0x64

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "MonitorSampling hash "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    new-array v4, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-interface {v1, v2, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "MonitorSampling samplingPercent "

    .line 45
    .line 46
    invoke-static {v2}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sget v4, Lcom/bytedance/applog/monitor/MonitorSampling;->a:I

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-array v4, v3, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-interface {v1, v2, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget v1, Lcom/bytedance/applog/monitor/MonitorSampling;->a:I

    .line 65
    .line 66
    if-gt v0, v1, :cond_0

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    :cond_0
    return v3
.end method

.method public final getGlobalColdLaunchId$agent_liteGlobalRelease()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/applog/monitor/MonitorSampling;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isSampling$agent_liteGlobalRelease()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/applog/monitor/MonitorSampling;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setSampling$agent_liteGlobalRelease(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/bytedance/applog/monitor/MonitorSampling;->c:Z

    .line 2
    .line 3
    return-void
.end method
