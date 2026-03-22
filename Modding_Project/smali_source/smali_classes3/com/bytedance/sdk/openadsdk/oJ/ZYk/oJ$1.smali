.class Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ$1;
.super Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;->cFZ()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ$1;->ZYk:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ$1;->ZYk:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ex;->oJ(Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
