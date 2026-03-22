.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$ex;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(Landroid/webkit/WebView;I)V
    .locals 2

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->bbM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 12
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->tB(I)V

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cFZ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->MoK:Lcom/bytedance/sdk/openadsdk/common/PiB;

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->MoK:Lcom/bytedance/sdk/openadsdk/common/PiB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/common/PiB;->oJ(Landroid/webkit/WebView;ILcom/bytedance/sdk/openadsdk/core/widget/oJ/ba$oJ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public oJ(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ry()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ZYk(Z)V

    return-void
.end method

.method public oJ(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;Z)Z

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p2

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p3

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(ILcom/bytedance/sdk/openadsdk/core/model/cY;Z)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p2

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->jFA()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    const/16 v0, 0x258

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->kkU()V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si$12;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->eZI()V

    :cond_1
    return-void
.end method
