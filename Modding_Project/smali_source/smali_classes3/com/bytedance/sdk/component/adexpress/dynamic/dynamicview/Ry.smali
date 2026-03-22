.class public Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Ry;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba;
.source "SourceFile"


# instance fields
.field public oJ:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ZYk;


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
.method protected getDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ZYk;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ZYk;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Ry;->oJ:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ZYk;

    .line 7
    .line 8
    return-object v0
.end method

.method public jFA()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba;->jFA()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected oJ(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .param p2    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ZYk;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ZYk;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Ry;->oJ:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ZYk;

    return-object v0
.end method

.method protected oJ(Landroid/graphics/Bitmap;)Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ZYk;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/oJ;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Ry;->oJ:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ZYk;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/oJ;-><init>(Landroid/graphics/Bitmap;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ZYk;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Ry;->oJ:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ZYk;

    return-object v0
.end method
