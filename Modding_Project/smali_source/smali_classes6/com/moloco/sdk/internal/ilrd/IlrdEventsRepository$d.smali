.class public final Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->onPause(Landroidx/lifecycle/LifecycleOwner;)V
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
    c = "com.moloco.sdk.internal.ilrd.IlrdEventsRepository$onPause$1"
    f = "IlrdEventsRepository.kt"
    l = {
        0x1b4,
        0xf8
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIlrdEventsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository$onPause$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,430:1\n116#2,11:431\n*S KotlinDebug\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository$onPause$1\n*L\n244#1:431,11\n*E\n"
    }
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->k:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
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
    new-instance p1, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->k:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;-><init>(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->j:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->i:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->h:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lqt/a;

    .line 23
    .line 24
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->i:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->h:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Lqt/a;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object p1, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->k:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->h(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;)Lqt/a;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->k:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->h:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->i:Ljava/lang/Object;

    .line 65
    .line 66
    iput v3, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->j:I

    .line 67
    .line 68
    invoke-interface {p1, v4, p0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-ne v3, v0, :cond_3

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_3
    :goto_0
    :try_start_1
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 76
    .line 77
    const-string v6, "IlrdEventsRepository"

    .line 78
    .line 79
    const-string v7, "onPause called, storing session and sending events"

    .line 80
    .line 81
    const/16 v10, 0xc

    .line 82
    .line 83
    const/4 v11, 0x0

    .line 84
    const/4 v8, 0x0

    .line 85
    const/4 v9, 0x0

    .line 86
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->j()Lcom/moloco/sdk/internal/ilrd/a;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/ilrd/a;->l()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->c(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;)Lcom/moloco/sdk/internal/services/h0;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    const-string v6, "ilrd_session_store"

    .line 104
    .line 105
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->h:Ljava/lang/Object;

    .line 106
    .line 107
    iput-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->i:Ljava/lang/Object;

    .line 108
    .line 109
    iput v2, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$d;->j:I

    .line 110
    .line 111
    invoke-interface {v5, v6, v3, p0}, Lcom/moloco/sdk/internal/services/h0;->c(Ljava/lang/String;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-ne v2, v0, :cond_4

    .line 116
    .line 117
    return-object v0

    .line 118
    :cond_4
    move-object v0, v1

    .line 119
    move-object v1, p1

    .line 120
    :goto_1
    move-object p1, v1

    .line 121
    move-object v1, v0

    .line 122
    :cond_5
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->p()V

    .line 123
    .line 124
    .line 125
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    .line 127
    invoke-interface {p1, v4}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return-object v0

    .line 131
    :catchall_1
    move-exception v0

    .line 132
    move-object v1, p1

    .line 133
    move-object p1, v0

    .line 134
    :goto_2
    invoke-interface {v1, v4}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    throw p1
.end method
