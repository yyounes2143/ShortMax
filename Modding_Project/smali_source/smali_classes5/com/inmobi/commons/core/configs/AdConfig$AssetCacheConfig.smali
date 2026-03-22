.class public final Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;
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
    name = "AssetCacheConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private maxCacheSize:J

.field private maxRetries:I

.field private retryInterval:I

.field private timeToLive:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->maxRetries:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->retryInterval:I

    .line 9
    .line 10
    const-wide/32 v0, 0x6400000

    .line 11
    .line 12
    .line 13
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->maxCacheSize:J

    .line 14
    .line 15
    const-wide/32 v0, 0x3f480

    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->timeToLive:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getMaxCacheSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->maxCacheSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMaxRetries()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->maxRetries:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRetryInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->retryInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTimeToLive()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->timeToLive:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final isValid()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getRetryInterval()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getTimeToLive()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-ltz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getMaxCacheSize()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-ltz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getMaxRetries()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ltz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method
