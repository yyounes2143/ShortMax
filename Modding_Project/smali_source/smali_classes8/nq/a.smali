.class public final Lnq/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgt/g0;
.implements Lio/bidmachine/rendering/internal/state/a$b;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lio/bidmachine/rendering/internal/state/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/state/a;Lio/bidmachine/rendering/internal/h;)V
    .locals 3
    .param p1    # Lio/bidmachine/rendering/internal/state/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/internal/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "coroutineDispatchers"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lnq/a;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1, v0}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/h;->i()Lgt/c0;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-interface {v2, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lnq/a;->b:Lkotlin/coroutines/CoroutineContext;

    .line 31
    .line 32
    invoke-interface {p1}, Lio/bidmachine/rendering/internal/state/a;->h()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/i;->e(Lgt/g0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {p1, p0}, Lio/bidmachine/rendering/internal/state/a;->a(Lio/bidmachine/rendering/internal/state/a$b;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/rendering/internal/state/a;Lio/bidmachine/rendering/internal/state/a$a;)V
    .locals 1
    .param p1    # Lio/bidmachine/rendering/internal/state/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/internal/state/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lio/bidmachine/rendering/internal/state/a$a;->l:Lio/bidmachine/rendering/internal/state/a$a;

    .line 12
    .line 13
    if-ne p2, v0, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lnq/a;->a:Lio/bidmachine/rendering/internal/state/a;

    .line 16
    .line 17
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {p0, v0, p2, v0}, Lkotlinx/coroutines/i;->e(Lgt/g0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p0}, Lio/bidmachine/rendering/internal/state/a;->b(Lio/bidmachine/rendering/internal/state/a$b;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lnq/a;->b:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method
