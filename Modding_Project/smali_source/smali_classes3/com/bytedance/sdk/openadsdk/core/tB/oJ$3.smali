.class Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/QSm;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field final synthetic tB:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/so/QSm;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->Pfn:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->tB:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->ex:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->Pfn:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->tB(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public oJ()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->Pfn:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->Pfn:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->cFZ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)V

    :cond_0
    return-void
.end method

.method public oJ(Landroid/view/View;)V
    .locals 9

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->Pfn:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->so(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->Pfn:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->ZYk:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->tB:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->ex:Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/so/QSm;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->Pfn:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->getCurView()Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->Pfn:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->getCurView()Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->kkU()V

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->Pfn:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->getCurView()Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->Ry()V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->Pfn:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/ex;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/tB/ex;->setIsShow(Z)V

    :cond_1
    return-void
.end method

.method public oJ(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->Pfn:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;ZLcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-void
.end method
