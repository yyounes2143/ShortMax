.class Lcom/bytedance/sdk/openadsdk/core/so/tB$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/so/tB;->oJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/so/tB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/so/tB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;)V
    .locals 0

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/tB;)Lcom/bytedance/sdk/component/adexpress/ZYk/awB;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/tB;)Lcom/bytedance/sdk/component/adexpress/ZYk/awB;

    move-result-object p1

    const/16 p2, 0x6a

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/awB;->a_(I)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ex(Lcom/bytedance/sdk/openadsdk/core/so/tB;)V

    return-void
.end method

.method public oJ(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/tB;)Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/tB;)Lcom/bytedance/sdk/component/adexpress/ZYk/awB;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/tB;)Lcom/bytedance/sdk/component/adexpress/ZYk/awB;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/so/tB;)Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/awB;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/ex;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/tB;)Lcom/bytedance/sdk/component/adexpress/ZYk/awB;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/tB;)Lcom/bytedance/sdk/component/adexpress/ZYk/awB;

    move-result-object p1

    const/16 p2, 0x6a

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/awB;->a_(I)V

    .line 6
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ex(Lcom/bytedance/sdk/openadsdk/core/so/tB;)V

    return-void
.end method
