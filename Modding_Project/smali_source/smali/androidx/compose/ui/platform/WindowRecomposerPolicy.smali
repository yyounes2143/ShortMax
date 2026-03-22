.class public final Landroidx/compose/ui/platform/WindowRecomposerPolicy;
.super Ljava/lang/Object;
.source "WindowRecomposer.android.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Landroidx/compose/ui/InternalComposeUiApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/ui/platform/WindowRecomposerPolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final factory:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/compose/ui/platform/WindowRecomposerFactory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/platform/WindowRecomposerPolicy;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->INSTANCE:Landroidx/compose/ui/platform/WindowRecomposerPolicy;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    sget-object v1, Landroidx/compose/ui/platform/WindowRecomposerFactory;->Companion:Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;->getLifecycleAware()Landroidx/compose/ui/platform/WindowRecomposerFactory;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    sput v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->$stable:I

    .line 24
    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final compareAndSetFactory(Landroidx/compose/ui/platform/WindowRecomposerFactory;Landroidx/compose/ui/platform/WindowRecomposerFactory;)Z
    .locals 1
    .param p1    # Landroidx/compose/ui/platform/WindowRecomposerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/platform/WindowRecomposerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "expected"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "factory"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-static {v0, p1, p2}, Landroidx/compose/animation/core/a;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final createAndInstallWindowRecomposer$ui_release(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "rootView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/compose/ui/platform/WindowRecomposerFactory;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Landroidx/compose/ui/platform/WindowRecomposerFactory;->createRecomposer(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->setCompositionContext(Landroid/view/View;Landroidx/compose/runtime/CompositionContext;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lgt/e1;->a:Lgt/e1;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "rootView.handler"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v3, "windowRecomposer cleanup"

    .line 33
    .line 34
    invoke-static {v2, v3}, Lht/h;->b(Landroid/os/Handler;Ljava/lang/String;)Lht/g;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lht/g;->p()Lht/g;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v4, Landroidx/compose/ui/platform/WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-direct {v4, v0, p1, v3}, Landroidx/compose/ui/platform/WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1;-><init>(Landroidx/compose/runtime/Recomposer;Landroid/view/View;Lrs/c;)V

    .line 46
    .line 47
    .line 48
    const/4 v5, 0x2

    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Landroidx/compose/ui/platform/WindowRecomposerPolicy$createAndInstallWindowRecomposer$1;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Landroidx/compose/ui/platform/WindowRecomposerPolicy$createAndInstallWindowRecomposer$1;-><init>(Lkotlinx/coroutines/r;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public final getAndSetFactory(Landroidx/compose/ui/platform/WindowRecomposerFactory;)Landroidx/compose/ui/platform/WindowRecomposerFactory;
    .locals 1
    .param p1    # Landroidx/compose/ui/platform/WindowRecomposerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "factory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "factory.getAndSet(factory)"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast p1, Landroidx/compose/ui/platform/WindowRecomposerFactory;

    .line 18
    .line 19
    return-object p1
.end method

.method public final setFactory(Landroidx/compose/ui/platform/WindowRecomposerFactory;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/platform/WindowRecomposerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "factory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final withFactory(Landroidx/compose/ui/platform/WindowRecomposerFactory;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroidx/compose/ui/platform/WindowRecomposerFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/platform/WindowRecomposerFactory;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "WindowRecomposerFactory was set to unexpected value; cannot safely restore old state"

    .line 2
    .line 3
    const-string v1, "factory"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "block"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->getAndSetFactory(Landroidx/compose/ui/platform/WindowRecomposerFactory;)Landroidx/compose/ui/platform/WindowRecomposerFactory;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v1}, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->compareAndSetFactory(Landroidx/compose/ui/platform/WindowRecomposerFactory;Landroidx/compose/ui/platform/WindowRecomposerFactory;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 32
    .line 33
    .line 34
    return-object p2

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :catchall_0
    move-exception p2

    .line 42
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :catchall_1
    move-exception v3

    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v1}, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->compareAndSetFactory(Landroidx/compose/ui/platform/WindowRecomposerFactory;Landroidx/compose/ui/platform/WindowRecomposerFactory;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p2, p1}, Lms/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 63
    .line 64
    .line 65
    throw v3
.end method
