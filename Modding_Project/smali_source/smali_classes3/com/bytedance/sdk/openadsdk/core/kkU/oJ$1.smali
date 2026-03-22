.class Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/kkU/oJ;->oJ(Landroid/widget/ImageView;[BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Landroid/widget/ImageView;

.field final synthetic oJ:Landroid/graphics/drawable/Drawable;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/kkU/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kkU/oJ;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$1;->tB:Lcom/bytedance/sdk/openadsdk/core/kkU/oJ;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$1;->oJ:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$1;->ZYk:Landroid/widget/ImageView;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$1;->oJ:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-static {v0}, Lai/turbolink/sdk/campaign/b;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$1;->oJ:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-static {v0}, Lai/turbolink/sdk/campaign/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lai/turbolink/sdk/campaign/d;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$1;->ZYk:Landroid/widget/ImageView;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$1;->oJ:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
