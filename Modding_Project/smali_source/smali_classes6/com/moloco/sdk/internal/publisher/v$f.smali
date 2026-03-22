.class public final Lcom/moloco/sdk/internal/publisher/v$f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/v;->g(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/internal/services/init/m;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/moloco/sdk/internal/g0<",
        "Lcom/moloco/sdk/Init$SDKInitResponse;",
        "Lcom/moloco/sdk/internal/services/init/i;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.publisher.InitializationHandler$startInitialization$2"
    f = "InitializationHandler.kt"
    l = {
        0x86,
        0x8a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:J

.field public j:I

.field public final synthetic k:Lcom/moloco/sdk/acm/recorder/a;

.field public final synthetic l:Lcom/moloco/sdk/internal/publisher/v;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Lcom/moloco/sdk/publisher/MediationInfo;

.field public final synthetic o:Lcom/moloco/sdk/internal/services/init/m;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/internal/publisher/v;Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/internal/services/init/m;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lcom/moloco/sdk/internal/publisher/v;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Lcom/moloco/sdk/internal/services/init/m;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/v$f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/v$f;->k:Lcom/moloco/sdk/acm/recorder/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/v$f;->l:Lcom/moloco/sdk/internal/publisher/v;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/v$f;->m:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/v$f;->n:Lcom/moloco/sdk/publisher/MediationInfo;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/moloco/sdk/internal/publisher/v$f;->o:Lcom/moloco/sdk/internal/services/init/m;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
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
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/Init$SDKInitResponse;",
            "Lcom/moloco/sdk/internal/services/init/i;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/v$f;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/v$f;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/v$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

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
    new-instance p1, Lcom/moloco/sdk/internal/publisher/v$f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/v$f;->k:Lcom/moloco/sdk/acm/recorder/a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/v$f;->l:Lcom/moloco/sdk/internal/publisher/v;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/v$f;->m:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/v$f;->n:Lcom/moloco/sdk/publisher/MediationInfo;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/moloco/sdk/internal/publisher/v$f;->o:Lcom/moloco/sdk/internal/services/init/m;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/internal/publisher/v$f;-><init>(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/internal/publisher/v;Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/internal/services/init/m;Lrs/c;)V

    .line 16
    .line 17
    .line 18
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/v$f;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/moloco/sdk/internal/publisher/v$f;->j:I

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
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/v$f;->h:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/moloco/sdk/internal/g0;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    iget-wide v3, p0, Lcom/moloco/sdk/internal/publisher/v$f;->i:J

    .line 33
    .line 34
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/v$f;->h:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lcom/moloco/sdk/acm/e;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object v9, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 47
    .line 48
    const/16 v10, 0xc

    .line 49
    .line 50
    const/4 v11, 0x0

    .line 51
    const-string v6, "InitializationHandler"

    .line 52
    .line 53
    const-string/jumbo v7, "startInitialization switch to Dispatchers.IO"

    .line 54
    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    const/4 v9, 0x0

    .line 58
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/v$f;->k:Lcom/moloco/sdk/acm/recorder/a;

    .line 62
    .line 63
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/d;->b:Lcom/moloco/sdk/internal/client_metrics_data/d;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/client_metrics_data/d;->c()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {p1, v1}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/v$f;->l:Lcom/moloco/sdk/internal/publisher/v;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/v;->l()Lcom/moloco/sdk/internal/services/j;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p1}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 80
    .line 81
    .line 82
    move-result-wide v4

    .line 83
    sget-object p1, Lcom/moloco/sdk/service_locator/b$f;->a:Lcom/moloco/sdk/service_locator/b$f;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/moloco/sdk/service_locator/b$f;->c()Lcom/moloco/sdk/internal/services/init/j;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v6, p0, Lcom/moloco/sdk/internal/publisher/v$f;->m:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v7, p0, Lcom/moloco/sdk/internal/publisher/v$f;->n:Lcom/moloco/sdk/publisher/MediationInfo;

    .line 92
    .line 93
    iput-object v1, p0, Lcom/moloco/sdk/internal/publisher/v$f;->h:Ljava/lang/Object;

    .line 94
    .line 95
    iput-wide v4, p0, Lcom/moloco/sdk/internal/publisher/v$f;->i:J

    .line 96
    .line 97
    iput v3, p0, Lcom/moloco/sdk/internal/publisher/v$f;->j:I

    .line 98
    .line 99
    invoke-interface {p1, v6, v7, p0}, Lcom/moloco/sdk/internal/services/init/j;->b(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lrs/c;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-ne p1, v0, :cond_3

    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_3
    move-object v9, v1

    .line 107
    move-wide v3, v4

    .line 108
    :goto_0
    check-cast p1, Lcom/moloco/sdk/internal/g0;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/v$f;->l:Lcom/moloco/sdk/internal/publisher/v;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/publisher/v;->l()Lcom/moloco/sdk/internal/services/j;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/j;->a()J

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    sub-long/2addr v5, v3

    .line 121
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/v$f;->l:Lcom/moloco/sdk/internal/publisher/v;

    .line 122
    .line 123
    iget-object v7, p0, Lcom/moloco/sdk/internal/publisher/v$f;->o:Lcom/moloco/sdk/internal/services/init/m;

    .line 124
    .line 125
    iget-object v8, p0, Lcom/moloco/sdk/internal/publisher/v$f;->k:Lcom/moloco/sdk/acm/recorder/a;

    .line 126
    .line 127
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/v$f;->h:Ljava/lang/Object;

    .line 128
    .line 129
    iput v2, p0, Lcom/moloco/sdk/internal/publisher/v$f;->j:I

    .line 130
    .line 131
    move-object v4, p1

    .line 132
    move-object v10, p0

    .line 133
    invoke-static/range {v3 .. v10}, Lcom/moloco/sdk/internal/publisher/v;->b(Lcom/moloco/sdk/internal/publisher/v;Lcom/moloco/sdk/internal/g0;JLcom/moloco/sdk/internal/services/init/m;Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/acm/e;Lrs/c;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-ne v1, v0, :cond_4

    .line 138
    .line 139
    return-object v0

    .line 140
    :cond_4
    move-object v0, p1

    .line 141
    :goto_1
    return-object v0
.end method
