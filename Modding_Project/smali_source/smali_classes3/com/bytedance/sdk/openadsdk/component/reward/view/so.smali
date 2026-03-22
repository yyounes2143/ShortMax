.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/so;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Pfn:Z

.field private ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;

.field private final oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field private tB:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Pfn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->Pfn:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->Pfn:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public ex()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public oJ()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->tB:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->tB:Z

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->zGT:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->init(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;

    :cond_2
    return-void
.end method

.method public oJ(I)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;->setShownAdCount(I)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/so$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/so$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/so;)V

    const-string v2, "TTBaseVideoActivity#mFLEndCardBackupContainer"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V

    :cond_1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;)Z
    .locals 3

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->Pfn:Z

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 13
    :cond_0
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/RFEndCardBackUpLayout;

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    return v0

    :cond_1
    return v2
.end method

.method public tB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->oJ()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
