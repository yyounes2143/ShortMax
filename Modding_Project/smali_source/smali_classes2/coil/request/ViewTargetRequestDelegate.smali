.class public final Lcoil/request/ViewTargetRequestDelegate;
.super Lcoil/request/RequestDelegate;
.source "RequestDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lcoil/ImageLoader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lm0/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lo0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo0/b<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcoil/ImageLoader;Lm0/f;Lo0/b;Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/r;)V
    .locals 1
    .param p1    # Lcoil/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lm0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lo0/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/ImageLoader;",
            "Lm0/f;",
            "Lo0/b<",
            "*>;",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlinx/coroutines/r;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcoil/request/RequestDelegate;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcoil/request/ViewTargetRequestDelegate;->a:Lcoil/ImageLoader;

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/request/ViewTargetRequestDelegate;->b:Lm0/f;

    .line 8
    .line 9
    iput-object p3, p0, Lcoil/request/ViewTargetRequestDelegate;->c:Lo0/b;

    .line 10
    .line 11
    iput-object p4, p0, Lcoil/request/ViewTargetRequestDelegate;->d:Landroidx/lifecycle/Lifecycle;

    .line 12
    .line 13
    iput-object p5, p0, Lcoil/request/ViewTargetRequestDelegate;->e:Lkotlinx/coroutines/r;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil/request/ViewTargetRequestDelegate;->c:Lo0/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lo0/b;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcoil/request/ViewTargetRequestDelegate;->c:Lo0/b;

    .line 15
    .line 16
    invoke-interface {v0}, Lo0/b;->getView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lr0/i;->l(Landroid/view/View;)Lcoil/request/ViewTargetRequestManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lcoil/request/ViewTargetRequestManager;->c(Lcoil/request/ViewTargetRequestDelegate;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 28
    .line 29
    const-string v1, "\'ViewTarget.view\' must be attached to a window."

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil/request/ViewTargetRequestDelegate;->d:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcoil/request/ViewTargetRequestDelegate;->c:Lo0/b;

    .line 7
    .line 8
    instance-of v1, v0, Landroidx/lifecycle/LifecycleObserver;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcoil/request/ViewTargetRequestDelegate;->d:Landroidx/lifecycle/Lifecycle;

    .line 13
    .line 14
    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcoil/util/-Lifecycles;->b(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleObserver;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcoil/request/ViewTargetRequestDelegate;->c:Lo0/b;

    .line 20
    .line 21
    invoke-interface {v0}, Lo0/b;->getView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lr0/i;->l(Landroid/view/View;)Lcoil/request/ViewTargetRequestManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcoil/request/ViewTargetRequestManager;->c(Lcoil/request/ViewTargetRequestDelegate;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil/request/ViewTargetRequestDelegate;->e:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcoil/request/ViewTargetRequestDelegate;->c:Lo0/b;

    .line 9
    .line 10
    instance-of v1, v0, Landroidx/lifecycle/LifecycleObserver;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcoil/request/ViewTargetRequestDelegate;->d:Landroidx/lifecycle/Lifecycle;

    .line 15
    .line 16
    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcoil/request/ViewTargetRequestDelegate;->d:Landroidx/lifecycle/Lifecycle;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final e()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/request/ViewTargetRequestDelegate;->a:Lcoil/ImageLoader;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/request/ViewTargetRequestDelegate;->b:Lm0/f;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcoil/ImageLoader;->b(Lm0/f;)Lm0/c;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcoil/request/ViewTargetRequestDelegate;->c:Lo0/b;

    .line 2
    .line 3
    invoke-interface {p1}, Lo0/b;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lr0/i;->l(Landroid/view/View;)Lcoil/request/ViewTargetRequestManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcoil/request/ViewTargetRequestManager;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
