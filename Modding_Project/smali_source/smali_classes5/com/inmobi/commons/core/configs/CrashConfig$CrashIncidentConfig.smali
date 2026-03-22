.class public final Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/CrashConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CrashIncidentConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private enabled:Z

.field private reportOOMInfo:Z

.field private reportSessionInfo:Z

.field private samplingPercent:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->enabled:Z

    .line 6
    .line 7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->samplingPercent:D

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->enabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getReportOOMInfo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->reportOOMInfo:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getReportSessionInfo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->reportSessionInfo:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSamplingPercent()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->samplingPercent:D

    .line 2
    .line 3
    return-wide v0
.end method
