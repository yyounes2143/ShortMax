.class final Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CoroutineUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/utils/CoroutineUtil;->e(JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;
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
        "Ljava/lang/Long;",
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
    c = "com.startshorts.androidplayer.utils.CoroutineUtil$countDown$5"
    f = "CoroutineUtil.kt"
    l = {
        0x6e,
        0x6f,
        0x72
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:J

.field i:I

.field private synthetic j:Ljava/lang/Object;

.field final synthetic k:J

.field final synthetic l:J


# direct methods
.method constructor <init>(JJLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->k:J

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->l:J

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance v6, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->k:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->l:J

    .line 6
    .line 7
    move-object v0, v6

    .line 8
    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;-><init>(JJLrs/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v6, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->j:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkt/c;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->invoke(Lkt/c;Lrs/c;)Ljava/lang/Object;

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
            "Ljava/lang/Long;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->i:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    if-eq v1, v4, :cond_3

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    iget-wide v5, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->h:J

    .line 31
    .line 32
    iget-object v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->j:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lkt/c;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    move-object p1, v1

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iget-wide v5, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->h:J

    .line 42
    .line 43
    iget-object v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->j:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lkt/c;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->j:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lkt/c;

    .line 57
    .line 58
    iget-wide v5, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->k:J

    .line 59
    .line 60
    :goto_0
    const-wide/16 v7, 0x0

    .line 61
    .line 62
    cmp-long v1, v5, v7

    .line 63
    .line 64
    if-lez v1, :cond_6

    .line 65
    .line 66
    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object p1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->j:Ljava/lang/Object;

    .line 71
    .line 72
    iput-wide v5, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->h:J

    .line 73
    .line 74
    iput v4, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->i:I

    .line 75
    .line 76
    invoke-interface {p1, v1, p0}, Lkt/c;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-ne v1, v0, :cond_5

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_5
    move-object v1, p1

    .line 84
    :goto_1
    iget-wide v7, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->l:J

    .line 85
    .line 86
    iput-object v1, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->j:Ljava/lang/Object;

    .line 87
    .line 88
    iput-wide v5, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->h:J

    .line 89
    .line 90
    iput v3, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->i:I

    .line 91
    .line 92
    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-ne p1, v0, :cond_2

    .line 97
    .line 98
    return-object v0

    .line 99
    :goto_2
    iget-wide v7, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->l:J

    .line 100
    .line 101
    sub-long/2addr v5, v7

    .line 102
    goto :goto_0

    .line 103
    :cond_6
    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/4 v3, 0x0

    .line 108
    iput-object v3, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->j:Ljava/lang/Object;

    .line 109
    .line 110
    iput v2, p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil$countDown$5;->i:I

    .line 111
    .line 112
    invoke-interface {p1, v1, p0}, Lkt/c;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-ne p1, v0, :cond_7

    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p1
.end method
