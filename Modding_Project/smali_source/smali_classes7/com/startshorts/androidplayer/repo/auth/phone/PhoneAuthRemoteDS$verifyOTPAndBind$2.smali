.class final Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PhoneAuthRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS$verifyOTPAndBind$2"
    f = "PhoneAuthRemoteDS.kt"
    l = {
        0x1d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->k:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 4
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
    new-instance v0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->invoke(Lrs/c;)Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->i:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const/16 v4, 0x2b

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->j:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->k:Ljava/lang/String;

    .line 55
    .line 56
    iput v2, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndBind$2;->h:I

    .line 57
    .line 58
    invoke-interface {p1, v1, v3, v4, p0}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->Q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    :goto_0
    return-object p1
.end method
