.class public Lx2/b;
.super Lcom/facebook/fresco/ui/common/BaseControllerListener2;
.source "ImagePerfStateManager.java"

# interfaces
.implements Lcom/facebook/fresco/ui/common/ImagePerfNotifierHolder;
.implements Lcom/facebook/fresco/ui/common/OnDrawControllerListener;
.implements Ljava/io/Closeable;
.implements Lcom/facebook/fresco/ui/common/VisibilityAware;
.implements Lc3/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/fresco/ui/common/BaseControllerListener2<",
        "Ly3/m;",
        ">;",
        "Lcom/facebook/fresco/ui/common/ImagePerfNotifierHolder;",
        "Lcom/facebook/fresco/ui/common/OnDrawControllerListener<",
        "Ly3/m;",
        ">;",
        "Ljava/io/Closeable;",
        "Lcom/facebook/fresco/ui/common/VisibilityAware;",
        "Lc3/g0;"
    }
.end annotation


# instance fields
.field private final a:Lq2/b;

.field private final b:Lcom/facebook/fresco/ui/common/ImagePerfState;

.field private final c:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

.field private d:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

.field private final e:Z


# direct methods
.method public constructor <init>(Lq2/b;Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImagePerfNotifier;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lx2/b;-><init>(Lq2/b;Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImagePerfNotifier;Z)V

    return-void
.end method

.method public constructor <init>(Lq2/b;Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImagePerfNotifier;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/facebook/fresco/ui/common/BaseControllerListener2;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lx2/b;->d:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    .line 4
    iput-object p1, p0, Lx2/b;->a:Lq2/b;

    .line 5
    iput-object p2, p0, Lx2/b;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 6
    iput-object p3, p0, Lx2/b;->c:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    .line 7
    iput-boolean p4, p0, Lx2/b;->e:Z

    return-void
.end method

.method private g(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setVisible(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setInvisibilityEventTimeMs(J)V

    .line 6
    .line 7
    .line 8
    sget-object p2, Lcom/facebook/fresco/ui/common/VisibilityState;->INVISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lx2/b;->m(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/VisibilityState;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private l(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageLoadStatus(Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lx2/b;->c:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfNotifier;->notifyStatusUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lx2/b;->d:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfNotifier;->notifyStatusUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private m(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/VisibilityState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx2/b;->c:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfNotifier;->notifyVisibilityUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/VisibilityState;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lx2/b;->d:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfNotifier;->notifyVisibilityUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/VisibilityState;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lx2/b;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 4
    .line 5
    iget-object v0, p0, Lx2/b;->a:Lq2/b;

    .line 6
    .line 7
    invoke-interface {v0}, Lq2/b;->now()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Lx2/b;->i(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lx2/b;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 16
    .line 17
    iget-object v0, p0, Lx2/b;->a:Lq2/b;

    .line 18
    .line 19
    invoke-interface {v0}, Lq2/b;->now()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-direct {p0, p1, v0, v1}, Lx2/b;->g(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ly3/m;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/b;->a:Lq2/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lq2/b;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lx2/b;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 8
    .line 9
    invoke-virtual {v2, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setExtraData(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerFinalImageSetTimeMs(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageRequestEndTimeMs(J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerId(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageInfo(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->SUCCESS:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 25
    .line 26
    invoke-direct {p0, v2, p1}, Lx2/b;->l(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public c(Ljava/lang/String;Ly3/m;Lcom/facebook/fresco/ui/common/DimensionsInfo;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lx2/b;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerId(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setDimensionsInfo(Lcom/facebook/fresco/ui/common/DimensionsInfo;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lx2/b;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Ljava/lang/String;Ly3/m;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/b;->a:Lq2/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lq2/b;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lx2/b;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerIntermediateImageSetTimeMs(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerId(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageInfo(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->INTERMEDIATE_AVAILABLE:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 19
    .line 20
    invoke-direct {p0, v2, p1}, Lx2/b;->l(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public i(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setVisible(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setVisibilityEventTimeMs(J)V

    .line 6
    .line 7
    .line 8
    sget-object p2, Lcom/facebook/fresco/ui/common/VisibilityState;->VISIBLE:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lx2/b;->m(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/VisibilityState;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx2/b;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/fresco/ui/common/ImagePerfState;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDraw()V
    .locals 0

    .line 1
    return-void
.end method

.method public onEmptyEvent(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lx2/b;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 2
    .line 3
    sget-object v0, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->EMPTY_EVENT:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageLoadStatus(Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lx2/b;->c:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    .line 9
    .line 10
    invoke-interface {v1, p1, v0}, Lcom/facebook/fresco/ui/common/ImagePerfNotifier;->notifyStatusUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lx2/b;->d:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v1, p1, v0}, Lcom/facebook/fresco/ui/common/ImagePerfNotifier;->notifyStatusUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/b;->a:Lq2/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lq2/b;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lx2/b;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 8
    .line 9
    invoke-virtual {v2, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setExtraData(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerFailureTimeMs(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerId(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setErrorThrowable(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->ERROR:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 22
    .line 23
    invoke-direct {p0, v2, p1}, Lx2/b;->l(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v2, v0, v1}, Lx2/b;->g(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 0

    .line 1
    check-cast p2, Ly3/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lx2/b;->b(Ljava/lang/String;Ly3/m;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onImageDrawn(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/DimensionsInfo;)V
    .locals 0

    .line 1
    check-cast p2, Ly3/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lx2/b;->c(Ljava/lang/String;Ly3/m;Lcom/facebook/fresco/ui/common/DimensionsInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ly3/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lx2/b;->d(Ljava/lang/String;Ly3/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRelease(Ljava/lang/String;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/b;->a:Lq2/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lq2/b;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lx2/b;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 8
    .line 9
    invoke-virtual {v2, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setExtraData(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerId(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->RELEASED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 16
    .line 17
    invoke-direct {p0, v2, p1}, Lx2/b;->l(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 18
    .line 19
    .line 20
    iget-boolean p1, p0, Lx2/b;->e:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-direct {p0, v2, v0, v1}, Lx2/b;->g(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/b;->a:Lq2/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lq2/b;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lx2/b;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->resetPointsTimestamps()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerSubmitTimeMs(J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setControllerId(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setCallerContext(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setExtraData(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lcom/facebook/fresco/ui/common/ImageLoadStatus;->REQUESTED:Lcom/facebook/fresco/ui/common/ImageLoadStatus;

    .line 25
    .line 26
    invoke-direct {p0, v2, p1}, Lx2/b;->l(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V

    .line 27
    .line 28
    .line 29
    iget-boolean p1, p0, Lx2/b;->e:Z

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v2, v0, v1}, Lx2/b;->i(Lcom/facebook/fresco/ui/common/ImagePerfState;J)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public reportVisible(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lx2/b;->a(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setImagePerfNotifier(Lcom/facebook/fresco/ui/common/ImagePerfNotifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx2/b;->d:Lcom/facebook/fresco/ui/common/ImagePerfNotifier;

    .line 2
    .line 3
    return-void
.end method
