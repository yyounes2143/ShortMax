.class public Lcom/bytedance/sdk/component/adexpress/dynamic/tB/ex;
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
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/ex;->oJ(Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/ba/cFZ;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->ZYk:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/adexpress/ba/cFZ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Id;

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    .line 3
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->ZYk:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->bgF()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Id;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Id;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->ex:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->oTd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/ba/Id;->setSlideText(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Id;

    instance-of v0, p1, Lcom/bytedance/sdk/component/adexpress/ba/cFZ;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/bytedance/sdk/component/adexpress/ba/cFZ;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->ex:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->kkU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/ba/cFZ;->setButtonText(Ljava/lang/String;)V

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

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Id;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ba/Id;->oJ()V

    return-void
.end method
