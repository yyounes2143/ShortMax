.class public final Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;
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
    name = "PingsV2Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingBatchSizeConfig;,
        Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;,
        Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;,
        Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final callTimeout:I

.field private final connectTimeout:I

.field private final enableOkhttp:Z

.field private final enabled:Z

.field private final expiry:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final interval:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxBatchSize:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingBatchSizeConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxEntries:I

.field private final readTimeout:I

.field private final retryConfig:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;
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
    const/16 v0, 0x3e8

    .line 5
    .line 6
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->maxEntries:I

    .line 7
    .line 8
    new-instance v0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingBatchSizeConfig;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingBatchSizeConfig;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->maxBatchSize:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingBatchSizeConfig;

    .line 14
    .line 15
    const/16 v0, 0x1e

    .line 16
    .line 17
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->readTimeout:I

    .line 18
    .line 19
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->connectTimeout:I

    .line 20
    .line 21
    const/16 v0, 0x3c

    .line 22
    .line 23
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->callTimeout:I

    .line 24
    .line 25
    new-instance v0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->expiry:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;

    .line 31
    .line 32
    new-instance v0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->retryConfig:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;

    .line 38
    .line 39
    new-instance v0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->interval:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final getCallTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->callTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final getConnectTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->connectTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEnableOkhttp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->enableOkhttp:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->enabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getExpiry()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->expiry:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingExpiryConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInterval()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->interval:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxBatchSize()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingBatchSizeConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->maxBatchSize:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingBatchSizeConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxEntries()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->maxEntries:I

    .line 2
    .line 3
    return v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->readTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRetryConfig()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;->retryConfig:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingRetryConfig;

    .line 2
    .line 3
    return-object v0
.end method
