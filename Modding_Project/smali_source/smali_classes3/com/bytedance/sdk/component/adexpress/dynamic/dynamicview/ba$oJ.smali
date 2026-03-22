.class Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba$oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/eZI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "oJ"
.end annotation


# instance fields
.field private final ZYk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;",
            ">;"
        }
    .end annotation
.end field

.field private final oJ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final tB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba$oJ;->oJ:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba$oJ;->ZYk:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba$oJ;->tB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 19
    .line 20
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
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba$oJ;->oJ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->ZYk()Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v1, p1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 8
    invoke-static {p1}, Lai/turbolink/sdk/campaign/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {p1}, Lai/turbolink/sdk/campaign/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object v1

    invoke-static {v1}, Lai/turbolink/sdk/campaign/d;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 10
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez v0, :cond_3

    return-void

    .line 12
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba$oJ;->tB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba$oJ;->tB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->oJ()I

    move-result p1

    const/4 v1, 0x6

    if-ne v1, p1, :cond_4

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_4
    return-void

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba$oJ;->ZYk:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    if-nez p1, :cond_6

    return-void

    .line 18
    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->getRenderRequest()Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ex()Ljava/lang/String;

    move-result-object v2

    const-string v3, "open_ad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->getRenderRequest()Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ex()Ljava/lang/String;

    move-result-object p1

    const-string v2, "splash_ad"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 20
    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
