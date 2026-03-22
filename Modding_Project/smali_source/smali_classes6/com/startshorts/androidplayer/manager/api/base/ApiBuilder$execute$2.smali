.class final Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ApiBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.api.base.ApiBuilder$execute$2"
    f = "ApiBuilder.kt"
    l = {
        0x4d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

.field final synthetic k:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Lkotlin/jvm/functions/Function1;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "TT;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->j:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->k:Lkotlin/jvm/functions/Function1;

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

.method public static synthetic i(Lgt/k0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->j(Lgt/k0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final j(Lgt/k0;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "ApiBuilder"

    .line 4
    .line 5
    const-string v2, "cancelApiJob"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
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
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->j:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->k:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;-><init>(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->i:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->h:I

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->i:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v3, p1

    .line 30
    check-cast v3, Lgt/g0;

    .line 31
    .line 32
    new-instance v6, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->j:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->k:Lkotlin/jvm/functions/Function1;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-direct {v6, p1, v1, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;-><init>(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 40
    .line 41
    .line 42
    const/4 v7, 0x3

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-static/range {v3 .. v8}, Lgt/e;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lgt/k0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->j:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 50
    .line 51
    new-instance v3, Lcom/startshorts/androidplayer/manager/api/base/g;

    .line 52
    .line 53
    invoke-direct {v3, p1}, Lcom/startshorts/androidplayer/manager/api/base/g;-><init>(Lgt/k0;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v3}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->k(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Lkotlin/jvm/functions/Function0;)V

    .line 57
    .line 58
    .line 59
    iput v2, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->h:I

    .line 60
    .line 61
    invoke-interface {p1, p0}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    :goto_0
    return-object p1
.end method
