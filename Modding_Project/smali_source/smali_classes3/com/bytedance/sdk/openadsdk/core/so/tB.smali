.class public Lcom/bytedance/sdk/openadsdk/core/so/tB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/so/tB$ZYk;,
        Lcom/bytedance/sdk/openadsdk/core/so/tB$tB;,
        Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;
    }
.end annotation


# instance fields
.field private Pfn:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

.field private final ZYk:Landroid/content/Context;

.field private ba:I

.field private cFZ:I

.field private ex:Lcom/bytedance/sdk/component/adexpress/ZYk/awB;

.field private jFA:I

.field oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private so:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private tB:Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/so/QSm;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V

    .line 11
    .line 12
    .line 13
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;

    .line 14
    .line 15
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ba:I

    .line 16
    .line 17
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->cFZ:I

    .line 18
    .line 19
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->jFA:I

    .line 20
    .line 21
    move-object v0, p2

    .line 22
    move-object v1, p1

    .line 23
    move-object v2, p3

    .line 24
    move-object v5, p4

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;IILjava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB:Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;

    .line 29
    .line 30
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/so/tB;)Lcom/bytedance/sdk/component/adexpress/ZYk/awB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ex:Lcom/bytedance/sdk/component/adexpress/ZYk/awB;

    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/so/tB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/tB;)Lcom/bytedance/sdk/openadsdk/core/so/QSm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    return-object p0
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/so/QSm;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ba:I

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->cFZ:I

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getExpectExpressWidth()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getExpectExpressHeight()I

    move-result v1

    .line 7
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/tB/ZYk;->oJ(II)Lcom/bytedance/sdk/openadsdk/core/so/Ry;

    move-result-object v0

    .line 8
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/Ry;->oJ:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->jFA:I

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getExpectExpressWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getExpectExpressHeight()I

    move-result v1

    if-lez v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getExpectExpressWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ba:I

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getExpectExpressHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->cFZ:I

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ba:I

    int-to-float p1, p1

    .line 14
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/so/Ry;->ZYk:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->cFZ:I

    .line 15
    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ba:I

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result v0

    if-le p1, v0, :cond_2

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ba:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ZYk:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ba:I

    .line 18
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->cFZ:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->cFZ:I

    :cond_2
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/so/tB;)Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB:Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;

    return-object p0
.end method

.method private tB()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->so:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->so:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->so:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB:Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;->ex()V

    .line 4
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB:Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB()V

    .line 6
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ex:Lcom/bytedance/sdk/component/adexpress/ZYk/awB;

    .line 7
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    return-void
.end method

.method public oJ()V
    .locals 5

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/so/tB$ZYk;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB:Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;

    .line 22
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;)Lcom/bytedance/sdk/openadsdk/core/so/Pfn;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/so/tB$ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/tB$tB;)V

    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->jr()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->so:Ljava/util/concurrent/ScheduledFuture;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB:Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;

    if-eqz v0, :cond_2

    .line 26
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/so/tB$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/so/tB$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/tB;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB:Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;->Pfn()Landroid/view/View;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ex:Lcom/bytedance/sdk/component/adexpress/ZYk/awB;

    if-eqz v0, :cond_3

    const/16 v1, 0x6a

    .line 33
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/awB;->a_(I)V

    :cond_3
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/awB;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->ex:Lcom/bytedance/sdk/component/adexpress/ZYk/awB;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB:Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB:Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/Ln;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB:Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/Ln;)V

    :cond_0
    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/tB;->tB:Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/tB$oJ;->oJ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
