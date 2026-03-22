.class public final Lcom/inmobi/commons/core/configs/AdConfig$WebViewabilityConfig;
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
    name = "WebViewabilityConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private impressionMinPercentageViewed:I

.field private impressionMinTimeViewed:I

.field private impressionPollIntervalMillis:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x32

    .line 5
    .line 6
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebViewabilityConfig;->impressionMinPercentageViewed:I

    .line 7
    .line 8
    const/16 v0, 0x3e8

    .line 9
    .line 10
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebViewabilityConfig;->impressionMinTimeViewed:I

    .line 11
    .line 12
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebViewabilityConfig;->impressionPollIntervalMillis:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getImpressionMinPercentageViewed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebViewabilityConfig;->impressionMinPercentageViewed:I

    .line 2
    .line 3
    return v0
.end method

.method public final getImpressionMinTimeViewed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebViewabilityConfig;->impressionMinTimeViewed:I

    .line 2
    .line 3
    return v0
.end method

.method public final getImpressionPollIntervalMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebViewabilityConfig;->impressionPollIntervalMillis:I

    .line 2
    .line 3
    return v0
.end method

.method public final setImpressionMinPercentageViewed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebViewabilityConfig;->impressionMinPercentageViewed:I

    .line 2
    .line 3
    return-void
.end method

.method public final setImpressionMinTimeViewed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebViewabilityConfig;->impressionMinTimeViewed:I

    .line 2
    .line 3
    return-void
.end method

.method public final setImpressionPollIntervalMillis(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebViewabilityConfig;->impressionPollIntervalMillis:I

    .line 2
    .line 3
    return-void
.end method
