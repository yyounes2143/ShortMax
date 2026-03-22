.class public final Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;
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
    name = "BitRateConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private bitrate_mandatory:Z

.field private headerTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x7d0

    .line 5
    .line 6
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;->headerTimeout:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getHeaderTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;->headerTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final isBitRateMandatory()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;->bitrate_mandatory:Z

    .line 2
    .line 3
    return v0
.end method
