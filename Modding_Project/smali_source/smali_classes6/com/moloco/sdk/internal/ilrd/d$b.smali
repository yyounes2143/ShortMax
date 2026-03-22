.class public final Lcom/moloco/sdk/internal/ilrd/d$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/ilrd/d;->b(JLkotlin/jvm/functions/Function1;)V
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

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.ilrd.IlrdScheduler$schedule$2"
    f = "IlrdScheduler.kt"
    l = {
        0x36
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/internal/ilrd/d;

.field public final synthetic j:J

.field public final synthetic k:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/ilrd/d;JLkotlin/jvm/functions/Function1;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/ilrd/d;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/ilrd/d$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->i:Lcom/moloco/sdk/internal/ilrd/d;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->j:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->k:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ilrd/d$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/ilrd/d$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/ilrd/d$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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
    new-instance p1, Lcom/moloco/sdk/internal/ilrd/d$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->i:Lcom/moloco/sdk/internal/ilrd/d;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->j:J

    .line 6
    .line 7
    iget-object v4, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->k:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/internal/ilrd/d$b;-><init>(Lcom/moloco/sdk/internal/ilrd/d;JLkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 12
    .line 13
    .line 14
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ilrd/d$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->h:I

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
    iget-object p1, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->i:Lcom/moloco/sdk/internal/ilrd/d;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/moloco/sdk/internal/ilrd/d;->a(Lcom/moloco/sdk/internal/ilrd/d;)Ljava/text/SimpleDateFormat;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->i:Lcom/moloco/sdk/internal/ilrd/d;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/moloco/sdk/internal/ilrd/d;->f(Lcom/moloco/sdk/internal/ilrd/d;)Lcom/moloco/sdk/internal/services/j;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    iget-wide v5, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->j:J

    .line 44
    .line 45
    invoke-static {v5, v6}, Lkotlin/time/b;->q(J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v5

    .line 49
    add-long/2addr v3, v5

    .line 50
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v4, "Task "

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->i:Lcom/moloco/sdk/internal/ilrd/d;

    .line 71
    .line 72
    invoke-static {v4}, Lcom/moloco/sdk/internal/ilrd/d;->d(Lcom/moloco/sdk/internal/ilrd/d;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v4, " scheduled at "

    .line 80
    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const/16 v8, 0xc

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    const-string v4, "IlrdScheduler"

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    const/4 v7, 0x0

    .line 98
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-wide v3, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->j:J

    .line 102
    .line 103
    iput v2, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->h:I

    .line 104
    .line 105
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->c(JLrs/c;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-ne p1, v0, :cond_2

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->i:Lcom/moloco/sdk/internal/ilrd/d;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/moloco/sdk/internal/ilrd/d;->e(Lcom/moloco/sdk/internal/ilrd/d;)Lgt/g0;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v3, Lcom/moloco/sdk/internal/ilrd/d$b$a;

    .line 119
    .line 120
    iget-object p1, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->i:Lcom/moloco/sdk/internal/ilrd/d;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/d$b;->k:Lkotlin/jvm/functions/Function1;

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    invoke-direct {v3, p1, v1, v2}, Lcom/moloco/sdk/internal/ilrd/d$b$a;-><init>(Lcom/moloco/sdk/internal/ilrd/d;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 126
    .line 127
    .line 128
    const/4 v4, 0x3

    .line 129
    const/4 v5, 0x0

    .line 130
    const/4 v1, 0x0

    .line 131
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 132
    .line 133
    .line 134
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p1
.end method
