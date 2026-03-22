.class final Lio/bidmachine/rendering/internal/animation/i$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/animation/i;->e(Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
    c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController$animate$1"
    f = "DefaultAdAnimationController.kt"
    l = {
        0x65,
        0x66
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lio/bidmachine/rendering/internal/animation/i;

.field final synthetic j:Ltp/f;

.field final synthetic k:Lio/bidmachine/rendering/model/AnimationEventType;

.field final synthetic l:Z

.field final synthetic m:Ljava/lang/Runnable;

.field final synthetic n:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/bidmachine/rendering/internal/animation/i;Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/internal/animation/i;",
            "Ltp/f;",
            "Lio/bidmachine/rendering/model/AnimationEventType;",
            "Z",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Lrs/c<",
            "-",
            "Lio/bidmachine/rendering/internal/animation/i$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/animation/i$d;->i:Lio/bidmachine/rendering/internal/animation/i;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/animation/i$d;->j:Ltp/f;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/rendering/internal/animation/i$d;->k:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 6
    .line 7
    iput-boolean p4, p0, Lio/bidmachine/rendering/internal/animation/i$d;->l:Z

    .line 8
    .line 9
    iput-object p5, p0, Lio/bidmachine/rendering/internal/animation/i$d;->m:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p6, p0, Lio/bidmachine/rendering/internal/animation/i$d;->n:Ljava/lang/Runnable;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/animation/i$d;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/rendering/internal/animation/i$d;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/animation/i$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lio/bidmachine/rendering/internal/animation/i$d;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/animation/i$d;->i:Lio/bidmachine/rendering/internal/animation/i;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/rendering/internal/animation/i$d;->j:Ltp/f;

    .line 6
    .line 7
    iget-object v3, p0, Lio/bidmachine/rendering/internal/animation/i$d;->k:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 8
    .line 9
    iget-boolean v4, p0, Lio/bidmachine/rendering/internal/animation/i$d;->l:Z

    .line 10
    .line 11
    iget-object v5, p0, Lio/bidmachine/rendering/internal/animation/i$d;->m:Ljava/lang/Runnable;

    .line 12
    .line 13
    iget-object v6, p0, Lio/bidmachine/rendering/internal/animation/i$d;->n:Ljava/lang/Runnable;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/rendering/internal/animation/i$d;-><init>(Lio/bidmachine/rendering/internal/animation/i;Ltp/f;Lio/bidmachine/rendering/model/AnimationEventType;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/animation/i$d;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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
    move-result-object v0

    .line 5
    iget v1, p0, Lio/bidmachine/rendering/internal/animation/i$d;->h:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lio/bidmachine/rendering/internal/animation/i$d;->i:Lio/bidmachine/rendering/internal/animation/i;

    .line 35
    .line 36
    iget-object v1, p0, Lio/bidmachine/rendering/internal/animation/i$d;->j:Ltp/f;

    .line 37
    .line 38
    iput v3, p0, Lio/bidmachine/rendering/internal/animation/i$d;->h:I

    .line 39
    .line 40
    invoke-static {p1, v1, p0}, Lio/bidmachine/rendering/internal/animation/i;->l(Lio/bidmachine/rendering/internal/animation/i;Ltp/f;Lrs/c;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-ne p1, v0, :cond_3

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_3
    :goto_0
    move-object v4, p1

    .line 48
    check-cast v4, Landroid/view/View;

    .line 49
    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    iget-object v3, p0, Lio/bidmachine/rendering/internal/animation/i$d;->i:Lio/bidmachine/rendering/internal/animation/i;

    .line 53
    .line 54
    iget-object v5, p0, Lio/bidmachine/rendering/internal/animation/i$d;->k:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 55
    .line 56
    iget-boolean v6, p0, Lio/bidmachine/rendering/internal/animation/i$d;->l:Z

    .line 57
    .line 58
    iget-object p1, p0, Lio/bidmachine/rendering/internal/animation/i$d;->j:Ltp/f;

    .line 59
    .line 60
    iget-object v8, p0, Lio/bidmachine/rendering/internal/animation/i$d;->m:Ljava/lang/Runnable;

    .line 61
    .line 62
    iget-object v9, p0, Lio/bidmachine/rendering/internal/animation/i$d;->n:Ljava/lang/Runnable;

    .line 63
    .line 64
    invoke-interface {p1}, Ltp/f;->i()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    iput v2, p0, Lio/bidmachine/rendering/internal/animation/i$d;->h:I

    .line 69
    .line 70
    move-object v10, p0

    .line 71
    invoke-virtual/range {v3 .. v10}, Lio/bidmachine/rendering/internal/animation/i;->j(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;ZZLjava/lang/Runnable;Ljava/lang/Runnable;Lrs/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v0, :cond_4

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p1
.end method
