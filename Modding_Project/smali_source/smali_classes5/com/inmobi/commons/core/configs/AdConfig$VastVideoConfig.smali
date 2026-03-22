.class public final Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;
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
    name = "VastVideoConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private allowedContentType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bitRate:Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maxWrapperLimit:I

.field private optimalVastVideoSize:J

.field private vastMaxAssetSize:J


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->maxWrapperLimit:I

    .line 6
    .line 7
    const-wide/32 v0, 0x300000

    .line 8
    .line 9
    .line 10
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->optimalVastVideoSize:J

    .line 11
    .line 12
    const-wide/32 v0, 0x1e00000

    .line 13
    .line 14
    .line 15
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->vastMaxAssetSize:J

    .line 16
    .line 17
    new-instance v0, Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->bitRate:Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;

    .line 23
    .line 24
    const-string v7, "image/gif"

    .line 25
    .line 26
    const-string v8, "image/png"

    .line 27
    .line 28
    const-string v1, "video/mp4"

    .line 29
    .line 30
    const-string v2, "video/3gp"

    .line 31
    .line 32
    const-string v3, "video/3gpp"

    .line 33
    .line 34
    const-string v4, "video/webm"

    .line 35
    .line 36
    const-string v5, "image/jpeg"

    .line 37
    .line 38
    const-string v6, "image/jpg"

    .line 39
    .line 40
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->allowedContentType:Ljava/util/List;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final getAllowedContentType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->allowedContentType:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBitRate()Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->bitRate:Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxWrapperLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->maxWrapperLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOptimalVastVideoSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->optimalVastVideoSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getVastMaxAssetSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->vastMaxAssetSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final isValid()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getOptimalVastVideoSize()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x1e00000

    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getOptimalVastVideoSize()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v0, v0, v4

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getMaxWrapperLimit()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ltz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getVastMaxAssetSize()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    cmp-long v0, v0, v4

    .line 33
    .line 34
    if-lez v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getVastMaxAssetSize()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    cmp-long v0, v0, v2

    .line 41
    .line 42
    if-gtz v0, :cond_0

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0
.end method
