.class Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/eZI;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->ba()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$10;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V
    .locals 3

    .line 2
    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->ZYk()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$oJ;

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$10;->oJ:Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity;->PiB:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oq()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$oJ;-><init>(Landroid/graphics/Bitmap;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Lcom/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity$1;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
