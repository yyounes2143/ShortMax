.class public Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ZYk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public oJ:Ljava/lang/String;

.field private tB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "GesThrough_"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->oJ:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->ZYk:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->tB:Ljava/util/Set;

    .line 25
    .line 26
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->tB:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->ZYk:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->ZYk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->tB:Ljava/util/Set;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->oJ:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Re-dispatch motionEvents.size(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->ZYk:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ$1;-><init>(Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;Landroid/view/View;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/MotionEvent;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->ZYk:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GesThrough_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->UN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->oJ:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x0

    .line 7
    aget p1, v0, p1

    const/4 v1, 0x1

    .line 8
    aget v0, v0, v1

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->ZYk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 11
    :cond_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    int-to-float p1, p1

    int-to-float v0, v0

    .line 12
    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 13
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->ZYk:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public oJ(Landroid/view/MotionEvent;)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->tB:Ljava/util/Set;

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->tB:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
