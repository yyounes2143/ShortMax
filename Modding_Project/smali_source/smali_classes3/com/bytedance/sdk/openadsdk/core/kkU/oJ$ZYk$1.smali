.class Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk;->oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Landroid/widget/ImageView;

.field final synthetic oJ:Ljava/lang/Object;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$1;->tB:Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$1;->oJ:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$1;->ZYk:Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$1;->oJ:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0}, Lai/turbolink/sdk/campaign/b;->a(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$1;->oJ:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {v0}, Lai/turbolink/sdk/campaign/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lai/turbolink/sdk/campaign/d;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$1;->ZYk:Landroid/widget/ImageView;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$1;->oJ:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
