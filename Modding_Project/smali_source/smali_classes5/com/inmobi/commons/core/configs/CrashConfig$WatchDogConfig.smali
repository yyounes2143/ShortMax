.class public final Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;
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
    name = "WatchDogConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private enabled:Z

.field private interval:J

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
    const-wide/16 v0, 0x1194

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->interval:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->enabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->interval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSamplingPercent()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->samplingPercent:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUseForReporting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->useForReporting:Z

    .line 2
    .line 3
    return v0
.end method
