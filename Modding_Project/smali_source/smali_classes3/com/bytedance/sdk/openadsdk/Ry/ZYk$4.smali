.class Lcom/bytedance/sdk/openadsdk/Ry/ZYk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/eZI;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

.field final synthetic oJ:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Ry/ZYk;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$4;->ZYk:Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$4;->oJ:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->ZYk()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$4;->oJ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ba()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 7
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {v2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 8
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 9
    :cond_3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$4$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$4$1;-><init>(Lcom/bytedance/sdk/openadsdk/Ry/ZYk$4;Landroid/view/View;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
