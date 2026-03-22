.class Lcom/bytedance/sdk/openadsdk/core/eZI$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/Rl$ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/eZI;->oJ(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/eZI;

.field final synthetic oJ:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/eZI;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$6;->ZYk:Lcom/bytedance/sdk/openadsdk/core/eZI;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$6;->oJ:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$6;->ZYk:Lcom/bytedance/sdk/openadsdk/core/eZI;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/eZI;->ex(Lcom/bytedance/sdk/openadsdk/core/eZI;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public oJ()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$6;->ZYk:Lcom/bytedance/sdk/openadsdk/core/eZI;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$6;->oJ:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/core/eZI;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public oJ(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$6;->ZYk:Lcom/bytedance/sdk/openadsdk/core/eZI;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/eZI;->ZYk(Lcom/bytedance/sdk/openadsdk/core/eZI;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$6;->ZYk:Lcom/bytedance/sdk/openadsdk/core/eZI;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/eZI;->ZYk(Lcom/bytedance/sdk/openadsdk/core/eZI;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$6;->ZYk:Lcom/bytedance/sdk/openadsdk/core/eZI;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$6;->oJ:Landroid/view/ViewGroup;

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/core/eZI;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public oJ(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$6;->ZYk:Lcom/bytedance/sdk/openadsdk/core/eZI;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/eZI$6;->oJ:Landroid/view/ViewGroup;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/core/eZI;ZLandroid/view/ViewGroup;)V

    return-void
.end method
