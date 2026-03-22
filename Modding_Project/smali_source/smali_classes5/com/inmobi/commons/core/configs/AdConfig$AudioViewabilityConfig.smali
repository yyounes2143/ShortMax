.class public final Lcom/inmobi/commons/core/configs/AdConfig$AudioViewabilityConfig;
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
    name = "AudioViewabilityConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private impressionMinPercentageViewed:I

.field private impressionMinTimeViewed:I

.field private impressionType:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-byte v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AudioViewabilityConfig;->impressionType:B

    .line 6
    .line 7
    const/16 v0, 0x5a

    .line 8
    .line 9
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AudioViewabilityConfig;->impressionMinPercentageViewed:I

    .line 10
    .line 11
    const/16 v0, 0x7d0

    .line 12
    .line 13
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AudioViewabilityConfig;->impressionMinTimeViewed:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getImpressionMinPercentageViewed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AudioViewabilityConfig;->impressionMinPercentageViewed:I

    .line 2
    .line 3
    return v0
.end method

.method public final getImpressionMinTimeViewed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AudioViewabilityConfig;->impressionMinTimeViewed:I

    .line 2
    .line 3
    return v0
.end method

.method public final getImpressionType()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AudioViewabilityConfig;->impressionType:B

    .line 2
    .line 3
    return v0
.end method

.method public final setImpressionMinPercentageViewed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$AudioViewabilityConfig;->impressionMinPercentageViewed:I

    .line 2
    .line 3
    return-void
.end method

.method public final setImpressionMinTimeViewed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$AudioViewabilityConfig;->impressionMinTimeViewed:I

    .line 2
    .line 3
    return-void
.end method

.method public final setImpressionType(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$AudioViewabilityConfig;->impressionType:B

    .line 2
    .line 3
    return-void
.end method
