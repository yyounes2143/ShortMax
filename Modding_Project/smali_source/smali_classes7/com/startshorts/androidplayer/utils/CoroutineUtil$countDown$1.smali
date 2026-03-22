.class final Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CoroutineUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkt/c<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
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
    c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$1"
    f = "CoroutineUtil.kt"
    l = {
        0x4f,
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field i:I

.field private synthetic j:Ljava/lang/Object;

.field final synthetic k:I


# direct methods
.method constructor <init>(ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->k:I

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->k:I

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;-><init>(ILrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->j:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkt/c;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->invoke(Lkt/c;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkt/c;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkt/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->i:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->h:I

    .line 17
    .line 18
    iget-object v5, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->j:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v5, Lkt/c;

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    iget v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->h:I

    .line 35
    .line 36
    iget-object v5, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->j:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v5, Lkt/c;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->j:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lkt/c;

    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->k:I

    .line 52
    .line 53
    :goto_0
    if-ge v2, v1, :cond_5

    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iput-object p1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->j:Ljava/lang/Object;

    .line 60
    .line 61
    iput v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->h:I

    .line 62
    .line 63
    iput v4, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->i:I

    .line 64
    .line 65
    invoke-interface {p1, v5, p0}, Lkt/c;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-ne v5, v0, :cond_3

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_3
    move-object v5, p1

    .line 73
    :goto_1
    if-eqz v1, :cond_4

    .line 74
    .line 75
    iput-object v5, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->j:Ljava/lang/Object;

    .line 76
    .line 77
    iput v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->h:I

    .line 78
    .line 79
    iput v3, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$1;->i:I

    .line 80
    .line 81
    const-wide/16 v6, 0x3e8

    .line 82
    .line 83
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-ne p1, v0, :cond_4

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_4
    :goto_2
    move-object p1, v5

    .line 91
    add-int/2addr v1, v2

    .line 92
    goto :goto_0

    .line 93
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    return-object p1
.end method
