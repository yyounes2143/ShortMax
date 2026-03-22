.class Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/eZI;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/ref/WeakReference;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$5;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

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
    .locals 1
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 15
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$5;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p3, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->ZYk()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    if-eqz v0, :cond_2

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 8
    invoke-static {p1}, Lai/turbolink/sdk/campaign/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p1}, Lai/turbolink/sdk/campaign/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object v0

    invoke-static {v0}, Lai/turbolink/sdk/campaign/d;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$5;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->qnr()I

    move-result p1

    .line 13
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 14
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Xe:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const-string v2, "load_vast_icon_success"

    invoke-static {v1, p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_4
    return-void
.end method
