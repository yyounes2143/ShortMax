.class final Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PhoneAuthViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel$sendOTP$1$1$1"
    f = "PhoneAuthViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->k:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->j:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->k:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->K()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1, v0, v1, v2}, Lcom/startshorts/androidplayer/manager/auth/a;->o(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method
