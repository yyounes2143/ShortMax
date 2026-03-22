.class public final Lio/bidmachine/rendering/internal/controller/h$f$t;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/controller/h$f;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$EventTaskExecutorImpl$start$$inlined$executeAction$1"
    f = "DefaultAdPhaseController.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lio/bidmachine/rendering/internal/controller/h;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/Class;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/controller/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lrs/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->i:Lio/bidmachine/rendering/internal/controller/h;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->k:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->l:Ljava/lang/Class;

    .line 8
    .line 9
    iput-object p5, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->m:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p7, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->n:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/h$f$t;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/rendering/internal/controller/h$f$t;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/controller/h$f$t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lio/bidmachine/rendering/internal/controller/h$f$t;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->i:Lio/bidmachine/rendering/internal/controller/h;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->k:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->l:Ljava/lang/Class;

    .line 10
    .line 11
    iget-object v5, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->m:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->n:Ljava/lang/String;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v6, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/rendering/internal/controller/h$f$t;-><init>(Lio/bidmachine/rendering/internal/controller/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lrs/c;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/h$f$t;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->i:Lio/bidmachine/rendering/internal/controller/h;

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->j:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/controller/h;->E(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->i:Lio/bidmachine/rendering/internal/controller/h;

    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->k:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->j:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Lio/bidmachine/rendering/internal/controller/h;->k(Lio/bidmachine/rendering/internal/controller/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->l:Ljava/lang/Class;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->l:Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lio/bidmachine/rendering/internal/controller/h$f$t$a;

    .line 49
    .line 50
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->n:Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {v0, p1, v1}, Lio/bidmachine/rendering/internal/controller/h$f$t$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lsq/j;->k(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->i:Lio/bidmachine/rendering/internal/controller/h;

    .line 60
    .line 61
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->k:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->j:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v2, p0, Lio/bidmachine/rendering/internal/controller/h$f$t;->m:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {p1, v0, v1, v2}, Lio/bidmachine/rendering/internal/controller/h;->l(Lio/bidmachine/rendering/internal/controller/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method
