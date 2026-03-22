.class public abstract Lcom/inmobi/media/Oa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/inmobi/commons/core/configs/TelemetryConfig;

.field public static final b:Lcom/inmobi/media/Pc;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/inmobi/media/Na;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/Na;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "telemetry"

    .line 13
    .line 14
    invoke-static {v2, v1, v0}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 24
    .line 25
    sput-object v0, Lcom/inmobi/media/Oa;->a:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 26
    .line 27
    new-instance v1, Lcom/inmobi/media/Pc;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    int-to-double v2, v2

    .line 31
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getPingSamplingFactor()D

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    sub-double/2addr v2, v4

    .line 36
    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/Pc;-><init>(D)V

    .line 37
    .line 38
    .line 39
    sput-object v1, Lcom/inmobi/media/Oa;->b:Lcom/inmobi/media/Pc;

    .line 40
    .line 41
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    .line 1
    const-string v0, "eventType"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "keyValueMap"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "PingDBMaxLimitReached"

    .line 12
    .line 13
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 20
    .line 21
    sget-object v0, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 22
    .line 23
    invoke-static {p0, p1, v0}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lcom/inmobi/media/Oa;->b:Lcom/inmobi/media/Pc;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/inmobi/media/Pc;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    int-to-double v0, v0

    .line 37
    sget-object v2, Lcom/inmobi/media/Oa;->a:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getPingSamplingFactor()D

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    sub-double v2, v0, v2

    .line 44
    .line 45
    sget-object v4, Lcom/inmobi/media/Oa;->a:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getSamplingFactor()D

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    sub-double/2addr v0, v4

    .line 52
    mul-double/2addr v0, v2

    .line 53
    const/16 v2, 0x64

    .line 54
    .line 55
    int-to-double v2, v2

    .line 56
    mul-double/2addr v0, v2

    .line 57
    double-to-int v0, v0

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "samplingRate"

    .line 63
    .line 64
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 68
    .line 69
    sget-object v0, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 70
    .line 71
    invoke-static {p0, p1, v0}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-void
.end method
