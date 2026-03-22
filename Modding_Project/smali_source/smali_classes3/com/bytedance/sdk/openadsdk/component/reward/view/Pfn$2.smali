.class Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;->ex()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$2;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$2;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn$2;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/view/Pfn;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
