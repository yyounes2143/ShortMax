.class final Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EmailAuthViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->C(Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.viewmodel.auth.EmailAuthViewModel$sendOTP$1"
    f = "EmailAuthViewModel.kt"
    l = {
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;->j:Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;->j:Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;->h:I

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
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRepo;->a:Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRepo;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;->i:Ljava/lang/String;

    .line 36
    .line 37
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;->h:I

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1, v2, v1, p0}, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRepo;->d(Landroid/content/Context;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;->j:Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    sget-object v1, Lud/b;->a:Lud/b;

    .line 56
    .line 57
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-virtual {v1, v2, v3}, Lud/b;->Y2(J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/auth/d$c;->a:Lcom/startshorts/androidplayer/viewmodel/auth/d$c;

    .line 71
    .line 72
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel$sendOTP$1;->j:Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    check-cast p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isNetworkError()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/auth/d$b;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/auth/d$b;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/auth/d$b;

    .line 117
    .line 118
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 119
    .line 120
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/d$b;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p1
.end method
