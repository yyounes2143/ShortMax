.class public final Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PingIntervalConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private high:I

.field private normal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x78

    .line 5
    .line 6
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;->normal:I

    .line 7
    .line 8
    const/16 v0, 0x1e

    .line 9
    .line 10
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;->high:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getHigh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;->high:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNormal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;->normal:I

    .line 2
    .line 3
    return v0
.end method

.method public final setHigh(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;->high:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNormal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config$PingIntervalConfig;->normal:I

    .line 2
    .line 3
    return-void
.end method
