.class final Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SharedSessionRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appBackground$1$1"
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
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

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
    new-instance v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;->i:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;->i(Lcom/google/firebase/sessions/i;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;->i:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lcom/google/firebase/sessions/i;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$appBackground$1$1;->j:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->h(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Lj9/m0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lj9/m0;->a()Lcom/google/firebase/sessions/k;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v4, 0x5

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/sessions/i;->c(Lcom/google/firebase/sessions/i;Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/firebase/sessions/i;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method
