.class public Lcom/bytedance/sdk/openadsdk/core/cFZ;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/IUZ$oJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;
    }
.end annotation


# instance fields
.field private BTZ:Z

.field private Pfn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private PiB:Z

.field private final WcQ:Ljava/lang/Runnable;

.field private ZYk:Z

.field private ba:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private cFZ:Z

.field private dLZ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private ex:Landroid/view/View;

.field private final jFA:Landroid/os/Handler;

.field private final kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private oJ:Z

.field private so:I

.field private tB:Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/bytedance/sdk/component/utils/IUZ;

    .line 9
    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/IUZ;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/IUZ$oJ;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->jFA:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->PiB:Z

    .line 33
    .line 34
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cFZ$3;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/cFZ;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->WcQ:Ljava/lang/Runnable;

    .line 40
    .line 41
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->BTZ:Z

    .line 42
    .line 43
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->ex:Landroid/view/View;

    .line 44
    .line 45
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    invoke-direct {p2, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/cFZ$1;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/cFZ;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->dLZ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 59
    .line 60
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/core/cFZ;)Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->tB:Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;

    return-object p0
.end method

.method private Pfn()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->oJ:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->jFA:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->oJ:Z

    return-void
.end method

.method private ZYk()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->tB:Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;->oJ()V

    :cond_0
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/cFZ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->Pfn()V

    return-void
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/core/cFZ;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->ex:Landroid/view/View;

    return-object p0
.end method

.method private ba()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->ex:Landroid/view/View;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->cY()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/cFZ;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->dLZ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method private ex()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->ZYk:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->oJ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->oJ:Z

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->jFA:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/cFZ;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->dLZ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method

.method private oJ(Z)V
    .locals 3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/bytedance/sdk/component/utils/jFA;->ZYk()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/cFZ$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/cFZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/cFZ;Landroid/view/ViewTreeObserver;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/cFZ;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->PiB:Z

    return p0
.end method

.method private tB()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->tB:Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;->ZYk()V

    :cond_0
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/cFZ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->ex()V

    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->Pfn:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->oJ(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->ba:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->oJ(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;)V

    return-void
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 4

    .line 9
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 10
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->oJ:Z

    if-eqz p1, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->ba()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->ex:Landroid/view/View;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->so:I

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->BTZ:Z

    const/16 v3, 0x14

    invoke-static {p1, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/mu;->oJ(Landroid/view/View;IIZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->Pfn()V

    .line 13
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->PiB:Z

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB()Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->WcQ:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->oJ(Z)V

    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->jFA:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public oJ(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/PiB;->ZYk(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->cFZ:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->ZYk()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->dLZ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->dLZ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->Pfn()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->cFZ:Z

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->tB()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->oJ(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->ZYk()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->tB()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->tB:Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;->oJ(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setAdType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->so:I

    .line 2
    .line 3
    return-void
.end method

.method public setCallback(Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->tB:Lcom/bytedance/sdk/openadsdk/core/cFZ$oJ;

    .line 2
    .line 3
    return-void
.end method

.method public setNeedCheckingShow(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->ZYk:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->oJ:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->Pfn()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->oJ:Z

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cFZ;->ex()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public setRefClickViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->Pfn:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRefCreativeViews(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cFZ;->ba:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
