.class public final Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;
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
    name = "AppExitReasonConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private enabled:Z

.field private incidentWaitInterval:J

.field private incompleteLogThresholdTime:J

.field private maxNumberOfLines:I

.field private reportToLogs:Z

.field private samplingPercent:D

.field private useForReporting:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x3e8

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->incidentWaitInterval:J

    .line 7
    .line 8
    const-wide/16 v0, 0x7530

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->incompleteLogThresholdTime:J

    .line 11
    .line 12
    const/16 v0, 0xc8

    .line 13
    .line 14
    iput v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->maxNumberOfLines:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->enabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getIncidentWaitInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->incidentWaitInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getIncompleteLogThresholdTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->incompleteLogThresholdTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMaxNumberOfLines()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->maxNumberOfLines:I

    .line 2
    .line 3
    return v0
.end method

.method public final getReportToLogs()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->reportToLogs:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSamplingPercent()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->samplingPercent:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUseForReporting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->useForReporting:Z

    .line 2
    .line 3
    return v0
.end method
