.class final Lcoil/RealImageLoader$execute$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RealImageLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/RealImageLoader;->a(Lm0/f;Lrs/c;)Ljava/lang/Object;
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
        "Lm0/g;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "coil.RealImageLoader$execute$2"
    f = "RealImageLoader.kt"
    l = {
        0x92
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Lm0/f;

.field final synthetic k:Lcoil/RealImageLoader;


# direct methods
.method constructor <init>(Lm0/f;Lcoil/RealImageLoader;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm0/f;",
            "Lcoil/RealImageLoader;",
            "Lrs/c<",
            "-",
            "Lcoil/RealImageLoader$execute$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/RealImageLoader$execute$2;->j:Lm0/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcoil/RealImageLoader$execute$2;->k:Lcoil/RealImageLoader;

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
    new-instance v0, Lcoil/RealImageLoader$execute$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/RealImageLoader$execute$2;->j:Lm0/f;

    .line 4
    .line 5
    iget-object v2, p0, Lcoil/RealImageLoader$execute$2;->k:Lcoil/RealImageLoader;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcoil/RealImageLoader$execute$2;-><init>(Lm0/f;Lcoil/RealImageLoader;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcoil/RealImageLoader$execute$2;->i:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
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
            "Lm0/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcoil/RealImageLoader$execute$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcoil/RealImageLoader$execute$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcoil/RealImageLoader$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcoil/RealImageLoader$execute$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

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
    iget v1, p0, Lcoil/RealImageLoader$execute$2;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcoil/RealImageLoader$execute$2;->i:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v3, p1

    .line 30
    check-cast v3, Lgt/g0;

    .line 31
    .line 32
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lgt/j1;->m()Lgt/j1;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    new-instance v6, Lcoil/RealImageLoader$execute$2$job$1;

    .line 41
    .line 42
    iget-object p1, p0, Lcoil/RealImageLoader$execute$2;->k:Lcoil/RealImageLoader;

    .line 43
    .line 44
    iget-object v1, p0, Lcoil/RealImageLoader$execute$2;->j:Lm0/f;

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-direct {v6, p1, v1, v5}, Lcoil/RealImageLoader$execute$2$job$1;-><init>(Lcoil/RealImageLoader;Lm0/f;Lrs/c;)V

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x2

    .line 51
    const/4 v8, 0x0

    .line 52
    invoke-static/range {v3 .. v8}, Lgt/e;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lgt/k0;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v1, p0, Lcoil/RealImageLoader$execute$2;->j:Lm0/f;

    .line 57
    .line 58
    invoke-virtual {v1}, Lm0/f;->M()Lo0/a;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    instance-of v1, v1, Lo0/b;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, Lcoil/RealImageLoader$execute$2;->j:Lm0/f;

    .line 67
    .line 68
    invoke-virtual {v1}, Lm0/f;->M()Lo0/a;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lo0/b;

    .line 73
    .line 74
    invoke-interface {v1}, Lo0/b;->getView()Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1}, Lr0/i;->l(Landroid/view/View;)Lcoil/request/ViewTargetRequestManager;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1, p1}, Lcoil/request/ViewTargetRequestManager;->b(Lgt/k0;)Lm0/o;

    .line 83
    .line 84
    .line 85
    :cond_2
    iput v2, p0, Lcoil/RealImageLoader$execute$2;->h:I

    .line 86
    .line 87
    invoke-interface {p1, p0}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v0, :cond_3

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_3
    :goto_0
    return-object p1
.end method
