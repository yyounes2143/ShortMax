.class public final Lmt/t;
.super Lgt/c0;
.source "NamedDispatcher.kt"

# interfaces
.implements Lgt/m0;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final synthetic a:Lgt/m0;

.field private final b:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgt/c0;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lgt/c0;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lgt/m0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Lgt/m0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lgt/j0;->a()Lgt/m0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    iput-object v0, p0, Lmt/t;->a:Lgt/m0;

    .line 20
    .line 21
    iput-object p1, p0, Lmt/t;->b:Lgt/c0;

    .line 22
    .line 23
    iput-object p2, p0, Lmt/t;->c:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public a(JLgt/i;)V
    .locals 1
    .param p3    # Lgt/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lgt/i<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmt/t;->a:Lgt/m0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lgt/m0;->a(JLgt/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lgt/s0;
    .locals 1
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lmt/t;->a:Lgt/m0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lgt/m0;->c(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lgt/s0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmt/t;->b:Lgt/c0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lgt/c0;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmt/t;->b:Lgt/c0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lgt/c0;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 1
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmt/t;->b:Lgt/c0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgt/c0;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lmt/t;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
