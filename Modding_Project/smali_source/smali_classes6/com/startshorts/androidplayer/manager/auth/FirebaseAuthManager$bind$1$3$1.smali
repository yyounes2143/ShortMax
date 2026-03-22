.class final Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FirebaseAuthManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1$3$1"
    f = "FirebaseAuthManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

.field final synthetic j:Lcom/hades/aar/auth/base/AuthType;

.field final synthetic k:Lcom/startshorts/androidplayer/bean/exception/ResponseException;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/exception/ResponseException;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;",
            "Lcom/hades/aar/auth/base/AuthType;",
            "Lcom/startshorts/androidplayer/bean/exception/ResponseException;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->i:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->j:Lcom/hades/aar/auth/base/AuthType;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->k:Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->i:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->j:Lcom/hades/aar/auth/base/AuthType;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->k:Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;-><init>(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/exception/ResponseException;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->i:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->j:Lcom/hades/aar/auth/base/AuthType;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->k:Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isNetworkError()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x3

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->k:Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->k:Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getErrorExtra()Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->getRealMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    :cond_1
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$3$1;->k:Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :cond_2
    invoke-static {p1, v0, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->u(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method
