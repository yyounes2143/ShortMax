.class public final Lcom/inmobi/commons/core/configs/TelemetryConfig$AdTypeLoggingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/TelemetryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdTypeLoggingConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private ab:Lcom/inmobi/commons/core/configs/TelemetryConfig$PlacementTypeLoggingConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nonAb:Lcom/inmobi/commons/core/configs/TelemetryConfig$PlacementTypeLoggingConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/inmobi/commons/core/configs/TelemetryConfig$PlacementTypeLoggingConfig;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$PlacementTypeLoggingConfig;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$AdTypeLoggingConfig;->ab:Lcom/inmobi/commons/core/configs/TelemetryConfig$PlacementTypeLoggingConfig;

    .line 10
    .line 11
    new-instance v0, Lcom/inmobi/commons/core/configs/TelemetryConfig$PlacementTypeLoggingConfig;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig$PlacementTypeLoggingConfig;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$AdTypeLoggingConfig;->nonAb:Lcom/inmobi/commons/core/configs/TelemetryConfig$PlacementTypeLoggingConfig;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getAb()Lcom/inmobi/commons/core/configs/TelemetryConfig$PlacementTypeLoggingConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$AdTypeLoggingConfig;->ab:Lcom/inmobi/commons/core/configs/TelemetryConfig$PlacementTypeLoggingConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNonAb()Lcom/inmobi/commons/core/configs/TelemetryConfig$PlacementTypeLoggingConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$AdTypeLoggingConfig;->nonAb:Lcom/inmobi/commons/core/configs/TelemetryConfig$PlacementTypeLoggingConfig;

    .line 2
    .line 3
    return-object v0
.end method
