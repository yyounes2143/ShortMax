.class public Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/measurer/Measurer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MeasurerType::",
        "Lio/bidmachine/rendering/measurer/Measurer<",
        "TViewType;>;ViewType:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/rendering/measurer/Measurer<",
        "TViewType;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TMeasurerType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TMeasurerType;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->d(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic d(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public A0(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewType;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/rendering/measurer/Measurer;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lio/bidmachine/rendering/measurer/Measurer;->A0(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public R(Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lsq/m;->a()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lsq/c;

    .line 8
    .line 9
    iget-object v2, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    new-instance v3, Lqq/a;

    .line 16
    .line 17
    invoke-direct {v3, p0, v0, p1}, Lqq/a;-><init>(Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Lsq/c;-><init>(ILjava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object p1, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lio/bidmachine/rendering/measurer/Measurer;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Lio/bidmachine/rendering/measurer/Measurer;->R(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    return-void
.end method

.method public T(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewType;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/rendering/measurer/Measurer;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lio/bidmachine/rendering/measurer/Measurer;->T(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public a(Lrq/t;)V
    .locals 2
    .param p1    # Lrq/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/rendering/measurer/Measurer;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lio/bidmachine/rendering/measurer/Measurer;->a(Lrq/t;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public onClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/rendering/measurer/Measurer;

    .line 18
    .line 19
    invoke-interface {v1}, Lio/bidmachine/rendering/measurer/Measurer;->onClicked()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public onShown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/rendering/measurer/Measurer;

    .line 18
    .line 19
    invoke-interface {v1}, Lio/bidmachine/rendering/measurer/Measurer;->onShown()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public w(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewType;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/rendering/measurer/Measurer;

    .line 18
    .line 19
    invoke-interface {v1, p1, p2}, Lio/bidmachine/rendering/measurer/Measurer;->w(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method
