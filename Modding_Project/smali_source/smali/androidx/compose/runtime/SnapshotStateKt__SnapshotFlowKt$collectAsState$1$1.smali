.class final Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SnapshotFlow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt;->collectAsState(Lkt/b;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/ProduceStateScope<",
        "TR;>;",
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
    c = "androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1"
    f = "SnapshotFlow.kt"
    l = {
        0x44,
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Lkotlin/coroutines/CoroutineContext;

.field final synthetic $this_collectAsState:Lkt/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkt/b;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkt/b<",
            "+TT;>;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->$context:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->$this_collectAsState:Lkt/b;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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

    .line 1
    new-instance v0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->$context:Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->$this_collectAsState:Lkt/b;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;-><init>(Lkotlin/coroutines/CoroutineContext;Lkt/b;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/ProduceStateScope;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ProduceStateScope<",
            "TR;>;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/runtime/ProduceStateScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->invoke(Landroidx/compose/runtime/ProduceStateScope;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->label:I

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
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Landroidx/compose/runtime/ProduceStateScope;

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->$context:Lkotlin/coroutines/CoroutineContext;

    .line 36
    .line 37
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 38
    .line 39
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->$this_collectAsState:Lkt/b;

    .line 46
    .line 47
    new-instance v2, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$1;

    .line 48
    .line 49
    invoke-direct {v2, p1}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$1;-><init>(Landroidx/compose/runtime/ProduceStateScope;)V

    .line 50
    .line 51
    .line 52
    iput v3, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->label:I

    .line 53
    .line 54
    invoke-interface {v1, v2, p0}, Lkt/b;->collect(Lkt/c;Lrs/c;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v0, :cond_4

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->$context:Lkotlin/coroutines/CoroutineContext;

    .line 62
    .line 63
    new-instance v3, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$2;

    .line 64
    .line 65
    iget-object v4, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->$this_collectAsState:Lkt/b;

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    invoke-direct {v3, v4, p1, v5}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$2;-><init>(Lkt/b;Landroidx/compose/runtime/ProduceStateScope;Lrs/c;)V

    .line 69
    .line 70
    .line 71
    iput v2, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;->label:I

    .line 72
    .line 73
    invoke-static {v1, v3, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-ne p1, v0, :cond_4

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p1
.end method
