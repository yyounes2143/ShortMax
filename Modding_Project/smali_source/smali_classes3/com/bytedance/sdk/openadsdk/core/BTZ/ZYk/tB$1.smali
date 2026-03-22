.class Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Pfn(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->yQF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->eXp(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->tB(J)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oG(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->PdF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->cY(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->dLZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->HL(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->IUZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Id(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    :cond_0
    return-void
.end method

.method public ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public ex(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->SWT(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->zGT(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ZYk(J)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Uf(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x3

    .line 35
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->SCr(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Wek(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ba(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->cFZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->so(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ex(J)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;I)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Z)Z

    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->VSB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->dLZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->uvK(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$10;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->UF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->VJm(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->bD(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(I)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;II)V
    .locals 0

    .line 28
    invoke-static {}, Lcom/bytedance/sdk/component/utils/jFA;->oJ()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$8;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;III)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Z)Z

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oIC(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$9;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->MoK(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 32
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->TA(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->UK(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(I)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;J)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->jFA(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->kkU(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Z)Z

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->BTZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;

    move-result-object p1

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->dLZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->si(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;

    move-result-object p1

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$3;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Ry(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->RZ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->QSm(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oq(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->tB()V

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Id(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;JJ)V
    .locals 7

    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oCU(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x32

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->EP(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->YQ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)V

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Id(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->tB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->BHY(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;

    move-result-object p1

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$2;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;JJ)V

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V
    .locals 1

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Ln(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ba(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$5;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->nke(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Ljava/lang/String;

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;->oJ()I

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;->ZYk()I

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;->tB()Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Qu(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$6;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->nQI(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 22
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;)V

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->bgF(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->Yg(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->lY(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 26
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->mwH(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(I)V

    :cond_2
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;Z)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->NO(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;)Lcom/bytedance/sdk/component/utils/IUZ;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$7;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tB(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)V
    .locals 0

    .line 1
    return-void
.end method
