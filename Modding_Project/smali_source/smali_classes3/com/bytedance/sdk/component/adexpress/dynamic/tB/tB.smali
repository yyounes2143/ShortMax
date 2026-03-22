.class public Lcom/bytedance/sdk/component/adexpress/dynamic/tB/tB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/tB/cFZ;


# instance fields
.field oJ:Lcom/bytedance/sdk/component/adexpress/ba/Pfn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/bytedance/sdk/component/adexpress/ba/Pfn;

    .line 5
    .line 6
    invoke-direct {p3, p1}, Lcom/bytedance/sdk/component/adexpress/ba/Pfn;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/tB;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Pfn;

    .line 10
    .line 11
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->getDynamicHeight()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->getDynamicHeight()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-direct {p1, p3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    const/16 p2, 0x11

    .line 25
    .line 26
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 27
    .line 28
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/tB;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Pfn;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/tB;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Pfn;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ba/Pfn;->ZYk()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ex()Lcom/bytedance/sdk/component/adexpress/ba/Pfn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/tB;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Pfn;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/tB;->oJ:Lcom/bytedance/sdk/component/adexpress/ba/Pfn;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ba/Pfn;->oJ()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic tB()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/tB;->ex()Lcom/bytedance/sdk/component/adexpress/ba/Pfn;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
