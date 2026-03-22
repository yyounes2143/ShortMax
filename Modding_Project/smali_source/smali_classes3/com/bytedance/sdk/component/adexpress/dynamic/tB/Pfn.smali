.class public Lcom/bytedance/sdk/component/adexpress/dynamic/tB/Pfn;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si<",
        "Lcom/bytedance/sdk/component/adexpress/ba/cFZ;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/Pfn;->oJ(Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/ba/so;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->ZYk:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/component/adexpress/ba/so;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Id;

    .line 2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x51

    .line 3
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Id;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Id;

    instance-of v0, p1, Lcom/bytedance/sdk/component/adexpress/ba/so;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lcom/bytedance/sdk/component/adexpress/ba/so;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->ex:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->oTd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/ba/so;->setButtonText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Id;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ba/Id;->ZYk()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected ex()V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Id;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ba/Id;->oJ()V

    return-void
.end method
