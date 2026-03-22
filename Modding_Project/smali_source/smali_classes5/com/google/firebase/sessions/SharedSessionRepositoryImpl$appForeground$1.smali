.class final Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SharedSessionRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->a()V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1"
    f = "SharedSessionRepository.kt"
    l = {
        0x87,
        0xba
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

.field final synthetic j:Lcom/google/firebase/sessions/i;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;",
            "Lcom/google/firebase/sessions/i;",
            "Lrs/c<",
            "-",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->i:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->j:Lcom/google/firebase/sessions/i;

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
    new-instance p1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->i:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->j:Lcom/google/firebase/sessions/i;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
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
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->h:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :try_start_1
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->i:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->e(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Landroidx/datastore/core/DataStore;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->i:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-direct {v1, v4, v5}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1$1;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lrs/c;)V

    .line 50
    .line 51
    .line 52
    iput v3, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->h:I

    .line 53
    .line 54
    invoke-interface {p1, v1, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    if-ne p1, v0, :cond_3

    .line 59
    .line 60
    return-object v0

    .line 61
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v3, "App foregrounded, failed to update data. Message: "

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v1, "FirebaseSessions"

    .line 83
    .line 84
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->i:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->j:Lcom/google/firebase/sessions/i;

    .line 90
    .line 91
    invoke-static {p1, v1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->k(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->i:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->g(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Lj9/f0;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->j:Lcom/google/firebase/sessions/i;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/google/firebase/sessions/i;->f()Lcom/google/firebase/sessions/j;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p1, v1}, Lj9/f0;->a(Lcom/google/firebase/sessions/j;)Lcom/google/firebase/sessions/j;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->i:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->j:Lcom/google/firebase/sessions/i;

    .line 116
    .line 117
    const/4 v7, 0x4

    .line 118
    const/4 v8, 0x0

    .line 119
    const/4 v5, 0x0

    .line 120
    const/4 v6, 0x0

    .line 121
    move-object v4, p1

    .line 122
    invoke-static/range {v3 .. v8}, Lcom/google/firebase/sessions/i;->c(Lcom/google/firebase/sessions/i;Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/firebase/sessions/i;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v1, v3}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->r(Lcom/google/firebase/sessions/i;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->i:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->f(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Lj9/d0;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-interface {v1, p1}, Lj9/d0;->a(Lcom/google/firebase/sessions/j;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->i:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/google/firebase/sessions/j;->b()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    sget-object v3, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;->FALLBACK:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    .line 145
    .line 146
    iput v2, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appForeground$1;->h:I

    .line 147
    .line 148
    invoke-static {v1, p1, v3, p0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->l(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Ljava/lang/String;Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;Lrs/c;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-ne p1, v0, :cond_3

    .line 153
    .line 154
    return-object v0

    .line 155
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 156
    .line 157
    return-object p1
.end method
