.class public abstract Lcom/bytedance/sdk/openadsdk/activity/oJ;
.super Lcom/bytedance/sdk/openadsdk/activity/so;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/IUZ$oJ;
.implements Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn$oJ;
.implements Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;


# instance fields
.field private HL:Z

.field private IUZ:Landroid/os/CountDownTimer;

.field private Id:Z

.field protected Pfn:Z

.field private Xe:J

.field protected ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final ba:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private cFZ:I

.field private cY:Z

.field protected ex:I

.field private jr:I

.field protected final oJ:Lcom/bytedance/sdk/component/utils/IUZ;

.field private oq:I

.field private so:Landroid/os/Bundle;

.field protected tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field private tb:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/activity/so;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/bytedance/sdk/component/utils/IUZ;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-direct {p1, p3, p0}, Lcom/bytedance/sdk/component/utils/IUZ;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/IUZ$oJ;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->cFZ:I

    .line 25
    .line 26
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oq:I

    .line 27
    .line 28
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Id:Z

    .line 29
    .line 30
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Pfn:Z

    .line 31
    .line 32
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->jr:I

    .line 33
    .line 34
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->HL:Z

    .line 35
    .line 36
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    if-eqz p4, :cond_0

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nYE()Z

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    if-eqz p4, :cond_0

    .line 47
    .line 48
    move p3, p1

    .line 49
    :cond_0
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->HL:Z

    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p3, "current scene is isOnlyPlayable -> "

    .line 54
    .line 55
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->HL:Z

    .line 59
    .line 60
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string p3, "TTAD.AdScene"

    .line 68
    .line 69
    invoke-static {p3, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->HL:Z

    .line 73
    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zUb()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    mul-int/lit16 p1, p1, 0x3e8

    .line 81
    .line 82
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->jr:I

    .line 83
    .line 84
    int-to-long p1, p1

    .line 85
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tb:J

    .line 86
    .line 87
    :cond_1
    return-void
.end method

.method private LS()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cFZ:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    return v0
.end method

.method private NO()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Id:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Id:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/oJ$3;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/oJ;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/oJ;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->cFZ:I

    return p0
.end method

.method private jB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    sget v1, Lcom/bytedance/sdk/openadsdk/ex/ZYk$ZYk;->tB:I

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(ZI)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba()Landroid/widget/FrameLayout;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Landroid/widget/FrameLayout;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->tb()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method private mwH()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/component/utils/IUZ;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->dLZ()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/oJ;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tb:J

    return-wide v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/oJ;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tb:J

    return-wide p1
.end method

.method private oJ(J)V
    .locals 7

    .line 51
    new-instance v6, Lcom/bytedance/sdk/openadsdk/activity/oJ$2;

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/oJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/oJ;JJ)V

    .line 52
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->IUZ:Landroid/os/CountDownTimer;

    return-void
.end method

.method private oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/os/Bundle;)V
    .locals 7

    .line 19
    new-instance v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ:Lcom/bytedance/sdk/component/utils/IUZ;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/component/utils/IUZ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;I)V

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->tB()Z

    move-result v0

    iput-boolean v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->WcQ:Z

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UF:Z

    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->VJm:Z

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->RZ()Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bD:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iput-object p0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->si()Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nke:Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-static {v0, p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Landroid/content/Intent;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ(Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 29
    const-string v0, "start_show_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 30
    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(J)V

    :cond_0
    if-eqz p3, :cond_1

    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->sH:Z

    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk()V

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 34
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iput-object p1, p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 35
    iget-object p1, p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn$oJ;)V

    .line 36
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p3, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-eqz p3, :cond_2

    .line 37
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    new-instance p3, Lcom/bytedance/sdk/openadsdk/activity/oJ$1;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/oJ;)V

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$oJ;)V

    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oq()Z

    move-result p1

    if-nez p1, :cond_2

    .line 39
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->RZ()Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    move-result-object p1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setShowSound(Z)V

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/awB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    :try_start_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->BTZ:I

    add-int/lit8 v1, v1, 0x1

    .line 44
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 45
    const-string v3, "ad_show_order"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string v1, "pag_json_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private oTd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->QSm:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->XAo()D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    double-to-int v0, v0

    .line 17
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ex:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 20
    .line 21
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->Pfn()Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->ex()Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Pfn()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->jB()V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final BTZ()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->BTZ()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->HyG()Landroid/app/Activity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/app/Activity;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Jc()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->HyG()Landroid/app/Activity;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ex;->oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public HL()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public IUZ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->cY()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public Id()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->cY:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->cY:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->Yg()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "TTAD.AdScene"

    .line 13
    .line 14
    const-string v1, "tryPreloadNextAdVideo: Already tried preloading the video"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public Jc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->awB()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Ln()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public LpP()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->NO()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected abstract Pfn()V
.end method

.method public PiB()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->HL:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Xe:J

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "onPause: remainingTime = "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tb:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "TTAD.AdScene"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->IUZ:Landroid/os/CountDownTimer;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->QSm()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->so()V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oq()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 70
    .line 71
    const/16 v1, 0x8

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ(IZ)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public QSm()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->QSm()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->Id()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public RZ()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final Ry()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    const/16 v1, 0x190

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public UN()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jFA()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->QSm()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final WcQ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ofl()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public Xe()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    sget v1, Lcom/bytedance/sdk/openadsdk/ex/ZYk$ZYk;->ZYk:I

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk(I)Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected ZYk(I)Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;
    .locals 2

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    iput-boolean p1, v0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->ex:Z

    return-object v0
.end method

.method protected abstract ZYk()V
.end method

.method public ZYk(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final awB()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->wd()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final ba()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->Qu()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Geh()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nnj()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public cFZ()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onPlayableLoadingDismiss()---"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TTAD.AdScene"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public cY()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->nke()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final dLZ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->PiB()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final eZI()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public ex()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ex()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oq()V

    return-void
.end method

.method public ex(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/oJ;Z)V

    :cond_0
    return-void
.end method

.method public final jFA()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "invoke callback onShow, "

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "BVA"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->kkU()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method protected jr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nQI:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method protected abstract kkU()V
.end method

.method public mu()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Pfn:Z

    .line 3
    .line 4
    return-void
.end method

.method public nke()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->nke()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Ln()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    return-object v0
.end method

.method public oJ(F)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(F)V

    .line 77
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->cY:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->HyG()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->QSm()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object p1

    .line 80
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    if-eqz v0, :cond_1

    .line 81
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Id()V

    :cond_1
    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Landroid/app/Activity;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Landroid/app/Activity;)V

    .line 49
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HL:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ()V

    return-void
.end method

.method public final oJ(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->so:Landroid/os/Bundle;

    .line 5
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(Landroid/os/Bundle;)V

    return-void
.end method

.method public oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tt()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->cFZ:I

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->so:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/os/Bundle;)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nYE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, p2, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->ex:Z

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    if-lez v0, :cond_1

    .line 13
    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->ex:Z

    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 14
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->mwH()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oTd()V

    return-void

    :catchall_0
    move-exception p1

    .line 16
    const-string p2, "TTAD.AdScene"

    const-string v0, "onCreate: "

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->ZYk()V

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    return-void
.end method

.method public abstract oJ(Landroid/os/Bundle;)V
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Landroid/os/Message;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 4

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p0, :cond_3

    .line 63
    instance-of v2, p2, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    if-eqz v2, :cond_3

    .line 64
    iget v2, p3, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->ZYk:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 65
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->mu()Z

    move-result v2

    xor-int/2addr v2, v1

    const/4 v3, 0x2

    invoke-virtual {p3, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(II)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 66
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->mu()Z

    move-result v2

    xor-int/2addr v2, v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->mu()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {p3, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(II)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 67
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean p3, p3, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->Pfn:Z

    if-eqz p3, :cond_2

    .line 68
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    const-string v2, "skip"

    invoke-virtual {p3, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Ljava/lang/String;Z)V

    .line 69
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Z)V

    .line 70
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 71
    :cond_3
    iget p3, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    iget v2, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    add-int/2addr v2, v1

    if-ne p3, v2, :cond_4

    move v0, v1

    .line 72
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "\u3010onActiveSceneChanged\u3011"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",scene = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",newScene = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",oldScene = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",isPlayable = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",isNextShow="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TTAD.AdScene"

    invoke-static {p3, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget p1, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    if-nez p1, :cond_5

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    if-eqz p1, :cond_5

    .line 74
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eL()V

    :cond_5
    return-void
.end method

.method public oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    const-string p2, "skipToNextAd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 59
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x7

    .line 60
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk(I)Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    :cond_2
    return-void
.end method

.method public oJ(Ljava/util/Map;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;FF)V"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Ljava/util/Map;FF)V

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/activity/so;FF)V

    return-void
.end method

.method public oJ(Z)V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPlayableHappenInteraction()---"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isHappenInteraction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTAD.AdScene"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final oJ(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(ZZI)V

    return-void
.end method

.method public final oJ(ZZI)V
    .locals 7

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    move v2, p1

    move v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ(ZZZLcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;I)V

    return-void
.end method

.method public oJ(ZZZLcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;I)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(ZZZI)V

    return-void
.end method

.method public abstract oJ(JZ)Z
.end method

.method public oq()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->oq()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->cY()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public si()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final so()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x190

    .line 7
    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x2710

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 24
    .line 25
    const-wide/16 v2, 0x7d0

    .line 26
    .line 27
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public tB()V
    .locals 12

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->tB()V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->si()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->LS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LTg()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB()V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Id()V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->PiB()V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->ZYk()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Qu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->WcQ()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(JZ)Z

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->cFZ()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oq()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->XAo()V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oq:I

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    invoke-virtual {v0, v2, p0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(ZLcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Z)V

    .line 17
    :cond_5
    :goto_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oq:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oq:I

    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->NO()V

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->cFZ()V

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HL:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ:Lcom/bytedance/sdk/component/utils/IUZ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ(Lcom/bytedance/sdk/component/utils/IUZ;)V

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oq()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v0, v2, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ(IZ)V

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->RZ()V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->HL:Z

    if-eqz v2, :cond_a

    .line 27
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Xe:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-string v7, "TTAD.AdScene"

    if-eqz v6, :cond_8

    sub-long v8, v0, v2

    iget-wide v10, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tb:J

    cmp-long v6, v8, v10

    if-lez v6, :cond_8

    .line 28
    const-string v0, "onResume: Exceed playable_duration_time, switch to next ad"

    invoke-static {v7, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk(I)Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    return-void

    :cond_8
    cmp-long v4, v2, v4

    if-eqz v4, :cond_9

    .line 30
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tb:J

    sub-long/2addr v0, v2

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tb:J

    .line 31
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume: The playable display time has not yet arrived, continue the countdown -> remainingTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tb:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tb:J

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(J)V

    :cond_a
    :goto_2
    return-void
.end method

.method public tB(Z)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->ZYk(Z)V

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB(Z)V

    :cond_0
    return-void
.end method

.method public tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    return-object v0
.end method
