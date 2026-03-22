.class public Lcom/bytedance/sdk/openadsdk/activity/Pfn;
.super Lcom/bytedance/sdk/openadsdk/activity/so;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/IUZ$oJ;
.implements Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;


# static fields
.field private static Pfn:Ljava/lang/String;

.field private static ba:Ljava/lang/String;

.field private static cFZ:Ljava/lang/String;

.field private static oq:Ljava/lang/String;

.field private static so:Ljava/lang/String;


# instance fields
.field private HL:J

.field private IUZ:Lorg/json/JSONObject;

.field private Id:Landroid/os/Bundle;

.field private Ln:I

.field private LpP:Z

.field private Xe:Z

.field protected final ZYk:Lcom/bytedance/sdk/component/utils/IUZ;

.field private cY:I

.field protected ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field private jr:Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

.field private nke:Z

.field public oJ:Z

.field protected tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tb:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZZZ)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move v3, p3

    .line 5
    move v4, p4

    .line 6
    move v5, p6

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/so;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)V

    .line 8
    .line 9
    .line 10
    new-instance p3, Lcom/bytedance/sdk/component/utils/IUZ;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    invoke-direct {p3, p4, p0}, Lcom/bytedance/sdk/component/utils/IUZ;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/IUZ$oJ;)V

    .line 17
    .line 18
    .line 19
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ZYk:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->cY:I

    .line 23
    .line 24
    const/4 p4, 0x1

    .line 25
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->nke:Z

    .line 26
    .line 27
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->WcQ:Z

    .line 34
    .line 35
    if-eqz p5, :cond_0

    .line 36
    .line 37
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    move p3, p4

    .line 44
    :cond_0
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->LpP:Z

    .line 45
    .line 46
    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ:Z

    .line 47
    .line 48
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->Id:Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private Jc()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tb:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tb:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->RZ()Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bD:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ZYk:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 35
    .line 36
    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/component/utils/IUZ;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->dLZ()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private LS()Z
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->WcQ:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ofl()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 22
    .line 23
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 24
    .line 25
    const-string v5, "skip"

    .line 26
    .line 27
    new-instance v6, Lcom/bytedance/sdk/openadsdk/activity/Pfn$3;

    .line 28
    .line 29
    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Pfn;)V

    .line 30
    .line 31
    .line 32
    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :catchall_0
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x4

    .line 39
    const/4 v9, 0x1

    .line 40
    const/4 v10, 0x0

    .line 41
    move-object v8, p0

    .line 42
    invoke-virtual/range {v7 .. v12}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;ZZZI)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    return v0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    return v0
.end method

.method private NO()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/activity/Pfn;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->IUZ:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method private UN()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->Xe:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->Xe:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, "ivrv_new_arch_endcard_view_add_at_first"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v1, v0, :cond_3

    .line 27
    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->WcQ:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ofl()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Landroid/view/View;Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->QSm:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/Pfn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oTd()V

    return-void
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/activity/Pfn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->jB()V

    return-void
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/activity/Pfn;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->Ln:I

    return p0
.end method

.method private jB()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 12
    .line 13
    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->ex:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 16
    .line 17
    invoke-virtual {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private mwH()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/Pfn$1;

    .line 12
    .line 13
    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Pfn;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 29
    .line 30
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;

    .line 31
    .line 32
    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Pfn;Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/top/ZYk;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->WcQ:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ofl()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    :try_start_0
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->PiB()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->HL:J

    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qu()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->HL:J

    .line 42
    :cond_1
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->cY()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->Ln:I

    .line 43
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 44
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->eZI()J

    move-result-wide v0

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 45
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->si()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    move-result-object p2

    .line 46
    invoke-static {p1, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;JLcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->IUZ:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/os/Bundle;)V
    .locals 8

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->HyG()Landroid/app/Activity;

    move-result-object v6

    .line 48
    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ZYk:Lcom/bytedance/sdk/component/utils/IUZ;

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, v6

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/component/utils/IUZ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;I)V

    iput-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 49
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    iput-boolean p1, v7, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->YQ:Z

    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->tB()Z

    move-result p1

    iput-boolean p1, v7, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    .line 51
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->WcQ:Z

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UF:Z

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ()Z

    move-result v0

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->VJm:Z

    .line 53
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ:Z

    if-nez p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->RZ()Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bD:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iput-object p0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->si()Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nke:Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    .line 57
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 59
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 60
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iput-object p1, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/Pfn;)Z
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->LS()Z

    move-result p0

    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/Pfn;ZZLjava/lang/Runnable;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ(ZZLjava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private oJ(ZZLjava/lang/Runnable;)Z
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->jFA()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "reward_verify"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->PiB()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->jFA()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "user_has_give_up_reward"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 96
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->cFZ(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    if-nez p2, :cond_2

    return v1

    :cond_2
    if-nez p3, :cond_3

    if-eqz p1, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    return v2

    .line 98
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_4

    .line 99
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->WcQ()V

    .line 100
    :cond_4
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    if-eqz p1, :cond_5

    .line 102
    sget-object v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->Pfn:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ba:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->cFZ:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    goto :goto_0

    .line 105
    :cond_5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->so:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oq:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->cFZ:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Pfn;ZLcom/bytedance/sdk/openadsdk/core/widget/ZYk;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/widget/ZYk$ZYk;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->show()V

    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method private oTd()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->Xe()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "click_countdown_remaining"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :catchall_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->Xe()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/activity/Pfn;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->HL:J

    return-wide v0
.end method

.method private yz()V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->Jc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->UN()V

    .line 9
    .line 10
    .line 11
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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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

.method public Ln()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->eZI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public LpP()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ofl()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final PiB()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->QSm()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public QSm()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->QSm()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

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
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zUb()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ZYk()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    int-to-float v1, v1

    .line 36
    div-float/2addr v2, v1

    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    .line 39
    sub-float/2addr v1, v2

    .line 40
    const/high16 v2, 0x42c80000    # 100.0f

    .line 41
    .line 42
    mul-float/2addr v1, v2

    .line 43
    int-to-float v0, v0

    .line 44
    cmpl-float v0, v1, v0

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    const/4 v2, 0x0

    .line 48
    if-ltz v0, :cond_0

    .line 49
    .line 50
    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v0, v2

    .line 53
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 58
    .line 59
    iget v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    .line 60
    .line 61
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->BTZ()Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->ba()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->tB()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_1

    .line 92
    .line 93
    move v3, v1

    .line 94
    :cond_1
    if-eqz v0, :cond_2

    .line 95
    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move v1, v2

    .line 100
    :goto_1
    move v2, v1

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    if-ne v3, v1, :cond_4

    .line 103
    .line 104
    move v2, v0

    .line 105
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    .line 108
    .line 109
    .line 110
    :cond_5
    return-void
.end method

.method public final WcQ()V
    .locals 0

    .line 1
    return-void
.end method

.method public Xe()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ofl()Z

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
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 18
    .line 19
    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 20
    .line 21
    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->ex:Z

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public ZYk(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    :cond_0
    return-void
.end method

.method protected a_()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    .line 4
    .line 5
    return v0
.end method

.method public final awB()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public b_()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public final ba()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->Qu()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Geh()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Z)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nnj()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;J)V

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
    const-string v1, ",scene = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "TTAD.EndCardScene"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public cY()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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

.method public c_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->LpP:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final dLZ()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->jr:Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->oJ:Landroid/os/Bundle;

    .line 9
    .line 10
    const-string v1, "isSkip"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->jr:Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->oJ:Landroid/os/Bundle;

    .line 20
    .line 21
    const-string v1, "force"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->jr:Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->oJ:Landroid/os/Bundle;

    .line 30
    .line 31
    const-string v1, "isFromLandingPage"

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 38
    .line 39
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    .line 40
    .line 41
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->jr:Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    .line 44
    .line 45
    iget v8, v0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->ZYk:I

    .line 46
    .line 47
    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ(ZZZLcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public d_()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 4
    .line 5
    return v0
.end method

.method public final eZI()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

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

.method public e_()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->Qu()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public ex()V
    .locals 1

    .line 3
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ex()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oq()V

    return-void
.end method

.method public ex(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public f_()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ex(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final jFA()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->Jm()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected jr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nQI:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public mu()V
    .locals 0

    .line 1
    return-void
.end method

.method public final oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    return-object v0
.end method

.method public oJ(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Landroid/app/Activity;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Landroid/app/Activity;)V

    .line 71
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HL:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ()V

    return-void
.end method

.method public final oJ(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->Id:Landroid/os/Bundle;

    .line 7
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 2

    .line 9
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->jr:Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 11
    const-string v0, "media_extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->eZI:Ljava/lang/String;

    .line 12
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->awB:Ljava/lang/String;

    .line 13
    :try_start_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->so:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    const-string v0, "tt_reward_msg"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->so:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    const-string v0, "tt_msgPlayable"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->Pfn:Ljava/lang/String;

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    const-string v0, "tt_negtiveBtnBtnText"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->cFZ:Ljava/lang/String;

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    const-string v0, "tt_postiveBtnText"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oq:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    const-string v0, "tt_postiveBtnTextPlayable"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ba:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    const-string v0, "TTAD.EndCardScene"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    .line 20
    iget-object p1, p2, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    if-eqz p1, :cond_4

    .line 21
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-wide v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oIC:J

    iput-wide v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oIC:J

    .line 22
    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    iput-boolean v0, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 23
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->WcQ:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ofl()Z

    move-result p2

    if-nez p2, :cond_2

    .line 24
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    :cond_2
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->LpP:Z

    if-nez p2, :cond_3

    .line 26
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Pfn()Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 29
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 30
    :cond_4
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->WcQ:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    if-eqz p1, :cond_6

    .line 31
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->Jc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 32
    :catchall_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    .line 33
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    if-eqz p2, :cond_7

    .line 34
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->EP:Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

    .line 35
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->UN()V

    .line 36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->mwH()V

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->dLZ()V

    return-void
.end method

.method public oJ(Landroid/os/Bundle;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final oJ(Landroid/os/Message;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Landroid/os/Message;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 4

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u3010onActiveSceneChanged\u3011"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",scene = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",newScene = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",oldScene = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isPlayable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTAD.EndCardScene"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    iget v2, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    if-eqz v0, :cond_1

    .line 87
    iget-boolean p3, p3, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->ex:Z

    iput-boolean p3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 88
    :cond_1
    const-string p3, ",isPlayableProxy = "

    const-string v0, ",new index ="

    if-eqz v3, :cond_2

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preload index ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->yz()V

    :cond_2
    if-nez p1, :cond_3

    .line 91
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ:Z

    if-eqz p1, :cond_3

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "preload agg-endcard ="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->yz()V

    :cond_3
    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->ex()Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->ex()Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;->oJ(Z)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "will set is Mute "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nke:Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/BTZ/jFA;->oJ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(ZLjava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Ry(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn(Z)V

    .line 69
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba(Z)V

    return-void
.end method

.method public oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    const-string p2, "skipToNextAd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    if-nez p1, :cond_1

    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ofl()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->QSm()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object p1

    if-nez p1, :cond_3

    .line 79
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/Pfn$4;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/Pfn;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ(ZZLjava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 80
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->jB()V

    :cond_4
    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Z)V

    :cond_0
    return-void
.end method

.method public oJ(JZ)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public oq()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->oq()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

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
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final tB()V
    .locals 4

    .line 2
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->tB()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->si()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->NO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LTg()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Z)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB()V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Id()V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->PiB()V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->ZYk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->cY:I

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-virtual {v0, v3, p0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(ZLcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Z)V

    .line 14
    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->cY:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->cY:I

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->cFZ()V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HL:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ZYk:Lcom/bytedance/sdk/component/utils/IUZ;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/BTZ;->oJ(Lcom/bytedance/sdk/component/utils/IUZ;)V

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->RZ()V

    :cond_5
    :goto_1
    return-void
.end method

.method public tB(Z)V
    .locals 5

    .line 19
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->nke:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-wide v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oIC:J

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->ZYk(Z)V

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB(Z)V

    if-eqz p1, :cond_1

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iput-wide v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oIC:J

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->nke:Z

    :cond_2
    return-void
.end method

.method public tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    return-object v0
.end method
