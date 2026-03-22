.class public final Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;
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
    name = "LandingPageConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private enableOnLpLifeCycleEvent:Z

.field private maxFunnelsToTrackPerAd:I

.field private nativeEnabled:Z

.field private universalLinkEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->maxFunnelsToTrackPerAd:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->universalLinkEnabled:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getEnableOnLpLifeCycleEvent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->enableOnLpLifeCycleEvent:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxFunnelsToTrackPerAd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->maxFunnelsToTrackPerAd:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNativeEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->nativeEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getUniversalLinkEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->universalLinkEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setEnableOnLpLifeCycleEvent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->enableOnLpLifeCycleEvent:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMaxFunnelsToTrackPerAd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->maxFunnelsToTrackPerAd:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNativeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->nativeEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUniversalLinkEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/commons/core/configs/TelemetryConfig$LandingPageConfig;->universalLinkEnabled:Z

    .line 2
    .line 3
    return-void
.end method
