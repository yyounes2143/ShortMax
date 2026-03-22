.class public final Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->i(Lcom/moloco/sdk/internal/ilrd/h$a;)V
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
    c = "com.moloco.sdk.internal.ilrd.IlrdEventsRepository$onEvent$1"
    f = "IlrdEventsRepository.kt"
    l = {
        0x1b4
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIlrdEventsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository$onEvent$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,430:1\n116#2,11:431\n*S KotlinDebug\n*F\n+ 1 IlrdEventsRepository.kt\ncom/moloco/sdk/internal/ilrd/IlrdEventsRepository$onEvent$1\n*L\n194#1:431,11\n*E\n"
    }
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:I

.field public final synthetic l:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

.field public final synthetic m:Lcom/moloco/sdk/internal/ilrd/h$a;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lcom/moloco/sdk/internal/ilrd/h$a;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;",
            "Lcom/moloco/sdk/internal/ilrd/h$a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->l:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->m:Lcom/moloco/sdk/internal/ilrd/h$a;

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

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
    new-instance p1, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->l:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->m:Lcom/moloco/sdk/internal/ilrd/h$a;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;-><init>(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lcom/moloco/sdk/internal/ilrd/h$a;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->k:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->j:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/moloco/sdk/internal/ilrd/h$a;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->i:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->h:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lqt/a;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->l:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->h(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;)Lqt/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->l:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->m:Lcom/moloco/sdk/internal/ilrd/h$a;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->h:Ljava/lang/Object;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->i:Ljava/lang/Object;

    .line 53
    .line 54
    iput-object v4, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->j:Ljava/lang/Object;

    .line 55
    .line 56
    iput v2, p0, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository$c;->k:I

    .line 57
    .line 58
    invoke-interface {p1, v3, p0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-ne v2, v0, :cond_2

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    move-object v2, p1

    .line 66
    move-object v0, v4

    .line 67
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->f()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->n()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->j()Lcom/moloco/sdk/internal/ilrd/a;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/moloco/sdk/internal/ilrd/a;->d(Lcom/moloco/sdk/internal/ilrd/h$a;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    :goto_1
    invoke-static {v1, v0}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->a(Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Lcom/moloco/sdk/internal/ilrd/h$a;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->g()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 100
    .line 101
    const-string v5, "IlrdEventsRepository"

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v6, "Event id "

    .line 109
    .line 110
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->getEventId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p1, " added. Count: "

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->g()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    const/16 v9, 0xc

    .line 141
    .line 142
    const/4 v10, 0x0

    .line 143
    const/4 v7, 0x0

    .line 144
    const/4 v8, 0x0

    .line 145
    invoke-static/range {v4 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->k()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->p()V

    .line 155
    .line 156
    .line 157
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .line 159
    invoke-interface {v2, v3}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    return-object p1

    .line 163
    :goto_2
    invoke-interface {v2, v3}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    throw p1
.end method
