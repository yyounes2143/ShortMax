.class Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;
.super Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZYk"
.end annotation


# instance fields
.field private final ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;

.field private final oJ:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

.field private tB:Lcom/bytedance/sdk/openadsdk/activity/so;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;Landroid/view/View;)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/ex$Pfn;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    .line 5
    .line 6
    check-cast p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;)Lcom/bytedance/sdk/openadsdk/activity/so;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->tB:Lcom/bytedance/sdk/openadsdk/activity/so;

    return-object p0
.end method


# virtual methods
.method public ZYk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->tB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->QSm()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->tB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;->oJ()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/activity/so;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->tB:Lcom/bytedance/sdk/openadsdk/activity/so;

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/ex;Lcom/bytedance/sdk/openadsdk/activity/ex$ex;I)V
    .locals 8

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v3

    .line 4
    iget-object v6, p1, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    .line 5
    invoke-static {v6}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->tB:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-nez v0, :cond_6

    .line 7
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 9
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v7, Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)V

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/bytedance/sdk/openadsdk/activity/ba;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/ba;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)V

    :goto_0
    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->tB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 10
    new-instance p3, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->tB(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z

    move-result v0

    iput-boolean v0, p3, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->ex:Z

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->tB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {v0, v6, p3}, Lcom/bytedance/sdk/openadsdk/activity/so;->ZYk(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    .line 13
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->tB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/activity/ex$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    .line 14
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->tB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    move-result-object p3

    if-nez p3, :cond_2

    return-void

    .line 15
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 16
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/ex;->cY(Lcom/bytedance/sdk/openadsdk/activity/ex;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 19
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Gdk()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_4

    .line 20
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;->setWidthAndHeightRatio(F)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;

    const p2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;->setWidthOrHeightInParentRatio(F)V

    .line 22
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ZYk;->tB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ZYk;->setScene(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    :cond_6
    return-void
.end method
