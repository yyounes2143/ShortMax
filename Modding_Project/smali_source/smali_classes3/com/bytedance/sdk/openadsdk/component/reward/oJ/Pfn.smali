.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn$oJ;
    }
.end annotation


# instance fields
.field private final ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/so;

.field private final oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field private tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn$oJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/so;

    .line 12
    .line 13
    return-void
.end method

.method private ZYk(Z)Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->ex:I

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB(Z)V

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private ba()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PH()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    const/16 v2, 0x1388

    .line 11
    .line 12
    if-gt v0, v2, :cond_4

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v3, 0x3e8

    .line 18
    .line 19
    if-ge v0, v3, :cond_1

    .line 20
    .line 21
    add-int/lit16 v0, v0, 0x3e8

    .line 22
    .line 23
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 28
    .line 29
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 30
    .line 31
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-interface {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(I)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-gt v4, v2, :cond_4

    .line 40
    .line 41
    if-gez v4, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    if-ge v4, v3, :cond_3

    .line 45
    .line 46
    add-int/lit16 v4, v4, 0x3e8

    .line 47
    .line 48
    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    return v0

    .line 53
    :cond_4
    :goto_0
    return v1
.end method

.method private cFZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Ry(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ZYk(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public Pfn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/so;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->Pfn()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ZYk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/so;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->tB()V

    return-void
.end method

.method public ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->lG()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zUb()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Id(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->cFZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->jr()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    goto :goto_0

    :cond_3
    if-ltz v0, :cond_6

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    const/16 v1, 0x258

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Id(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->cFZ()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    int-to-long v0, v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    if-eqz p1, :cond_6

    int-to-long v0, v0

    .line 17
    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    :cond_6
    :goto_1
    return-void
.end method

.method public ex()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public oJ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/so;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->oJ()V

    return-void
.end method

.method oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(F)V

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ(F)V

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ(I)V

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(I)V

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cdg()V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(I)V

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ(I)V

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->cFZ()V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cFZ:Z

    if-eqz v0, :cond_1

    .line 110
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->WcQ:Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 111
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba(I)V

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex(I)V

    .line 113
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->cFZ()V

    .line 114
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    const-wide/16 v0, 0x64

    if-eqz p1, :cond_2

    .line 115
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v2, 0x320

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v2, 0x1f4

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 117
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(ZZ)V

    .line 118
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tB(Z)V

    .line 119
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Z)V

    .line 120
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->BTZ()Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 121
    const-string v0, "prerender_page_show"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn$oJ;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn$oJ;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/so;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V

    return-void
.end method

.method public oJ(Z)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    const/16 v2, 0x198

    const-string v3, "end_card_timeout"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(ZILjava/lang/String;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->nke()V

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(I)V

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->oJ(I)V

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cFZ:Z

    if-eqz v3, :cond_1

    .line 128
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->WcQ:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba(I)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex(I)V

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/so;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_3

    .line 135
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/so;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->cFZ()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->oJ(I)V

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/so;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->ZYk()V

    .line 137
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->cFZ()V

    if-eqz p1, :cond_5

    .line 138
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->tB(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)Z

    .line 139
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB(Z)V

    .line 140
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Z)V

    return-void
.end method

.method public oJ(ZLcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
    .locals 6

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Ry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->WcQ()V

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB(Z)V

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 64
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ln()V

    .line 66
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    if-eqz p1, :cond_3

    .line 67
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn()V

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB()V

    .line 69
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz p1, :cond_4

    .line 70
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ba()V

    .line 71
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    if-eqz p1, :cond_5

    .line 72
    sget v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ZYk:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->cFZ(I)V

    .line 73
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 74
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->PiB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/ex/ZYk$oJ;->tB:Ljava/lang/String;

    invoke-static {p2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/Id;->oJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)Z

    return-void

    .line 75
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    if-eqz p1, :cond_7

    .line 76
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->ba()V

    .line 77
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 78
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->HyG()Z

    move-result p1

    if-nez p1, :cond_11

    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 79
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ry()Z

    move-result p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jm()Z

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->BTZ()Z

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->LpP()Z

    move-result v5

    invoke-static {v0, p1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ZZZZ)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_3

    .line 80
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 81
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(ZILjava/lang/String;)V

    .line 82
    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 83
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Id(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ofl()Z

    move-result p1

    if-nez p1, :cond_e

    .line 84
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ry()Z

    move-result p1

    if-nez p1, :cond_c

    .line 85
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex()Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 86
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex()Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(I)V

    .line 87
    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn()V

    goto :goto_1

    .line 88
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex()Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 89
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex()Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(I)V

    .line 90
    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba()V

    .line 91
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 92
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->Pfn()Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V

    :goto_1
    return-void

    .line 93
    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ofl()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 94
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex()Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 95
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ex()Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(I)V

    .line 96
    :cond_f
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    goto :goto_2

    .line 97
    :cond_10
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->tB(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)Z

    .line 98
    :goto_2
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    return-void

    .line 99
    :cond_11
    :goto_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ex()V

    return-void
.end method

.method public oJ(ZZZLcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;I)V
    .locals 10

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/ba/ZYk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const-string v2, "videoForceBreak"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 6
    :cond_0
    invoke-static {p4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_19

    if-nez p4, :cond_1

    goto/16 :goto_2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->BTZ()V

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->awB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->VSB:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->jFA(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 11
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->awB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->si:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_7

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    return-void

    .line 13
    :cond_4
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ZYk(Z)Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 15
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB(Z)V

    .line 18
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    return-void

    .line 19
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    .line 20
    :cond_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 21
    :cond_9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RQ()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz p1, :cond_a

    .line 23
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 24
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getBrandBannerController()Lcom/bytedance/sdk/openadsdk/core/so/tB;

    move-result-object p1

    goto :goto_0

    :cond_a
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_b

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk()V

    .line 26
    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 27
    :cond_c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn$oJ;

    if-eqz v1, :cond_d

    move-object v0, v1

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 28
    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn$oJ;->oJ(ZZZLcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;I)V

    return-void

    .line 29
    :cond_d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->RZ()V

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->IUZ()V

    .line 31
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UF:Z

    if-eqz v2, :cond_e

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->ofl()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 33
    :cond_e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    :cond_f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->LpP:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ()V

    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    iget-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cFZ:Z

    if-nez v4, :cond_10

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LTg()Z

    move-result v1

    if-eqz v1, :cond_10

    move v3, v0

    :cond_10
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Z)V

    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 37
    :cond_11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 38
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ofl()Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v0

    goto :goto_1

    .line 40
    :cond_12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->RZ()Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, -0x1

    goto :goto_1

    :cond_13
    const/4 v1, 0x2

    .line 41
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "webview_state"

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p5

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ZZZZILjava/util/Map;)V

    .line 43
    :cond_14
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p2

    if-eqz p2, :cond_15

    if-eqz p1, :cond_15

    .line 44
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 45
    :cond_15
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 46
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB(Z)V

    .line 47
    :cond_16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->cFZ()V

    .line 48
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p2

    if-eqz p2, :cond_18

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p3, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->YQ:Z

    if-eqz p3, :cond_18

    .line 49
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex(I)V

    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB(Z)V

    .line 51
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB()V

    .line 52
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz p1, :cond_17

    .line 53
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ba()V

    .line 54
    :cond_17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Ry()V

    return-void

    .line 55
    :cond_18
    invoke-virtual {p0, p1, p4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ(ZLcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    :cond_19
    :goto_2
    return-void
.end method

.method public tB()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/view/so;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/so;->ex()V

    return-void
.end method

.method public tB(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ba()I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->so:I

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->so:I

    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->awB()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->so:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 5
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->jr()V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ry()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->jr()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    :goto_0
    move p1, v4

    goto :goto_2

    :cond_2
    if-ltz v2, :cond_3

    .line 10
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x2bc

    .line 12
    iput v0, p1, Landroid/os/Message;->what:I

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->so:I

    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 14
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->jFA(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    move p1, v1

    .line 16
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tb()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, p1

    :goto_3
    if-eqz v1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex()Z

    move-result p1

    if-nez p1, :cond_5

    return v4

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->so:I

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    :cond_6
    return v4

    :cond_7
    return v1
.end method
