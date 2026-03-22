.class public Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

.field protected ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field protected final ba:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

.field protected final cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

.field protected ex:I

.field protected jFA:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

.field protected kkU:Lcom/bytedance/sdk/component/utils/IUZ;

.field protected oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field protected final so:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

.field protected tB:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    .line 10
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->NO:I

    .line 11
    .line 12
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->tB:I

    .line 13
    .line 14
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jB:I

    .line 15
    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->ex:I

    .line 17
    .line 18
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->ba:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->so:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public ZYk()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->cFZ()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    :cond_0
    return v2

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba()Landroid/widget/FrameLayout;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v1, 0x4

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    return v2

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_3

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    return v0

    .line 105
    :cond_3
    return v2
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/component/utils/IUZ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->jFA:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 2
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->kkU:Lcom/bytedance/sdk/component/utils/IUZ;

    return-void
.end method

.method public oJ(Z)V
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->so:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB(Z)V

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->so:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Z)V

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk(I)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex(I)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->so:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB(Z)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->so:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Z)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->so:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba(I)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->so:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LTg()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Z)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->so:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB(Z)V

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ()Z

    move-result v0

    if-nez v0, :cond_6

    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/cFZ;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->so:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn()V

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba(I)V

    goto :goto_1

    .line 20
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->so:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    :goto_1
    if-eqz p1, :cond_8

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->LS:F

    sget v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->oJ:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 22
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk(I)V

    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex(I)V

    return-void

    .line 24
    :cond_7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk(I)V

    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB(I)V

    .line 26
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex(I)V

    return-void

    .line 27
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ZYk(I)V

    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->tB(I)V

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ex(I)V

    return-void
.end method

.method public oJ()Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dc()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dc()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dc()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected tB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->cFZ()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 25
    .line 26
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ZYk(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
