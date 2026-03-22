.class public final Lcom/inmobi/media/N7;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/inmobi/media/N7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/N7;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/N7;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/N7;->a:Lcom/inmobi/media/N7;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.core.configs.TelemetryConfig"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "telemetry"

    .line 7
    .line 8
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/inmobi/commons/core/configs/TelemetryConfig;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getLpConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
