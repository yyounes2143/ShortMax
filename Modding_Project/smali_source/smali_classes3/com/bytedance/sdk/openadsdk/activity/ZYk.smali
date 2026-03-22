.class public Lcom/bytedance/sdk/openadsdk/activity/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/activity/ZYk$tB;,
        Lcom/bytedance/sdk/openadsdk/activity/ZYk$oJ;,
        Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;,
        Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;,
        Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;
    }
.end annotation


# static fields
.field private static ZYk:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

.field private static tB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;


# instance fields
.field private final BTZ:Z

.field private final Pfn:Landroid/os/Bundle;

.field private PiB:Landroid/app/Activity;

.field private QSm:Z

.field private final RZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;

.field private Ry:Ljava/lang/Runnable;

.field private WcQ:I

.field private awB:Landroid/os/Bundle;

.field private final ba:Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

.field private cFZ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

.field private dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

.field private eZI:Z

.field private final ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private final jFA:Z

.field private final kkU:Z

.field public oJ:Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

.field private si:Z

.field private so:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->Pfn:Landroid/os/Bundle;

    .line 10
    .line 11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->RZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->PiB:Landroid/app/Activity;

    .line 21
    .line 22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/BTZ/jFA;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ba:Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wd()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->jFA:Z

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    const/16 v2, 0x27

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ne v2, v3, :cond_0

    .line 50
    .line 51
    move v2, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v2, v0

    .line 54
    :goto_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->kkU:Z

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    const/16 p1, 0x28

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ne p1, v2, :cond_1

    .line 65
    .line 66
    move v0, v1

    .line 67
    :cond_1
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->BTZ:Z

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/16 v0, 0x2b

    .line 74
    .line 75
    if-eq p1, v0, :cond_3

    .line 76
    .line 77
    const/16 v0, 0x2c

    .line 78
    .line 79
    if-ne p1, v0, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/jFA;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->PiB:Landroid/app/Activity;

    .line 85
    .line 86
    invoke-direct {p1, v0, p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/activity/ZYk;)V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    :goto_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->PiB:Landroid/app/Activity;

    .line 95
    .line 96
    invoke-direct {p1, v0, p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/ex;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/activity/ZYk;)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 100
    .line 101
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ()V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->tb()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method private HL()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->Pfn()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/ZYk;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->HL()Z

    move-result p0

    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/ZYk;)Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->cFZ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    return-object p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/activity/ZYk;)Lcom/bytedance/sdk/openadsdk/activity/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    return-object p0
.end method

.method private tb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

    .line 10
    .line 11
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/ZYk$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/dLZ$oJ;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

    .line 20
    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public BTZ()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->awB()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->eZI()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->cFZ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;->oJ()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;->oJ()V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->Ry:Ljava/lang/Runnable;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->Ry:Ljava/lang/Runnable;

    .line 35
    .line 36
    :cond_3
    return-void
.end method

.method public Id()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->QSm:Z

    .line 2
    .line 3
    return v0
.end method

.method public Pfn()Landroid/app/Activity;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->PiB:Landroid/app/Activity;

    return-object v0

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    return-object v0
.end method

.method public Pfn(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->WcQ:I

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->RZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;->oJ(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->PiB:Landroid/app/Activity;

    return-void
.end method

.method public PiB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->si:Z

    .line 2
    .line 3
    return v0
.end method

.method public QSm()Lcom/bytedance/sdk/openadsdk/activity/so;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->WcQ()Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public RZ()Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->PiB()Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public Ry()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->ba()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public WcQ()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->si:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;->tB()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public Xe()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->jFA()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 3

    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->WcQ:I

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk()V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;->ZYk()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->RZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tt()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dzr()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ$ZYk;->oJ(Landroid/app/Activity;IF)V

    return-void
.end method

.method public ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->PiB:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->awB:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 11
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->WcQ:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->ex()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->tB(Z)V

    .line 14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB()V

    return-void

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->BTZ()V

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->tB()V

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->tB(Z)V

    return-void

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->BTZ()V

    return-void
.end method

.method public ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;I)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;I)V

    return-void
.end method

.method public ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    return-void
.end method

.method public ZYk(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->QSm:Z

    return-void
.end method

.method public ZYk()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->jFA:Z

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->kkU:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->BTZ:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public awB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->eZI:Z

    .line 2
    .line 3
    return v0
.end method

.method public ba()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->kkU()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public cFZ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->dLZ()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public cY()Ljava/util/List;
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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->eZI()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public dLZ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->cFZ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;->ZYk()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;->ZYk()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public eZI()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->eZI:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->si()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public ex()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->PiB:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public ex(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 0

    const/4 p1, 0x5

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->WcQ:I

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->so()V

    return-void
.end method

.method public jFA()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->Pfn:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public jr()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->Ry()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public kkU()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->cFZ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public oJ(F)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(F)V

    return-void
.end method

.method public oJ(Landroid/app/Activity;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Landroid/app/Activity;)V

    return-void
.end method

.method public oJ(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Landroid/view/View;)V

    return-void
.end method

.method public oJ(Landroid/view/View;Z)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Landroid/view/View;Z)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 0

    const/4 p1, 0x2

    .line 13
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->WcQ:I

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->cFZ()V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->cFZ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    if-eqz p1, :cond_1

    .line 19
    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    return-void

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    if-eqz p1, :cond_2

    .line 21
    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->tB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    :cond_2
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;Landroid/os/Bundle;Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;)V
    .locals 0

    .line 4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->awB:Landroid/os/Bundle;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->WcQ:I

    .line 6
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->cFZ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 8
    sget-object p3, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->cFZ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 9
    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    :cond_0
    if-nez p4, :cond_1

    if-eqz p2, :cond_1

    .line 10
    sget-object p3, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->tB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 11
    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->tB:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Landroid/os/Bundle;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/oJ;Z)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Lcom/bytedance/sdk/openadsdk/activity/oJ;Z)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Z)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Z)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 9

    .line 24
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->eZI:Z

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/activity/so;ZILjava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->Ry:Ljava/lang/Runnable;

    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->PiB()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->WcQ()V

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->cFZ:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->PiB:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 29
    new-instance v8, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;

    move-object v1, v8

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;ZILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->tB()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iget-object p5, p1, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->b_()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    const-string p2, "reward_success"

    goto :goto_0

    :cond_2
    const-string p2, "reward_fail"

    :goto_0
    invoke-static {p3, p4, p5, p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;ZZZI)V
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;ZZZI)V

    return-void
.end method

.method public oJ(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/activity/so;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/activity/so;",
            "FF)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/activity/so;FF)V

    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Z)V

    return-void
.end method

.method public oJ()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->BTZ:Z

    return v0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;I)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;I)Z

    move-result p1

    return p1
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->na()Lcom/bytedance/sdk/openadsdk/core/model/Xe;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->na()Lcom/bytedance/sdk/openadsdk/core/model/Xe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->tB()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public oq()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ex;

    .line 4
    .line 5
    return v0
.end method

.method public si()Lcom/bytedance/sdk/openadsdk/BTZ/jFA;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ba:Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    .line 2
    .line 3
    return-object v0
.end method

.method public so()Lcom/bytedance/sdk/openadsdk/activity/so;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->BTZ()Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public tB(Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;)V
    .locals 0

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->WcQ:I

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/activity/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->tB()V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;->oJ()V

    :cond_0
    return-void
.end method

.method public tB()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->jFA:Z

    return v0
.end method
