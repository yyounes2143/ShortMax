.class final Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$13;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->getBiddingToken(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;

.field final synthetic oJ:Landroid/content/Context;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$13;->oJ:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$13;->ZYk:Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$13;->tB:Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$13;->oJ:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/si;->ZYk(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$13;->ZYk:Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$13;->tB:Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->oJ(Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;->onBiddingTokenCollected(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ(Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
