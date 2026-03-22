.class Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$3;
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
.field final synthetic ZYk:Ljava/lang/Object;

.field final synthetic oJ:Landroid/widget/ImageView;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$3;->tB:Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$3;->oJ:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$3;->ZYk:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$3;->oJ:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ$ZYk$3;->ZYk:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
