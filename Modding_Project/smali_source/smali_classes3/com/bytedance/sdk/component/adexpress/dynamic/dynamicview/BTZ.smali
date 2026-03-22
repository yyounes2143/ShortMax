.class public Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/BTZ;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected getWidgetLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->cFZ:I

    .line 3
    .line 4
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->so:I

    .line 5
    .line 6
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba;->getWidgetLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
