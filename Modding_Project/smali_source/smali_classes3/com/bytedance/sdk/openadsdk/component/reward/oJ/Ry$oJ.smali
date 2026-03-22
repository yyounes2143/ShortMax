.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/eZI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "oJ"
.end annotation


# instance fields
.field private final ZYk:Ljava/lang/String;

.field private final ex:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final oJ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final tB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;Ljava/util/concurrent/atomic/AtomicBoolean;)V
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
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;->oJ:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;->ZYk:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;->tB:Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;->oJ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;->tB:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/16 p3, 0x8

    .line 16
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, -0x2

    .line 17
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;->ZYk:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;ILjava/lang/String;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;->oJ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;->tB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_6

    .line 3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->ZYk()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, -0x1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;->ZYk:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;ILjava/lang/String;)V

    return-void

    .line 5
    :cond_2
    instance-of v2, p1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 6
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 7
    :cond_3
    instance-of v2, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_4

    .line 9
    invoke-static {p1}, Lai/turbolink/sdk/campaign/b;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-static {p1}, Lai/turbolink/sdk/campaign/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object v2

    invoke-static {v2}, Lai/turbolink/sdk/campaign/d;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 11
    :cond_4
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry$oJ;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Ry;)V

    :cond_6
    return-void
.end method
