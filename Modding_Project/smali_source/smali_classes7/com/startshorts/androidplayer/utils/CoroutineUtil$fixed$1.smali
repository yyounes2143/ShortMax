.class final Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CoroutineUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/utils/CoroutineUtil;->m(JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.utils.CoroutineUtil$fixed$1"
    f = "CoroutineUtil.kt"
    l = {
        0xa6,
        0xa7
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineUtil.kt\ncom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,212:1\n375#2:213\n*S KotlinDebug\n*F\n+ 1 CoroutineUtil.kt\ncom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1\n*L\n165#1:213\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field i:I

.field private synthetic j:Ljava/lang/Object;

.field final synthetic k:J


# direct methods
.method constructor <init>(JLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->k:J

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
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
    new-instance v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->k:J

    .line 4
    .line 5
    invoke-direct {v0, v1, v2, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;-><init>(JLrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->j:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkt/c;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->invoke(Lkt/c;Lrs/c;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    if-eq v1, v3, :cond_2

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    iget v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->h:I

    .line 16
    .line 17
    iget-object v4, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->j:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, Lkt/c;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    move-object p1, v4

    .line 25
    goto :goto_2

    .line 26
    :cond_1
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
    :cond_2
    iget v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->h:I

    .line 35
    .line 36
    iget-object v4, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->j:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v4, Lkt/c;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->j:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lkt/c;

    .line 50
    .line 51
    const v1, 0x7fffffff

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-interface {p0}, Lrs/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4}, Lkotlinx/coroutines/t;->p(Lkotlin/coroutines/CoroutineContext;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_5

    .line 63
    .line 64
    if-ltz v1, :cond_5

    .line 65
    .line 66
    iget-wide v4, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->k:J

    .line 67
    .line 68
    iput-object p1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->j:Ljava/lang/Object;

    .line 69
    .line 70
    iput v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->h:I

    .line 71
    .line 72
    iput v3, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->i:I

    .line 73
    .line 74
    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-ne v4, v0, :cond_4

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_4
    move-object v4, p1

    .line 82
    :goto_1
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object v4, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->j:Ljava/lang/Object;

    .line 87
    .line 88
    iput v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->h:I

    .line 89
    .line 90
    iput v2, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$fixed$1;->i:I

    .line 91
    .line 92
    invoke-interface {v4, p1, p0}, Lkt/c;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-ne p1, v0, :cond_0

    .line 97
    .line 98
    return-object v0

    .line 99
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    return-object p1
.end method
