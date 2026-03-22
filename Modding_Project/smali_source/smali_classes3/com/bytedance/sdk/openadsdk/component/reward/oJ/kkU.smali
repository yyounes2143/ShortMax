.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected BTZ:Z

.field protected PiB:Z

.field protected Ry:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected WcQ:Z

.field protected awB:Z

.field protected volatile cFZ:Z

.field protected final dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field protected eZI:Landroid/widget/FrameLayout;

.field protected final jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final kkU:Ljava/lang/String;

.field protected si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

.field protected final so:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->Ry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->so:Landroid/app/Activity;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->kkU:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->PiB:Z

    .line 31
    .line 32
    return-void
.end method

.method private cFZ()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->lG()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->jFA(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->Pfn()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->jr()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    if-ltz v0, :cond_6

    .line 68
    .line 69
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->jFA(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/16 v3, 0x258

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->Pfn()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 100
    .line 101
    int-to-long v4, v0

    .line 102
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 109
    .line 110
    int-to-long v3, v0

    .line 111
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 118
    .line 119
    int-to-long v4, v0

    .line 120
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    .line 122
    .line 123
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 124
    .line 125
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 126
    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_5

    .line 134
    .line 135
    return-void

    .line 136
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 137
    .line 138
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 139
    .line 140
    int-to-long v2, v0

    .line 141
    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public Pfn()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->PiB:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->Ry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->tB()V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method protected ZYk()Lcom/bytedance/sdk/openadsdk/BTZ/ba;
    .locals 1

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;)V

    return-object v0
.end method

.method public ZYk(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->PiB:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Qu:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->SYE:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->eZI:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->oJ(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ba()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->PiB:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->awB:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->awB:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ex()V

    .line 19
    .line 20
    .line 21
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->eZI:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_3
    return-void
.end method

.method public dLZ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->Ry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cFZ(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 30
    .line 31
    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ(ZLcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->Pfn()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 47
    .line 48
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->so:I

    .line 49
    .line 50
    int-to-long v2, v0

    .line 51
    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 56
    .line 57
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 58
    .line 59
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 60
    .line 61
    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(ZZ)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tB(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 81
    .line 82
    const/16 v1, 0x258

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jFA()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public ex()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->PiB:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->Ry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ZYk()V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public jFA()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public kkU()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->cFZ:Z

    .line 2
    .line 3
    return v0
.end method

.method public oJ()V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->PiB:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->BTZ:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->BTZ:Z

    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 2
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->PiB:Z

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;)V

    :cond_1
    return-void
.end method

.method protected oJ(Z)V
    .locals 7

    .line 6
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->eZI:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 7
    new-instance v6, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    move-object v0, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;IZLandroid/widget/FrameLayout;)V

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    invoke-virtual {v6, p1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->ZYk()Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(ZLcom/bytedance/sdk/openadsdk/BTZ/ba;)V

    :cond_0
    return-void
.end method

.method public so()V
    .locals 0

    .line 1
    return-void
.end method

.method public tB()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->PiB:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->cFZ:Z

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->tB(Z)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ()V

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->cFZ()V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ba()V

    :cond_1
    return-void
.end method

.method public tB(Z)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->PiB:Z

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->cFZ:Z

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(Z)V

    :cond_1
    return-void
.end method
