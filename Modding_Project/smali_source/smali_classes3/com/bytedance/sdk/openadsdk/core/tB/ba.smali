.class public Lcom/bytedance/sdk/openadsdk/core/tB/ba;
.super Lcom/bytedance/adsdk/ugeno/ba/oJ;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/IUZ$oJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/tB/ba$ZYk;,
        Lcom/bytedance/sdk/openadsdk/core/tB/ba$oJ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ugeno/ba/oJ<",
        "Landroid/view/View;",
        ">;",
        "Lcom/bytedance/sdk/component/utils/IUZ$oJ;"
    }
.end annotation


# instance fields
.field private Pfn:J

.field private ba:Z

.field private cFZ:Z

.field private final dLZ:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final ex:Landroid/os/Handler;

.field private jFA:Lcom/bytedance/sdk/openadsdk/core/tB/ba$oJ;

.field private final kkU:Ljava/lang/Runnable;

.field private so:Lcom/bytedance/sdk/openadsdk/core/tB/ba$ZYk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/bytedance/sdk/component/utils/IUZ;

    .line 5
    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/IUZ;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/IUZ$oJ;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->ex:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->ba:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->cFZ:Z

    .line 23
    .line 24
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/tB/ba$1;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/ba$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/ba;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->kkU:Ljava/lang/Runnable;

    .line 30
    .line 31
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/tB/ba$2;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/tB/ba$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/tB/ba;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->dLZ:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 37
    .line 38
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/tB/ba;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->cFZ:Z

    .line 2
    .line 3
    return p0
.end method

.method private cFZ()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x32

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/mu;->oJ(Landroid/view/View;IIZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->cFZ:Z

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->ba:Z

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->ba:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->kkU:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/tB/ba;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->ex:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/ba;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->Pfn:J

    return-wide p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/tB/ba;)Lcom/bytedance/sdk/openadsdk/core/tB/ba$oJ;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->jFA:Lcom/bytedance/sdk/openadsdk/core/tB/ba$oJ;

    return-object p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/tB/ba;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->Pfn:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public kkU(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    return-object p1
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 1

    .line 3
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->cFZ()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->dLZ:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->dLZ:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->so:Lcom/bytedance/sdk/openadsdk/core/tB/ba$ZYk;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/tB/ba$ZYk;->oJ(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setSwiperVisibleChangeListener(Lcom/bytedance/sdk/openadsdk/core/tB/ba$oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->jFA:Lcom/bytedance/sdk/openadsdk/core/tB/ba$oJ;

    .line 2
    .line 3
    return-void
.end method

.method public setSwiperWindowFocusChangedListener(Lcom/bytedance/sdk/openadsdk/core/tB/ba$ZYk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/ba;->so:Lcom/bytedance/sdk/openadsdk/core/tB/ba$ZYk;

    .line 2
    .line 3
    return-void
.end method
