.class final Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FirebaseAuthManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lrs/c<",
        "-",
        "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
        "Lcom/startshorts/androidplayer/bean/auth/LoginResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$login$1$1"
    f = "FirebaseAuthManager.kt"
    l = {
        0x91
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/account/Account;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/account/Account;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/account/Account;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->i:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->k:I

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->l:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->m:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->n:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->i:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->k:I

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->l:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->m:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->n:Ljava/lang/String;

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p1

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;-><init>(Lcom/startshorts/androidplayer/bean/account/Account;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 18
    .line 19
    .line 20
    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->invoke(Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "Lcom/startshorts/androidplayer/bean/auth/LoginResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->h:I

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
    goto :goto_2

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
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->i:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getRegisterCode()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v1, ""

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    move-object v9, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v9, p1

    .line 46
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->i:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->j:Ljava/lang/String;

    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    move-object v10, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move-object v10, p1

    .line 59
    :goto_1
    iget v4, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->k:I

    .line 60
    .line 61
    iget v5, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->l:I

    .line 62
    .line 63
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->m:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->n:Ljava/lang/String;

    .line 66
    .line 67
    iput v2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;->h:I

    .line 68
    .line 69
    move-object v11, p0

    .line 70
    invoke-interface/range {v3 .. v11}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->Z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, v0, :cond_4

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_4
    :goto_2
    return-object p1
.end method
