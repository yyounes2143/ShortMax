.class final Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SharedSessionRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/google/firebase/sessions/i;",
        "Lrs/c<",
        "-",
        "Lcom/google/firebase/sessions/i;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1"
    f = "SharedSessionRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field synthetic i:Ljava/lang/Object;

.field final synthetic j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;",
            "Lrs/c<",
            "-",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

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
    new-instance v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->i:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final i(Lcom/google/firebase/sessions/i;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/i;",
            "Lrs/c<",
            "-",
            "Lcom/google/firebase/sessions/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/firebase/sessions/i;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->i(Lcom/google/firebase/sessions/i;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->i:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lcom/google/firebase/sessions/i;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->k(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->i(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 29
    .line 30
    invoke-static {v2, v0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->j(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->d(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Lj9/s;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Lj9/s;->d()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v3, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->d(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Lj9/s;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0}, Lcom/google/firebase/sessions/i;->e()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v3, v4}, Lj9/s;->e(Ljava/util/Map;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/sessions/i;->e()Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :goto_0
    const/4 v4, 0x0

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    move-object v5, v4

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/sessions/i;->f()Lcom/google/firebase/sessions/j;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    :goto_1
    if-nez p1, :cond_4

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    if-eqz v2, :cond_5

    .line 83
    .line 84
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->d(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Lj9/s;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {p1, v3}, Lj9/s;->e(Ljava/util/Map;)Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const/4 v4, 0x3

    .line 95
    const/4 v5, 0x0

    .line 96
    const/4 v1, 0x0

    .line 97
    const/4 v2, 0x0

    .line 98
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/sessions/i;->c(Lcom/google/firebase/sessions/i;Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/firebase/sessions/i;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->g(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Lj9/f0;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1, v5}, Lj9/f0;->a(Lcom/google/firebase/sessions/j;)Lcom/google/firebase/sessions/j;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 114
    .line 115
    invoke-static {v1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->f(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Lj9/d0;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v1, p1}, Lj9/d0;->a(Lcom/google/firebase/sessions/j;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 123
    .line 124
    invoke-static {v1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->d(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Lj9/s;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v1}, Lj9/s;->f()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1, v4, v3}, Lcom/google/firebase/sessions/i;->b(Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;)Lcom/google/firebase/sessions/i;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :cond_5
    :goto_3
    return-object v0

    .line 136
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 139
    .line 140
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1
.end method
