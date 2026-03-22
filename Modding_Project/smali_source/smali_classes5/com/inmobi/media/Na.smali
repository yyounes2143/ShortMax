.class public final Lcom/inmobi/media/Na;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/N2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 4

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 11
    .line 12
    sput-object p1, Lcom/inmobi/media/Oa;->a:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 13
    .line 14
    sget-object p1, Lcom/inmobi/media/Oa;->b:Lcom/inmobi/media/Pc;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    int-to-double v0, v0

    .line 18
    sget-object v2, Lcom/inmobi/media/Oa;->a:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getPingSamplingFactor()D

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    sub-double/2addr v0, v2

    .line 25
    iput-wide v0, p1, Lcom/inmobi/media/Pc;->a:D

    .line 26
    .line 27
    :cond_0
    return-void
.end method
