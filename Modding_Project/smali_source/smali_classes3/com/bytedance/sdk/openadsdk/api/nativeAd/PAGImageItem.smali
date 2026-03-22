.class public Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ZYk:I

.field private ex:F

.field private final oJ:I

.field private final tB:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;-><init>(IILjava/lang/String;F)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->oJ:I

    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->ZYk:I

    .line 4
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->tB:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->ex:F

    return-void
.end method


# virtual methods
.method public getDuration()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->ex:F

    .line 2
    .line 3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->oJ:I

    .line 2
    .line 3
    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->tB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->ZYk:I

    .line 2
    .line 3
    return v0
.end method
