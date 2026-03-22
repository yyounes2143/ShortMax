.class public final Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mraid3Config"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private bannerEnabled:Z

.field private exposureChangeInterval:J

.field private interstitialEnabled:Z

.field private muteChangeInterval:J


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
    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->bannerEnabled:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->interstitialEnabled:Z

    .line 8
    .line 9
    const-wide/16 v0, 0x1f4

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->exposureChangeInterval:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->muteChangeInterval:J

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getBannerEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->bannerEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getExposureChangeInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->exposureChangeInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getInterstitialEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->interstitialEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getMuteChangeInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->muteChangeInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setBannerEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->bannerEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setExposureChangeInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->exposureChangeInterval:J

    .line 2
    .line 3
    return-void
.end method

.method public final setInterstitialEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->interstitialEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMuteChangeInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$Mraid3Config;->muteChangeInterval:J

    .line 2
    .line 3
    return-void
.end method
