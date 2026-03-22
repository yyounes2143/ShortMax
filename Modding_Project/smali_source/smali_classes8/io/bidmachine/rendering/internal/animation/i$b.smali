.class final Lio/bidmachine/rendering/internal/animation/i$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/animation/i;->g(Ltp/g;Lio/bidmachine/rendering/model/AnimationEventType;)V
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
    c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController$addAndPrepare$2"
    f = "DefaultAdAnimationController.kt"
    l = {
        0x2d,
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lio/bidmachine/rendering/internal/animation/i;

.field final synthetic j:Ltp/g;

.field final synthetic k:Lio/bidmachine/rendering/model/AnimationEventType;


# direct methods
.method constructor <init>(Lio/bidmachine/rendering/internal/animation/i;Ltp/g;Lio/bidmachine/rendering/model/AnimationEventType;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/internal/animation/i;",
            "Ltp/g;",
            "Lio/bidmachine/rendering/model/AnimationEventType;",
            "Lrs/c<",
            "-",
            "Lio/bidmachine/rendering/internal/animation/i$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/animation/i$b;->i:Lio/bidmachine/rendering/internal/animation/i;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/animation/i$b;->j:Ltp/g;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/rendering/internal/animation/i$b;->k:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/animation/i$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/rendering/internal/animation/i$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/animation/i$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lio/bidmachine/rendering/internal/animation/i$b;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/animation/i$b;->i:Lio/bidmachine/rendering/internal/animation/i;

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/rendering/internal/animation/i$b;->j:Ltp/g;

    .line 6
    .line 7
    iget-object v2, p0, Lio/bidmachine/rendering/internal/animation/i$b;->k:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/animation/i$b;-><init>(Lio/bidmachine/rendering/internal/animation/i;Ltp/g;Lio/bidmachine/rendering/model/AnimationEventType;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/animation/i$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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
    iget v1, p0, Lio/bidmachine/rendering/internal/animation/i$b;->h:I

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
    iget-object p1, p0, Lio/bidmachine/rendering/internal/animation/i$b;->i:Lio/bidmachine/rendering/internal/animation/i;

    .line 35
    .line 36
    iget-object v1, p0, Lio/bidmachine/rendering/internal/animation/i$b;->j:Ltp/g;

    .line 37
    .line 38
    iput v3, p0, Lio/bidmachine/rendering/internal/animation/i$b;->h:I

    .line 39
    .line 40
    invoke-static {p1, v1, p0}, Lio/bidmachine/rendering/internal/animation/i;->m(Lio/bidmachine/rendering/internal/animation/i;Ltp/g;Lrs/c;)Ljava/lang/Object;

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
    iget-object p1, p0, Lio/bidmachine/rendering/internal/animation/i$b;->j:Ltp/g;

    .line 53
    .line 54
    iget-object v3, p0, Lio/bidmachine/rendering/internal/animation/i$b;->i:Lio/bidmachine/rendering/internal/animation/i;

    .line 55
    .line 56
    iget-object v6, p0, Lio/bidmachine/rendering/internal/animation/i$b;->k:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 57
    .line 58
    invoke-virtual {p1}, Ltp/g;->d()Lrq/c;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Leq/e;->c(Lrq/c;)Leq/b;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    iput v2, p0, Lio/bidmachine/rendering/internal/animation/i$b;->h:I

    .line 67
    .line 68
    const/4 v7, 0x1

    .line 69
    move-object v8, p0

    .line 70
    invoke-virtual/range {v3 .. v8}, Lio/bidmachine/rendering/internal/animation/i;->i(Landroid/view/View;Leq/b;Lio/bidmachine/rendering/model/AnimationEventType;ZLrs/c;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, v0, :cond_4

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p1
.end method
