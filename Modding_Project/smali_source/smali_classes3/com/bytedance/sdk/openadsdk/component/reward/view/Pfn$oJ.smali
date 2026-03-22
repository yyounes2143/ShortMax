.class Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/eZI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "oJ"
.end annotation


# instance fields
.field private final ZYk:Ljava/lang/String;

.field private final ex:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private final tB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;->ex:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;->ZYk:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;->tB:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;->tB:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private oJ(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 13
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ$1;

    const-string v2, "load_vast_icon_fail"

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/component/so/so;)V

    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;->ZYk:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;->oJ(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V
    .locals 3

    .line 2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->ZYk()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;->ex:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    instance-of v1, p1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

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

    :cond_1
    if-eqz v0, :cond_2

    .line 10
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$oJ;->tB:Ljava/lang/String;

    const-string v1, "load_vast_icon_success"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method
