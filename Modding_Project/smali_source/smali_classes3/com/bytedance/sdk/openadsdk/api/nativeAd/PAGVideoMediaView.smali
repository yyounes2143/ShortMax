.class public Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;
.super Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;


# instance fields
.field private ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

.field private ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private final tB:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->oJ(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->tB:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;

    .line 8
    .line 9
    return-void
.end method

.method private ZYk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->PiB()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method private oJ()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->awB()V

    :cond_0
    return-void
.end method

.method private oJ(Landroid/view/View;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, p1, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->eZI()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getVideoProgress()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    return-wide v0
.end method

.method public handleInterruptVideo()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->ZYk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->oJ()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ex;->oJ(Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;->tB:Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView$1;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoMediaView;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/oJ/ZYk/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGVideoAdListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
