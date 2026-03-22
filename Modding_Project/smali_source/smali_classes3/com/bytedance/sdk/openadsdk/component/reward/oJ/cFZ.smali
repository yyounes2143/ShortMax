.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;
.super Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field Pfn:I

.field private final RZ:Landroid/os/Handler;

.field ZYk:J

.field ba:Z

.field ex:I

.field oJ:Z

.field tB:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->RZ:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->oJ:Z

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->ZYk:J

    .line 17
    .line 18
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->tB:I

    .line 19
    .line 20
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->ex:I

    .line 21
    .line 22
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->Pfn:I

    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->ba:Z

    .line 25
    .line 26
    return-void
.end method

.method private BTZ()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 6
    .line 7
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ba:I

    .line 18
    .line 19
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->tB:I

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->ex:I

    .line 23
    .line 24
    int-to-float v2, v2

    .line 25
    div-float/2addr v1, v2

    .line 26
    const/high16 v2, 0x3f800000    # 1.0f

    .line 27
    .line 28
    sub-float/2addr v2, v1

    .line 29
    const/high16 v1, 0x42c80000    # 100.0f

    .line 30
    .line 31
    mul-float/2addr v2, v1

    .line 32
    int-to-float v0, v0

    .line 33
    cmpl-float v0, v2, v0

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    const/4 v2, 0x0

    .line 37
    if-ltz v0, :cond_0

    .line 38
    .line 39
    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v0, v2

    .line 42
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 47
    .line 48
    iget v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->ba()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move v3, v2

    .line 70
    :goto_1
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->WcQ:Z

    .line 71
    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    move v3, v1

    .line 75
    :cond_2
    if-eqz v0, :cond_4

    .line 76
    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    move v2, v1

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    if-ne v3, v1, :cond_4

    .line 82
    .line 83
    move v2, v0

    .line 84
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 85
    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 89
    .line 90
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->ZYk(Z)V

    .line 91
    .line 92
    .line 93
    :cond_5
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->BTZ()V

    return-void
.end method


# virtual methods
.method public Pfn()V
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
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->Pfn()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 22
    .line 23
    const/16 v1, 0x258

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->RZ:Landroid/os/Handler;

    .line 29
    .line 30
    const/16 v1, 0x384

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method protected ZYk()Lcom/bytedance/sdk/openadsdk/BTZ/ba;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;)V

    .line 4
    .line 5
    .line 6
    return-object v0
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
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->ba()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->RZ:Landroid/os/Handler;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public cFZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->tB:I

    .line 2
    .line 3
    return v0
.end method

.method public ex()V
    .locals 3

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
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->ex()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->cFZ()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 17
    .line 18
    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 21
    .line 22
    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ZYk(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->tB(Z)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->cFZ()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-lez v0, :cond_4

    .line 55
    .line 56
    const-wide/16 v0, 0x0

    .line 57
    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->oJ(J)V

    .line 59
    .line 60
    .line 61
    :cond_4
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x384

    .line 5
    .line 6
    if-ne v0, v2, :cond_9

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->cFZ:Z

    .line 9
    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_9

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->Ry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    if-lez p1, :cond_4

    .line 35
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 41
    .line 42
    .line 43
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->Pfn:I

    .line 44
    .line 45
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->ex:I

    .line 46
    .line 47
    sub-int/2addr v3, p1

    .line 48
    sub-int/2addr v0, v3

    .line 49
    if-ne v0, p1, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    if-lez v0, :cond_2

    .line 65
    .line 66
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 67
    .line 68
    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 75
    .line 76
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 77
    .line 78
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const-string v6, "tt_skip_ad_time_text"

    .line 83
    .line 84
    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->ba:Z

    .line 105
    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB()V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    .line 143
    .line 144
    .line 145
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput v2, v0, Landroid/os/Message;->what:I

    .line 150
    .line 151
    sub-int/2addr p1, v1

    .line 152
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 153
    .line 154
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->RZ:Landroid/os/Handler;

    .line 155
    .line 156
    const-wide/16 v3, 0x3e8

    .line 157
    .line 158
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 159
    .line 160
    .line 161
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->tB:I

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_4
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->ba:Z

    .line 165
    .line 166
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 167
    .line 168
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_6

    .line 173
    .line 174
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 175
    .line 176
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Id(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_5

    .line 181
    .line 182
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->Pfn()Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-nez p1, :cond_6

    .line 189
    .line 190
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 191
    .line 192
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB()V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 198
    .line 199
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 200
    .line 201
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 206
    .line 207
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 208
    .line 209
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 214
    .line 215
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 216
    .line 217
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 221
    .line 222
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    .line 225
    .line 226
    .line 227
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 228
    .line 229
    if-eqz p1, :cond_7

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->Pfn()Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_8

    .line 236
    .line 237
    :cond_7
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->WcQ:Z

    .line 238
    .line 239
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->BTZ()V

    .line 240
    .line 241
    .line 242
    nop

    .line 243
    :cond_9
    :goto_3
    return v1
.end method

.method public jFA()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->ba:Z

    .line 2
    .line 3
    return v0
.end method

.method public oJ()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->PiB:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->BTZ:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->oJ()V

    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->tB:I

    return-void
.end method

.method public oJ(J)V
    .locals 2

    .line 12
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->PiB:Z

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->cFZ:Z

    if-nez v0, :cond_1

    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 15
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x384

    .line 16
    iput v1, v0, Landroid/os/Message;->what:I

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->cFZ()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->RZ:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected oJ(Z)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->eZI:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/ex;->oJ()Lcom/bytedance/sdk/openadsdk/QSm/oJ/ex;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->eZI:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->ZYk()Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/BTZ/ba;)Lcom/bytedance/sdk/openadsdk/QSm/oJ/ZYk;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PreRender injection exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RVIVPlayableNewManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    if-nez v0, :cond_0

    .line 10
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->oJ(Z)V

    :cond_0
    return-void
.end method

.method public so()V
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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->RZ:Landroid/os/Handler;

    .line 7
    .line 8
    const/16 v1, 0x384

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->RZ:Landroid/os/Handler;

    .line 14
    .line 15
    const/16 v1, 0x258

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public tB()V
    .locals 4

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
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->cFZ:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->si:Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/oJ;->oJ()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->kkU(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ba()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zUb()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->ex:I

    .line 36
    .line 37
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 42
    .line 43
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(Ljava/lang/String;Z)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->Pfn:I

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->ZYk:J

    .line 66
    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 68
    .line 69
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    .line 70
    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->RZ:Landroid/os/Handler;

    .line 74
    .line 75
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->ex:I

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    const/16 v3, 0x384

    .line 79
    .line 80
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 90
    .line 91
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->eZI()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/kkU;->dLZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->EP:Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/cFZ;->ex:I

    .line 101
    .line 102
    int-to-long v1, v1

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;->oJ(J)V

    .line 104
    .line 105
    .line 106
    :cond_3
    return-void
.end method
